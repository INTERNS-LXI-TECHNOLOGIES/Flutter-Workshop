class Student {
  String? _name;
  int? _registerNumber;

  set studentName(String name) => _name = name;
  String get studentName => _name.toString();

  set studentRegisterNumber(int regiisterNumber) =>
      _registerNumber = regiisterNumber;
  int get studentRegisterNumber => int.parse(_registerNumber.toString());

  void printStudentDeatils() {
    print('Name Of Student :' + studentName);
    print('Register Number Of Students :' + studentRegisterNumber.toString());
  }
}
