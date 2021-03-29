import 'dart:io';

class Engine
{
	String engineCC;
	String engineType;
	//var engine= new List();

	void engineDetails()
	{
		print('Enter The Engine Details : ');
		print('Enter The Engine CC : ');
		engineCC=stdin.readLineSync();
		//engine.add(engineCC);

		print('Enter The Type Of Engine : ');
		engineType=stdin.readLineSync();
		//engine.add(engineType);
	}

	void printEngineDetails()
	{
		print('Engine Details Are Following . ');
		print('Engine CC is : ${engineCC}');
		print('Engine Type is : ${engineType}');

	}

}