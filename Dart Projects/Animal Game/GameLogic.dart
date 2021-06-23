import 'dart:math';
import 'Animals/Animal.dart';
import 'Animals/Carnivorous.dart';
import 'Animals/Herbivorous.dart';
import 'Animals/WeakAnimal.dart';

class GameLogic {
  void gamePlayLogic(int playerOne, int playerTwo, List<Animal> animals) {
    if (animals[playerOne].animalLife == true &&
        animals[playerTwo].animalLife == true) {
      if (animals[playerOne] is Carnivorous &&
          animals[playerTwo] is Herbivorous) {
        gameplayLogicBetweenCarbivorousVsHerbivorous(
            playerOne, playerTwo, animals);
      } else if (animals[playerOne] is Herbivorous &&
          animals[playerTwo] is Herbivorous) {
        gameplayLogicBetweenHerbivorousVsHerbivorous(
            playerOne, playerTwo, animals);
      } else if (animals[playerOne] is Carnivorous &&
          animals[playerTwo] is Carnivorous) {
        gameplayLogicBetweenCarbivorousVsCarbivorous(
            playerOne, playerTwo, animals);
      } else if (animals[playerOne] is Herbivorous &&
          animals[playerTwo] is Carnivorous) {
        gameplayLogicBetweenHerbivorousVsCarbivorous(
            playerOne, playerTwo, animals);
      }
    }
  }

  void gameplayLogicBetweenCarbivorousVsHerbivorous(
      int playerOne, int playerTwo, List<Animal> animals) {
    {
      bool result = checkArea(playerOne, playerTwo, animals);
      if (result == true) {
        int luckyHerbivorous = luck();
        print(animals[playerOne].animalName +
            'kills' +
            animals[playerTwo].animalName);
        print('Player One Name     :    ' +
            animals[playerOne].animalName +
            '\nPlayer One Strength :\t\t' +
            animals[playerOne].strength.toString() +
            '\n');
        print('Player Two Name     :    ' +
            animals[playerTwo].animalName +
            '\nPlayer Two Strength :\t\t' +
            animals[playerTwo].strength.toString() +
            '\n');
        if (animals[playerOne].strength > animals[playerTwo].strength) {
          if (animals[playerTwo] is WeakAnimal) {
            if (luckyHerbivorous != 2) {
              print(
                  '\nWinner is Player One:\t' + animals[playerOne].animalName);
              animals[playerOne].strength = animals[playerOne].strength - 10;
              print('\nWinners New Strength:\t' +
                  animals[playerOne].strength.toString());
              animals[playerTwo].animalLife = false;
              print('\nLoser is Player Two:' + animals[playerTwo].animalName);
              animals[playerTwo].strength = animals[playerTwo].strength - 15;
              print("\nLosser's New Strength:\t" +
                  animals[playerTwo].strength.toString());
              print('----------------------------------------');
            } else {
              print(
                  '\nWinner is Player Two:\t' + animals[playerTwo].animalName);
              animals[playerTwo].strength = animals[playerTwo].strength - 10;
              print("\nWinner's New Strength:\t" +
                  animals[playerTwo].strength.toString());
              animals[playerTwo].animalLife = false;
              print('\nLoser is Player Two:' + animals[playerOne].animalName);
              animals[playerOne].strength = animals[playerOne].strength - 15;
              print('--------------------------------------');
            }
          } else {
            print('\nWinner is Player Two:\t' + animals[playerTwo].animalName);
            animals[playerTwo].strength = animals[playerTwo].strength - 10;
            print("\nWinner's New Strength:\t" +
                animals[playerTwo].strength.toString());
            animals[playerTwo].animalLife = false;
            print('\nLoser is Player Two:' + animals[playerOne].animalName);
            animals[playerOne].strength = animals[playerOne].strength - 15;
            print("\nLosser's New Strength:\t" +
                animals[playerOne].strength.toString());
            print('------------------------------------------');
          }
        }
      }
    }
  }

  void gameplayLogicBetweenHerbivorousVsHerbivorous(
      int playerOne, int playerTwo, List<Animal> animals) {
    bool result = checkArea(playerOne, playerTwo, animals);
    if (result == true) {
      print('Player One Name     :\t' + animals[playerOne].animalName);
      print('Player Two Name     :\t' + animals[playerTwo].animalName);
      print('\nBoth are Herbivorus and they dont fight each other');
      print('-----------------------------------');
    }
  }

