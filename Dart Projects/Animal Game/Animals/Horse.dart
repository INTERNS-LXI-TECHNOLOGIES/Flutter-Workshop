import 'HerbiVorous.dart';
import 'Animal.dart';

class Horse extends Animal implements Herbivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String animalBehaviour() {
    String? horseAttackingBehaviour;
    if (animalAttackingBehaviour == true) {
      String attackingBehaviour = 'Horse has Attacking behaviour';
      horseAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Horse not having attacking Behaviour';
      horseAttackingBehaviour = attackingBehaviour;
    }
    return horseAttackingBehaviour;
  }
}
