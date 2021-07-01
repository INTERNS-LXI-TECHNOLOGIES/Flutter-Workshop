import 'Animal.dart';
import 'HerbiVorous.dart';

class Elephant extends Animal implements Herbivorous {
  Elephant(
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
    String? elephantAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Elepjant has Attacking behaviour';
      elephantAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Elephant not having attacking Behaviour';
      elephantAttackingBehaviour = attackingBehaviour;
    }
    return elephantAttackingBehaviour;
  }
}
