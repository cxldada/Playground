#include <iostream>

template <class T>
struct X {
    template<unsigned N>
        void alloc() {std::cout << "alloc<" << N << ">()\n";}
};

template <class T>
struct Y : public X<T> {
    void test() {
        this->template alloc<200>();
    }
};

int main() {
    Y<int> y;
    y.test();
}
