#include <iostream>
using namespace std;

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
<<<<<<< HEAD
    PlayerSystemMgr() { std::cout << "create PlayerSystemMgr" << std::endl; }
    ~PlayerSystemMgr(){};
=======
  PlayerSystemMgr() {}
  ~PlayerSystemMgr(){};
>>>>>>> 6fd96f06060f6ad69a437dd7ba35a5f978d6d6ab

  bool RegisterSystemInterface(IPlayerSystemInterface *iSystem) {
    if (iSystem == nullptr) {
      return false;
    }
    if (iSystem->IsReg()) {
      return false;
    }

<<<<<<< HEAD
    int Init()
    {
        for (int i = 0; i < 100; ++i) {
            IPlayerSystemInterface* pTemp = arrayInterface[i];
            if (pTemp) {
                int ret = pTemp->OnInit();
                if (ret != 0) return ret;
            }
        }

        return 0;
    }
=======
    iSystem->MarkReg();
    arrayInterface[curIndex] = iSystem;
    ++curIndex;

    std::cout << "PlayerSystemMgr " << curIndex << std::endl;
    return true;
  }
>>>>>>> 6fd96f06060f6ad69a437dd7ba35a5f978d6d6ab

private:
  IPlayerSystemInterface *arrayInterface[100];
  int curIndex;
};

<<<<<<< HEAD
template<typename T>
class PlayerBaseSystem : public IPlayerSystemInterface, public Singleton<T>
{
public:
    struct STHelper
    {
        STHelper()
        {
            std::cout << "helper" << std::endl;
            PlayerSystemMgr::Instance()->RegisterSystemInterface(T::Instance());
        }

        void DoNothing() {}
    };
    static STHelper helper;

public:
    // PlayerBaseSystem() = default;
    PlayerBaseSystem()
    {
        std::cout << "PlayerBaseSystem" << std::endl;
        helper.DoNothing();
    }

    virtual ~PlayerBaseSystem() = default;
};
template<typename T>
typename PlayerBaseSystem<T>::STHelper PlayerBaseSystem<T>::helper{};
=======
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
>>>>>>> 6fd96f06060f6ad69a437dd7ba35a5f978d6d6ab

class A : public PlayerBaseSystem<A> {
public:
<<<<<<< HEAD
    // A() { std::cout << "create A" << std::endl; }
    A() = default;
=======
  A() { std::cout << "create A" << std::endl; }
>>>>>>> 6fd96f06060f6ad69a437dd7ba35a5f978d6d6ab

  int OnInit() override {
    std::cout << "A::OnInit()" << std::endl;
    return 0;
  }
};

<<<<<<< HEAD
int main(int argc, char* argv[])
{
    PlayerSystemMgr::Instance()->Init();
    cout << "==========" << endl;
    return 0;
=======
int main(int argc, char *argv[]) {
  A::Instance()->OnInit();
  return 0;
>>>>>>> 6fd96f06060f6ad69a437dd7ba35a5f978d6d6ab
}
