import 'HerbiVorous.dart';
import 'Animal.dart';

class Rabit extends Animal implements Herbivorous {
  Rabit(
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
