#include "printer.hh"

#include <gtest/gtest.h>

TEST(PrinterTest, PrintsCorrectly)
{
    Printer p;
    EXPECT_EQ(p.PrintCount_, 0);
    p.Print("henlo");
    EXPECT_EQ(p.PrintCount_, 1);
}
