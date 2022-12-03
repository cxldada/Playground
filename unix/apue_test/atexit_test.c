#include <stdio.h>
#include <stdlib.h>

void print_exit() {
    printf("before exit func\n");
}

int main() {
    atexit(print_exit);
    printf("now start exit\n");
}
