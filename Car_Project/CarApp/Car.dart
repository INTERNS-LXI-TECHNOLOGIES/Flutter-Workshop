import './Door.dart';
import './Engine.dart';
import './Tyre.dart';
import './RC.dart';
import 'Tyre.dart';

class Car {
  String? _carName;
  String? _carModel;
  String? _carManufacturerName;

  var carEngine;
  var carRc;
  var doors = <Door>[];
  var tyres = <Tyre>[];
  var carDoor = Door();
  var carTyre = Tyre();

  //Car(this.carEngine);
  void setRegistrationCertificate(RC rc) => carRc = rc;
  void setEngine(Engine engine) => carEngine = engine;
  void setDoor(List<Door> door) => doors = doors;
  void setTyre(List<Tyre> tyre) => tyres = tyre;

  set carName(String carName) => _carName = carName;
  String get carName => _carName.toString();

  set carModel(String carModel) => _carModel = carModel;
  String get carModel => _carModel.toString();

  set carManufacturer(String carManufacturer) =>
      _carManufacturerName = carManufacturer;
  String get carManufacturer => _carManufacturerName.toString();

  void printCarDetails() {
    print('Details of the Given Car is Follows: ');
    print('Name of the car : ' + _carName.toString());
    print('Model of the Car : ' + _carModel.toString());
    print('Manufacturer of the Car : ' + _carManufacturerName.toString());
    carEngine.printEngineDetails();
    carRc.printRCDetails();
    carDoor.printDoorDetails(doors);
    carTyre.printTyreDetails(tyres);
  }
}
