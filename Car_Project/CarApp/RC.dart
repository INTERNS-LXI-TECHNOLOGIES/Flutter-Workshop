class RC {
  String? _rcName;
  String? _rcAdress;
  String? _carName;
  String? _carModel;
  String? _carManufacturer;

  set carName(String carName) => _carName;
  String get carName => _carName.toString();

  set carModel(String carModel) => _carModel;
  String get carModel => _carModel.toString();

  set carManufacturer(String carManufacturer) => _carManufacturer;
  String get carManufacturer => _carManufacturer.toString();

  set rcName(String rcName) => _rcName;
  String get rcName => _rcName.toString();

  set rcAdress(String rcAdress) => _rcAdress;
  String get rcAdress => _rcAdress.toString();
}
