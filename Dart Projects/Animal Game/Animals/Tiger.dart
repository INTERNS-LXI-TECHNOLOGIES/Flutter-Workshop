import 'Animal.dart';
import 'Carnivorous.dart';

class Tiger extends Animal implements Carnivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String animalBehaviour() {
    String? tigerAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Tiger has Attacking behaviour';
      tigerAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Tiger not having attacking Behaviour';
      tigerAttackingBehaviour = attackingBehaviour;
    }
    return tigerAttackingBehaviour;
  }
}
