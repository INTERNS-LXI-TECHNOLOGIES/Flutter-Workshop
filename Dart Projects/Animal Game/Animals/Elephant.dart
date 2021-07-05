import 'Animal.dart';
import 'Herbivorous.dart';

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
  void printAnimalBehaviour() {
    print(
        'Since animal is Herbivourous Elephant tries to fight but eventually it will tries to escape');
    strength = strength - 5;
  }
}
