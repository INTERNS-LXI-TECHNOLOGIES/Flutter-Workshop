abstract class Animal {
  bool? _life;
  String? _name;
  int? _distance;
  int? _strength;

  void printTypeofFoodEatByAanimal() {
    print('Eating Behaviour of Animal');
  }

  void printnameOfAnimal() {
    print('---------- Name And Type Of Animal ------------');
  }

  set animalLife(bool life) => _life = life;
  bool get animalLife => _life!;

  set animalName(String name) => _name = name;
  String get animalName => _name!;

  set distance(int distance) => _distance = distance;
  int get distance => _distance!;

  set strength(int strength) => _strength = strength;
  int get strength => _strength!;
}
