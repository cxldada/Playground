#include <iostream>
#include <map>

template <typename Key, typename Value, typename F>
void update(std::map<Key, Value> &m, F foo)
{
    for (auto &&[key, value] : m)
        value = foo(key);
}

template <typename... Ts>
auto fold(Ts... args)
{
    return (args + ...) / sizeof...(args);
}

int main()
{
    std::map<std::string, long long int> m{
        {"a", 1},
        {"b", 2},
        {"c", 3},
    };

    update(m, [](std::string key)
           { return std::hash<std::string>{}(key); });

    for (auto &&[key, value] : m)
        std::cout << key << ":" << value << std::endl;

    std::cout << "fold: " << fold(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) << std::endl;
}