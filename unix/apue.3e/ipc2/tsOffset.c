#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

struct A {
	int a;
	int b;
    short c;
};

int main(int argc, char *argv[]) {
    struct A as;

    int offset = offsetof(struct A, c);
    printf("A.c offset : %d\n", offset);

    offset = 0;
	ptrdiff_t addr = &((struct A *)0)->c;
    offset = (int)&((struct A *)0)->c;
    printf("A.c offset(self) : %d\n", offset);

    printf("A.c pinter(self) : %p\n", addr);

    exit(0);
}