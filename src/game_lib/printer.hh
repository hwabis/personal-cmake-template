#pragma once

#include <string>

class Printer
{
  public:
    void Print(const std::string &message);
    int PrintCount = 0;
};
