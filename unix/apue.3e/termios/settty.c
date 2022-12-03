#include <stdio.h>
#include <termios.h>

#include "apue.h"

int main(void) {
    struct termios term;
    long vdisable;

    if (isatty(STDIN_FILENO) == 0) err_quit("standard input is not a terminal device");

    if ((vdisable = fpathconf(STDIN_FILENO, _PC_VDISABLE)) < 0) err_quit("fpathconf error or _POSIX_VDISABLE not in effect");

    if (tcgetattr(STDIN_FILENO, &term) < 0) /* fetch tty state */
        err_sys("tcgetattr error");

    printf("vdisable: %ld\n", vdisable);
    printf("before VINTR: %d\n", term.c_cc[VINTR]);
    printf("before VEOF: %d\n", term.c_cc[VEOF]);
    fflush(stdout);

    term.c_cc[VINTR] = vdisable; /* disable INTR character */
    term.c_cc[VEOF]  = 2;        /* EOF is Control-B */

    if (tcsetattr(STDIN_FILENO, TCSANOW, &term) < 0) err_sys("tcsetattr error");

    printf("after VINTR: %d\n", term.c_cc[VINTR]);
    printf("after VEOF: %d\n", term.c_cc[VEOF]);

    exit(0);
}
