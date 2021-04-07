import 'dart:io';

class Engine {
  String engineCC;
  String engineType;
  //var engine= new List();

  void engineSpecs() {
    print('Enter The Engine Details : ');
    print('Enter The Engine CC : ');
    engineCC = stdin.readLineSync();

    print('Enter The Type Of Engine : ');
    engineType = stdin.readLineSync();
  }

  void printEngineSpecs() {
    print('Engine Details Are Following . ');
    print('Engine CC is : ${engineCC}');
    print('Engine Type is : ${engineType}');
  }
}
