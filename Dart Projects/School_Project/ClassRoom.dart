import 'dart:math';
import 'Student.dart';
import 'Teacher.dart';

class ClassRoom {
  var className;
  var numberOfClasses;
  var classStrength;
  void printInstructions() {
    print('');
    print('---------------------------- ');
    print('Class $className - Instructions :');
    print('-----------------------------');
    print('Each and Every Student Must be follow this roles:');
    print('1 - Enter Class sharp on 10 am . late comers marked as Absent');
    print('2 - Regular class cleaning is Important');
    print('3 - No casual Leaves are allowed unless it is necessary');
    print('4 - EveryOne should be in Complete Uniform: ');
    print('5 - Leader Must report morning in the staff room EveryDay');
    print('Name of Class Teacher and Students are Follows: ');
  }

  void generateStudentsAndClassTeacher(
      List<Student> students, List<Teacher> teachers) {
    for (var i = 0; i < numberOfClasses; i++) {
      className = i;
      printInstructions();
      int random = Random().nextInt(10);
      teachers[random].printTeachersDetails();

      for (var j = 0; j < classStrength; j++) {
        int indexNumber = Random().nextInt(classStrength);
        students[indexNumber].printStudentDeatils();
      }
    }
  }
}
