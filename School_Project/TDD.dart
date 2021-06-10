import 'dart:io';
import 'School.dart';
import 'Student.dart';
import 'Teacher.dart';

School school = School();
Student student = Student();
Teacher teacher = Teacher();
List<Student> students = [];
List<Teacher> teachers = [];

void main() {
  startUpLogo();
  mainMenu();
}

void mainMenu() {
  print('Please Choose Any Option : ');
  print('1 - Enter The Details Of Students : ');
  print('2 - Print The Details Of Students : ');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;
  if (options == 1) {
    studentsDetails();
    mainMenu();
  } else if (options == 2) {
    printStudentandTeachersDeatils();
  } else {
    print('You Are Entered A wrong Input');
    mainMenu();
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
  //numberOfStudents = school.numberOfStudents;
  for (var i = 1; i <= numberOfStudents; i++) {
    print('Enter Student Name :');
    student.studentName = stdin.readLineSync().toString();
    print('Enter Student RegisterNumber : ');
    student.studentRegisterNumber = stdin.readLineSync().toString();
    students.add(student);
  }
  school.setStudents(students);
  mainMenu();
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
  school.setTeachers(teachers);
}

void printStudentandTeachersDeatils() {
  school.printStudetDetailswithClassTeacher();
}
