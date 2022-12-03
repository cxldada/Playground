#include <iostream>
#include <string>
#include <memory>

void DelString(std::string *str) {
    delete str;
    std::cout << "delete string" << std::endl;
}

int main() {
    std::shared_ptr<std::string> pString(new std::string("aaa"), DelString);
    std::cout << pString->c_str() << std::endl;
    return 0;
}