import 'dart:io';

class Door
{
	int noDoors;
	int seats;
	String doorType;
	//var doors= new List();

	void doorAndSeatingArrangement()
	{
		print('Enter the Details of Doors : ');

		print('Enter The Number OF Doors : ');
		noDoors=int.parse(stdin.readLineSync());
		

		print('Enter The Type Of Door : ');
		doorType=stdin.readLineSync();


		print('Enter The Number Of Seats Available : ');
		seats=int.parse(stdin.readLineSync());




	}

	void printDoorAndSeatingArrangement()
	{
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : ${noDoors}');
		print('Type of Door : ${doorType}');
		print('Number of seats Available :${seats}');

	}
}