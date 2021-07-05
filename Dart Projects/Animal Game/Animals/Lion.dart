import 'Animal.dart';
import 'Carnivorous.dart';

class Lion extends Animal implements Carnivorous {
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
  void printAnimalBehaviour() {
    print(
        'Since Lion is a carnivorous Animal it Tries to figth and kill opponent');
    strength = strength + 10;
  }
}
