class Tyre {
  String? _tyreSize;
  String? _tyreName;

  set tyreName(String tyreName) => _tyreName = tyreName;
  String get tyreName => _tyreName.toString();

  set tyreSize(String tyreSize) => _tyreSize = tyreSize;
  String get tyreSize => _tyreSize.toString();

  void printTyreDetails(List<Tyre> tyres) {
    print('Tyre Details are following');
    for (var i = 0; i <= tyres.length; i++) {
      print(tyres[i]);
    }
  }
}
