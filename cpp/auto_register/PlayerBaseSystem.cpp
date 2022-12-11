#include <iostream>

template <typename T> class Singleton {
public:
  static void CreateInstance() {
    std::cout << "CreateInstance" << std::endl;
    if (instance == nullptr)
      instance = new T();
  }

  static void DestroyInstance() {
    if (instance != nullptr)
      delete instance;
    instance = nullptr;
  }

  static inline T *Instance() {
    std::cout << "Instance" << std::endl;
    if (instance == nullptr) {
      CreateInstance();
    }

    return instance;
  }

protected:
  Singleton() {}
  ~Singleton() {}
  static T *instance;
};

template <typename T> T *Singleton<T>::instance;

class IPlayerSystemInterface {
public:
  IPlayerSystemInterface() { bIsReg = false; }

  virtual ~IPlayerSystemInterface() {}

  virtual int OnInit() = 0;

  bool IsReg() { return bIsReg; }
  void MarkReg() { bIsReg = true; }

private:
  bool bIsReg;
};

class PlayerSystemMgr : public Singleton<PlayerSystemMgr> {
public:
  PlayerSystemMgr() {}
  ~PlayerSystemMgr(){};

  bool RegisterSystemInterface(IPlayerSystemInterface *iSystem) {
    if (iSystem == nullptr) {
      return false;
    }
    if (iSystem->IsReg()) {
      return false;
    }

    iSystem->MarkReg();
    arrayInterface[curIndex] = iSystem;
    ++curIndex;

    std::cout << "PlayerSystemMgr " << curIndex << std::endl;
    return true;
  }

private:
  IPlayerSystemInterface *arrayInterface[100];
  int curIndex;
};

template <typename T>
class PlayerBaseSystem : public IPlayerSystemInterface, public Singleton<T> {
private:
  struct STHelper {
    STHelper() {
      std::cout << "helper" << std::endl;
      PlayerSystemMgr::Instance()->RegisterSystemInterface(T::Instance());
    }

    void DoNothing() {}
  };
  static STHelper helper;

public:
  PlayerBaseSystem() {
    std::cout << "PlayerBaseSystem" << std::endl;
    helper.DoNothing();
  }

  virtual ~PlayerBaseSystem() {}
};
template <typename T>
typename PlayerBaseSystem<T>::STHelper PlayerBaseSystem<T>::helper;

class A : public PlayerBaseSystem<A> {
public:
  A() { std::cout << "create A" << std::endl; }

  int OnInit() override {
    std::cout << "A::OnInit()" << std::endl;
    return 0;
  }
};

int main(int argc, char *argv[]) {
  A::Instance()->OnInit();
  return 0;
}
