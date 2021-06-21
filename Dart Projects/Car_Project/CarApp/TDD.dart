import 'dart:io';

import 'Car.dart';
import 'Door.dart';
import 'Engine.dart';
import 'RC.dart';
import 'Tyre.dart';

Car car = Car();
Engine engine = Engine();
RC rc = RC();
Tyre tyre = Tyre();
Door door = Door();

List<Door> doors = <Door>[];
List<Tyre> tyres = <Tyre>[];

void main() {
  startUpLogo();
  mainMenu();
  //mainMenu();
}

void mainMenu() {
  print('Please Choose Any Option : ');
  print('1 - Enter The Details Of vehicle : ');
  print('2 - Print The Details Of Vehicle : ');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;
  if (options == 1) {
    userCarInputDetails();
    mainMenu();
  } else if (options == 2) {
    printUserInput();
  } else {
    print('You Entered a Wrong Input');
  }
}

void userCarInputDetails() {
  print('Enter The Details of Car : ');
  print('Enter Name of the car : ');
  car.carName = stdin.readLineSync().toString();
  print('Enter Model of the Car :');
  car.carModel = stdin.readLineSync().toString();
  print('Enter Manufacture of the Car : ');
  car.carManufacturer = stdin.readLineSync().toString();

  print('Enter The Engine Details : ');
  print('Enter The Engine CC : ');
  engine.engineCC = stdin.readLineSync().toString();
  print('Enter The Type Of Engine : ');
  engine.engineType = stdin.readLineSync().toString();
  car.setEngine(engine);

  print('Enter The RC Details : ');
  print('Enter The Name Of RC Owner :');
  rc.rcName = stdin.readLineSync().toString();
  print('Enter Adress Of RC Owner');
  rc.rcAdress = stdin.readLineSync().toString();
  car.setRegistrationCertificate(rc);

  for (var i = 1; i <= 4; i++) {
    print('Enter the Details of  Tyre : ');
    print('Enter The Manufacturer OF Tyre $i: ');
    tyre.tyreManufacturer = stdin.readLineSync().toString();
    print('Enter the Size of Tyre');
    tyre.tyreSize = stdin.readLineSync().toString();
    tyres.add(tyre);
  }
  car.setTyres(tyres);
  print('Enter the Details of Doors : ');
  print('Enter the Number of Doors: ');
  int numberOfDoors = int.parse(stdin.readLineSync().toString());
  for (int i = 1; i <= numberOfDoors; i++) {
    print('Enter The Type Of Door $i : ');
    door.doorType = stdin.readLineSync().toString();

    print('Enter The Manufacturer of Door $i :');
    door.doorManufacturer = stdin.readLineSync().toString();
    doors.add(door);
  }

  car.setDoors(doors);
}

void printUserInput() {
  car.printCarDetails();
}

void startUpLogo() {
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t-------------- Car Manufacturing -------------------');
  print('\t\t---------------------- And -------------------------');
  print('\t\t------------- Certification Unit -------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
  print('\t\t----------------------------------------------------');
}
