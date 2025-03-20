#include "adder.hh"
#include "printer.hh"
#include <iostream>

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

// Intentionally create warnings here to check code analysis is working.
// To fix, change the arg to &
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
