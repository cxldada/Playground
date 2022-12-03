#include "../include/tools.h"

void main() {
  while (1) {
    Nixie(1, 1);
    Nixie(1, Nixie_Null);
    Nixie(2, 9);
    Nixie(2, Nixie_Null);
    Nixie(3, 9);
    Nixie(3, Nixie_Null);
    Nixie(4, 6);
    Nixie(4, Nixie_Null);
    Nixie(5, 1);
    Nixie(5, Nixie_Null);
    Nixie(6, 1);
    Nixie(6, Nixie_Null);
    Nixie(7, 1);
    Nixie(7, Nixie_Null);
    Nixie(8, 8);
    Nixie(8, Nixie_Null);
  }
}