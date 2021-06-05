class Door {
  String? _doorType;
  String? _doorManufacturer;

  set doorType(String doorType) => _doorType = doorType;
  String get doorType => _doorType.toString();

  set doorManufacturer(String doorManufacturer) =>
      _doorManufacturer = doorManufacturer;
  String get doorManufacturer => _doorManufacturer.toString();

  void printDoorDetails(doors) {
    print('Details of Door is  :');
    for (var i = 0; i < doors.length; i++) {
      print('Door Type :' + doors[i].doorType);
      print('Door Manufacturer: ' + doors[i].doorManufacturer);
    }
    // doors.forEach((element) {
    //   for (var i = 0; i < doors.length; i++) {
    //     print('${doors[i]}');
    //   }
    // });
  }
}
