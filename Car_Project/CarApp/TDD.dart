import 'dart:io';
import './Car.dart';
import './Door.dart';
import './Engine.dart';
import './Tyre.dart';
import './RC.dart';

class TDD {
  
  void main() {
    Car car = Car();
    Engine engine = Engine();
    RC rc = RC();
    Door door = Door();
    Tyre frontTyre1 = Tyre();
    Tyre frontTyre2 = Tyre();
    Tyre backTyre1 = Tyre();
    Tyre backTyre2 = Tyre();

    print('Please Choose Any Option : ');
    print('1 - Enter The Details Of vehicle : ');
    print('2 - Print The Details Of Vehicle : ');
    int options = int.parse(stdin.readLineSync());

    if (options == 1) {
      print('Enter The Details of Car : ');
      print('Enter Name of the car : ');
      car.carName = stdin.readLineSync();
      print('Enter Model of the Car :');
      car.carModel = stdin.readLineSync();
      print('Enter Manufacture of the Car : ');
      car.carManufacturer = stdin.readLineSync();

      print('Enter The RC Details : ');
      print('Enter The Name Of RC Owner :');
      rc.rcName = stdin.readLineSync();
      print('Enter Adress Of RC Owner');
      rc.rcAdress = stdin.readLineSync();
      car.setRC(rc);

      print('Enter The Engine Details : ');
      print('Enter The Engine CC : ');
      engine.engineCC = stdin.readLineSync();
      print('Enter The Type Of Engine : ');
      engine.engineType = stdin.readLineSync();
      car.setEngine(engine);

      print('Enter the Details of Doors : ');
      print('Enter The Number OF Doors : ');
      door.noofDoors = int.parse(stdin.readLineSync());
      print('Enter The Type Of Door : ');
      door.doorType = stdin.readLineSync();
      print('Enter The Number Of Seats Available : ');
      door.noofSeats = int.parse(stdin.readLineSync());
      car.setDoor(door);

      print('Enter the Details of Front Left Tyre : ');
      print('Enter The Size OF Front Left Tyre : ');
      frontTyre1.tyreSize = stdin.readLineSync();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      frontTyre1.tyreName = stdin.readLineSync();
      car.setFrontTyre1(frontTyre1);

      print('Enter the Details of Front Right Tyre : ');
      print('Enter The Size OF Tyre : ');
      frontTyre2.tyreSize = stdin.readLineSync();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      frontTyre2.tyreName = stdin.readLineSync();
      car.setFrontTyre2(frontTyre2);

      print('Enter the Details of Back Left Tyre : ');
      print('Enter The Size OF Tyre : ');
      backTyre1.tyreSize = stdin.readLineSync();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      backTyre1.tyreName = stdin.readLineSync();
      car.setBackTyre1(backTyre1);

      print('Enter the Details of Back Right Tyre : ');
      print('Enter The Size OF Tyre : ');
      backTyre2.tyreSize = stdin.readLineSync();
      print('Enter The Name Of Manufacture Of the Tyre : ');
      backTyre2.tyreName = stdin.readLineSync();
      car.setBackTyre2(backTyre2);

      main();
    } else if (options == 2) {
      print('Details of the Given Car is Follows: ');
      print('Name of the car : ');
      print(car.carName);
      print('Model of the Car : ');
      print(car.carModel);
      print('Manufacturer of the Car : ');
      print(car.carManufacturer);

      print('Details of the Given Car Registration certificate is Follows: ');
      print('Name of RC Owner : ');
      print(car.rc.rcName);
      print('Adress of RC owner: ');
      print(car.rc.rcAdress);

      print('Engine Details Are Following . ');
      print('Engine CC is : ');
      print(car.engine.engineCC);
      print('Engine Type is : ');
      print(car.engine.engineType);

      print('Details Of The Front Left Tyre :  ');
      print('Tyre Manufactures name is : ');
      print(car.frontTyre1.tyreName);
      print('Tyre Size is : ');
      print(car.frontTyre1.tyreSize);

      print('Details Of The Front Right Tyre :  ');
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
      print(car.backTyre2.tyreSize);

      print('Details Of The Door and Seating of vehicle : ');
      print('Number of Doors : ${car.door.noofDoors}');
      print('Type of Door : ' + car.door.doorType);
      print('Number of seats Available : ${car.door.noofSeats}');

      main();
    } else {
      print('You are Entered A wrong Input. Please Try Again ::: ');
      main();
    }
  }
}
