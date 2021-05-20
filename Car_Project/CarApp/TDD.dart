import 'dart:io';
import './Car.dart';
import './Door.dart';
import './Engine.dart';
import './Tyre.dart';
import './RC.dart';

void main() {
  carDetails();
}

void carDetails() {
  var car = Car();
  var engine = Engine();
  var rc = RC();
  var door = Door();
  var tyre = Tyre();
  var tyres = [];

  /// var tyre = Tyre();
  var frontTyre1 = Tyre();
  var frontTyre2 = Tyre();
  var backTyre1 = Tyre();
  var backTyre2 = Tyre();

  print('Please Choose Any Option : ');
  print('1 - Enter The Details Of vehicle : ');
  print('2 - Print The Details Of Vehicle : ');
  int i = int.parse(stdin.readLineSync().toString());
  var options = i;

  if (options == 1) {
    print('Enter The Details of Car : ');
    print('Enter Name of the car : ');
    car.carName = stdin.readLineSync.toString();
    print('Enter Model of the Car :');
    car.carModel = stdin.readLineSync.toString();
    print('Enter Manufacture of the Car : ');
    car.carManufacturer = stdin.readLineSync.toString();

    print('Enter The RC Details : ');
    print('Enter The Name Of RC Owner :');
    rc.rcName = stdin.readLineSync.toString();
    print('Enter Adress Of RC Owner');
    rc.rcAdress = stdin.readLineSync.toString();
    car.setRegistrationCertificate(rc);

    print('Enter The Engine Details : ');
    print('Enter The Engine CC : ');
    engine.engineCC = stdin.readLineSync.toString();
    print('Enter The Type Of Engine : ');
    engine.engineType = stdin.readLineSync.toString();
    car.setEngine(engine);

    print('Enter the Details of Doors : ');
    print('Enter The Number OF Doors : ');
    door.noofDoors = stdin.readLineSync.toString();
    print('Enter The Type Of Door : ');
    door.doorType = stdin.readLineSync().toString();
    print('Enter The Number Of Seats Available : ');
    door.noofSeats = stdin.readLineSync().toString();
    car.setDoor(door);

    for (var i = 0; i <= 3; i++) {
      print('Enter the Details of Front Left Tyre : ');
      print('Enter The Size OF Front Left Tyre : ');
      tyre.tyreSize = stdin.readLineSync.toString();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      frontTyre1.tyreName = stdin.readLineSync.toString();
      tyres.add(frontTyre1);

      print('Enter the Details of Front Right Tyre : ');
      print('Enter The Size OF Tyre : ');
      frontTyre2.tyreSize = stdin.readLineSync.toString();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      frontTyre2.tyreName = stdin.readLineSync.toString();
      tyres.add(frontTyre2);

      print('Enter the Details of Back Left Tyre : ');
      print('Enter The Size OF Tyre : ');
      backTyre1.tyreSize = stdin.readLineSync.toString();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      backTyre1.tyreName = stdin.readLineSync.toString();
      tyres.add(backTyre1);

      print('Enter the Details of Back Right Tyre : ');
      print('Enter The Size OF Tyre : ');
      backTyre2.tyreSize = stdin.readLineSync.toString();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      backTyre2.tyreName = stdin.readLineSync.toString();
      tyres.add(backTyre2);
    }

    main();
  } else if (options == 2) {
    print('Details of the Given Car is Follows: ');
    print('Name of the car : ' + car.carName);
    print('Model of the Car : ' + car.carModel);
    print('Manufacturer of the Car : ' + car.carManufacturer);

    print('Details of the Given Car Registration certificate is Follows: ');
    print('Name of RC Owner : ' + car.rc.rcName);
    print('Adress of RC owner: ' + car.rc.rcAdress);

    print('Engine Details Are Following . ');
    print('Engine CC is : ' + car.engine.engineCC);
    print('Engine Type is : ' + car.engine.engineType);

    for (int i = 0; i <= 3; i++) {
      print('Details Of The Car :  ');
      //print('Tyre Manufactures name is :' + car.frontTyre1.tyreName);
      //print('Tyre Size is : ');
      print(tyres.iterator);

      /*print('Details Of The Front Right Tyre :  ');
      print('Tyre Manufactures name is : ');
      print(car.frontTyre2.tyreName);
      print('Tyre Size is : ');
      print(car.frontTyre2.tyreSize);

      print('Details Of The Back Left Tyre :  ');
      print('Tyre Manufactures name is : ');
      print(car.backTyre1.tyreName);
      print('Tyre Size is : ');
      print(car.backTyre1.tyreSize);

      print('Details Of The Back Right Tyre :  ');
      print('Tyre Manufactures name is : ');
      print(car.backTyre2.tyreName);
      print('Tyre Size is : ');
      print(car.backTyre2.tyreSize);*/
    }

    print('Details Of The Door and Seating of vehicle : ');
    print('Number of Doors :' + car.door.noofDoors);
    print('Type of Door : ' + car.door.doorType);
    print('Number of seats Available : ' + car.door.noofSeats);

    main();
  } else {
    print('You are Entered A wrong Input. Please Try Again ::: ');
    main();
  }
}
