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
  Animal lion1 = Lion();
  Animal lion2 = Lion();
  Animal tiger1 = Tiger();
  Animal tiger2 = Tiger();
  Animal elephant1 = Elephant();
  Animal elephant2 = Elephant();
  Animal bear = Bear();
  Animal deer = Deer();
  Animal rabit = Rabit();

  void generateAnimals() {
    print(
        'N.B :- you can choose upto 2 Animals FREE in each catagory! beyond that you have to purchase it ');

    lion1.animalName = 'Indian Lion';
    lion1.strength = 96;
    lion1.animalLife = true;
    lion1.distance = 90;
    animals.add(lion1);

    lion2.animalName = 'African Lion';
    lion2.strength = 93;
    lion2.animalLife = true;
    lion2.distance = 70;
    animals.add(lion2);

    tiger1.animalName = 'Siberian Tiger';
    tiger1.strength = 94;
    tiger1.animalLife = true;
    tiger1.distance = 50;
    animals.add(tiger1);

    tiger2.animalName = 'Indian Tiger';
    tiger2.strength = 95;
    tiger2.animalLife = true;
    tiger2.distance = 78;
    animals.add(tiger2);

    elephant1.animalName = 'Indian Elephant';
    elephant1.strength = 88;
    elephant1.animalLife = true;
    elephant1.distance = 65;
    animals.add(elephant1);

    elephant2.animalName = 'Ancient Mamoth';
    elephant2.strength = 92;
    elephant2.animalLife = true;
    elephant2.distance = 30;
    animals.add(elephant2);

    bear.animalName = 'Bear';
    bear.strength = 80;
    bear.animalLife = true;
    bear.distance = 62;
    animals.add(bear);

    deer.animalName = 'Deer';
    deer.strength = 50;
    deer.animalLife = true;
    deer.distance = 70;
    animals.add(deer);

    rabit.animalName = 'Rabit';
    rabit.strength = 30;
    rabit.animalLife = true;
    rabit.distance = 50;
    animals.add(rabit);
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
}
