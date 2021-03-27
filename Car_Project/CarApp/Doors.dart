import 'dart:io';

class Doors
{
	int noDoors;
	int seats;
	var doors= new List();

	void tyreDetails()
	{
		print('Enter the Details of Doors : ');

		print('Enter The NUmber OF Doors : ');
		noDoors=int.parse(stdin.readLineSync());
		doors.add(tryeSize);

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