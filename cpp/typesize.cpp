#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <exception>
using namespace std;

void test_type_size()
{
    cout << "bool:" << sizeof(bool) << endl;
    cout << "char:" << sizeof(char) << endl;
    cout << "wchar_t:" << sizeof(wchar_t) << endl;
    cout << "char16_t:" << sizeof(char16_t) << endl;
    cout << "char32_t:" << sizeof(char32_t) << endl;
    cout << "shor:" << sizeof(short) << endl;
    cout << "int:" << sizeof(int) << endl;
    cout << "long:" << sizeof(long) << endl;
    cout << "long long:" << sizeof(long long) << endl;
    cout << "float:" << sizeof(float) << endl;
    cout << "double:" << sizeof(double) << endl;
    cout << "long double:" << sizeof(long double) << endl;
}

void test_extern()
{
    extern int a;
    cout << a << endl;
}

void test_init_string()
{
    // in c++ 11 is right;
    // string str{'a','b','c'};
    // cout << str << endl;
}

void test_sizeof()
{
    vector<int> a{1, 2, 3, 4, 5, 6, 7, 8, 10};
    string str = "hello";

    cout << sizeof(a) << endl;
    cout << sizeof(str) << endl;
}

void test_switch() {
    int b = 1;
    switch (b) {
        case 0:
            int j;
            break;
        case 1:
            j = 10;
            cout << j << endl;
            break;
        default:
            break;
    }
}

void test_throw()
{
    throw runtime_error("throw runtime error test!");
}

void test_try()
{
    try {
        test_throw();
    } catch (runtime_error e) {
        cout << e.what() << endl;
    }
}

void print_stream_status(iostream& stream) {
    cout << "======================================" << endl;
    cout << "eof: " << stream.eof() << endl;
    cout << "fail: " << stream.fail() << endl;
    cout << "bad: " << stream.bad() << endl;
    cout << "good: " << stream.good() << endl;
    cout << "rdstate: " << stream.rdstate() << endl;
    cout << "======================================" << endl;
}

/**
 * 测试刘的错误信息
 * */
void test_stream_error()
{
    fstream fs;
    print_stream_status(fs);
    fs.open("./temp",fstream::in | fstream::app);
    print_stream_status(fs);
    fs << "test" << endl;
    print_stream_status(fs);

    // 定位到开头进行读取
    fs.seekg(0);
    string str;
    fs >> str;
    print_stream_status(fs);
    cout << str << endl;
}

void test_iterator()
{
    vector<int> vec{0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    auto        iter = vec.begin();
    while (iter != vec.end()) {
        if (*iter % 2 != 0) {
            iter = vec.insert(iter, *iter);
            iter += 2;
        }
        else {
            iter = vec.erase(iter);
        }
    }
}

int main()
{
    // test_type_size();
    // test_extern();
    // test_init_string();
    // test_sizeof();
    // test_switch();
    // test_throw();
    // test_try();
    test_stream_error();

    return 0;
}
