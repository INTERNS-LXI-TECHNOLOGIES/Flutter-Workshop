import 'Animal.dart';
import 'HerbiVorous.dart';

class Elephant extends Animal implements Herbivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String animalBehaviour() {
    String? elephantAttackingBehaviour;
    if (animalAttackingBehaviour == true) {
      String attackingBehaviour = 'Elepjant has Attacking behaviour';
      elephantAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Elephant not having attacking Behaviour';
      elephantAttackingBehaviour = attackingBehaviour;
    }
    return elephantAttackingBehaviour;
  }
}
