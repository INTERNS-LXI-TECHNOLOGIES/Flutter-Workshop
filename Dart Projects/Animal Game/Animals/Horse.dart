import 'HerbiVorous.dart';
import 'Animal.dart';

class Horse extends Animal implements Herbivorous {
  Horse(
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
    String? horseAttackingBehaviour;
    if (isAnimalAlive == true) {
      String attackingBehaviour = 'Horse has Attacking behaviour';
      horseAttackingBehaviour = attackingBehaviour;
    } else {
      String attackingBehaviour = 'Horse not having attacking Behaviour';
      horseAttackingBehaviour = attackingBehaviour;
    }
    return horseAttackingBehaviour;
  }
}
