import 'HerbiVorous.dart';
import 'Animal.dart';

class Rabit extends Animal implements Herbivorous {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String animalBehaviour() {
    String? rabitAttackingBehaviour;
    if (animalAttackingBehaviour == true) {
      String attackingBehaviour = 'Rabit has Attacking behaviour';
      rabitAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Rabit not having attacking Behaviour';
      rabitAttackingBehaviour = attackingBehaviour;
    }
    return rabitAttackingBehaviour;
  }
}
