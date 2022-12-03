#include <iostream>

enum class Side : int { Right = 1, Left = 2 };

int main() {
  std::cout << (int)Side::Right << std::endl;
  return 0;
}