  void gameplayLogicBetweenCarbivorousVsCarbivorous(
      int playerOne, int playerTwo, List<Animal> animals) {
    bool result = checkArea(playerOne, playerTwo, animals);
    if (result == true) {
      print(animals[playerOne].animalName +
          'meets' +
          animals[playerTwo].animalName);
      print('Player One Name\t:' +
          animals[playerOne].animalName +
          '\nPlayer One Strength :\t\t' +
          animals[playerOne].strength.toString() +
          '\n');
      print('Player Two Name\t:' +
          animals[playerTwo].animalName +
          '\nPlayer Two Strength :\t\t' +
          animals[playerTwo].strength.toString() +
          '\n');
      print('');

      if (animals[playerOne].strength > animals[playerTwo].strength) {
        print('\nWinner is Player One:\t' + animals[playerOne].animalName);
        animals[playerOne].strength = animals[playerOne].strength - 10;
        print('\nNew Strength of Winner:\t' +
            animals[playerOne].strength.toString());
        print('\nLooser is Player Two:\t' + animals[playerTwo].animalName);
        animals[playerTwo].strength = animals[playerTwo].strength - 30;
        print('\nNew strength of Looser:\t' +
            animals[playerTwo].strength.toString());
        if (animals[playerTwo].strength <= 30) {
          animals[playerTwo].animalLife = false;
          print('\nDied animal:\t  ' + animals[playerTwo].animalName);
        }
        print('--------------------------------------');
      } else {
        print('\nWinner is player Two:\t' + animals[playerTwo].animalName);
        animals[playerTwo].strength = animals[playerTwo].strength - 10;
        print('\nNew strength of Winner:\t' +
            animals[playerTwo].strength.toString());
        print('\n Looser  IS  PLAYER 1 \t' + animals[playerOne].animalName);
        animals[playerOne].strength = animals[playerOne].strength - 30;
        print('\nNew strength of Looser:\t' +
            animals[playerOne].strength.toString());
        if (animals[playerOne].strength <= 30) {
          animals[playerOne].animalLife = false;
          print('\nDied animal:-\t' + animals[playerOne].animalName);
        } else {}

        print('--------------------------------');
      }
    } else {}
  }

  void gameplayLogicBetweenHerbivorousVsCarbivorous(
      int playerOne, int playerTwo, List<Animal> animals) {
    bool result = checkArea(playerOne, playerTwo, animals);
    if (result == true) {
      int luckyHerbivorous = luck();
      print('Player One Name\t:\t' +
          animals[playerOne].animalName +
          '\nPlayer One Strength :\t\t' +
          animals[playerOne].strength.toString() +
          '\n');
      print('Player Two Name\t:\t' +
          animals[playerTwo].animalName +
          '\nPlayer Two Strength :\t\t' +
          animals[playerTwo].strength.toString() +
          '\n');
      if (animals[playerOne].strength > animals[playerTwo].strength) {
        if (animals[playerTwo] is WeakAnimal) {
          if (luckyHerbivorous != 2) {
            print('\nWinner is Player One:\t' + animals[playerOne].animalName);
            animals[playerTwo].strength = animals[playerOne].strength - 10;
            print("\nWinner's New Strength:\t" +
                animals[playerOne].strength.toString());
            animals[playerTwo].animalLife = false;
            print('\nLoser is Player Two:' + animals[playerTwo].animalName);
            animals[playerTwo].strength = animals[playerTwo].strength - 15;
            print('------------------------------------');
          }
        } else {
          print('\nWinner is Player Two:\t' + animals[playerTwo].animalName);
          animals[playerTwo].strength = animals[playerTwo].strength - 10;
          print("\nWinner's New Strength:" +
              animals[playerTwo].strength.toString());
          animals[playerOne].animalLife = false;
          print('\nLoser is Player One:' + animals[playerOne].animalName);
          animals[playerTwo].strength = animals[playerOne].strength - 15;
          print('-----------------------------------');
        }
      }
    }
  }

  int luck() {
    int luckfactor = Random().nextInt(3);
    return luckfactor;
  }

  bool checkArea(int playerOne, int playerTwo, List<Animal> animals) {
    print('\t TERRITORY DETAILS ');
    print('-----------------------------------');
    print('\n' +
        animals[playerOne].animalName +
        '\t Range =' +
        animals[playerOne].distance.toString());
    print('\n' +
        animals[playerTwo].animalName +
        '\t Range =' +
        animals[playerTwo].distance.toString());
    int distance =
        (animals[playerOne].distance) - (animals[playerTwo].distance);
    int radius = 30;
    if (distance < radius) {
      print('\n\t\t=> ' +
          animals[playerOne].animalName +
          ' AND ' +
          animals[playerTwo].animalName +
          ' are in SAME TERRITORY \n');
      return true;
    } else {
      print('\n\t\t=>' +
          animals[playerOne].animalName +
          ' AND ' +
          animals[playerTwo].animalName +
          ' are not in SAME TERRITORY \n');
      return false;
    }
  }
}
