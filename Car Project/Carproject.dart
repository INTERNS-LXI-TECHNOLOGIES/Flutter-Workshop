import 'dart:io';
  void main()
{
	Car c = new Car();
	c.enterCarDetails();
}
class Car
{
	void enterCarDetails()
	{

	print('                        CAR PROJECT                     ');
    print('                     -----------------                  ');
    print('\n');
    print('\n');
		
      print('ENTER THE DETAILS OF THE CAR AND DETAILS WILL PRINT AUTOMATICALY');
      print('-----------------------------------------------------------------');

		print('Enter The Name Of Car : ');
		String name=stdin.readLineSync();
		print('Enter The Model Of Car : ');
		String model=(stdin.readLineSync()); 
        print('Enter The CompanyName of Car : ');
        String companyname=stdin.readLineSync();

        print('Enter The Engine Details : ');
        print('Enter The Engine Number : ');
        String number = stdin.readLineSync();
        print('Enter The Model Name Of the Engine : ');
        String modelname = stdin.readLineSync();
  
		print('Enter the Details of Doors : ');
		print('Enter The Number OF Doors : ');
		int doornumber=int.parse(stdin.readLineSync());
		print('Enter The Type Of Door : ');
		String door=stdin.readLineSync();

		print('Enter the Details of Tyre : ');
		print('Enter The Size OF Tyre : ');
		String size=stdin.readLineSync();
		print('Enter The Name Of Manufacture Of the Tyre : ');
		String manufactname=stdin.readLineSync(); 

		this.printCarDetails(name,model,companyname,number,modelname,doornumber,door,size,manufactname);
	}

	void printCarDetails(String name,String model,String companyname,String number,String modelname,int doornumber,String door,String size,String manufactname)
	{
		print('-------------------------------------');
		print('Name of the CAR : ${name}');
		print('CAR Model NAME: ${model}');
        print('CAR Company Name : ${companyname}');
        print('-------------------------------------');

        print('-------------------------------------');
        print('Engine Details Of The Car  ');
        print('Engine Number : ${number}');
        print('Engine Model Name : ${modelname}');
        print('-------------------------------------');

        print('-------------------------------------');
		print('Number of Doors : ${doornumber}');
		print('Type of Door : ${door}');
        print('-------------------------------------');


        print('-------------------------------------');
		print('Tyre Manufactures name is : ${manufactname}');
		print('Tyre Size is : ${size}');
        print('-------------------------------------');

	}
}