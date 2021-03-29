import 'dart:io';

class Door
{
	int noDoors;
	int seats;
	//var doors= new List();

	void doorDetails()
	{
		print('Enter the Details of Doors : ');

		print('Enter The Number OF Doors : ');
		noDoors=int.parse(stdin.readLineSync());
		//doors.add(noDoors);

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