#include <stdio.h>
#include <string.h>

int main() {
    printf("%*d\n", 7, 10);
    const char str[6] = "12345";

    char *ptr = strchr(str, '3');

    *ptr = '6';
    printf("%s\n", str);

    return 0;
}
