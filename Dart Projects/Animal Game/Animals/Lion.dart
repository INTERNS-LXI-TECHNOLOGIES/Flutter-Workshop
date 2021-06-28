import 'Animal.dart';
//import 'Carnivorous.dart';

class Lion extends Animal {
  Lion(String animalName, bool isAnimalAttacktive, bool isAnimalAlive,
      int animalDistance, int animalStrength)
      : super(animalName, isAnimalAttacktive, isAnimalAlive, animalDistance,
            animalStrength);

  // Lion(String animalName, bool isAnimalAttacktive, bool isAnimalAlive,
  //     int animalDistance, int animalStrength);
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String printanimalBehaviour() {
    String? lionAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Lion has Attacking behaviour';
      lionAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Lion not having attacking Behaviour';
      lionAttackingBehaviour = attackingBehaviour;
    }
    return lionAttackingBehaviour;
  }
}
