class Teacher {
  String? _name;
  String? _subject;
  int? _noofTeachers;

  set teacherName(String name) => _name = name;
  String get teacherName => _name.toString();

  set teacherSubject(String subject) => _subject = subject;
  String get teacherSubject => _subject.toString();

  set noofTeachers(int noofTeachers) => _noofTeachers = noofTeachers;
  int get noofTeachers => int.parse(_noofTeachers.toString());
  void printTeachersDetails() {
    print('Details of Class Teacher Is Follows :');
    print('Name of Teacher :' + teacherName);
    print('Subject of Teachers :' + teacherSubject);
  }
}
