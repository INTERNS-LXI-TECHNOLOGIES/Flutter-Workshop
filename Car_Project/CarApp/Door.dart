import 'dart:io';

class Door
{
	int _noofDoors;
	int _noofSeats;
	String _doorType;


	void set noDoors(int door) => _noofDoors;
	int get noDoors => _noofDoors;

	void set seat(int seat) => _noofSeats;
	int get seat=> _noofSeats;

	void set doorType(String doorType) => _doorType;
	String get doorType => _doorType;



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
