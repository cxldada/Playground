#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int main() {
    char buff[256];
    int fd = open("./test.txt", O_RDWR | O_APPEND);
    if(fd == -1) {
        printf("opend file error\n");
        exit(1);
    }

    memset(buff, 0, 256);
    printf("clear: %s\n",buff);

    off_t cur = lseek(fd, 0, SEEK_CUR);
    printf("cur position: %ld\n", cur);

    off_t after = lseek(fd, 10, SEEK_SET);
    printf("after position: %ld\n", after);

    read(fd, buff, 256);
    printf("%s\n", buff);
    cur = lseek(fd, 0, SEEK_CUR);
    printf("read after position: %ld\n", cur);

    /* ========================================= */

    memset(buff, 0, 256);
    printf("clear: %s\n",buff);

    cur = lseek(fd, 0, SEEK_CUR);
    printf("cur position: %ld\n", cur);

    after = lseek(fd, 10, SEEK_SET);
    printf("after position: %ld\n", after);

    /* write(fd, "123", 3); */
    pwrite(fd, "123", 3, 10);
    printf("%s\n", buff);
    cur = lseek(fd, 0, SEEK_CUR);
    printf("write after position: %ld\n", cur);

    close(fd);
    exit(0);
}
