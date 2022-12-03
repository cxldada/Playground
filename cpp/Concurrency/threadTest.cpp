#include <cstdlib>
#include <iostream>
#include <thread>

void f1(int n) {
  for (int i = 0; i < 5; ++i) {
    std::cout <<"Thread " << n << " executing\n";
    std::this_thread::sleep_for(std::chrono::milliseconds(10));
  }
}

void f2(int &n) {
  for (int i = 0; i < 5; ++i) {
    std::cout << "Thread 2 executing\n";
    ++n;
    std::this_thread::sleep_for(std::chrono::milliseconds(10));
  }
}

void thread_task(int n) {
    std::this_thread::sleep_for(std::chrono::seconds(n));
    std::cout << "hello thread "
        << std::this_thread::get_id()
        << " paused " << n << " seconds" << std::endl;
}

void test1() {
  int n = 0;
  std::thread t1;
  std::thread t2(f1, n + 1);
  std::thread t3(f2, std::ref(n));
  std::thread t4(std::move(t3));
  t2.join();
  t4.join();
  std::cout << "Final value of n is " << n << "\n";
}

void test2() {
  std::thread thArr[5];
  std::cout << "Spawning 5 threads...\n";
  for (int i = 0; i < 5; i++) {
    thArr[i] = std::thread(thread_task, i + 1);
  }
  std::cout << "Done spawning threads! Now wait for them to join\n";
  for (auto &t : thArr) {
    t.join();
  }
  std::cout << "All threads joined.\n";
}

void test3_task() { std::this_thread::sleep_for(std::chrono::seconds(1)); }

void test3() {
  std::thread t;
  std::cout << "before starting, joinable: " << t.joinable() << "\n";

  t = std::thread(test3_task);
  std::cout << "after starting, joinable: " << t.joinable() << "\n";
  
  t.join();
}

void test4_task() {
  std::cout << "Starting concurrent thread.\n";
  std::this_thread::sleep_for(std::chrono::seconds(2));
  std::cout << "Exiting concurrent thread.\n";
}

void test4() {
  std::cout << "String thread caller.\n";
  std::thread t(test4_task);
  t.detach();
  std::this_thread::sleep_for(std::chrono::seconds(1));
  std::cout << "Exiting thread caller.\n";
}

void test5_foo() { std::this_thread::sleep_for(std::chrono::seconds(1)); }

void test5_bar() { std::this_thread::sleep_for(std::chrono::seconds(1)); }

void test5() {
  std::thread t1(test5_foo);
  std::thread t2(test5_bar);

  std::cout << "thread 1 id: " << t1.get_id() << std::endl;
  std::cout << "thread 2 id: " << t2.get_id() << std::endl;

  std::swap(t1, t2);

  std::cout << "after std::swap(t1, t2):" << std::endl;
  std::cout << "thread 1 id: " << t1.get_id() << std::endl;
  std::cout << "thread 2 id: " << t2.get_id() << std::endl;

  t1.swap(t2);

  std::cout << "after t1.swap(t2):" << std::endl;
  std::cout << "thread 1 id: " << t1.get_id() << std::endl;
  std::cout << "thread 2 id: " << t2.get_id() << std::endl;

  t1.join();
  t2.join();
}

void test6() {
  unsigned int n = std::thread::hardware_concurrency();
  std::cout << n << " concurrent threads are supported.\n";
}

void test7_task(std::chrono::microseconds us) {
  auto start = std::chrono::high_resolution_clock::now();
  auto end = start + us;
  do {
    std::this_thread::yield();
  }while(std::chrono::high_resolution_clock::now() < end);
}

void test7() {
  auto start = std::chrono::high_resolution_clock::now();
  test7_task(std::chrono::microseconds(100));
  auto elapsed = std::chrono::high_resolution_clock::now() - start;
  std::cout
      << "waited for "
      << std::chrono::duration_cast<std::chrono::microseconds>(elapsed).count()
      << " microseconds\n";
}

int main() {
  // test1();
  // test2();
  // test3();
  // test4();
  // std::this_thread::sleep_for(std::chrono::seconds(5));
  // test5();
  // test6();
  test7();
  return EXIT_SUCCESS;
}