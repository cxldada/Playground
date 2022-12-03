#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

#define MAXSIZE 4096

int main(int argc, char *argv[]) {
    int index;
    bool isAll;
    int errorCode;
    char buf[MAXSIZE];

    if(argc == 2) {
        errorCode = atoi(argv[1]);
        errno = errorCode;
        snprintf(buf, MAXSIZE, "errno[%d], strerror: %s, perror", errorCode, strerror(errorCode));
        perror(buf);
        exit(0);
    }

    isAll = false;
    if (argc == 1) {
        isAll = true;
        argc = 256;
    }

    index = 1;
    while (index < argc) {
        errorCode = isAll ? index : atoi(argv[index]);
        errno = errorCode;
        snprintf(buf, MAXSIZE, "errno[%d], strerror: %s, perror", errorCode, strerror(errorCode));
        perror(buf);
        ++index;
    }
    exit(0);
}
