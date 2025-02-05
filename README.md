# Subtle Input Error Handling in Ada Range Check

This repository demonstrates a subtle error in Ada code related to input validation. The `Check_Range` function itself is correct, but the main program lacks robust error handling, which is a common pitfall in Ada and other languages.  The bug lies in the lack of exception handling for potential errors during input.

## Bug Description
The Ada code includes a function to check if an integer is within a specific range. While the range check function works fine, the main program does not handle potential exceptions raised if the user enters non-numeric input. This can lead to program crashes.  The solution will demonstrate how to properly use exception handling to gracefully handle incorrect input and prevent program termination.

## How to Reproduce
1. Compile and run the Ada code in `bug.ada`.
2. Enter a non-numeric value (e.g., "abc") as input.
3. Observe that the program crashes due to a `Data_Error` exception.

## Solution
The solution in `bugSolution.ada` addresses this by implementing exception handling.  It now gracefully handles the `Data_Error` exception and provides the user with a more informative error message.

This example highlights the importance of comprehensive input validation and robust error handling in Ada to ensure the program's stability and reliability.