#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void printThreadLimit() {
    long keymax = sysconf(_SC_THREAD_KEYS_MAX);
    printf("thread keys max: %ld\n", keymax);
    long stack = sysconf(_SC_THREAD_STACK_MIN);
    printf("thread stack min: %ld\n", stack);
    long nummax = sysconf(_SC_THREAD_THREADS_MAX);
    printf("thread max: %ld\n", nummax);
    long des = sysconf(_SC_THREAD_DESTRUCTOR_ITERATIONS);
    printf("thread destructor iterations: %ld\n", des);
}

int main() {
    printThreadLimit();
    exit(0);
}