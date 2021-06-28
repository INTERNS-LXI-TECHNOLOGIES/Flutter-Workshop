import 'Animal.dart';
import 'HerbiVorous.dart';

class Elephant extends Animal implements Herbivorous {
  Elephant(String animalName, bool isAnimalAttacktive, bool isAnimalAlive,
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
    String? elephantAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Elepjant has Attacking behaviour';
      elephantAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Elephant not having attacking Behaviour';
      elephantAttackingBehaviour = attackingBehaviour;
    }
    return elephantAttackingBehaviour;
  }
}
