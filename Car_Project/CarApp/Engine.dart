class Engine {
  String? _engineType;
  String? _engineCC;

  set engineCC(String engineCC) => _engineCC = engineCC;
  String get engineCC => _engineCC.toString();

  set engineType(String engineType) => _engineType = engineType;
  String get engineType => _engineType.toString();

  void printEngineDetails() {
    print('Engine Details Are Following . ');
    print('Engine CC is : ' + engineCC);
    print('Engine Type is : ' + engineType);
  }
}
