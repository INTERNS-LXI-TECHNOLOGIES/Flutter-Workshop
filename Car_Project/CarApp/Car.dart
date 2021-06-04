import 'Engine.dart';
import 'RC.dart';

class Car {
  String? _carName;
  String? _carModel;
  String? _carManufacturer;

  Engine? engine;
  RC? rc;
  List tyres = [];
  List doors = [];
  set carName(String carName) => _carName = carName;
  String get carName => _carName.toString();

  set carModel(String carModel) => _carModel = carModel;
  String get carModel => _carModel.toString();

  set carManufacturer(String carManufacturer) =>
      _carManufacturer = carManufacturer;
  String get carManufacturer => _carManufacturer.toString();

  void setEngine(engine) => this.engine = engine;
  void setRegistrationCertificate(rc) => this.rc = rc;
  void setTyres(List tyres) => this.tyres = tyres;
  void setDoors(List doors) => this.doors = doors;

  void printCarDetails() {
    print('Details of the Given Car is Follows: ');
    print('Name of the car : ' + carName);
    print('Model of the Car : ' + carModel);
    print('Manufacturer of the Car : ' + carManufacturer);
    engine?.printEngineDetails();
    rc?.printRCDetails();

    for (var i = 0; i < tyres.length; i++) {
      print('Details of Tyre $i : ');
      print('Size of tyre :' + tyres[i]);
    }

    for (var j = 0; j < doors.length; j++) {
      print('Details of Door $j: ');
      print('Type of Door $j :' + doors[j]);
    }
  }
}
