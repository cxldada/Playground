#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

int main(int argc, char *argv[]) {
    pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

    pthread_mutex_lock(&mutex);

	int err = pthread_mutex_destroy(&mutex);
    printf("destory mutext err code %d: %s", err, strerror(err));

    exit(0);
}