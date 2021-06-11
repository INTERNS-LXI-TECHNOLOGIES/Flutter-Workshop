import 'dart:math';
import 'Division.dart';
import 'Student.dart';
import 'Teacher.dart';

class School {
  Division? division;
  List<Teacher> teachers = [];
  List<Student> students = [];
  int? _numberOfStudents;

  void classDivision() {
    int randomNumber = Random().nextInt(5);
    teachers[randomNumber].printTeachersDetails();
    print('-----------------------------------------');
    for (var j = 0; j < 2; j++) {
      int randomStudents = Random().nextInt(numberOfStudents);
      students[randomStudents].printStudentDeatils();
    }
    print('-----------------------------------------');
    print('-----------------------------------------');
    print('-----------------------------------------');
  }

  set numberOfStudents(int numberOfStudents) =>
      _numberOfStudents = numberOfStudents;
  int get numberOfStudents => int.parse(_numberOfStudents.toString());

  void setStudents(List<Student> students) => this.students = students;
  void setTeachers(List<Teacher> teachers) => this.teachers = teachers;
  void setDivision(Division division) => this.division = division;
  void printDetails() {
    if (numberOfStudents <= 6) {
      print('Number of Class Division is 3 with 2 Students in Each:');
      for (var i = 0; i < 3; i++) {
        division?.classDivision = i;
        division?.printInstructions();
        classDivision();
      }
    } else if (numberOfStudents <= 10) {
      print('Number of Class Division is 5 with 2 Students in Each:');
      for (var i = 0; i < 5; i++) {
        division?.printInstructions();
        classDivision();
      }
    } else {
      print(
          'Seats In The school for Class 10th is full Please contact school principal for further instruction regarding to the admission :');
      print('ThankYou');
    }
  }
}
