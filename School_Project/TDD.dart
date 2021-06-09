import 'dart:io';
import 'School.dart';
import 'Student.dart';
import 'Teacher.dart';

School school = School();
Student student = Student();
Teacher teacher = Teacher();
List<Student> students = [];

void main() {
  startUpLogo();
  mainMenu();
}

void adminMenu() {
  print('Please Choose Any Option : ');
  print('1 - Enter The Details Of Students : ');
  print('2 - Print The Details Of Students : ');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;
  if (options == 1) {
    studentsDetails();
  } else {
    print('You Are Entered A wrong Input');
  }
}

void startUpLogo() {
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

void studentsDetails() {
  print('Enter the Number of Students:');
  int numberOfStudents = int.parse(stdin.readLineSync().toString());
  for (var i = 0; i <= numberOfStudents; i++) {
    print('Enter Student Name :');
    student.studentName = stdin.readLineSync().toString();
    print('Enter Student Class : ');
    student.studentClass = stdin.readLineSync().toString();
    print('Enter Student Age : ');
    student.studentAge = stdin.readLineSync().toString();
    students.add(student);
  }
}

void teacherDetails() {
  print('Enter The Number Of Teachers :');
  int numberOfTeachers = int.parse(stdin.readLineSync().toString());
  for (var i = 0; i <= numberOfTeachers; i++) {
    print('Enter The Name Of Teacher : ');
    teacher.teacherName = stdin.readLineSync().toString();
    print('Enter the Subject of Teacher :');
    teacher.teacherSubject = stdin.readByteSync().toString();
  }
}

void teachersAndStudentsMenu() {}

void mainMenu() {
  print('Press 1 for School admin/Manager :');
  print('press 2 for teachers and Students :');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;
  if (options == 1) {
    adminMenu();
  } else if (options == 2) {
    teachersAndStudentsMenu();
  } else {}
}
