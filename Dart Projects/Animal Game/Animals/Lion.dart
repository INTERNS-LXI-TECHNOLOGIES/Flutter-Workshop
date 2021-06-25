import 'Animal.dart';
//import 'Carnivorous.dart';

class Lion extends Animal {
  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String animalBehaviour() {
    String? lionAttackingBehaviour;
    if (animalAttackingBehaviour == true) {
      String attackingBehaviour = 'Lion has Attacking behaviour';
      lionAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Lion not having attacking Behaviour';
      lionAttackingBehaviour = attackingBehaviour;
    }
    return lionAttackingBehaviour;
  }
}
