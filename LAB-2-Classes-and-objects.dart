import 'person.dart';

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    double average = total / marks.length;
    return average;
  }
}