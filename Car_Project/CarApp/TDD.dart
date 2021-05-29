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
  //var setcar;
  Car car = Car();
  Engine engine = Engine();
  RC rc = RC();
  Door door = Door();
  Tyre tyre = Tyre();
  var tyres = <Tyre>[];
  var doors = <Door>[];

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
      tyres.add(tyre);
    }
    car.setTyre(tyres);
    print('Enter the Details of Doors : ');
    for (int i = 1; i <= 4; i++) {
      print('Enter The Type Of Door $i : ');
      door.doorType = stdin.readLineSync().toString();
      print('Enter The Name Of Manufacturer');
      door.doorManufacturer = stdin.readLineSync().toString();
      doors.add(door);
    }
    print('Enter The Number Of Seats Available : ');
    door.noofSeats = stdin.readLineSync().toString();
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
