#include <iostream>
#include <string>
using namespace std;

class TestA {
  public:
    TestA() { cout << "default" << endl; }
    TestA(const TestA &a) { cout << "copy" << endl; }

    const TestA &operator=(const TestA &rhs) {
        cout << "copy assgiment" << endl;
        return *this;
    }
};

class TestB {
  public:
    TestB() {}
    TestB(const TestA &t, int i) : num(i) { a = t; }

  private:
    TestA a;
    int num;
};

int main() {
    TestB test(TestA(), 1);
    return 0;
}