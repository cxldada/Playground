#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <termios.h>

int main(int argc, char *argv[]) {
    speed_t input, output;
    struct termios term;

    if (tcgetattr(STDIN_FILENO, &term) < 0) {
      printf("tcgetattr error\n");
      exit(0);
    }

    input = cfgetispeed(&term);
    output = cfgetospeed(&term);

    printf("input: %d\n", input);
    printf("output: %d\n", output);

    char ttyName[L_ctermid];
    ctermid(ttyName);
    printf("%s\n", ttyName);

    exit(0);
}
