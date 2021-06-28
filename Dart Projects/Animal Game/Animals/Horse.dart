import 'HerbiVorous.dart';
import 'Animal.dart';

class Horse extends Animal implements Herbivorous {
  Horse(String animalName, bool isAnimalAttacktive, bool isAnimalAlive,
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
    String? horseAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Horse has Attacking behaviour';
      horseAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Horse not having attacking Behaviour';
      horseAttackingBehaviour = attackingBehaviour;
    }
    return horseAttackingBehaviour;
  }
}
