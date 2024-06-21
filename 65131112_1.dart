//1 Algorithm: CalculateTriangleArea

import 'dart:math';

double calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return double.nan; // or throw an error if preferred
  }

  if (sideA + sideB <= sideC || sideA + sideC <= sideB || sideB + sideC <= sideA) {
    return double.nan; // or throw an error if preferred
  }

  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));
  return area;
}

void main() {
  // Example usage:
  double side1 = 1;
  double side2 = 1;
  double side3 = 1;

  double area = calculateTriangleArea(side1, side2, side3);
  print('Area of the triangle: $area'); // Output: Area of the triangle: 6.0
}
