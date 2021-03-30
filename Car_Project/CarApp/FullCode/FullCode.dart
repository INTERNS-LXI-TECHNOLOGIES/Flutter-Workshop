// this is the file code used for online compiler.

import 'dart:io';
class Car
{
	//var cardetails= new List();
	String carName;
	int carModel;
	String rcName;
	String rcAdress;

	void rcDetails()
	{
		
      print('welcome Car Project');

		print('Enter The Name Of Car : ');
		carName=stdin.readLineSync();
		//cardetails.add(carName);

		print('Enter The Model Of Car : ');
		carModel=int.parse(stdin.readLineSync());
		//cardetails.add(carModel);

		print('Enter The RC Details : ');

		print('Enter The Name Of RC Owner :');
		rcName= stdin.readLineSync();
		//cardetails.add(rcName);

		print ('Enter Adress Of RC Owner');
		rcAdress=stdin.readLineSync();
		//cardetails.add(rcAdress);
		
		


	}
	void printRcDetails()
	{
		print('Details of the Given Car is Follows: ');
		print('Name of the car : ${carName}');
		print('Model of the Car : ${carModel}');
		print('Name of RC Owner : ${rcName}');
		print('Adress of RC owner: ${rcAdress}');
	}
}
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

class Tyre
{
	String tyreSize;
	String tName;

	// tyre= new List();

	void tyreDetails()
	{
		print('Enter the Details of Tyre : ');

		print('Enter The Size OF Tyre : ');
		tyreSize=stdin.readLineSync();
		//tyre.add(tyreSize);

		print('Enter The Name Of Manufacture Of the Tyre : ');
		tName=stdin.readLineSync();
		//tyre.add(tName);



	}

	void printTyreDetails()
	{
		print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : ${tName}');
		print('Tyre Size is : ${tyreSize}');

	}
}

class Door
{
	int noDoors;
	int seats;
	String doorType;
	//var doors= new List();

	void doorDetails()
	{
		print('Enter the Details of Doors : ');

		print('Enter The Number OF Doors : ');
		noDoors=int.parse(stdin.readLineSync());
		//doors.add(noDoors);

		print('Enter The Type Of Door : ');
		doorType=stdin.readLineSync();


		print('Enter The Number Of Seats Available : ');
		seats=int.parse(stdin.readLineSync());
		//doors.add(seats);



	}

	void printDoorDetails()
	{
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : ${noDoors}');
		print('Type of Door : ${doorType}');
		print('Number of seats Available :${seats}');

	}
}


 void main()
{
    Car car = new Car();
	Engine engine = new Engine();
	Door door = new Door();
	Tyre tyre = new Tyre();
	car.rcDetails();
	engine.engineDetails();
	tyre.tyreDetails();
	door.doorDetails();
	//details of car
	car.printRcDetails();
	engine.printEngineDetails();
	tyre.printTyreDetails();
	door.printDoorDetails();
}