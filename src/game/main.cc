#include "adder.hh"
#include "printer.hh"
#include <iostream>

// If set up properly, clang-tidy emits 4 warnings from this file.
// Try fixing them all!

class A
{
  public:
    virtual ~A()
    {
    }

    virtual void DoStuff()
    {
    }
};

class B : public A
{
    virtual void DoStuff()
    {
        std::cout << "woo";
    }
};

static void Do(A a)
{
    a.DoStuff();
}

int main()
{
    Adder a;
    Printer p;

    p.Print(std::to_string(a.Add(1, 2)));

    B b;
    Do(b);
}
