import 'Animal.dart';
import 'Carnivorous.dart';

class Bear extends Animal implements Carnivorous {
  Bear(
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
  String animalBehaviour() {
    String? bearAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Bear has Attacking behaviour';
      bearAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Bear not having attacking Behaviour';
      bearAttackingBehaviour = attackingBehaviour;
    }
    return bearAttackingBehaviour;
  }
}
