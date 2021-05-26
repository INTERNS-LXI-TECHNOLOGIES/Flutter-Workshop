class Engine {
  String? _engineCC;
  String? _engineType;

  set engineCC(String engineCC) => _engineCC = engineCC;
  String get engineCC => _engineCC.toString();

  set engineType(String engineType) => _engineType = engineType;
  String get engineType => _engineType.toString();
}
