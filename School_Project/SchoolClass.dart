class SchoolClass {
  int? nameOfClass;
  num? _numberOfClasses;

  set numberOfClasses(num noofClasses) => _numberOfClasses = noofClasses;
  num get numberOfClasses => num.parse(_numberOfClasses.toString());

  void printInstructions() {
    print('-----------------------------');
    print('Each and Every Student Must be follow this roles:');
    print('1 - Enter Class sharp on 10 am . late comers marked as Absent');
    print('2 - Regular class cleaning is Important');
    print('3 - No casual Leaves are allowed unless it is necessary');
    print('4 - EveryOne should be in Complete Uniform: ');
    print('5 - Leader Must report morning in the staff room EveryDay');
    print('Name of Class Teacher and Students are Follows: ');
  }

  // void printClassDetails() {
  //   if (numberOfClasses == 0) {
  //     nameOfClass = 1;
  //     printInstructions();
  //   } else if (numberOfClasses == 1) {
  //     nameOfClass = 2;
  //     printInstructions();
  //   } else if (numberOfClasses == 2) {
  //     nameOfClass = 3;
  //     printInstructions();
  //   } else if (numberOfClasses == 3) {
  //     nameOfClass = 4;
  //     printInstructions();
  //   } else if (numberOfClasses == 4) {
  //     nameOfClass = 5;
  //     printInstructions();
  //   } else if (numberOfClasses == 5) {
  //     nameOfClass = 6;
  //     printInstructions();
  //   } else if (numberOfClasses == 6) {
  //     nameOfClass = 7;
  //     printInstructions();
  //   } else if (numberOfClasses == 7) {
  //     nameOfClass = 8;
  //     printInstructions();
  //   } else if (numberOfClasses == 8) {
  //     nameOfClass = 9;
  //     printInstructions();
  //   } else if (numberOfClasses == 9) {
  //     nameOfClass = 9;
  //     printInstructions();
  //   } else {
  //     nameOfClass = 10;
  //     printInstructions();
  //   }
  // }
}
