#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <string.h>
#include <errno.h>

pthread_mutex_t mutex;

void *th_fun1(void *arg) {
    int err = pthread_mutex_lock(&mutex);
    printf("t1 lock err %d: %s\n", err, strerror(err));
    //pthread_mutex_unlock(&mutex);
    pthread_exit((void *)0);
}

void *th_fun2(void *arg) {
    int err = pthread_mutex_consistent(&mutex);
    printf("t2 consistent err %d: %s\n", err, strerror(err));
    err = pthread_mutex_unlock(&mutex);
    printf("t2 unlock err %d: %s\n", err, strerror(err));
    err = pthread_mutex_lock(&mutex);
    printf("t2 lock err %d: %s\n", err, strerror(err));

    pthread_exit((void *)0);
}

int main(int argc, char *argv[]) {
    int err;
    pthread_t t1, t2;
    pthread_mutexattr_t mutexAttr;
    pthread_mutexattr_setrobust(&mutexAttr, PTHREAD_MUTEX_ROBUST);
    pthread_mutexattr_settype(&mutexAttr, PTHREAD_MUTEX_DEFAULT);
    pthread_mutex_init(&mutex, &mutexAttr);

    err = pthread_create(&t1, NULL, th_fun1, NULL);
    if (err != 0) {
        printf("create t1 error\n");
        exit(1);
    }

    pthread_join(t1, NULL);

    err = pthread_create(&t2, NULL, th_fun2, NULL);
    if (err != 0) {
        printf("create t2 error\n");
        exit(2);
    }
    pthread_join(t2, NULL);

    pthread_mutexattr_destroy(&mutexAttr);
    pthread_mutex_destroy(&mutex);

    exit(0);
}