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

  void generateAnimals() {
    print(
        'N.B :- you can choose upto 2 Animals FREE in each catagory! beyond that you have to purchase it ');

    animals.add(new Lion());
    animals[0].animalName = 'Indian Lion';
    animals[0].strength = 96;
    animals[0].animalLife = true;
    animals[0].distance = 90;

    animals.add(new Lion());
    animals[1].animalName = 'African Lion';
    animals[1].strength = 93;
    animals[1].animalLife = true;
    animals[1].distance = 70;

    animals.add(new Tiger());
    animals[2].animalName = 'Siberian Tiger';
    animals[2].strength = 94;
    animals[2].animalLife = true;
    animals[2].distance = 50;

    animals.add(new Tiger());
    animals[3].animalName = 'Indian Tiger';
    animals[3].strength = 95;
    animals[3].animalLife = true;
    animals[3].distance = 78;

    animals.add(new Elephant());
    animals[4].animalName = 'Indian Lion';
    animals[4].strength = 88;
    animals[4].animalLife = true;
    animals[4].distance = 65;

    animals.add(new Elephant());
    animals[5].animalName = 'Ancient Mamoth';
    animals[5].strength = 92;
    animals[5].animalLife = true;
    animals[5].distance = 30;

    animals.add(new Bear());
    animals[6].animalName = 'Bear';
    animals[6].strength = 80;
    animals[6].animalLife = true;
    animals[6].distance = 62;

    animals.add(new Deer());
    animals[7].animalName = 'Deer';
    animals[7].strength = 50;
    animals[7].animalLife = true;
    animals[7].distance = 70;

    animals.add(new Rabit());
    animals[8].animalName = 'Rabit';
    animals[8].strength = 30;
    animals[8].animalLife = true;
    animals[8].distance = 50;
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
        if (animals[playerOne].animalLife == true &&
            animals[playerTwo].animalLife == true) ;
        {
          gameLogic.gamePlayLogic(playerOne, playerTwo, animals);
        }
      }
    }
    printFinalWinner();
  }

  void printFinalWinner() {
    for (int i = 0; i < animals.length; i++) {
      if (animals[i].animalLife == true) {
        print('|---------The FinalWinnner of Forest Champianship ---------|');
        print('\t' + animals[i].animalName + '\t');
        print('|----------------------------------------------------------|');
      }
    }
  }

  int loop() {
    int count = 0;
    for (int i = 0; i < animals.length; i++) {
      if (animals[i].animalLife == true) {
        count++;
      }
    }
    return count;
  }

  void printdiedAnimals() {
    int i = 0;
    print('\n|---The Animals died in the game are:---|');
    print('|-Sl.No:-|--------Animal Names----------|');
    for (i = 0; i < animals.length; i++) {
      if (animals[i].animalLife == false) {
        print('| ' +
            (i + 1).toString() +
            '\t  | \t ' +
            animals[i].animalName +
            '\t\t|');
      }
    }
    print('|---------------------------------------|');
  }
}
