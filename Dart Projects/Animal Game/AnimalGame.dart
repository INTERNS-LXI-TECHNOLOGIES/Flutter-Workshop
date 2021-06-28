import 'dart:io';

import 'Forest.dart';

Forest forest = Forest();

class AnimalGame {
  void printMainMenu() {
    printstartUpScreen();
    int choice = 0;
    do {
      print('\n________________________');
      print(
          '\n\n1. Start Game \n\n2. Participants \n\n3. Credits \n\n Press 0 for Exit \n');
      choice = int.parse(stdin.readLineSync().toString());
      if (choice == 1) {
        forest.generateAnimals();
        forest.startGame();
      }
      if (choice == 2) {
        forest.generateAnimals();
        forest.printParticipantingAnimalsName();
      }
      if (choice == 3) {
        printGamecredits();
      } else {
        print('');
      }
    } while (choice > 0);
  }

  void printstartUpScreen() {
    {
      print(
          '                ---------------------------------------------------');
      print(
          '                ---------------------------------------------------');
      print(
          '                -------------------- Animal Game ------------------');
      print(
          '                ---------------------------------------------------');
      print(
          '                ---------------------------------------------------');
      print(
          '                -------------------- version v2.0 -----------------');
      print(
          '                ---------------------------------------------------');
      print(
          '                ---------------------------------------------------\n\n\n');
    }
  }

  void printGamecredits() {
    print(
        '                ---------------------------------------------------');
    print(
        '                ---------------------------------------------------');
    print(
        '                ---------------- Developed By Faris ---------------');
    print(
        '                ---------------------------------------------------');
    print(
        '                ---------------- LXI Technologies -----------------');
    print(
        '                ---------------------------------------------------');
    print(
        '                ---------------------------------------------------\n\n\n');
  }
}
