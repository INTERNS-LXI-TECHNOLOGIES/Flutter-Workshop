import 'Animal.dart';
import 'Carnivorous.dart';

class Tiger extends Animal implements Carnivorous {
  Tiger(String animalName, bool isAnimalAttacktive, bool isAnimalAlive,
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
