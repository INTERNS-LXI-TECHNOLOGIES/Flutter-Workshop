class Student {
  String? _name;
  String? _registerNumber;

  set studentName(String name) => _name = name;
  String get studentName => _name.toString();

  set studentRegisterNumber(String age) => _registerNumber = age;
  String get studentRegisterNumber => _registerNumber.toString();

  void printStudentDeatils() {
    print('Name Of Student :' + studentName);
    print('Register Number Of Students :' + studentRegisterNumber);
  }
}
