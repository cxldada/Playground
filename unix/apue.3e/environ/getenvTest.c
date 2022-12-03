#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    char *env = getenv(argv[1]);
    printf("%s: %s\n", argv[1], env);
    exit(0);
}
