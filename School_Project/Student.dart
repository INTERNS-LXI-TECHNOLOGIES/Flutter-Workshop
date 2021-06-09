class Student {
  String? _name;
  String? _age;
  String? _class;

  set studentName(String name) => _name = name;
  String get studentName => _name.toString();

  set studentAge(String age) => _age = age;
  String get studentAge => _age.toString();

  set studentClass(String sclass) => _class = sclass;
  String get studentClass => _class.toString();
}
