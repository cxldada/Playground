#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <string.h>

int main(int argc, char *argv[]) {
    int i;
    struct stat buf;
    char ptr[512];

    for (i = 1; i < argc; ++i) {
        printf("%s: ", argv[i]);
        if (lstat(argv[i], &buf) < 0) {
            printf("lstat error\n");
            continue;
        }
        if (S_ISREG(buf.st_mode))
            strcpy(ptr, "regular");
        else if (S_ISDIR(buf.st_mode))
            strcpy(ptr, "directory");
        else if (S_ISCHR(buf.st_mode))
            strcpy(ptr, "character special");
        else if (S_ISBLK(buf.st_mode))
            strcpy(ptr, "block special");
        else if (S_ISFIFO(buf.st_mode))
            strcpy(ptr, "fifo");
        else if (S_ISLNK(buf.st_mode))
            strcpy(ptr, "sysbolic link");
        else if (S_ISSOCK(buf.st_mode))
            strcpy(ptr, "socket");
        else
            strcpy(ptr, "** unknow mode **");

        if (S_ISUID & buf.st_mode)
            strcat(ptr, " set-user-id");
        if (S_ISGID & buf.st_mode)
            strcat(ptr, " set-group-id");

        printf("%s\n", ptr);
    }

    exit(0);
}
