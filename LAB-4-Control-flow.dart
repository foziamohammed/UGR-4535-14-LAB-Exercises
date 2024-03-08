import 'dart:io';

void main() {
  print("Enter the grade:");
  double grade = double.parse(stdin.readLineSync()!);

  String letterGrade;

  switch (grade) {
    case 90:
      letterGrade = "A";
      break;
    case 80:
      letterGrade = "B";
      break;
    case 70:
      letterGrade = "C";
      break;
    case 60:
      letterGrade = "D";
      break;
    default:
      letterGrade = "F";
      break;
  }

  print("Letter Grade: $letterGrade");
}