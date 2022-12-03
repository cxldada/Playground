#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

static void sig_alrm(int signo) {}

unsigned int sleep(unsigned int sec) {
    unsigned int ret;
    sigset_t oldmask, newmask, suspmask;
    struct sigaction newact, oldact;

    newact.sa_handler = sig_alrm;
    sigemptyset(&newact.sa_mask);
    newact.sa_flags = 0;
    if (sigaction(SIGALRM, &newact, &oldact) < 0) return 0;

    sigemptyset(&newmask);
    sigaddset(&newmask, SIGALRM);
    sigprocmask(SIG_BLOCK, &newmask, &oldmask);

    suspmask = oldmask;
    sigdelset(&suspmask, SIGALRM);

    alarm(sec);
    sigsuspend(&suspmask);

    ret = alarm(0);

    sigprocmask(SIG_SETMASK, &oldmask, NULL);

    sigaction(SIGALRM, &oldact, NULL);

    return ret;
}
