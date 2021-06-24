abstract class Animal {
  bool? _animalLife;
  String? _animalName;
  int? _animalDistance;
  int? _animalStrength;

  String printAnimalDetails() {
    String details = 'Details of Animal will be printed below ';
    return details;
  }

  set animalLife(bool animalLife) => _animalLife = animalLife;
  bool get animalLife => _animalLife!;

  set animalName(String animalName) => _animalName = animalName;
  String get animalName => _animalName.toString();

  set distance(int animalDistance) => _animalDistance = animalDistance;
  int get distance => _animalDistance!;

  set strength(int animalStrength) => _animalStrength = animalStrength;
  int get strength => _animalStrength!;
}
