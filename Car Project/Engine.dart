import 'dart:io';
interface Engine 
{

  String _engineNumber;
  String _engineType;

    void set engineNumber(String engineNumber)=> _engineNumber;
    String get engineNumber =>_engineNumber;

    void set engineType(String engineType)=> _engineType;
    String get engineType => _engineType;
    void printEngineDetails()
{
        print('-------------------------------------');
        print('Engine Details . ');
    	print('Engine CC is : 'engine.engineNumber);
    	print('Engine Type is : 'engine.engineType);
		print('-------------------------------------');
		this.printTyreDetails();
}
}