import 'dart:io';
class Car
{
	String carName;
	int carModel;

	
	void carDetails()
	{
		
      print('welcome Car Project');

		print('Enter The Name Of Car : ');
		carName=stdin.readLineSync();

		print('Enter The Model Of Car : ');
		carModel=int.parse(stdin.readLineSync());


	}
	void printCarDetails()
	{
		print('Details of the Given Car is Follows: ');
		print('Name of the car : ${carName}');
		print('Model of the Car : ${carModel}');
	}

	void mainMenu()
	{
		
		RC rc = new RC();
		Engine engine = new Engine();
		Door door = new Door();
		Tyre tyre = new Tyre();
		this.carDetails();
		rc.ownerInformation();
		engine.engineDetails();
		tyre.tyreDetails();
		door.doorAndSeatingArrangement();
		//details of car
		this.printCarDetails();
		rc.printOwnerInformation();
		engine.printEngineDetails();
		tyre.printTyreDetails();
		door.printDoorAndSeatingArrangement();

	}
}