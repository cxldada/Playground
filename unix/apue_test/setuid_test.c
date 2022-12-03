#include <stdio.h>
#include <stdlib.h>
#define _GNU_SOURCE /* 开启getresuid函数 */
#include <unistd.h>
#include <errno.h>
extern int errno;

void printCurreuid() {
    uid_t ruid = -1, euid = -1, suid = -1;
#ifdef __linux__
    getresuid(&ruid, &euid, &suid);
#else
    ruid = getuid();
    euid = geteuid();
#endif
    printf("ruid: %d, euid: %d, suid: %d \n", ruid, euid, suid);
}

int main(int argc, char *argv[]) {
    long savedid = sysconf(_SC_SAVED_IDS);
    printf("_SC_SAVED_IDS: %ld \n", savedid);

    printf("init -- ");
    printCurreuid();

    printf("setuid(rid:%d) -- ", getuid());
    if (setuid(getuid()) == -1) {
        if (errno == EPERM) {
            printf("eperm\n");
        }
        exit(errno);
    }
    printCurreuid();

    printf("setuid(root) -- ");
    if (setuid(0) == -1) {
        if (errno == EPERM) {
            printf("eperm\n");
        }
        exit(errno);
    }
    printCurreuid();

    return 0;
}