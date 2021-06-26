import 'dart:core';
import 'dart:math';
import 'Animals/Bear.dart';
import 'Animals/Deer.dart';
import 'Animals/Elephant.dart';
import 'Animals/Lion.dart';
import 'Animals/Animal.dart';
import 'Animals/Rabbit.dart';
import 'Animals/Tiger.dart';
import 'GameLogic.dart';

class Forest {
  List<Animal> animals = [];
  GameLogic gameLogic = GameLogic();
  Lion? lion1;
  Lion? lion2;
  Tiger? tiger1;
  Tiger? tiger2;
  Elephant? elephant1;
  Elephant? elephant2;
  Bear? bear;
  Rabit? rabit;
  Deer? deer;

  void generateAnimals() {
    print(
        'N.B :- you can choose upto 2 Animals FREE in each catagory! beyond that you have to purchase it ');

    lion1?.animalName = 'Indian Lion';
    lion1?.strength = 96;
    lion1?.isAnimalAlive = true;
    lion1?.distance = 90;
    lion1?.isAnimalAttacktive = true;
    animals.add(lion1!);

    lion2?.animalName = 'African Lion';
    lion2?.strength = 93;
    lion2?.isAnimalAlive = true;
    lion2?.distance = 80;
    lion2?.isAnimalAttacktive = true;
    animals.add(lion2!);

    tiger1?.animalName = 'Siberian Tiger';
    tiger1?.strength = 94;
    tiger1?.isAnimalAlive = true;
    tiger1?.distance = 90;
    tiger1?.isAnimalAttacktive = true;
    animals.add(tiger1!);

    tiger2?.animalName = 'Indian Tiger';
    tiger2?.strength = 95;
    tiger2?.isAnimalAlive = true;
    tiger2?.distance = 88;
    tiger2?.isAnimalAttacktive = true;
    animals.add(tiger2!);

    elephant1?.animalName = 'Indian Elephant';
    elephant1?.strength = 88;
    elephant1?.isAnimalAlive = true;
    elephant1?.distance = 85;
    elephant1?.isAnimalAttacktive = true;
    animals.add(elephant1!);

    elephant2?.animalName = 'Ancient Mamoth';
    elephant2?.strength = 92;
    elephant2?.isAnimalAlive = true;
    elephant2?.distance = 90;
    elephant2?.isAnimalAttacktive = false;
    animals.add(elephant2!);

    bear?.animalName = 'Bear';
    bear?.strength = 80;
    bear?.isAnimalAlive = true;
    bear?.distance = 92;
    bear?.isAnimalAttacktive = true;
    animals.add(bear!);

    deer?.animalName = 'Deer';
    deer?.strength = 50;
    deer?.isAnimalAlive = true;
    deer?.distance = 80;
    deer?.isAnimalAttacktive = false;
    animals.add(deer!);

    rabit?.animalName = 'Rabit';
    rabit?.strength = 30;
    rabit?.isAnimalAlive = true;
    rabit?.distance = 88;
    rabit?.isAnimalAttacktive = false;
    animals.add(rabit!);
  }

  void printParticipantingAnimalsName() {
    print('|----The Animals for the game are:------|');
    print('|-Sl.No:-|------Animal Names------------|');
    print('|---------------------------------------|');
    for (var i = 0; i < animals.length; i++) {
      print('|---' +
          (i + 1).toString() +
          '----|  -----' +
          animals[i].printAnimalDetails() +
          '----------');
    }
    print('|---------------------------------------|\n');
  }

  void startGame() {
    int count = loop();
    while (count > 1) {
      count = loop();
      int playerOne = Random().nextInt(animals.length);
      int playerTwo = Random().nextInt(animals.length);
      if (playerOne != playerTwo) {
        if (animals[playerOne].isAnimalAlive == true &&
            animals[playerTwo].isAnimalAlive == true) ;
        {
          gameLogic.gamePlayLogic(playerOne, playerTwo, animals);
        }
      }
    }
    printFinalWinner();
  }

  void printFinalWinner() {
    for (int i = 0; i < animals.length; i++) {
      if (animals[i].isAnimalAlive == true) {
        print('|---------The FinalWinnner of Forest Champianship ---------|');
        print('\t' + animals[i].animalName + '\t');
        print('|----------------------------------------------------------|');
      }
    }
  }

  int loop() {
    int count = 0;
    for (int i = 0; i < animals.length; i++) {
      if (animals[i].isAnimalAlive == true) {
        count++;
      }
    }
    return count;
  }
}
