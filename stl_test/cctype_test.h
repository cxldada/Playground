#ifndef _STL_TEST_CCTYPE_H_
#define _STL_TEST_CCTYPE_H_

#include <cctype>
#include <iostream>
using namespace std;

namespace tcctype {

/**
   检测字符是否为字母或数字
 */
void test_isalnum() {
  cout << "======== isalnum test ======== " << endl;
  cout << "c is alpha or numeric? " << isalnum('c') << endl;
  cout << "! is alpha or numeric? " << isalnum('!') << endl;
  cout << "3 is alpha or numeric? " << isalnum('3') << endl;
  cout << "' ' is alpha or numeric? " << isalnum(' ') << endl;
}

/**
   检测字符是否为字母
 */
void test_isalpha() {
  cout << "======== isalpha test ======== " << endl;
  cout << "c is alpha? " << isalpha('c') << endl;
  cout << "! is alpha? " << isalpha('!') << endl;
  cout << "3 is alpha? " << isalpha('3') << endl;
  cout << "' ' is alpha ? " << isalpha(' ') << endl;
}

/**
   检测字符是否为空格
 */
void test_isblank() {
  cout << "======== isblank test ======== " << endl;
  cout << "c is blank? " << isblank('c') << endl;
  cout << "! is blank? " << isblank('!') << endl;
  cout << "3 is blank? " << isblank('3') << endl;
  cout << "' ' is blank? " << isblank(' ') << endl;
  cout << "'\\n' is space? " << isblank('\n') << endl;
  cout << "'\\t' is space? " << isblank('\t') << endl;
  cout << "'\\v' is space? " << isblank('\v') << endl;
  cout << "'\\f' is space? " << isblank('\f') << endl;
  cout << "'\\r' is space? " << isblank('\r') << endl;
}

/**
   检测字符是否为控制字符
 */
void test_iscntrl() {
  cout << "======== iscntrl test ======== " << endl;
  cout << "c is control char? " << iscntrl('c') << endl;
  cout << "! is control char? " << iscntrl('!') << endl;
  cout << "3 is control char? " << iscntrl('3') << endl;
  cout << "' ' is control char? " << iscntrl(' ') << endl;
  cout << "NULL is control char? " << iscntrl(0) << endl;
  cout << "0x1f ' is control char? " << iscntrl(0x1f) << endl;
  cout << "0x7f ' is control char? " << iscntrl(0x7f) << endl;
}

/**
   检测字符是否为数字
 */
void test_isdigit() {
  cout << "======== isdigit test ======== " << endl;
  cout << "c is digit? " << isdigit('c') << endl;
  cout << "! is digit? " << isdigit('!') << endl;
  cout << "3 is digit? " << isdigit('3') << endl;
  cout << "' ' is digit? " << isdigit(' ') << endl;
}

/**
 检测字符是否能用图形表示
 */
void test_isgraph() {
  cout << "======== isgraph test ======== " << endl;
  cout << "c is graph? " << isgraph('c') << endl;
  cout << "! is graph? " << isgraph('!') << endl;
  cout << "3 is graph? " << isgraph('3') << endl;
  cout << "' ' is graph? " << isgraph(' ') << endl;
}

/**
 检测字符是否为大/小写
 */
void test_islower_upper() {
  cout << "======== islower test ======== " << endl;
  cout << "c is lower? " << islower('c') << endl;
  cout << "C is lower? " << islower('C') << endl;
  cout << "! is lower? " << islower('!') << endl;
  cout << "3 is lower? " << islower('3') << endl;
  cout << "' ' is lower? " << islower(' ') << endl;

  cout << "======== isupper test ======== " << endl;
  cout << "c is upper? " << isupper('c') << endl;
  cout << "C is upper? " << isupper('C') << endl;
  cout << "! is upper? " << isupper('!') << endl;
  cout << "3 is upper? " << isupper('3') << endl;
  cout << "' ' is upper? " << isupper(' ') << endl;
}

/**
 检测字符是否可以printf出来
 */
void test_isprint() {
  cout << "======== isprint test ======== " << endl;
  cout << "c is print? " << isprint('c') << endl;
  cout << "! is print? " << isprint('!') << endl;
  cout << "3 is print? " << isprint('3') << endl;
  cout << "' ' is print? " << isprint(' ') << endl;
}

/**
 检测字符是否为标点符号
 */
void test_ispunct() {
  cout << "======== ispunct test ======== " << endl;
  cout << "c is punctuation? " << ispunct('c') << endl;
  cout << "! is punctuation? " << ispunct('!') << endl;
  cout << "3 is punctuation? " << ispunct('3') << endl;
  cout << "' ' is punctuation? " << ispunct(' ') << endl;
}

/**
 检测字符是否为16进制的数字组成部分
 */
void test_isxdigit() {
  cout << "======== isxdigit test ======== " << endl;
  cout << "c is x digit? " << isxdigit('c') << endl;
  cout << "C is x digit? " << isxdigit('C') << endl;
  cout << "x is x digit? " << isxdigit('x') << endl;
  cout << "X is x digit? " << isxdigit('X') << endl;
  cout << "! is x digit? " << isxdigit('!') << endl;
  cout << "3 is x digit? " << isxdigit('3') << endl;
  cout << "' ' is x digit? " << isxdigit(' ') << endl;
}

/**
 检测字符是否为空格
 包括: ' ','\n','\t','\v','\f','\r'
 */
void test_isspace() {
  cout << "======== isspace test ======== " << endl;
  cout << "c is space? " << isspace('c') << endl;
  cout << "! is space? " << isspace('!') << endl;
  cout << "' ' is space? " << isspace(' ') << endl;
  cout << "'\\n' is space? " << isspace('\n') << endl;
  cout << "'\\t' is space? " << isspace('\t') << endl;
  cout << "'\\v' is space? " << isspace('\v') << endl;
  cout << "'\\f' is space? " << isspace('\f') << endl;
  cout << "'\\r' is space? " << isspace('\r') << endl;
}

int test() {
  test_isalnum();
  test_isalpha();
  test_isblank();
  test_iscntrl();
  test_isdigit();
  test_isgraph();
  test_islower_upper();
  test_isprint();
  test_ispunct();
  test_isxdigit();
  test_isspace();

  return 0;
}

} // namespace tcctype

#endif // _STL_TEST_CCTYPE_H_
