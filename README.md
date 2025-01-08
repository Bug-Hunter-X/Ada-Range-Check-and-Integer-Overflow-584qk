# Ada Range Check and Integer Overflow

This example demonstrates a potential issue in Ada related to range checking and integer overflow. The `Check_Range` function is designed to check if an integer is within a specific range (10 to 100). However, it does not explicitly handle the possibility of an input value exceeding the maximum or minimum values for the `Integer` type.

The `Main` procedure demonstrates a scenario where the input value `Num` (1000) is outside the intended range, leading to a potential error. This example also includes a solution that addresses this issue.  This is a subtle bug, as the code compiles and runs without a runtime error, but the result is incorrect (it silently returns `False` instead of raising an exception).  This is different from a simple logic error that might result in an exception.

## Solution

The solution focuses on better handling of potential integer overflow situations, making the code more robust and less prone to unexpected behavior.