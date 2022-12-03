#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/sem.h>
#include <unistd.h>
#include <wait.h>

int main() {

	semctl(1, 1, 1);

	exit(0);
}