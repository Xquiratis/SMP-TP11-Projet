#include "Calculator.h"
#include <gtest/gtest.h>

TEST(FactorialTest, ZeroValue) {
  Calculator test1;
  EXPECT_DOUBLE_EQ(2, test1.div(4, 2));
}

TEST(testDiv, TwoThreeThree) {
  Calculator test2;
  EXPECT_NEAR(2.333, test2.div(7, 3), 0.001);
}

TEST(Division, ParZero) {
  Calculator test3;
  ASSERT_EXIT(test3.div(7, 0),         ::testing::ExitedWithCode(255), "error");
}

