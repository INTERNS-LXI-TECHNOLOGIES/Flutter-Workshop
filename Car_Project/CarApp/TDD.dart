import 'dart:io';
import './Car.dart';
import './Door.dart';
import './Engine.dart';
import './Tyre.dart';
import './RC.dart';
import 'Tyre.dart';

void main() {
  carDetails();
}

void carDetails() {
  String? tyreSize;
  String? tyreName;
  String? doorType;
  String? doorManufacturer;

  Car car = new Car();
  Engine engine = Engine();
  RC rc = RC();
  Door door = Door(doorType, doorManufacturer);
  Tyre tyre = Tyre(tyreName, tyreSize);
  List<Tyre> tyres = [];
  List<Door> doors = [];
  print('Please Choose Any Option : ');
  print('1 - Enter The Details Of vehicle : ');
  print('2 - Print The Details Of Vehicle : ');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;

  if (options == 1) {
    print('Enter The Details of Car : ');
    print('Enter Name of the car : ');
    car.carName = stdin.readLineSync().toString();
    print('Enter Model of the Car :');
    car.carModel = stdin.readLineSync().toString();
    print('Enter Manufacture of the Car : ');
    car.carManufacturer = stdin.readLineSync().toString();

    print('Enter The RC Details : ');
    print('Enter The Name Of RC Owner :');
    rc.rcName = stdin.readLineSync().toString();
    print('Enter Adress Of RC Owner');
    rc.rcAdress = stdin.readLineSync().toString();
    car.setRegistrationCertificate(rc);

    print('Enter The Engine Details : ');
    print('Enter The Engine CC : ');
    engine.engineCC = stdin.readLineSync().toString();
    print('Enter The Type Of Engine : ');
    engine.engineType = stdin.readLineSync().toString();
    car.setEngine(engine);

    for (var i = 1; i <= 4; i++) {
      print('Enter the Details of  Tyre : ');
      print('Enter The Size OF Tyre $i: ');
      tyre.tyreSize = stdin.readLineSync().toString();
      print('Enter The Name Of Manufacture Of the Tyre $i: ');
      tyre.tyreName = stdin.readLineSync().toString();
      tyreName = tyre.tyreName;
      tyreSize = tyre.tyreSize;
      tyres.add(Tyre(tyreName, tyreSize));
    }
    car.setTyre(tyres);
    print('Enter the Details of Doors : ');
    for (int i = 1; i <= 2; i++) {
      print('Enter The Type Of Door $i : ');
      door.doorType = stdin.readLineSync().toString();
      print('Enter The Name Of Manufacturer');
      door.doorManufacturer = stdin.readLineSync().toString();
      doorType = door.doorType;
      doorManufacturer = door.doorManufacturer;
      doors.add(Door(doorType, doorManufacturer));
    }
    car.setDoor(doors);

    main();
  } else if (options == 2) {
    car.printCarDetails();

    main();
  } else {
    print('You are Entered A wrong Input. Please Try Again ::: ');
    main();
  }
}
