import 'Animal.dart';
import 'Carnivorous.dart';

class Bear extends Animal implements Carnivorous {
  Bear(
    String name,
    bool isAttacktive,
    bool isAlive,
    int animalDistance,
    int animalStrength,
  ) : super(
          name,
          isAttacktive,
          isAlive,
          animalDistance,
          animalStrength,
        );
  // @override
  // void printAnimalBehaviour() {
  //   print('since Bear is a Carnivorous animal it Tries to kill opponent');
  //   strength = strength + 10;
  // }

  @override
  String performSmash() {
    String? performSmash;
    strength = strength + 8;
    performSmash = animalName + ' Performed Perform Smash and Attacked ';
    return performSmash;
  }

  @override
  String performFlipBackKick() {
    String flipBackKick = "Bear doesn't perform FlipKickBack";
    strength = strength - 10;
    return flipBackKick;
  }

  @override
  String performHandKick() {
    String handKick = "Bear doesn't perform Hand Kick";
    strength = strength - 5;
    return handKick;
  }

  @override
  String performLegKick() {
    String legKick = "Bear doesn't perform Leg Kick";
    strength = strength - 6;
    return legKick;
  }

  @override
  String performDoubleFlipKick() {
    String legKick = "Bear doesn't perform Double Flip Kick";
    strength = strength - 10;
    return legKick;
  }

  @override
  String performTornadoDoubleFlip() {
    String legKick = "Bear doesn't perform Tornado double Flip";
    strength = strength - 15;
    return legKick;
  }

  @override
  String performTornadoSmash() {
    String legKick = "Bear doesn't perform Tornado Smash";
    strength = strength - 20;
    return legKick;
  }

  @override
  String startFight() {
    String fight = 'Bear starts fight';
    performDoubleFlipKick();
    performFlipBackKick();
    performHandKick();
    performLegKick();
    performSmash();
    performTornadoDoubleFlip();
    performTornadoSmash();
    return fight;
  }
}
