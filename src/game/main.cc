#include "adder.hh"
#include "printer.hh"
#include <iostream>

int main()
{
    Adder a;
    Printer p;

    p.Print(std::to_string(a.Add(1, 2)));
}
