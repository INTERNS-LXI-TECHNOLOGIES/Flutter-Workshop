import 'dart:io';
class Car
{
		Engine e =  Engine();
		Door d = Door();
		Tyre t = Tyre();
	
	void carDetails()
	{
		
      print('welcome Car Project');

		print('Enter The Name Of Car : ');
		String Name=stdin.readLineSync();

		print('Enter The Model Of Car : ');
		String model=int.parse(stdin.readLineSync());
       
      print('Enter The CompanyName of Car : ');
      String companyname=stdin.readLineSync();
      


	}
	void printDetails()
	{
		print('-------------------------------------');
		print('Name of the CAR : ${name}');
		print('CAR'S Model NAME: ${model}');
        print('CAR's Company Name : ${companyname}');
        print('-------------------------------------');
	}

	void aboutTheCar()
	{
		
		

		print('Please Choose Any Option : ');
		print('-------------------------------------');
		print('1 - Enter The Details Of vehicle : ');
		print('2 - Print The Details Of Vehicle : ');
		print('-------------------------------------');
		int choice = int.parse(stdin.readLineSync());
		if(choice==1)
		{
			this.carDetails();
		}
		else if(choice==2)
		{
			this.printDetails();
		}
		
		else
		{
			print('Number didn't exist');
			this.aboutTheCar();
		}

	}

}