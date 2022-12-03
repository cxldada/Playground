#include <iostream>

template <typename... T>
auto sum(T... t)
{
    return (t + ...);
}

int main()
{
    std::cout << sum(1, 2.3, 3, 4.4, 5, 6.6, 7, 8.8, 9) << std::endl;
}