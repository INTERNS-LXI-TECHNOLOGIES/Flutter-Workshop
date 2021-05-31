class Door {
  var _doorManufacturer;
  var doorsList = <Door>[];
  var _doorType;

  set doorManufacturer(String noofDoors) => _doorManufacturer = noofDoors;
  String get doorManufacturer => _doorManufacturer;

  set doorType(String doorType) => _doorType = doorType;
  String get doorType => _doorType;

  Door(this._doorManufacturer, this._doorType);

  void setDoorList(List<Door> doors) => doorsList = doors;
  void printDoor1details() {
    print('Details of Door 1 is printing: ');
    print(doorsList.elementAt(0));
  }

  void printDoor2details() {
    print('Details of Door 2 is printing: ');
    print(doorsList.elementAt(1));
  }

  void printDoor3details() {
    print('Details of Door 3 is printing: ');
    print(doorsList.elementAt(2));
  }

  void printDoor4details() {
    print('Details of Door 4 is printing: ');
    print(doorsList.elementAt(3));
  }
}
