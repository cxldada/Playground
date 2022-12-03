#include <stdio.h>
#include <wchar.h>

int main() {
    int out_wide_type = fwide(stdout, -1);
    int in_wide_type = fwide(stdin, 1);
    int err_wide_type = fwide(stderr, 0);
    printf("stdout wide type: %d\n", out_wide_type);
    printf("stdin wide type: %d\n", in_wide_type);
    printf("stderr wide type: %d\n", err_wide_type);

    return 0;
};