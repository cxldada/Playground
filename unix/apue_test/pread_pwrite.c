#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <string.h>

#define BUFF_SIZE 128

int main() {
    int fd = open("./test.txt", O_RDWR | O_CREAT, S_IRWXU | S_IRWXG);
    char buf[BUFF_SIZE];

    int add = 0;
    for (int i = 0; i < BUFF_SIZE; ++i, ++add) {
        buf[i] = 'A' + add;

        if (add == 25)
            add = 0;
    }

    if (write(fd, buf, BUFF_SIZE) != BUFF_SIZE) {
        printf("write buff error\n");
        exit(1);
    }

    off_t cur_seek = lseek(fd, 0, SEEK_SET);
    printf("cur seek: %ld\n", cur_seek);

    memset(buf, 0, BUFF_SIZE);

    ssize_t readsz = pread(fd, buf, BUFF_SIZE, 100);
    printf("pread size: %ld\n", readsz);

    off_t after_seek = lseek(fd, 0, SEEK_SET);
    printf("after seek: %ld\n", after_seek);

    exit(0);
}
