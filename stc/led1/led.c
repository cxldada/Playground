#include "../include/tools.h"

void pmd1() {
  unsigned char i = 1;
  while (i != 0) {
    P2 = 0xff & (~i);
    delay(100);
    i = i << 1;
  }
}

void pmd2() {
  unsigned char i = 0x80;
  while (i != 0) {
    P2 = 0xff & (~i);
    delay(100);
    i = i >> 1;
  }
}

int main() {
  while (1) {
    pmd1();
    pmd2();
  }

  return 0;
}