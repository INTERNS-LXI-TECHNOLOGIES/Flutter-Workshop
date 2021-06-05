import 'Engine.dart';
import 'RC.dart';
import 'Tyre.dart';
import 'Door.dart';
import 'car_project.dart';

class Car {
  String? _carName;
  String? _carModel;
  String? _carManufacturer;

  Engine? engine;
  RC? rc;
  List<Tyre> tyres = [];
  List<Door> doors = [];

  set carName(String carName) => _carName = carName;
  String get carName => _carName.toString();

  set carModel(String carModel) => _carModel = carModel;
  String get carModel => _carModel.toString();

  set carManufacturer(String carManufacturer) =>
      _carManufacturer = carManufacturer;
  String get carManufacturer => _carManufacturer.toString();

  void setEngine(engine) => this.engine = engine;
  void setRegistrationCertificate(rc) => this.rc = rc;
  void setTyres(List<Tyre> tyres) => this.tyres = tyres;
  void setDoors(List<Door> doors) => this.doors = doors;

  void printCarDetails() {
    print('Details of the Given Car is Follows: ');
    print('Name of the car : ' + carName);
    print('Model of the Car : ' + carModel);
    print('Manufacturer of the Car : ' + carManufacturer);
    engine?.printEngineDetails();
    rc?.printRCDetails();
    tyre.printTyreDetails(tyres);
    door.printDoorDetails(doors);
  }
}
