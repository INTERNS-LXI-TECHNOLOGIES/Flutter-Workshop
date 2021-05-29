class RC {
  var _rcName;
  var _rcAdress;

  set rcName(String rcName) => _rcName = rcName;
  String get rcName => _rcName;

  set rcAdress(String rcAdress) => _rcAdress = rcAdress;
  String get rcAdress => _rcAdress;

  void printRCDetails() {
    print('Details of the Given Car Registration certificate is Follows: ');
    print('Name of RC Owner : ' + _rcName);
    print('Adress of RC owner: ' + _rcAdress);
  }
}
