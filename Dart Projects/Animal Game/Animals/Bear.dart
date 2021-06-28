import 'Animal.dart';
import 'Carnivorous.dart';

class Bear extends Animal implements Carnivorous {
  Bear(String animalName, bool isAnimalAttacktive, bool isAnimalAlive,
      int animalDistance, int animalStrength)
      : super(animalName, isAnimalAttacktive, isAnimalAlive, animalDistance,
            animalStrength);

  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String animalBehaviour() {
    String? bearAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Bear has Attacking behaviour';
      bearAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Bear not having attacking Behaviour';
      bearAttackingBehaviour = attackingBehaviour;
    }
    return bearAttackingBehaviour;
  }
}
