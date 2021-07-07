import 'Animal.dart';
import 'Herbivorous.dart';

class Elephant extends Animal implements Herbivorous {
  Elephant(
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
    String handKick = 'Elephant Tries to Escape';
    strength = strength - 1;
    return handKick;
  }

  @override
  String performLegKick() {
    String legKick = 'Elephant Performed Leg Kick';
    strength = strength + 4;
    return legKick;
  }

  @override
  String performUnderDrift() {
    String underDrift = "Elephant doesn't Perform Under Drift";
    strength = strength - 10;
    return underDrift;
  }

  @override
  String trytoEscape() {
    String trytoEscape = 'Elephant Tries to Escape';
    strength = strength - 1;
    return trytoEscape;
  }

  @override
  String startFight() {
    String fight = 'Elephant starts fight';
    performHandKick();
    performLegKick();
    performUnderDrift();
    trytoEscape();
    return fight;
  }
}
