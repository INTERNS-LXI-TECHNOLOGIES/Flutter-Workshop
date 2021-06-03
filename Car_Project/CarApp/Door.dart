class Door {
  String? _doorType;
  String? _doorManufacturer;

  set doorType(String doorType) => _doorType = doorType;
  String get doorType => _doorType.toString();

  set doorManufacturer(String doorManufacturer) =>
      _doorManufacturer = doorManufacturer;
  String get doorManufacturer => _doorManufacturer.toString();
}
