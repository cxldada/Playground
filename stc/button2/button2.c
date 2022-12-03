#include "../include/tools.h"

void main() {
  while (1) {
    if (P3_1 == 0) {
      delay(20);
      while (P3_1 == 0) {
      }
      delay(20);
      P2_0 = P2_0 == 1 ? 0 : 1;
    }
  }
}