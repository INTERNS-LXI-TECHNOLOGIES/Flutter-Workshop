import 'dart:io';
interface Engine 
{

  String _engineNumber;
  String _engineType;

    void set engineNumber(String engineNumber)=> _engineNumber;
    String get engineNumber =>_engineNumber;

    void set engineType(String engineType)=> _engineType;
    String get engineType => _engineType;
}