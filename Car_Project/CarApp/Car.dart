//import './Car.dart';
import './Door.dart';
import './Engine.dart';
//import './Tyre.dart';
import './RC.dart';
import 'Tyre.dart';

class Car {
  // var carRc;
  // var carEngine;
  //var carDoor;

  Engine carEngine = Engine();
  RC carRc = RC();
  Door carDoor = Door();
  List<Tyre> tyres = <Tyre>[];

  void setRegistrationCertificate(RC rc) => carRc = rc;
  void setEngine(Engine engine) => carEngine = engine;
  void setDoor(Door door) => carDoor = door;
  void setTyre(List<Tyre> tyre) => tyres = tyre;
  void printCarDetails() {
    print('Details of the Given Car is Follows: ');
    print('Name of the car : ' + carRc.carName);
    print('Model of the Car : ' + carRc.carModel);
    print('Manufacturer of the Car : ' + carRc.carManufacturer);

    print('Details of the Given Car Registration certificate is Follows: ');
    print('Name of RC Owner : ' + carRc.rcName);
    print('Adress of RC owner: ' + carRc.rcAdress);

    print('Engine Details Are Following . ');
    print('Engine CC is : ' + carEngine.engineCC);
    print('Engine Type is : ' + carEngine.engineType);

    //print('Tyre Details are following');
    //for (var i = 0; i <= tyres.length; i++) {
    //print(tyres[i]);
    // }
    print('Details Of The Door and Seating of vehicle : ');
    print('Number of Doors :' + carDoor.noofDoors);
    print('Type of Door : ' + carDoor.doorType);
    print('Number of seats Available : ' + carDoor.noofSeats);
  }

  void printdetails() {
    print('Details of the Given Car is Follows: ');
    print('Name of the car :  Mustag');
    print('Model of the Car : 2021');
    print('Manufacturer of the Car : For Motors');

    print('Details of the Given Car Registration certificate is Follows: ');
    print('Name of RC Owner : Faris');
    print('Adress of RC owner: Pulikkal ');

    print('Engine Details Are Following . ');
    print('Engine CC is : 2000');
    print('Engine Type is : Diesel ');

    //print('Tyre Details are following');
    //for (var i = 0; i <= tyres.length; i++) {
    //print(tyres[i]);
    // }
    print('Details Of The Door and Seating of vehicle : ');
    print('Number of Doors : 2');
    print('Type of Door : flip');
    print('Number of seats Available : 3');
  }
}
