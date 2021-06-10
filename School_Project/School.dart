import 'Student.dart';
import 'Teacher.dart';
import 'dart:math';

class School {
  List<Student> students = [];
  List<Teacher> teachers = [];
  int? limitValue;
  int? _numberofStudents;
  void classDivisionDetails() {
    var randomNumber = Random().nextInt(5);
    teachers[randomNumber].printTeachersDetails();
    for (var j = 0; j < limitValue!; j++) {
      var studentRandomNumber = Random().nextInt(numberOfStudents);
      students[studentRandomNumber].printStudentDeatils();
    }
  }

  set numberOfStudents(int numberofStudents) =>
      _numberofStudents = numberofStudents;
  int get numberOfStudents => int.parse(_numberofStudents.toString());
  void setStudents(List<Student> students) => this.students = students;
  void setTeachers(List<Teacher> teachers) => this.teachers = teachers;

  void printStudetDetailswithClassTeacher() {
    limitValue = 2;
    print('Number of Students in a Class Is fixed as 2:');
    limitValue = 2;
    if (numberOfStudents <= 6) {
      for (var i = 0; i <= 3; i++) {
        classDivisionDetails();
      }
    } else if (numberOfStudents <= 10) {
      for (var i = 0; i < 5; i++) {
        classDivisionDetails();
      }
    } else {
      print(
          'Max Number of Student is Alloted is 10 students in class 10th \n please join Student in a New School ');
    }
  }
}
