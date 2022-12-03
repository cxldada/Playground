#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include "prids.h"

int main() {
    pid_t pid;

    if ((pid = fork()) < 0) {
        printf("fork error!");
        exit(1);
    } else if(pid == 0) {
        execl("./echoall", "a", "b", "c", (char*)0);
        _exit(0);
    }

    prids();
    wait(NULL);
    exit(0);
}
