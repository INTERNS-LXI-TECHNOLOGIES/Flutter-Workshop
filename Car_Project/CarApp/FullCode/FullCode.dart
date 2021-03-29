// this is the file code used for online compiler.

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
class Engine
{
	String engineCC;
	String engineType;
	var engine= new List();

	void engineDetails()
	{
		print('Enter The Engine Details : ');
		print('Enter The Engine CC : ');
		engineCC=stdin.readLineSync();
		engine.add(engineCC);

		print('Enter The Type Of Engine : ');
		engineType=stdin.readLineSync();
		engine.add(engineType);
	}

	void engineDetailsPrint()
	{
		print(engine);
	}

}

class Tyre
{
	String tyreSize;
	String tName;

	var tyre= new List();

	void tyreDetails()
	{
		print('Enter the Details of Tyre : ');

		print('Enter The Size OF Tyre : ');
		tyreSize=stdin.readLineSync();
		tyre.add(tyreSize);

		print('Enter The Name Of Manufacture Of the Tyre : ');
		tName=stdin.readLineSync();
		tyre.add(tName);



	}

	void tyreDetailsPrint()
	{
		print('Details Of The Tyre :  ');
		print(tyre);
	}
}

class Doors
{
	int noDoors;
	int seats;
	var doors= new List();

	void doorDetails()
	{
		print('Enter the Details of Doors : ');

		print('Enter The NUmber OF Doors : ');
		noDoors=int.parse(stdin.readLineSync());
		doors.add(noDoors);

		print('Enter The Number Of Seats Available : ');
		seats=int.parse(stdin.readLineSync());
		doors.add(seats);



	}

	void doorDetailsPrint()
	{
		print('Details Of The Door :  ');
		print(doors);
	}
}
 void main()
{
  Car car = new Car();
  Engine engine = new Engine();
  Tyre tyre = new Tyre();
  Doors doors = new Doors();

  car.rcDetails();
  engine.engineDetails();
  tyre.tyreDetails();
  doors.doorDetails();

  print('Details of Car Rc is Following :');
  car.printRcDetails();
  print('Details of Car Engine is Following :');
  engine.engineDetailsPrint();
  print('Details of Car Tyre is Following :');
  tyre.tyreDetailsPrint();
  print('Details of Car Seating and Doors is Following :');
  doors.doorDetailsPrint();
}