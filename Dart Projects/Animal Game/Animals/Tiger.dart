import 'Animal.dart';
import 'Carnivorous.dart';

class Tiger extends Animal implements Carnivorous {
  Tiger(
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
  String performSmash() {
    String flipBackKick = "Lion doesn't perform FlipKickBack";
    strength = strength - 5;
    return flipBackKick;
  }

  @override
  String performFlipBackKick() {
    String? tornadoDoubleFlip;
    strength = strength + 15;
    tornadoDoubleFlip =
        animalName + ' Performed Perform Flip Back kick and Attacked ';
    return tornadoDoubleFlip;
  }

  @override
  String performHandKick() {
    String handKick = "Lion doesn't perform Hand Kick";
    strength = strength - 5;
    return handKick;
  }

  @override
  String performLegKick() {
    String legKick = "Lion doesn't perform Leg Kick";
    strength = strength - 6;
    return legKick;
  }

  @override
  String performDoubleFlipKick() {
    String? doubleFlipKick;
    strength = strength + 20;
    doubleFlipKick =
        animalName + ' Performed Perform Flip Back kick and Attacked ';
    return doubleFlipKick;
  }

  @override
  String performTornadoDoubleFlip() {
    String? tornadoDoubleFlip;
    strength = strength + 15;
    tornadoDoubleFlip =
        animalName + ' Performed Perform Flip Back kick and Attacked ';
    return tornadoDoubleFlip;
  }

  @override
  String performTornadoSmash() {
    String legKick = "Lion doesn't perform Tornado Smash";
    strength = strength - 11;
    return legKick;
  }

  @override
  String startFight() {
    String fight = 'Tiger starts fight';
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
