class Division {
  var division;
  int? classDivision;
  num? _numberofStudentsinaDivision;
  set numberofStudentsinaDivision(num numberofStudentsinaDivision) =>
      _numberofStudentsinaDivision = numberofStudentsinaDivision;
  num get numberofStudentsinaDivision =>
      num.parse(_numberofStudentsinaDivision.toString());

  void printInstructions() {
    print('Class 10th Division - $division Instructions List');
    print('-----------------------------');
    print('Each and Every Student Must be follow this roles:');
    print('1 - Enter Class sharp on 10 am . late comers marked as Absent');
    print('2 - Regular class cleaning is Important');
    print('3 - No casual Leaves are allowed unless it is necessary');
    print('4 - EveryOne should be in Complete Uniform: ');
    print('5 - Leader Must report morning in the staff room EveryDay');
    print('Name of Class Teacher and Students are Follows: ');
  }

  void generateClassDivision() {
    if (classDivision == 0) {
      division = 'A';
      printInstructions();
    } else if (classDivision == 1) {
      division = 'B';
      printInstructions();
    } else if (classDivision == 2) {
      division = 'C';
      printInstructions();
    } else if (classDivision == 3) {
      division = 'D';
      printInstructions();
    } else if (classDivision == 4) {
      division = 'E';
      printInstructions();
    } else {
      division = 'F';
      printInstructions();
    }
  }
}
