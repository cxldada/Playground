#include <errno.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char const *argv[]) {
    int fd = open("hello.c", O_RDWR | O_CLOEXEC);
    if (fd == -1) {
        printf("open hello.c error");
        exit(errno);
    }

    pid_t pid;
    if ((pid = fork()) == 0) {  // 子进程
        {
            // 代码块2
            int fd2 = open("./hello.c", O_RDWR);
            if (fd2 == -1) {
                printf("open hello.c error");
                exit(errno);
            }
            printf("child process fd2: %d\n", fd2);
        }
        {
            // 代码块1
            if (execlp("./hello", "hello") == -1) {
                printf("execlp hello error\n");
                exit(errno);
            }
        }
        

    } else {
        // 父进程
        sleep(1);
        int fd2 = open("hello", O_RDWR);
        if (fd2 == -1) {
            printf("open hello error");
            exit(errno);
        }
        printf("parent process fd2: %d\n", fd2);
    }

    return 0;
}
