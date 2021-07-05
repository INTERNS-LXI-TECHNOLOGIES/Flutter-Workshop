import 'Herbivorous.dart';
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
  void printAnimalBehaviour() {
    print('Since animal is Herbivourous rabit tries to escape');
    strength = strength - 10;
  }
}
