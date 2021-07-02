import 'dart:math';

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
  void performSpecialFightingSkills() {
    print(animalName + ' Performed Jumb front Kick the opponent');
    strength = strength + 1;
    print('New Energy after the Trumb Kick is' + strength.toString());
  }
}
