#include <iostream>
#include <vector>
#include <algorithm>

int main() {
    std::vector<int> vec = {1, 2, 3, 4, 5, 6};

    if (const std::vector<int>::iterator itr = std::find(vec.begin(), vec.end(), 3); itr != vec.end())
    {
        *itr = 10;
    }

    return 0;
}