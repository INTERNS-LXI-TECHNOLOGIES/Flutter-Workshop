import 'Herbivorous.dart';
import 'Animal.dart';

class Horse extends Animal implements Herbivorous {
  Horse(
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
    String handKick = 'Horse Doesnot perform Hand Kick';
    strength = strength - 1;
    return handKick;
  }

  @override
  String performLegKick() {
    String legKick = 'Horse Performed Leg Kick';
    strength = strength + 4;
    return legKick;
  }

  @override
  String performUnderDrift() {
    String underDrift = "Horse doesn't Perform Under Drift";
    strength = strength - 10;
    return underDrift;
  }

  @override
  String trytoEscape() {
    String trytoEscape = 'Horse Tries to Escape';
    strength = strength - 1;
    return trytoEscape;
  }

  @override
  String startFight() {
    String fight = 'Horse Starts Fight';
    performHandKick();
    performLegKick();
    performUnderDrift();
    trytoEscape();
    return fight;
  }
}
