class RC {
  String? _rcName;
  String? _rcAdress;

  set rcName(String rcName) => _rcName = rcName;
  String get rcName => _rcName.toString();

  set rcAdress(String rcAdress) => _rcAdress = rcAdress;
  String get rcAdress => _rcAdress.toString();

  void printRCDetails() {
    print('Details of the Given Car Registration certificate is Follows: ');
    print('Name of RC Owner : ' + rcName);
    print('Adress of RC owner: ' + rcAdress);
  }
}
