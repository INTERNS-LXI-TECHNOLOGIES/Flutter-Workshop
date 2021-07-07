import 'dart:math';
import 'Animals/Bear.dart';
//import 'Animals/Carnivorous.dart';
import 'Animals/Carnivorous.dart';
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

    animals.add(Lion(
      'Indian Lion',
      true,
      true,
      80,
      95,
    ));
    animals.add(Lion('African Lion', true, true, 85, 91));
    animals.add(Tiger('Indian Tiger', true, true, 75, 88));
    animals.add(Tiger('African Tiger', true, true, 90, 89));
    animals.add(Bear('Bear', true, true, 78, 70));
    animals.add(Elephant('Elephant', true, true, 72, 80));
    animals.add(Elephant('Elephant', true, true, 75, 77));
    animals.add(Rabit('Rabit', true, true, 65, 35));
    animals.add(Horse('Horse', true, true, 60, 48));
    animals.add(Deer('Deer', true, true, 60, 40));
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
    String? winner;
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
              Lion? lion;
              Tiger? tiger;
              Bear? bear;
              Elephant? elephant;
              Horse? horse;
              Deer? deer;
              Rabit? rabit;
              if (playerOne is Lion || playerTwo is Lion) {
                if (playerOne is Lion) {
                  lion = playerOne;
                } else if (playerTwo is Lion) {
                  lion = playerTwo;
                }
                lion!.startFight();
              } else if (playerOne is Tiger || playerTwo is Tiger) {
                if (playerOne is Tiger) {
                  tiger = playerOne;
                } else if (playerTwo is Tiger) {
                  tiger = playerTwo;
                }
                tiger!.startFight();
              } else if (playerOne is Bear || playerTwo is Bear) {
                if (playerOne is Bear) {
                  bear = playerOne;
                } else if (playerTwo is Bear) {
                  bear = playerTwo;
                }
                bear!.startFight();
              } else if (playerOne is Deer || playerTwo is Deer) {
                if (playerOne is Deer) {
                  deer = playerOne;
                } else if (playerTwo is Deer) {
                  deer = playerTwo;
                }
                deer!.startFight();
              } else if (playerOne is Elephant || playerTwo is Elephant) {
                if (playerOne is Elephant) {
                  elephant = playerOne;
                } else if (playerTwo is Elephant) {
                  elephant = playerTwo;
                }
                elephant!.startFight();
              } else if (playerOne is Horse || playerTwo is Horse) {
                if (playerOne is Horse) {
                  horse = playerOne;
                } else if (playerTwo is Horse) {
                  horse = playerTwo;
                }
                horse!.startFight();
              } else if (playerOne is Rabit || playerTwo is Rabit) {
                if (playerOne is Rabit) {
                  rabit = playerOne;
                } else if (playerTwo is Rabit) {
                  rabit = playerTwo;
                }
                rabit!.startFight();
              }

              if (playerOne.strength > playerTwo.strength) {
                String winnerInGame = playerOne.animalName;
                playerTwo.strength = playerOne.strength - 10;
                playerTwo.isAnimalAlive = false;
                playerTwo.strength = playerTwo.strength - 15;
                winner = winnerInGame;
              } else {
                String winnerInGame = playerTwo.animalName;
                playerTwo.strength = playerTwo.strength - 10;
                playerOne.isAnimalAlive = false;
                playerOne.strength = playerOne.strength - 15;
                winner = winnerInGame;
              }
              print('Winner of this Round is' + winner);
              checkLifeStatusOfPlayerOne(playerOne, playerTwo);
            }
          }
        }
        print('');
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

  void checkLifeStatusOfPlayerOne(Animal playerOne, Animal playerTwo) {
    if (playerOne.strength <= 30 && playerTwo.strength > 30) {
      playerOne.isAnimalAlive = false;
      print(playerOne.animalName + ' is dead');
      print(playerTwo.animalName + 'Is Survived');
    } else if (playerTwo.strength <= 30 && playerOne.strength > 30) {
      print(playerOne.animalName + ' is Survived');
      print(playerTwo.animalName + 'is Dead');
    }
  }
}
