import 'dart:math';

import 'SchoolClass.dart';
import 'Student.dart';
import 'TDD.dart';
import 'Teacher.dart';

class School {
  int? _totalStudents;

  int? _classStrngth;
  int? _noofTeachers;

  SchoolClass? schoolClass;
  List<Student> students = [];
  List<Teacher> teachers = [];

  set totalNumberOfStudents(int totalStudents) =>
      _totalStudents = totalStudents;
  int get totalNumberOfStudents => int.parse(_totalStudents.toString());

  set classStrength(int strength) => _classStrngth = strength;
  int get classStrength => int.parse(_classStrngth.toString());

  set numberofTeachers(int noofTeachers) => _noofTeachers = noofTeachers;
  int get numberofTeachers => int.parse(_noofTeachers.toString());

  void setClass(SchoolClass schoolClass) => this.schoolClass = schoolClass;
  void setStudents(List<Student> students) => this.students = students;
  void setTeachers(List<Teacher> teachers) => this.teachers = teachers;

  void generateClasseswithStudentsAndTeachers() {
    var numberOfClasses = schoolClass?.numberOfClasses;
    for (var i = 0; i < numberOfClasses!; i++) {
      teacher.printTeachersDetails();
      for (var j = 0; j < classStrength; j++) {
        int indexNumber = Random().nextInt(classStrength);
        students[indexNumber].printStudentDeatils();
      }
    }
  }

  void printGeneratedClasses() {
    generateClasseswithStudentsAndTeachers();
  }
}
