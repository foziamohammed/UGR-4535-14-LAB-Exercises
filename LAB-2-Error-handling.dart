double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is DivisionByZeroError) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('An error occurred during division: $e');
    }
    return null;
  }
}

void main() {
  double dividend = 10;
  double divisor = 0;

  double result = divideNumbers(dividend, divisor);
  if (result != null) {
    print('Result: $result');
  }
}