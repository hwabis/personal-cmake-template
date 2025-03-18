#include "printer.hh"

#include <iostream>

void Printer::Print(const std::string &message)
{
    std::cout << message << "\n";
    PrintCount++;
}
