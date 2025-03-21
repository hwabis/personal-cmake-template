#include "adder.hh"
#include <gtest/gtest.h>

TEST(AdderTest, BasicAddition)
{
    Adder a;
    EXPECT_EQ(a.Add(2, 3), 5);
    EXPECT_EQ(a.Add(-1, 1), 0);
}
