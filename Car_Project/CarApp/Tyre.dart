import 'dart:math';

class Tyre {
  String? _tyreManufacturer;
  String? _tyreSize;

  set tyreManufacturer(String tyreManufacturer) =>
      _tyreManufacturer = tyreManufacturer;
  String get tyreManufacturer => _tyreManufacturer.toString();

  set tyreSize(String tyreSize) => _tyreSize = tyreSize;
  String get tyreSize => _tyreSize.toString();

  void printTyreDetails(tyres) {
    print('Details of Tyre is Following:');
    for (var i = 0; i < tyres.length; i++) {
      print('Size of Tyre $i : ' + tyres[i].tyreSize);
      print('manufacture of Tyre $i: ' + tyres[i].tyreManufacturer);
    }
  }
}
