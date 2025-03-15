#include <gtest/gtest.h>
#include "printer.hh"
#include <sstream>

TEST(PrinterTest, PrintsCorrectly)
{
    Printer p;
    EXPECT_EQ(p.PrintCount_, 0);
    p.Print("henlo");
    EXPECT_EQ(p.PrintCount_, 1);
}
