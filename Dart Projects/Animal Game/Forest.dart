import 'dart:core';
import 'dart:math';
import 'Animals/Bear.dart';
import 'Animals/Deer.dart';
import 'Animals/Elephant.dart';
import 'Animals/Herbivorous.dart';
import 'Animals/Horse.dart';
import 'Animals/Lion.dart';
import 'Animals/Animal.dart';
import 'Animals/Rabbit.dart';
import 'Animals/Tiger.dart';

class Forest {
  List<Animal> animals = [];
  void generateAnimals() {
    print(
        'N.B :- you can choose upto 2 Animals FREE in each catagory! beyond that you have to purchase it ');

    animals.add(Lion('Indian Lion', true, true, 80, 95, true, true, false,
        false, false, false, true));
    animals.add(Lion('African Lion', true, true, 85, 91, false, false, true,
        false, true, false, false));
    animals.add(Tiger('Indian Tiger', true, true, 75, 88, false, true, false,
        true, false, false, false));
    animals.add(Tiger('African Tiger', true, true, 90, 89, true, false, false,
        false, true, true, false));
    animals.add(Bear('Bear', true, true, 78, 70, false, false, false, false,
        true, true, false));
    animals.add(Elephant('Elephant', true, true, 72, 80, false, false, false,
        false, true, true, false));
    animals.add(Elephant('Elephant', true, true, 75, 77, false, true, false,
        false, true, false, false));
    animals.add(Rabit('Rabit', true, true, 65, 35, false, true, false, false,
        false, false, false));
    animals.add(Horse('Horse', true, true, 60, 48, false, false, false, true,
        true, false, true));
    animals.add(Deer('Deer', true, true, 60, 40, false, false, false, false,
        false, true, true));
  }

  void printParticipantingAnimalsName() {
    print('|----The Animals for the game are:------|');
    print('|-Sl.No:-|------Animal Names------------|');
    print('|---------------------------------------|');
    for (var i = 0; i < animals.length; i++) {
      print('|---' +
          (i + 1).toString() +
          '----|  -----' +
          animals[i].animalName +
          '----------');
    }
    print('|---------------------------------------|\n');
  }

  void startGame() {
    int count = loop();
    while (count > 1) {
      count = loop();
      int playerOneIndex = Random().nextInt(animals.length);
      int playerTwoIndex = Random().nextInt(animals.length);
      var playerOne = animals[playerOneIndex];
      var playerTwo = animals[playerTwoIndex];
      if (playerOneIndex != playerTwoIndex) {
        if (playerOne.isAnimalAlive == true &&
            playerTwo.isAnimalAlive == true) {
          bool result = checkArea(
            playerOne,
            playerTwo,
          );

          if (result == true) {
            if (playerOne is Herbivorous && playerTwo is Herbivorous) {
              print(playerOne.animalName +
                  ' ' +
                  playerTwo.animalName +
                  'Both are Herbivorous animals they wont Fight Together');
            } else {
              print('fight start between ' +
                  playerOne.animalName +
                  ' Vs ' +
                  playerTwo.animalName +
                  '');
              print(
                  'Winner of this Round is' + playerOne.startFight(playerTwo));
              playerOne.checkLifeStatusOfPlayerOne(playerTwo);
            }
          }
          print('');
        }
      } else {
        print('No player Is available to Play');
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

  bool checkArea(Animal playerOne, Animal playerTwo) {
    print('\t TERRITORY DETAILS ');
    print('-----------------------------------');
    print('\n' +
        playerOne.animalName +
        '\t Range =' +
        playerOne.distance.toString());
    print('\n' +
        playerTwo.animalName +
        '\t Range =' +
        playerTwo.distance.toString());
    int distance = (playerOne.distance) - (playerTwo.distance);
    int radius = 30;
    if (distance < radius) {
      print('\n\t\t=> ' +
          playerOne.animalName +
          ' AND ' +
          playerTwo.animalName +
          ' are in SAME TERRITORY \n');
      return true;
    } else {
      print('\n\t\t=>' +
          playerOne.animalName +
          ' AND ' +
          playerTwo.animalName +
          ' are not in SAME TERRITORY \n');
      return false;
    }
  }

  int luck() {
    int luckfactor = Random().nextInt(3);
    return luckfactor;
  }
}
