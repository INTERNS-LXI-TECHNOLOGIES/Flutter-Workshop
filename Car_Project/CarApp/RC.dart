class RC {
  var _rcName;
  var _rcAdress;
  var _carName;
  var _carModel;
  var _carManufacturerName;

  set carName(String carName) => _carName = carName;
  String get carName => _carName;

  set carModel(String carModel) => _carModel = carModel;
  String get carModel => _carModel;

  set carManufacturer(String carManufacturer) =>
      _carManufacturerName = carManufacturer;
  String get carManufacturer => _carManufacturerName;

  set rcName(String rcName) => _rcName = rcName;
  String get rcName => _rcName;

  set rcAdress(String rcAdress) => _rcAdress = rcAdress;
  String get rcAdress => _rcAdress;
}
