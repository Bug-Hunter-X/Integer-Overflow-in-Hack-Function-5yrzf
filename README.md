# Hack Integer Overflow Bug

This repository demonstrates a subtle integer overflow bug in a simple Hack program. The `baz` function, through its calls to `foo` and `bar`, can produce incorrect results if the input is sufficiently large to cause an integer overflow.  The bug is highlighted and a solution is proposed. 

## Bug Description:

The bug stems from the use of standard integer arithmetic in Hack. If the intermediate values calculated within `foo` and `bar` exceed the maximum value for an integer in Hack, an overflow occurs, leading to unexpected and incorrect results.

## Solution:

The provided solution introduces checks to handle potentially large input values and prevent integer overflow.
