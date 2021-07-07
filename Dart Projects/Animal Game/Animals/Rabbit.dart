import 'Herbivorous.dart';
import 'Animal.dart';

class Rabit extends Animal implements Herbivorous {
  Rabit(
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
    String handKick = 'Rabbit Tries to Escape';
    strength = strength - 1;
    return handKick;
  }

  @override
  String performLegKick() {
    String legKick = 'Rabit Performed Leg Kick';
    strength = strength + 4;
    return legKick;
  }

  @override
  String performUnderDrift() {
    String underDrift = "Rabit performs UnderDrift";
    strength = strength + 3;
    return underDrift;
  }

  @override
  String trytoEscape() {
    String trytoEscape = 'Rabit Tries to Escape';
    strength = strength - 1;
    return trytoEscape;
  }

  @override
  String startFight() {
    String fight = 'Lion starts Fight';
    performHandKick();
    performLegKick();
    performUnderDrift();
    trytoEscape();
    return fight;
  }
}
