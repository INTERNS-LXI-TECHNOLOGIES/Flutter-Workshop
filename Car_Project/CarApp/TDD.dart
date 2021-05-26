import 'dart:io';
import './Car.dart';
import './Door.dart';
import './Engine.dart';
//import './Tyre.dart';
import './RC.dart';
import 'Tyre.dart';

void main() {
  carDetails();
}

void carDetails() {
  var car = Car();
  var engine = Engine();
  var rc = RC();
  var door = Door();
  var tyre = Tyre();
  var tyres = <Tyre>[];

  print('Please Choose Any Option : ');
  print('1 - Enter The Details Of vehicle : ');
  print('2 - Print The Details Of Vehicle : ');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;

  if (options == 1) {
    print('Enter The Details of Car : ');
    print('Enter Name of the car : ');
    rc.carName = stdin.readLineSync().toString();
    print('Enter Model of the Car :');
    rc.carModel = stdin.readLineSync().toString();
    print('Enter Manufacture of the Car : ');
    rc.carManufacturer = stdin.readLineSync().toString();

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

    print('Enter the Details of Doors : ');
    print('Enter The Number OF Doors : ');
    door.noofDoors = stdin.readLineSync().toString();
    print('Enter The Type Of Door : ');
    door.doorType = stdin.readLineSync().toString();
    print('Enter The Number Of Seats Available : ');
    door.noofSeats = stdin.readLineSync().toString();
    car.setDoor(door);

    for (var i = 1; i <= 4; i++) {
      print('Enter the Details of  Tyre : ');
      print('Enter The Size OF Tyre $i: ');
      tyre.tyreSize = stdin.readLineSync().toString();
      print('Enter The Name Of Manufacture Of the Tyre $i: ');
      tyre.tyreName = stdin.readLineSync().toString();
      tyres.add(tyre);
    }
    car.setTyre(tyres);
    main();
  } else if (options == 2) {
    car.printdetails();
    main();
  } else {
    print('You are Entered A wrong Input. Please Try Again ::: ');
    main();
  }
}
