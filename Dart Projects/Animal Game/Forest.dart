import 'dart:core';
import 'dart:math';
import 'Animals/Bear.dart';
import 'Animals/Deer.dart';
import 'Animals/Elephant.dart';
import 'Animals/Horse.dart';
import 'Animals/Lion.dart';
import 'Animals/Animal.dart';
import 'Animals/Rabbit.dart';
import 'Animals/Tiger.dart';
import 'GameLogic.dart';

class Forest {
  List<Animal> animals = [];
  GameLogic gameLogic = GameLogic();

  void generateAnimals() {
    print(
        'N.B :- you can choose upto 2 Animals FREE in each catagory! beyond that you have to purchase it ');

    animals.add(Lion('Indian Lion', true, true, 90, 96));
    animals.add(Lion('African Lion', true, true, 88, 95));
    animals.add(Tiger('Indian Tiger', true, true, 81, 93));
    animals.add(Tiger('Siberian Tiger', true, true, 84, 90));
    animals.add(Bear('Bear', true, true, 70, 80));
    animals.add(Elephant('Indian Elephant', true, true, 78, 85));
    animals.add(Elephant('Ancient Mammooth', false, true, 60, 72));
    animals.add(Rabit('Rabit', false, true, 60, 30));
    animals.add(Horse('Horse', false, true, 50, 65));
    animals.add(Deer('Deer', false, true, 40, 55));
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
          animals[i].distance.toString() +
          animals[i].strength.toString() +
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
