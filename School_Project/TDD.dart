import 'dart:io';

import 'Division.dart';
import 'School.dart';
import 'Student.dart';
import 'Teacher.dart';

Student student = Student();
Teacher teacher = Teacher();
School school = School();
Division division = Division();
List<Student> students = [];
List<Teacher> teachers = [];
void main() {
  applicationMenu();
}

void applicationMenu() {
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
  print('Please Choose Any Option : ');
  print('1 - Enter The Details Of Students : ');
  print('2 - Print The Details Of Teachers : ');
  print('3 - Generate Divisions : ');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;
  if (options == 1) {
    inputstudentDetails();
  } else if (options == 2) {
    inputTeacherDetails();
  } else if (options == 3) {
    printUserOutput();
  } else {
    print('You are entered a wrong input please try again');
  }
}

void inputstudentDetails() {
  print('Enter the Number of Students:');
  int numberOfStudents = int.parse(stdin.readLineSync().toString());
  school.numberOfStudents = numberOfStudents;
  print('Enter The Number of Students In a Division :');
  int numberofStudentsinaDivision = int.parse(stdin.readLineSync().toString());
  division.numberofStudentsinaDivision = numberofStudentsinaDivision;
  for (var i = 1; i <= numberOfStudents; i++) {
    print('Enter Student Name :');
    student.studentName = stdin.readLineSync().toString();
    print('Enter Student RegisterNumber : ');
    student.studentRegisterNumber = stdin.readLineSync().toString();
    students.add(student);
  }
  school.setStudents(students);
  school.setDivision(division);
  mainMenu();
}

void inputTeacherDetails() {
  print('Enter The Number Of Teachers :');
  int numberOfTeachers = int.parse(stdin.readLineSync().toString());
  teacher.noofTeachers = numberOfTeachers;
  for (var i = 0; i <= numberOfTeachers; i++) {
    print('Enter The Name Of Teacher : ');
    teacher.teacherName = stdin.readLineSync().toString();
    print('Enter the Subject of Teacher :');
    teacher.teacherSubject = stdin.readLineSync().toString();
    teachers.add(teacher);
  }
  school.setTeachers(teachers);
  mainMenu();
}

void printUserOutput() {
  school.printDetails();
}
