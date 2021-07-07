abstract class Animal {
  bool? _isAnimalAlive;
  String? _animalName;
  int? _animalDistance;
  int? _animalStrength;
  bool? _isAnimalattacktive;

  Animal(
    String name,
    bool isAttacktive,
    bool isAlive,
    int animalDistance,
    int animalStrength,
  ) {
    isAnimalAlive = isAlive;
    animalName = name;
    distance = animalDistance;
    isAnimalAttacktive = isAlive;
    strength = animalStrength;
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

  String printWinner(Animal playerTwo) {
    String? winner;
    if (strength > playerTwo.strength) {
      String winnerInGame = animalName;
      playerTwo.strength = strength - 10;
      playerTwo.isAnimalAlive = false;
      playerTwo.strength = playerTwo.strength - 15;
      winner = winnerInGame;
    } else {
      String winnerInGame = playerTwo.animalName;
      playerTwo.strength = playerTwo.strength - 10;
      isAnimalAlive = false;
      strength = strength - 15;
      winner = winnerInGame;
    }

    return winner;
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
