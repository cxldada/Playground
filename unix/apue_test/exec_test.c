#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    pid_t pid;

    if ((pid = fork()) < 0) {
        printf("fork error\n");
        exit(1);
    } else if (pid == 0) {
        if (execlp("./test.sh", "./test.sh", "haha", "xixi", (char *)0) == -1) {
            printf("execlp error\n");
            exit(1);
        }
    }

    wait(NULL);
    printf("done");

    exit(0);
}