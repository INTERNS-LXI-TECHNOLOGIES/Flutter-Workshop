abstract class Animal {
  bool? _life;
  String? _name;
  int? _distance;
  int? _strength;

  String printAnimalDetails() {
    String details = 'Details of Animal will be printed below ';
    return details;
  }

  set animalLife(bool life) => _life = life;
  bool get animalLife => _life!;

  set animalName(String name) => _name = name;
  String get animalName => _name.toString();

  set distance(int distance) => _distance = distance;
  int get distance => _distance!;

  set strength(int strength) => _strength = strength;
  int get strength => _strength!;
}
