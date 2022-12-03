#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/stat.h>

void test1() {
    int val = 0;
    val = fcntl(STDOUT_FILENO, F_GETFD);
    printf("fd: %d, val: %d\n", STDOUT_FILENO, val);

    val |= FD_CLOEXEC;
    fcntl(STDOUT_FILENO, F_SETFD, val);
    val = fcntl(STDOUT_FILENO, F_GETFD);
    printf("fd: %d, val: %d\n", STDOUT_FILENO, val);

    int nfd = dup(STDOUT_FILENO);
    val = fcntl(nfd, F_GETFD);
    printf("nfd: %d, val: %d\n", nfd, val);
}

void test2() {
    int val = 0;
    val = fcntl(STDOUT_FILENO, F_GETFD);
    printf("fd: %d, val: %d\n", STDOUT_FILENO, val);

    val |= FD_CLOEXEC;
    fcntl(STDOUT_FILENO, F_SETFD, val);
    val = fcntl(STDOUT_FILENO, F_GETFD);
    printf("fd: %d, val: %d\n", STDOUT_FILENO, val);

    int nfd = fcntl(STDOUT_FILENO, F_DUPFD, 0);
    val = fcntl(nfd, F_GETFD);
    printf("nfd: %d, val: %d\n", nfd, val);
}

void test3() {
    int fd1, fd2, fd3;
    off_t sk1, sk2, sk3;
    char buf[64];
    fd1 = open("./test.txt", O_RDWR);
    fd2 = dup(fd1);
    fd3 = open("./test.txt", O_RDWR);

    sk1 = lseek(fd1, 0, SEEK_CUR);
    sk2 = lseek(fd2, 0, SEEK_CUR);
    sk3 = lseek(fd3, 0, SEEK_CUR);
    printf("1 init seek: %ld\n", sk1);
    printf("2 init seek: %ld\n", sk2);
    printf("3 init seek: %ld\n", sk3);

    read(fd1, buf, 64);
    sk1 = lseek(fd1, 0, SEEK_CUR);
    sk2 = lseek(fd2, 0, SEEK_CUR);
    sk3 = lseek(fd3, 0, SEEK_CUR);
    printf("1 read seek: %ld\n", sk1);
    printf("2 read seek: %ld\n", sk2);
    printf("3 read seek: %ld\n", sk3);
}

int main() {
    /* test2(); */
    test3();

    exit(0);
}
