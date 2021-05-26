class RC {
  String? _rcName;
  String? _rcAdress;
  String? _carName;
  String? _carModel;
  String? _carManufacturerName;

  set carName(String carName) => _carName = carName;
  String get carName => _carName.toString();

  set carModel(String carModel) => _carModel = carModel;
  String get carModel => _carModel.toString();

  set carManufacturer(String carManufacturer) =>
      _carManufacturerName = carManufacturer;
  String get carManufacturer => _carManufacturerName.toString();

  set rcName(String rcName) => _rcName = rcName;
  String get rcName => _rcName.toString();

  set rcAdress(String rcAdress) => _rcAdress = rcAdress;
  String get rcAdress => _rcAdress.toString();
}
