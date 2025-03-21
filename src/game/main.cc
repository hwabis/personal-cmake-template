#include "adder.hh"
#include "printer.hh"
#include <iostream>

// If code analysis is working properly, this file emits at least 4 unique warnings

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
