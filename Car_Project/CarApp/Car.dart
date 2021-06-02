import './Door.dart';
import './Engine.dart';
import './Tyre.dart';
import './RC.dart';
import 'Tyre.dart';

class Car {
  String? _carName;
  String? _carModel;
  String? _carManufacturerName;
  var engine;
  var rc;
  List tyres = <Tyre>[];
  List doors = <Door>[];
  void setRegistrationCertificate(RC rc) => this.rc = rc;
  void setEngine(Engine engine) => this.engine = engine;
  void setDoor(List<Door> doors) => this.doors = doors;
  void setTyre(List<Tyre> tyres) => this.tyres = tyres;

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
    engine.printEngineDetails();
    rc.printRCDetails();
    for (int i = 0; i <= tyres.length; i++) {
      print('Details of Tyre $i their size and tyre Manufactureris Printing: ');
      print(tyres.elementAt(i));
    }

    for (int i = 0; i < doors.length; i++) {
      print('Details of Door $i is printing: ');
      print(doors.elementAt(i));
    }
  }
}
