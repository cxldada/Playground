#include <iostream>
#include <sys/stat.h>

int main() {
    bool b{};
    std::cout <<"Enter a boolen value: ";

    std::cin >> std::boolalpha;
    std::cin >> b;

    std::cout << "You entered: " << b << '\n';
    return 0;
}
