//import './Car.dart';
import './Door.dart';
import './Engine.dart';
//import './Tyre.dart';
import './RC.dart';

class Car {
  var carEngine;
  var carDoor;
  //late String _carTyre;
  var carRc;
  // Engine engine = Engine();
  // RC rc = RC();
  // Door door = Door();
  /*Tyre frontTyre1 = Tyre();
  Tyre frontTyre2 = Tyre();
  Tyre backTyre1 = Tyre();
  Tyre backTyre2 = Tyre();*/

  ///var _carName;
  // var _carModel;
  // var _carManufacturer;
  var rc;
  var door;
  var engine;
  void setRegistrationCertificate(RC rc) => this.carRc = rc;
  void setEngine(Engine engine) => this.carEngine = engine;
  void setDoor(Door door) => this.carDoor = door;
}
