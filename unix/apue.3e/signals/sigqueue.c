#include <bits/types/sigset_t.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/ucontext.h>
#include <unistd.h>
#include <signal.h>

void sig_int(int signo, siginfo_t *info, void *content) {
    sigset_t pending;
    sigpending(&pending);
    printf("child int mask: %d\n", sigismember(&pending, SIGINT));

    printf("sino: %d\n", signo);
    printf("pid: %d\n", info->si_pid);
    printf("uid: %d\n", info->si_uid);
    printf("val: %d\n", info->si_value.sival_int);
}

int main() {
    sigset_t newmask, oldmask;
    struct sigaction act;
    sigval_t val;

    act.sa_sigaction = sig_int;
    sigemptyset(&act.sa_mask);
    act.sa_flags = SA_SIGINFO;
    sigaction(SIGINT, &act, NULL);

    sigemptyset(&newmask);
    sigaddset(&newmask, SIGINT);
    sigprocmask(SIG_BLOCK, &newmask, &oldmask);

    for (int i = 0; i < 10; ++i) {
        val.sival_int = i + 10;
        sigqueue(getpid(), SIGINT, val);
        printf("%d\n", i);
    }

    sigset_t pending;
    sigpending(&pending);
    printf("parent int mask: %d\n", sigismember(&pending, SIGINT));

    sigprocmask(SIG_SETMASK, &oldmask, NULL);

    while (1)
        ;

    exit(0);
}
