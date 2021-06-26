import 'HerbiVorous.dart';
import 'Animal.dart';

class Deer extends Animal implements Herbivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String animalBehaviour() {
    String? dearAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Deer has Attacking behaviour';
      dearAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Deer not having attacking Behaviour';
      dearAttackingBehaviour = attackingBehaviour;
    }
    return dearAttackingBehaviour;
  }
}
