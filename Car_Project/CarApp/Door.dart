class Door {
  String? _doorManufacturer;
  String? _doorType;

  set doorManufacturer(String noofDoors) => _doorManufacturer = noofDoors;
  String get doorManufacturer => _doorManufacturer.toString();

  set doorType(String doorType) => _doorType = doorType;
  String get doorType => _doorType.toString();

  Door(this._doorManufacturer, this._doorType);
}
