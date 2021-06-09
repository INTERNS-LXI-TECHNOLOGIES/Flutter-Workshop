class Teacher {
  String? _name;
  String? _subject;

  set teacherName(String name) => _name = name;
  String get teacherName => _name.toString();

  set teacherSubject(String subject) => _subject = subject;
  String get teacherSubject => _subject.toString();
}
