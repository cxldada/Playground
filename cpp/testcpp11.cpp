#include <iostream>

using namespace std;

int main(int argc, char* argv[])
{
    size_t v1 = 88;
    auto   f  = [v1]() {
        if (v1 > 0) { return 1; }
        else if (v1 == 0) {
            return 0;
        }
        else {
            return -1;
        }
    };
    v1     = 0;
    auto j = f();
}
