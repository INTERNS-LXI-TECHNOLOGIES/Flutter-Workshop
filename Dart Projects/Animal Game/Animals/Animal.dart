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
    canPerformTornadoDoubleFlip = tornadoDoubleFlip;
    canPerformTornadoSmash = tornadoSmash;
    canPerformDoubleFlipKick = doubleFlipKick;
    canPerformFlipBackkick = flipBackkick;
    canPerformSmash = smash;
    canPerformLegKick = legKick;
    canPerformhandKick = handKick;
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

  String startFight(Animal playerTwo) {
    String? winner;
    performTornadoDoubleFlip();
    playerTwo.performTornadoDoubleFlip();
    performDoubleFlipKick();
    playerTwo.performDoubleFlipKick();
    performFlipBackkick();
    playerTwo.performFlipBackkick();
    performSmash();
    playerTwo.performSmash();
    performTornadoSmash();
    playerTwo.performTornadoSmash();
    performerLegKick();
    playerTwo.performerLegKick();
    performhandKick();
    playerTwo.performhandKick();

    if (strength > playerTwo.strength) {
      String? winnerInGame;
      playerTwo.strength = strength - 10;
      playerTwo.isAnimalAlive = false;
      playerTwo.strength = playerTwo.strength - 15;
      winner = winnerInGame;
    } else {
      String? winnerInGame;
      playerTwo.strength = playerTwo.strength - 10;
      isAnimalAlive = false;
      strength = strength - 15;
      winner = winnerInGame;
    }
    return winner!;
  }

  String performTornadoDoubleFlip() {
    String? tornadoDoubleFlip;
    if (canPerformDoubleFlipKick == true) {
      strength = strength + 15;
      tornadoDoubleFlip =
          animalName + ' Performed Tornado Double Flip and Attacked ';
    } else {
      strength = strength - 16;
      tornadoDoubleFlip =
          animalName + ' has been kicked (Tornado Double Flip Attack)';
    }
    return tornadoDoubleFlip;
  }

  String performTornadoSmash() {
    String? performTornadoSmash;
    if (canPerformTornadoSmash == true) {
      strength = strength + 15;
      performTornadoSmash =
          animalName + ' Performed Perform Tornado Smash and Attacked ';
    } else {
      strength = strength - 25;
      performTornadoSmash =
          animalName + ' has been kicked (Perform Tornado Smash)';
    }
    return performTornadoSmash;
  }

  String performDoubleFlipKick() {
    String? performDoubleFlipKick;
    if (canPerformDoubleFlipKick == true) {
      strength = strength + 20;
      performDoubleFlipKick =
          animalName + ' Performed Perform Double Flip Kick and Attacked ';
    } else {
      strength = strength - 20;
      performDoubleFlipKick =
          animalName + ' has been kicked (Perform Double Flip Kick)';
    }
    return performDoubleFlipKick;
  }

  String performFlipBackkick() {
    String? performFlipBackkick;
    if (canPerformFlipBackkick == true) {
      strength = strength + 12;
      performFlipBackkick =
          animalName + ' Performed Perform Flip Back kick and Attacked ';
    } else {
      strength = strength - 22;
      performFlipBackkick =
          animalName + ' has been kicked (Perform Flip Back kick)';
    }
    return performFlipBackkick;
  }

  String performSmash() {
    String? performSmash;
    if (canPerformSmash == true) {
      strength = strength + 8;
      performSmash = animalName + ' Performed Perform Smash and Attacked ';
    } else {
      strength = strength - 18;
      performSmash = animalName + ' has been kicked (Perform Smash)';
    }
    return performSmash;
  }

  String performerLegKick() {
    String? performLegKick;
    if (canPerformLegKick == true) {
      strength = strength + 8;
      performLegKick = animalName + ' Performed Leg Kick and Attacked ';
    } else {
      strength = strength - 15;
      performLegKick = animalName + ' has been kicked (Leg Kick Attack)';
    }
    return performLegKick;
  }

  String performhandKick() {
    String? performhandKick;
    if (canPerformhandKick == true) {
      strength = strength + 10;
      performhandKick = animalName + ' Performed Hand Kick and Attacked ';
    } else {
      strength = strength - 10;
      performhandKick =
          animalName + ' has been kicked (Tornado Double Flip Attack)';
    }
    return performhandKick;
  }

  void checkLifeStatusOfPlayerOne(Animal playerTwo) {
    if (strength <= 30 && playerTwo.strength > 30) {
      isAnimalAlive = false;
      print(animalName + ' is dead');
      print(playerTwo.animalName + 'Is Survived');
    } else if (playerTwo.strength <= 30 && strength > 30) {
      print(animalName + ' is Survived');
      print(playerTwo.animalName + 'is Dead');
    } else {
      print('');
    }
  }
}
