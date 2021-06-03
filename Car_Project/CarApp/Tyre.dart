class Tyre {
  String? _tyreManufacturer;
  String? _tyreSize;

  set tyreSize(String tyreSize) => _tyreSize = tyreSize;
  String get tyreSize => _tyreSize.toString();

  set tyreManufacturer(String tyreManufacturer) =>
      _tyreManufacturer = tyreManufacturer;
  String get tyreManufacturer => _tyreManufacturer.toString();
}
