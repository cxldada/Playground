#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <limits.h>

int main() {
    long limit = sysconf(_SC_ATEXIT_MAX);
    printf("atexit_max: %ld\n", limit);
    exit(0);
}
