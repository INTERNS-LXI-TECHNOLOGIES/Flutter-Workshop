import 'Animal.dart';
//import 'Carnivorous.dart';

class Lion extends Animal {
  Lion(
      String name,
      bool isAttacktive,
      bool isAlive,
      int animalDistance,
      int animalStrength,
      bool tornadoDoubleFlip,
      bool tornadoSmash,
      bool doubleFlipKick,
      bool flipBackkick,
      bool smash,
      bool legKick,
      bool handKick)
      : super(
            name,
            isAttacktive,
            isAlive,
            animalDistance,
            animalStrength,
            tornadoDoubleFlip,
            tornadoSmash,
            doubleFlipKick,
            flipBackkick,
            smash,
            legKick,
            handKick);

  @override
  String printAnimalDetails() {
    String name = animalName;
    return name;
  }

  @override
  String printanimalBehaviour() {
    String? lionAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Lion has Attacking behaviour';
      lionAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Lion not having attacking Behaviour';
      lionAttackingBehaviour = attackingBehaviour;
    }
    return lionAttackingBehaviour;
  }
}
