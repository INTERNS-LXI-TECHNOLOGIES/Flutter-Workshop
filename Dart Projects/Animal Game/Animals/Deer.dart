import 'HerbiVorous.dart';
import 'Animal.dart';

class Deer extends Animal implements Herbivorous {
  Deer(
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
