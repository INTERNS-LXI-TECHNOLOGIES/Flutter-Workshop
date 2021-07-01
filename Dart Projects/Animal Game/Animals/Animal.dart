//import 'dart:math';

class Animal {
  bool? _isAnimalAlive;
  String? _animalName;
  int? _animalDistance;
  int? _animalStrength;
  bool? _isAnimalattacktive;
  bool? _canPerformTornadoDoubleFlip;
  bool? _canPerformTornadoSmash;
  bool? _canPerformDoubleFlipKick;
  bool? _canPerformFlipBackkick;
  bool? _canPerformSmash;
  bool? _canPerformLegKick;
  bool? _canPerformhandKick;

  Animal(
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
      bool handKick) {
    isAnimalAlive = isAlive;
    animalName = name;
    distance = animalDistance;
    isAnimalAttacktive = isAlive;
    strength = animalStrength;
    tornadoDoubleFlip = canPerformDoubleFlipKick;
    tornadoSmash = canPerformTornadoSmash;
    doubleFlipKick = canPerformDoubleFlipKick;
    flipBackkick = canPerformFlipBackkick;
    smash = canPerformSmash;
    legKick = canPerformLegKick;
    handKick = canPerformhandKick;
  }

  String printAnimalDetails() {
    String details = 'Details of Animal will be printed below ';
    return details;
  }

  String printanimalBehaviour() {
    String attackingBehaviour = 'This is animal Attacking behaviour';
    return attackingBehaviour;
  }

  set isAnimalAttacktive(bool isAnimalAttacktive) =>
      _isAnimalattacktive = isAnimalAttacktive;
  bool get isAnimalAttacktive => _isAnimalattacktive!;

  set isAnimalAlive(bool isAnimalaAlive) => _isAnimalAlive = isAnimalaAlive;
  bool get isAnimalAlive => _isAnimalAlive!;

  set animalName(String animalName) => _animalName = animalName;
  String get animalName => _animalName.toString();

  set distance(int animalDistance) => _animalDistance = animalDistance;
  int get distance => _animalDistance!;

  set strength(int animalStrength) => _animalStrength = animalStrength;
  int get strength => _animalStrength!;

  set canPerformTornadoDoubleFlip(bool canPerformTornadoDoubleFlip) =>
      _canPerformTornadoDoubleFlip = canPerformTornadoDoubleFlip;
  bool get canPerformTornadoDoubleFlip => _canPerformTornadoDoubleFlip!;

  set canPerformDoubleFlipKick(bool canPerformDoubleFlipKick) =>
      _canPerformDoubleFlipKick = canPerformDoubleFlipKick;
  bool get canPerformDoubleFlipKick => _canPerformDoubleFlipKick!;

  set canPerformTornadoSmash(bool canPerformTornadoSmash) =>
      _canPerformTornadoSmash = canPerformTornadoSmash;
  bool get canPerformTornadoSmash => _canPerformTornadoSmash!;

  set canPerformFlipBackkick(bool canPerformFlipBackkick) =>
      _canPerformFlipBackkick = canPerformTornadoDoubleFlip;
  bool get canPerformFlipBackkick => _canPerformFlipBackkick!;

  set canPerformSmash(bool canPerformSmash) =>
      _canPerformSmash = canPerformSmash;
  bool get canPerformSmash => _canPerformSmash!;

  set canPerformLegKick(bool canPerformLegKick) =>
      _canPerformLegKick = canPerformLegKick;
  bool get canPerformLegKick => _canPerformLegKick!;

  set canPerformhandKick(bool canPerformhandKick) =>
      _canPerformhandKick = canPerformhandKick;
  bool get canPerformhandKick => _canPerformhandKick!;

