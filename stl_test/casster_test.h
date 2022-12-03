#ifndef _STL_TEST_CASSERT_H_
#define _STL_TEST_CASSERT_H_

// #define NDEBUG
#include <cassert>

namespace tcassert {
  int test() {
    assert(1);

    assert(0);

    return 0;
  }
}

#endif // _STL_TEST_CASSERT_H_
