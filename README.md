# ActionScript 3 Collision Detection Bug

This repository demonstrates a common error in ActionScript 3 collision detection using `hitTestObject()`. The `hitTestObject()` method only checks for collision at the registration points of two DisplayObjects. This leads to inaccurate collision detection, especially when objects are not perfectly aligned.

## Bug

The `bug.as` file contains code that uses `hitTestObject()` to check for collisions. This code will often fail to detect collisions even when objects visually overlap.

## Solution

The `bugSolution.as` file provides a corrected version using `hitTestPoint()` iteratively to check for collision across bounding boxes, providing more accurate collision detection.

## How to run

1.  Copy the code from `bug.as` and `bugSolution.as` into an ActionScript 3 project (e.g., Flash Professional, Flex).
2.  Run the code and observe the difference in collision detection accuracy.