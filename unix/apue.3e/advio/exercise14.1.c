#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int main(int argc, char *argv[]) {
    pid_t pid;
    int fd;
    struct flock lock;
    int cnt = 0;

    if (argc == 1) {
        cnt = 0;
    } else {
        cnt = atoi(argv[1]);
    }

    if ((fd = open("./temp.file", O_RDWR)) < 0) {
        printf("%d open error!\n", cnt);
        exit(1);
    }

    switch (cnt) {  // first process
        case 0: {
            lock.l_type = F_RDLCK;
            lock.l_whence = SEEK_SET;
            lock.l_start = 0;
            lock.l_len = 0;
            fcntl(fd, F_SETLK, &lock);
            printf("%d lock file\n", cnt);

            for (int i = 1; i < 8; ++i) {
                if ((pid = fork()) < 0) {
                    printf("%d fork error\n", cnt);
                    exit(2);
                } else if (pid == 0) {  // child
                    char buf[2];
                    sprintf(buf, "%d", i);
                    if (i == 2) {
                        execl("./a.out", "a.out", "10", (char *)0);
                    } else {
                        execl("./a.out", "a.out", buf, (char *)0);
                    }
                    exit(3);
                }
            }

            lock.l_type = F_UNLCK;
            if (fcntl(fd, F_SETLK, &lock) < 0) {
                printf("%d unlock file error\n", cnt);
                exit(3);
            }
            printf("%d unlock file\n", cnt);
            break;
        }
        case 10: {
            lock.l_type = F_WRLCK;
            lock.l_whence = SEEK_SET;
            lock.l_start = 0;
            lock.l_len = 0;
            if (fcntl(fd, F_SETLKW, &lock) < 0) {
                printf("%d lock file error\n", cnt);
                exit(3);
            }
            printf("%d lock file\n", cnt);

            sleep(1);

            lock.l_type = F_UNLCK;
            if (fcntl(fd, F_SETLKW, &lock) < 0) {
                printf("%d unlock file error\n", cnt);
                exit(3);
            }
            printf("%d unlock file\n", cnt);
            break;
        }
        default: {
            lock.l_type = F_RDLCK;
            lock.l_whence = SEEK_SET;
            lock.l_start = 0;
            lock.l_len = 0;
            if (fcntl(fd, F_SETLK, &lock) < 0) {
                printf("%d lock file error\n", cnt);
                exit(3);
            }
            printf("%d lock file\n", cnt);

            sleep(1);

            lock.l_type = F_UNLCK;
            if (fcntl(fd, F_SETLK, &lock) < 0) {
                printf("%d unlock file error\n", cnt);
                exit(3);
            }
            printf("%d unlock file\n", cnt);
        }
    }

    exit(0);
}