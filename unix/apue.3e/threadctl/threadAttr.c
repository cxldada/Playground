#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

void *th_fcn(void *arg) {
  char *str = (char *)arg;
  write(STDOUT_FILENO, str, strlen(str));
}

int main() {
  pthread_t tid;
  pthread_attr_t att;
  char *str = "hello thread";
  void *buf;
  size_t bufsize;

  pthread_attr_init(&att);
  // pthread_attr_setdetachstate(&att, PTHREAD_CREATE_DETACHED);

  pthread_attr_getstack(&att, &buf, &bufsize);
  printf("stack addr: %p, size: %lu\n", buf, bufsize);
  
  pthread_attr_getstacksize(&att, &bufsize);
  printf("stack size: size: %lu\n", bufsize);
  pthread_attr_setstacksize(&att, 204800000);
  pthread_attr_getstacksize(&att, &bufsize);
  printf("stack size: size: %lu\n", bufsize);

  pthread_attr_getstack(&att, &buf, &bufsize);
  printf("after change stack add: %p, size: %lu\n", buf, bufsize);
  
  pthread_create(&tid, &att, th_fcn, str);
  pthread_attr_destroy(&att);
  pthread_join(tid, NULL);
  sleep(1);

  exit(0);
}