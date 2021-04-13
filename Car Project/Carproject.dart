import 'dart:io';
  void main()
{
	Car c = new Car();
	c.aboutTheCar();
}
class Car
{
	void carDetails()
	{
		
      print('ENTER THE DETAILS OF THE CAR AND DETAILS WILL PRINT AUTOMATICALY');
      print('-----------------------------------------------------------------');

		print('Enter The Name Of Car : ');
		String name=stdin.readLineSync();
		print('Enter The Model Of Car : ');
		String model=(stdin.readLineSync()); 
      print('Enter The CompanyName of Car : ');
      String companyname=stdin.readLineSync();
		print('-------------------------------------');
		print('Name of the CAR : ${name}');
		print('CAR Model NAME: ${model}');
        print('CAR Company Name : ${companyname}');
        print('-------------------------------------');
	}

	void aboutTheCar()
	{
		print('                        CAR PROJECT                     ');
    print('                     -----------------                  ');
    print('\n');
    print('\n');
			this.carDetails();
      print('\n');
    print('\n');
      this.engineDetails();
      print('\n');
    print('\n');
      	this.doorDetails();
        print('\n');
    print('\n');
        this.tyreDetails();
        print('\n');
    print('\n');

	}
  void engineDetails() 
  {
    print('Enter The Engine Details : ');
    print('Enter The Engine Number : ');
   String number = stdin.readLineSync();
    print('Enter The Model Name Of the Engine : ');
    String name = stdin.readLineSync();
     print('-------------------------------------');
    print('Engine Details Of The Car  ');
    print('Engine Number : ${number}');
    print('Engine Model Name : ${name}');
     print('-------------------------------------');
}
  void doorDetails()
	{
		print('Enter the Details of Doors : ');

		print('Enter The Number OF Doors : ');
		int number=int.parse(stdin.readLineSync());
		print('Enter The Type Of Door : ');
		String door=stdin.readLineSync();
     print('-------------------------------------');
		print('Number of Doors : ${number}');
		print('Type of Door : ${door}');
     print('-------------------------------------');
	}

	void tyreDetails()
	{
		print('Enter the Details of Tyre : ');

		print('Enter The Size OF Tyre : ');
		String size=stdin.readLineSync();

		print('Enter The Name Of Manufacture Of the Tyre : ');
		String name=stdin.readLineSync();
     print('-------------------------------------');
		print('Tyre Manufactures name is : ${name}');
		print('Tyre Size is : ${size}');
     print('-------------------------------------');

	}
}