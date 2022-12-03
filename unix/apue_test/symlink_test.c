#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/stat.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("usage: a.out symlink_file\n");
        exit(1);
    }

    struct stat buf;
    if (lstat(argv[1], &buf) < 0) {
        printf("stat error\n");
        exit(1);
    }

    if (!S_ISLNK(buf.st_mode)) {
        printf("%s is not symlink file\n", argv[1]);
        exit(1);
    }

    char linkbuf[128];
    if(readlink(argv[1], linkbuf, 128) == -1) {
        printf("readlink %s is error\n", argv[1]);
        exit(1);
    }

    printf("readlink %s: %s\n", argv[1], linkbuf);
    exit(0);
}
