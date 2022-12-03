#include <iostream>
#include <string>

template <typename T> class TestA {
public:
  TestA(std::string &name, T o);

  std::string &name;
  T obj;
};

void test(TestA<int> &o) {
    std::string b = "bbb";
    o.name = b;
    o.obj = 2;
}

int main() {
  std::string a = "aaa";
  TestA<int> o(a, 1);
  std::cout << o.name << " " << o.obj << std::endl;
  test(o);
  std::cout << o.name << " " << o.obj << std::endl;

  return 0;
}
