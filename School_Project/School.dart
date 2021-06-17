import 'dart:math';
import 'ClassRoom.dart';
import 'Student.dart';
import 'Teacher.dart';

class School {
  int? _totalStudents;

  int? _classStrngth;
  int? _noofTeachers;

  ClassRoom? classRoom;
  List<Student> students = [];
  List<Teacher> teachers = [];
  List subject = [
    'Maths',
    'Physics',
    'Chemistry',
    'Biology',
    'Social Science',
    'English',
    'Malayalam'
  ];

  set totalNumberOfStudents(int totalStudents) =>
      _totalStudents = totalStudents;
  int get totalNumberOfStudents => int.parse(_totalStudents.toString());

  set classStrength(int strength) => _classStrngth = strength;
  int get classStrength => int.parse(_classStrngth.toString());

  set numberofTeachers(int noofTeachers) => _noofTeachers = noofTeachers;
  int get numberofTeachers => int.parse(_noofTeachers.toString());

  void setClass(ClassRoom classRoom) => this.classRoom = classRoom;
  void setStudents(List<Student> students) => this.students = students;
  void setTeachers(List<Teacher> teachers) => this.teachers = teachers;

  void generateClasseswithStudentsAndTeachers() {
    generateStudents();
    generateTeachers();
    classRoom?.generateStudentsAndClassTeacher(students, teachers);
  }

  static const chars = "zxcvbnmasdfghjklqwertyuiop";
  String randomString(int stringLength) {
    var random = Random();
    String result = "";
    for (var i = 0; i < stringLength; i++) {
      result += chars[random.nextInt(chars.length)];
    }
    return result;
  }

  void generateStudents() {
    for (var i = 0; i < totalNumberOfStudents; i++) {
      students.add(new Student());
      String name = randomString(10);
      students[i].studentName = name;
      int registerNumber = Random().nextInt(10);
      students[i].studentRegisterNumber = registerNumber;
    }
  }

  void generateTeachers() {
    for (var i = 0; i < numberofTeachers; i++) {
      teachers.add(new Teacher());
      String name = randomString(10);
      teachers[i].teacherName = name;
      int random = Random().nextInt(6);
      teachers[i].teacherSubject = subject[random];
    }
  }
}
