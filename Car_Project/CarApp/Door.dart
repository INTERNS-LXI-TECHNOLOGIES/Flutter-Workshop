class Door {
  var _doorManufacturer;
  var _noofSeats;
  var _doorType;

  set doorManufacturer(String noofDoors) => _doorManufacturer = noofDoors;
  String get doorManufacturer => _doorManufacturer;

  set noofSeats(String noofseats) => _noofSeats = noofseats;
  String get noofSeats => _noofSeats;

  set doorType(String doorType) => _doorType = doorType;
  String get doorType => _doorType;

  void printDoorDetails(List<Door> doors) {
    print('Details Of The Door and Seating of vehicle : ');
    for (int i = 0; i <= doors.length; i++) {
      print(doors[i]);
      //print(doors.toList());
      //print(doors);
      //   print(' The Type Of Door $i : '+ doors.contains(_doorType.toString()));
      // print('Enter The Name Of Manufacturer' + doors);
      print(' The Type Of Door $i : ' + _doorType);
      print('Enter The Name Of Manufacturer' + _doorManufacturer);
    }
    print('Enter The Number Of Seats Available : ' + _noofSeats);
  }
}
