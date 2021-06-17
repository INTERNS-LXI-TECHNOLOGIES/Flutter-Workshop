import 'dart:io';
import 'School.dart';
import 'ClassRoom.dart';
import 'Student.dart';
import 'Teacher.dart';

Student student = Student();
Teacher teacher = Teacher();
List<Student> students = [];
List<Teacher> teachers = [];
ClassRoom classRoom = ClassRoom();
School school = School();

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
  print('Select Any Options');
  print('1 - Start Admission');
  print('2 - View Admission Details');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;
  if (options == 1) {
    admissionProcedure();
  } else if (options == 2) {
    school.generateClasseswithStudentsAndTeachers();
    main();
  } else {
    print('You are Entered A Wrong Input');
    print('Please Try Again');
  }
}

void admissionProcedure() {
  print('Enter the Numbers of Students to be added:');
  school.totalNumberOfStudents = int.parse(stdin.readLineSync().toString());
  print('Enter Number of classes :');
  classRoom.numberOfClasses = num.parse(stdin.readLineSync().toString());
  print('Enter Number Of Students In A Class:');
  classRoom.classStrength = int.parse(stdin.readLineSync().toString());
  print('Enter the Number Of Teachers to be Appointed: ');
  school.numberofTeachers = int.parse(stdin.readLineSync().toString());
  school.generateClasseswithStudentsAndTeachers();
  print('Admission Process hasbeen Completed: ');
  print('ThankYou');

  school.setClass(classRoom);
  school.setStudents(students);
  school.setTeachers(teachers);
  mainMenu();
}
