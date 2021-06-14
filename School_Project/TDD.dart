import 'dart:io';
import 'School.dart';
import 'SchoolClass.dart';
import 'Student.dart';
import 'Teacher.dart';
import 'dart:math';

Student student = Student();
Teacher teacher = Teacher();
List<Student> students = [];
List<Teacher> teachers = [];
SchoolClass schoolclass = SchoolClass();
School school = School();
List subject = [
  'Maths',
  'Physics',
  'Chemistry',
  'Biology',
  'Social Science',
  'English',
  'Malayalam'
];

void main() {
  startUpScreen();
  mainMenu();
}

void startUpScreen() {
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t-------------- ABC School --------------------------');
  print('\t\t------------------  --------------------------------');
  print('\t\t------------- Pattambi Kerala ----------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
}

void mainMenu() {
  print('Enter the Numbers of Students to be added:');
  int totalStudents = int.parse(stdin.readLineSync().toString());
  school.totalNumberOfStudents = totalStudents;
  print('Enter Number of classes :');
  int numberofClasses = int.parse(stdin.readLineSync().toString());
  schoolclass.numberOfClasses = numberofClasses;
  print('Enter Number Of Students In A Class:');
  int strength = int.parse(stdin.readLineSync().toString());
  school.classStrength = strength;
  print('Enter the Number Of Teachers to be Appointed: ');
  int noofTeacher = int.parse(stdin.readLineSync().toString());
  school.numberofTeachers = noofTeacher;
  print('Press 1 to start Admission :');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;
  if (options == 1) {
    generateStudents();
    generateTeachers();
    print('Admission Process hasbeen Completed: ');
    print('ThankYou');
    mainMenu();
  } else if (options == 2) {
    school.printGeneratedClasses();
  } else {
    print('You are Entered a Wrong Input');
  }
  school.setClass(schoolclass);
  school.setStudents(students);
  school.setTeachers(teachers);
}

const chars = "zxcvbnmasdfghjklqwertyuiop0123456789";
String randomString(int stringLength) {
  var random = Random();
  String result = "";
  for (var i = 0; i < stringLength; i++) {
    result += chars[random.nextInt(chars.length)];
  }
  return result;
}

void generateStudents() {
  for (var i = 0; i < school.totalNumberOfStudents; i++) {
    String name = randomString(10);
    student.studentName = name;
    int registerNumber = Random().nextInt(10);
    student.studentRegisterNumber = registerNumber;
    //print(name);
    //print(registerNumber);
    students.add(student);
  }
}

void generateTeachers() {
  for (var i = 0; i < 10; i++) {
    String name = randomString(10);
    teacher.teacherName = name;
    int random = Random().nextInt(6);
    teacher.teacherSubject = subject[random];
    //print(name);
    //print(subject[random]);
    teachers.add(teacher);
  }
}
