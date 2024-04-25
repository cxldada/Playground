#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>

int
main(void)
{
	int fd = open("hello.c", O_RDWR);
    printf("hello fd: %d\n", fd);
    exit(0);
}
