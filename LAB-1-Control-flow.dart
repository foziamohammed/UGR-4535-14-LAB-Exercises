import 'dart:io';

void main() {
  print("Enter a number:");
  String userInput = stdin.readLineSync()!;
  int number = int.parse(userInput);

  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}