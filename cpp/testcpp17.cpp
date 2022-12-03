#include <array>
#include <iostream>
#include <string_view>
#include <tuple>
#include <type_traits>

namespace a::b::c {
    inline constexpr std::string_view str{"hello"};
}

template <class... T>
std::tuple<std::size_t, std::common_type_t<T...>> sum(T... args) {
    return { sizeof...(T), (args + ...) };
}

void test_lambda() {
    auto func = [] {
        std::cout << "lambda function" << std::endl;
        return 1;
    };

    func();
}

int main() {
    auto [iNumbers, iSum] { sum(3,3,3) };
    std::cout << a::b::c::str << ' ' << iNumbers << ' ' << iSum << '\n';

    std::array arr{1,2,3};
    std::cout << std::size(arr) << '\n';

    test_lambda();
    return 0;
}
