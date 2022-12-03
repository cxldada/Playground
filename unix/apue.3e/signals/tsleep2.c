#include <signal.h>
#include "apue.h"

unsigned int sleep2(unsigned int);
static void sig_int(int);

int main(void) {
    unsigned int unslept;
    /*
    struct sigaction sig_act;

    sig_act.sa_handler = sig_int;
    sigemptyset(&sig_act.sa_mask);
    sigaddset(&sig_act.sa_mask, SIGALRM);
    sig_act.sa_flags = 0;

    if (sigaction(SIGINT, &sig_act, NULL) < 0) err_sys("signal(SIGINT) error");
    */
    if (signal(SIGINT, sig_int) == SIG_ERR) err_sys("signal(SIGINT) error");
    unslept = sleep2(5);
    printf("sleep2 returned: %u\n", unslept);

    // unslept = sleep(5);
    // printf("sleep returned: %u\n", unslept);
    exit(0);
}

static void sig_int(int signo) {
    int i, j;
    volatile int k;

    /*
     * Tune these loops to run for more than 5 seconds
     * on whatever system this test program is run.
     */
    printf("\nsig_int starting\n");
    for (i = 0; i < 300000; i++)
        for (j = 0; j < 40000; j++) k += i * j;
    printf("sig_int finished\n");
}
