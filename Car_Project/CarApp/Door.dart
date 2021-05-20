class Door {
  String? _noofDoors;
  String? _noofSeats;
  String? _doorType;

  set noofDoors(String noofDoors) => _noofDoors;
  String get noofDoors => _noofDoors.toString();

  set noofSeats(String noofseats) => _noofSeats;
  String get noofSeats => _noofSeats.toString();

  set doorType(String doorType) => _doorType;
  String get doorType => _doorType.toString();
}
