import 'dart:io';
class Car
{
		Engine e =  Engine();
		Door d = Door();
		Tyre t = Tyre();
	
	void enterCarDetails()
	{
		
      print('welcome Car Project');

		print('Enter The Name Of Car : ');
		String Name=stdin.readLineSync();

		print('Enter The Model Of Car : ');
		String model=(stdin.readLineSync());
       
      print('Enter The CompanyName of Car : ');
      String companyname=stdin.readLineSync();
      


	}
	void printCarDetails()
	{
		print('-------------------------------------');
		print('Name of the CAR : ${name}');
		print('CAR Model NAME: ${model}');
        print('CAR Company Name : ${companyname}');
        print('-------------------------------------');
	}

	void enterandprintdetailsofCar()
	{
		
		

		print('Please Choose Any Option : ');
		print('-------------------------------------');
		print('1 - Enter The Details Of vehicle : ');
		print('2 - Print The Details Of Vehicle : ');
		print('-------------------------------------');
		int choice = int.parse(stdin.readLineSync());
		if(choice==1)
		{
			this.enterCarDetails();
			e.enterEngineDetails();
			d.enterDoorDetails();
			t.enterTyreDetails();
		}
		else if(choice==2)
		{
			this.printCarDetails();
			e.printEngineDetails();
			d.printDoorDetails();
			t.printTyreDetails();
		}
		
		else
		{
			print('Number didnot exist');
			this.enterandprintdetailsofCar();
		}
		this.enterandprintdetailsofCar();
	}

}