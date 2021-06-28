import 'HerbiVorous.dart';
import 'Animal.dart';

class Rabit extends Animal implements Herbivorous {
  Rabit(String animalName, bool isAnimalAttacktive, bool isAnimalAlive,
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
    String? rabitAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Rabit has Attacking behaviour';
      rabitAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Rabit not having attacking Behaviour';
      rabitAttackingBehaviour = attackingBehaviour;
    }
    return rabitAttackingBehaviour;
  }
}
