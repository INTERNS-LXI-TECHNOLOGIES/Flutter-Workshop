import './Door.dart';
import './Engine.dart';
import './Tyre.dart';
import './RC.dart';
import 'Tyre.dart';

class Car {
  var _carName;
  var _carModel;
  var _carManufacturerName;

  var engine;
  var rc;
  var doors = <Door>[];
  var tyres = <Tyre>[];
  var door;
  var tyre;

  void setRegistrationCertificate(RC rc1) => rc = rc1;
  void setEngine(Engine engine1) => engine = engine1;
  void setDoor(List<Door> door1) => doors = door1;
  void setTyre(List<Tyre> tyre1) => tyres = tyre1;

  set carName(String carName) => _carName = carName;
  String get carName => _carName;

  set carModel(String carModel) => _carModel = carModel;
  String get carModel => _carModel;

  set carManufacturer(String carManufacturer) =>
      _carManufacturerName = carManufacturer;
  String get carManufacturer => _carManufacturerName;

  void printCarDetails() {
    print('Details of the Given Car is Follows: ');
    print('Name of the car : ' + _carName.toString());
    print('Model of the Car : ' + _carModel.toString());
    print('Manufacturer of the Car : ' + _carManufacturerName.toString());
    engine.printEngineDetails();
    rc.printRCDetails();
    door.setDoorList(doors);
    door.printDoor1Details();
    door.printDoor2Details();
    tyre.setList(tyres);
    tyre.printTyre1Details();
    tyre.printTyre2Details();
    tyre.printTyre3Details();
    tyre.printTyre4Details();
  }
}
