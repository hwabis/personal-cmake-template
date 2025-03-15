#include <iostream>
#include "adder.hh"
#include "printer.hh"

int main()
{
    Adder a;
    Printer p;

    p.Print(std::to_string(a.Add(1, 2)));
}
