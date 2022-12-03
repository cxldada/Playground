#ifndef _CXL_SORT_H_
#define _CXL_SORT_H_

#include <iostream>

template <typename Arr>
class Sort {
public:
    virtual ~Sort(){};
    virtual void sort(Arr &) = 0;
    virtual bool isSort(const Arr &);
    virtual void show(const Arr &);

    template <typename DataType>
    void exch(Arr &array, DataType li, DataType ri) {
        DataType temp = array[li];
        array[li] = array[ri];
        array[ri] = temp;
    }

private:
    Sort(const Sort &) = delete;
    Sort &operator=(const Sort &) = delete;
};

template <typename Arr>
void Sort<Arr>::show(const Arr &array) {
    for (const auto &item : array) {
        std::cout << *item << " ";
    }
}

template <typename Arr>
bool Sort<Arr>::isSort(const Arr &array) {
    auto item = array.begin();
    auto last = item++;
    while (item != array.end()) {
        if (*last > *item) return false;
    }
    return true;
}

#endif  // _CXL_SORT_H_
