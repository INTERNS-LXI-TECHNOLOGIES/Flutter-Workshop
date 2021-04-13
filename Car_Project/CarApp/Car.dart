import 'dart:io';
class Car
{
	String _carName;
	int _carModel;
    String _carManufacturer;

    void set 
  
	RC rc =  RC();
	Engine engine =  Engine();
	Door door = Door();
	Tyre tyre = Tyre();
	
	void carDetails()
	{
		
      print('welcome Car Project');

		print('Enter The Name Of Car : ');
		carName=stdin.readLineSync();

		print('Enter The Model Of Car : ');
		carModel=int.parse(stdin.readLineSync());
       
      print('Enter The manufacture of Car : ');
      carManufacturer=stdin.readLineSync();
      


	}
	void printCarDetails()
	{
		print('Details of the Given Car is Follows: ');
		print('Name of the car : ${carName}');
		print('Model of the Car : ${carModel}');
        print('Model of the Car : ${carManufacturer}');
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
			engine.engineSpecs();
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
			engine.printEngineSpecs();
			tyre.printTyreDetails();
			door.printDoorAndSeatingArrangement();
            this.redirectingMenu();

		}
		
		else
		{
			print('You are Entered A wrong Input. Please Try Again ::: ');
			this.redirectingMenu();
		}

	}

	void redirectingMenu()
	{
		this.displayMainMenu();
	}
}