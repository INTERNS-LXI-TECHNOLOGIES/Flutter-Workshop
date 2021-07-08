import 'Animal.dart';
import 'Carnivorous.dart';

class Lion extends Animal implements Carnivorous {
  Lion(
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
  String startFight(Animal playerTwo) {
    String participants =
        animalName + playerTwo.animalName + ' are starts fight';
    if (playerTwo.strength < 50) {
      canPerformDoubleFlipKick = true;
      strength = strength + 20;
    } else if (playerTwo.strength > 50 && playerTwo.strength < 70) {
      canPerformSmash = true;
      canPerformLegKick = true;
    } else if (playerTwo.strength > 70) {
      canPerformSmash = true;
      canPerformLegKick = true;
      canPerformDoubleFlipKick = true;
      canPerformTornadoSmash = true;
      canPerformTornadoDoubleFlip = true;
    }
    return participants;
  }

  @override
  bool? canPerformDoubleFlipKick;

  @override
  bool? canPerformFlipBackKick;

  @override
  bool? canPerformHandKick;

  @override
  bool? canPerformLegKick;

  @override
  bool? canPerformSmash;

  @override
  bool? canPerformTornadoDoubleFlip;

  @override
  bool? canPerformTornadoSmash;
  void printGamingStategy() {
    if (canPerformDoubleFlipKick == true) {
      print(animalName + 'performed DoubleFlipKick');
      strength = strength + 10;
    }
    if (canPerformFlipBackKick == true) {
      print(animalName + 'performed FlipBackKick');
      strength = strength + 11;
    }
    if (canPerformHandKick == true) {
      print(animalName + 'performed Hand Kick');
      strength = strength + 5;
    }
    if (canPerformLegKick == true) {
      print(animalName + 'performed Leg Kick');
      strength = strength + 8;
    }
    if (canPerformSmash == true) {
      print(animalName + 'performed Smash');
      strength = strength + 10;
    }
    if (canPerformTornadoDoubleFlip == true) {
      print(animalName + 'performed Tornado Double Flip');
      strength = strength + 25;
    }
    if (canPerformTornadoSmash == true) {
      print(animalName + 'performed Tornado Smash');
      strength = strength + 20;
    } else {
      strength = strength - 8;
    }
  }
}
