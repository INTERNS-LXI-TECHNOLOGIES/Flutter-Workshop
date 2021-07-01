import 'Animal.dart';
import 'Carnivorous.dart';

class Tiger extends Animal implements Carnivorous {
  Tiger(
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
