#include <iostream>
#include <vector>
#include <memory>

class A
{
public:
    A() { std::cout << "constructor A" << std::endl; }
    ~A() { std::cout << "distory A" << std::endl; }
    A(const A& a) { std::cout << "copy constructor A" << std::endl; }
    A& operator=(const A& a)
    {
        std::cout << "assignment A" << std::endl;
        return *this;
    }
};

void use_factory() {
    std::shared_ptr<A> spA = std::make_shared<A>();
}

int main(int argc, char* argv[])
{
    // std::vector<A> arr(10);
    use_factory();

    return 0;
}
