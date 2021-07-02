import 'dart:math';

import 'Animal.dart';
//import 'Carnivorous.dart';

class Lion extends Animal {
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
  void performSpecialFightingSkills() {
    int skill = Random().nextInt(2);
    if (skill == 0) {
      print(animalName +
          ' Performed Tornado Double Flip and kicked the opponent');
      strength = strength + 3;
      print('New Energy after the Tornado Double Flip Kick is' +
          strength.toString());
    } else if (skill == 1) {
      print(animalName + ' Performed Tornado Smash and kicked the opponent');
      strength = strength + 3;
      print('New Energy after the Tornado Smash Kick is' + strength.toString());
    } else {
      print(animalName + ' Performed handKick ');
      strength = strength + 2;
      print('New energy after handKick ' + strength.toString());
    }
  }
}