  void startFight(Animal playerOne, Animal playerTwo) {
    playerOne.performTornadoDoubleFlip();
    playerTwo.performTornadoDoubleFlip();
    playerOne.performDoubleFlipKick();
    playerTwo.performDoubleFlipKick();
    playerOne.performFlipBackkick();
    playerTwo.performFlipBackkick();
    playerOne.performSmash();
    playerTwo.performSmash();
    playerOne.performTornadoSmash();
    playerTwo.performTornadoSmash();
    playerOne.performerLegKick();
    playerTwo.performerLegKick();
    playerOne.performhandKick();
    playerTwo.performhandKick();
    checkLifeStatusOfPlayerOne(playerOne, playerTwo);
    if (playerOne.strength > playerTwo.strength) {
      print('\n-------------------------------------------');
      print('-------------------------------------------\n');
      print(playerOne.animalName + ' is Won in this Round\n');
      print('-------------------------------------------');
      print('-------------------------------------------');
      print('\n-------------------------------------------');
      print('-------------------------------------------\n');
      print(playerTwo.animalName + ' is failed in this Round\n');
      print('-------------------------------------------');
      print('-------------------------------------------');
    } else {
      print('\n-------------------------------------------');
      print('-------------------------------------------\n');
      print(playerTwo.animalName + ' is Won in this Round\n');
      print('-------------------------------------------');
      print('-------------------------------------------');
      print('\n-------------------------------------------');
      print('-------------------------------------------\n');
      print(playerTwo.animalName + ' is failed in this Round\n');
      print('-------------------------------------------');
      print('-------------------------------------------');
    }
  }

  String performTornadoDoubleFlip() {
    String? tornadoDoubleFlip;
    if (canPerformDoubleFlipKick == true) {
      strength = strength + 2;
      tornadoDoubleFlip =
          animalName + ' Performed Tornado Double Flip and Attacked ';
    } else {
      strength = strength - 4;
      tornadoDoubleFlip =
          animalName + ' has been kicked (Tornado Double Flip Attack)';
    }
    return tornadoDoubleFlip;
  }

  String performTornadoSmash() {
    String? performTornadoSmash;
    if (canPerformTornadoSmash == true) {
      strength = strength + 3;
      performTornadoSmash =
          animalName + ' Performed Perform Tornado Smash and Attacked ';
    } else {
      strength = strength - 5;
      performTornadoSmash =
          animalName + ' has been kicked (Perform Tornado Smash)';
    }
    return performTornadoSmash;
  }

  String performDoubleFlipKick() {
    String? performDoubleFlipKick;
    if (canPerformDoubleFlipKick == true) {
      strength = strength + 2;
      performDoubleFlipKick =
          animalName + ' Performed Perform Double Flip Kick and Attacked ';
    } else {
      strength = strength - 4;
      performDoubleFlipKick =
          animalName + ' has been kicked (Perform Double Flip Kick)';
    }
    return performDoubleFlipKick;
  }

  String performFlipBackkick() {
    String? performFlipBackkick;
    if (canPerformFlipBackkick == true) {
      strength = strength + 2;
      performFlipBackkick =
          animalName + ' Performed Perform Flip Back kick and Attacked ';
    } else {
      strength = strength - 4;
      performFlipBackkick =
          animalName + ' has been kicked (Perform Flip Back kick)';
    }
    return performFlipBackkick;
  }

  String performSmash() {
    String? performSmash;
    if (canPerformSmash == true) {
      strength = strength + 2;
      performSmash = animalName + ' Performed Perform Smash and Attacked ';
    } else {
      strength = strength - 4;
      performSmash = animalName + ' has been kicked (Perform Smash)';
    }
    return performSmash;
  }

  String performerLegKick() {
    String? performLegKick;
    if (canPerformLegKick == true) {
      strength = strength + 2;
      performLegKick = animalName + ' Performed Leg Kick and Attacked ';
    } else {
      strength = strength - 4;
      performLegKick = animalName + ' has been kicked (Leg Kick Attack)';
    }
    return performLegKick;
  }

  String performhandKick() {
    String? performhandKick;
    if (canPerformhandKick == true) {
      strength = strength + 2;
      performhandKick = animalName + ' Performed Hand Kick and Attacked ';
    } else {
      strength = strength - 4;
      performhandKick =
          animalName + ' has been kicked (Tornado Double Flip Attack)';
    }
    return performhandKick;
  }

  void checkLifeStatusOfPlayerOne(Animal playerOne, Animal playerTwo) {
    if (playerOne.strength <= 25) {
      playerOne.isAnimalAlive = false;
      print(playerOne.animalName + ' is dead');
    } else {
      print(playerTwo.animalName + ' is not dead');
    }
  }
}
