#include <cstring>
#include <iostream>
#include <string>
#include <vector>

template <typename T> int compare(const T &v1, const T &v2) {
  if (v1 < v2)
    return -1;
  if (v2 < v1)
    return 1;
  return 0;
}

void test1() {
  int *a = new int(10);
  int *b = new int(100);

  std::cout << compare(1, 2) << std::endl;
  std::cout << compare(1.5, 2.0) << std::endl;
  std::cout << compare(b, a) << std::endl;
}

template <unsigned N, unsigned M>
int compare(const char (&p1)[N], const char (&p2)[M]) {
  return strcmp(p1, p2);
}

void test2() { std::cout << compare("hi", "mom"); }

template <typename I, typename V>
I find(I start, I end, const V &value) {
  while (start != end) {
    if (*start == value)
      return start;

    start++;
  }
  return end;
}

void test3() {
  std::vector<int> a{1, 2, 3, 4};
  auto itFind = find(a.begin(), a.end(), 4);
  std::cout << *itFind << std::endl;
}

template <typename T> int fcn(T &&i) {
  std::cout << "i: " << i << std::endl;
  ++i;
  return 0;
}

void test4() {
  int i = 1;
  fcn(i);
  std::cout << "after i: " << i << std::endl;
  fcn(2);
}

template<typename T, typename... Args>
void foo(const T &t,const Args... rest)
{
  std::cout << sizeof...(Args) << std::endl;
  std::cout << sizeof...(rest) << std::endl;
}

void test5() {
  int i = 0;
  double d = 3.14;
  std::string s = "how now brown cow";
  foo(i, s, 42, d);
  foo(s, 42, "hi");
  foo(d, s);
  foo("hi");
}

int main() {
  //   test1();
  //   test2();
  //   test3();
  //   test4();
  test5();
  return 0;
}