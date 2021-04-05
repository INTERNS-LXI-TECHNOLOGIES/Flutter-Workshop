import 'dart:io';
class Car
{
	String carName;
	int carModel;
	RC rc = new RC();
		Engine engine = new Engine();
		Door door = new Door();
		Tyre tyre = new Tyre();
	
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

	void displayMainMenu()
	{
		
		

		print('Please Choose Any Option : ');
		print('1 - Enter The Details Of vehicle : ');
		print('2 - Print The Details Of Vehicle : ');
		int options = int.parse(stdin.readLineSync());
		if(options==1)
		{
			this.carDetails();
			rc.ownerInformation();
			engine.engineDetails();
			tyre.tyreDetails();
			door.doorAndSeatingArrangement();
			print('You are SuccessFully Updated Your Details \n Thank you! ');
			this.redirectingMenu();
		}
		else if(options==2)
		{
			//details of car
			this.printCarDetails();
			rc.printOwnerInformation();
			engine.printEngineDetails();
			tyre.printTyreDetails();
			door.printDoorAndSeatingArrangement();

		}
		
		else
		{
			print('You are Entered A wrong Input. Please Try Again ::: ');
			this.redirectingMenu();
		}

	}

	void redirectingMenu()
	{
		this.mainMenu();
	}
}