import 'Herbivorous.dart';
import 'Animal.dart';

class Deer extends Animal implements Herbivorous {
  Deer(
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

  @override
  String performHandKick() {
    String handKick = 'Deer Tries to Escape';
    strength = strength - 1;
    return handKick;
  }

  @override
  String performLegKick() {
    String legKick = 'Deer Performed Leg Kick';
    strength = strength + 4;
    return legKick;
  }

  @override
  String performUnderDrift() {
    String underDrift = "Deer doesn't Perform Under Drift";
    strength = strength - 10;
    return underDrift;
  }

  @override
  String trytoEscape() {
    String trytoEscape = 'Deer Tries to Escape';
    strength = strength - 1;
    return trytoEscape;
  }

  // @override
  // void printAnimalBehaviour() {
  //   print('Since animal is Herbivourous Deer tries to escape');
  //   strength = strength - 10;
  // }
  @override
  String startFight(Animal playerTwo) {
    if (playerTwo.strength < 70) {
      performHandKick();
      performLegKick();
    } else {
      performUnderDrift();
      trytoEscape();
    }
    String fight = 'Deer starts fight';
    return fight;
  }
}
