abstract class Animal {
  bool? _animalLife;
  String? _animalName;
  int? _animalDistance;
  int? _animalStrength;
  bool? _animalAttackingbehaviour;

  String printAnimalDetails() {
    String details = 'Details of Animal will be printed below ';
    return details;
  }

  String animalBehaviour() {
    String attackingBehaviour = 'This is animal Attacking behaviour';
    return attackingBehaviour;
  }

  set animalAttackingBehaviour(bool animalAttackingBehaviour) =>
      _animalAttackingbehaviour = animalAttackingBehaviour;
  bool get animalAttackingBehaviour => _animalAttackingbehaviour!;

  set animalLife(bool animalLife) => _animalLife = animalLife;
  bool get animalLife => _animalLife!;

  set animalName(String animalName) => _animalName = animalName;
  String get animalName => _animalName.toString();

  set distance(int animalDistance) => _animalDistance = animalDistance;
  int get distance => _animalDistance!;

  set strength(int animalStrength) => _animalStrength = animalStrength;
  int get strength => _animalStrength!;
}
