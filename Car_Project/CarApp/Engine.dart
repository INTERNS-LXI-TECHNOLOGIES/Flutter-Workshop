class Engine {
  String? _engineCC;
  String? _engineType;

  set engineCC(String engineCC) => _engineCC = engineCC;
  String get engineCC => _engineCC.toString();

  set engineType(String engineType) => _engineType = engineType;
  String get engineType => _engineType.toString();

  void printEngineDetails() {
    print('Engine Details Are Following . ');
    print('Engine CC is : ' + _engineCC.toString());
    print('Engine Type is : ' + _engineType.toString());
  }
}
