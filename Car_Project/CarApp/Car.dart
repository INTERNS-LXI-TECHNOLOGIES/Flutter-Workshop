import 'dart:io';
class Car
{
	var cardetails= new List();
	String carName;
	int carModel;
	String rcName;
	String rcAdress;

	void rcDetails()
	{
		
      print('welcome Car Project');

		print('Enter The Name Of Car : ');
		carName=stdin.readLineSync();
		cardetails.add(carName);

		print('Enter The Model Of Car : ');
		carModel=int.parse(stdin.readLineSync());
		cardetails.add(carModel);

		print('Enter The RC Details : ');

		print('Enter The Name Of RC Owner :');
		rcName= stdin.readLineSync();
		cardetails.add(rcName);

		print ('Enter Adress Of RC Owner');
		rcAdress=stdin.readLineSync();
		cardetails.add(rcAdress);
		
		


	}
	void printRcDetails()
	{
		print(cardetails);
	}
}