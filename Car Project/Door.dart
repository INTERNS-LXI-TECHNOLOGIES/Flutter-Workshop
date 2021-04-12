  
import 'dart:io';

class Door
{

	void doorDetails()
	{
		print('Enter the Details of Doors : ');

		print('Enter The Number OF Doors : ');
		int nunmber=int.parse(stdin.readLineSync());
		

		print('Enter The Type Of Door : ');
		int door=stdin.readLineSync();


	}

	void printDoorDetails()
	{
		print('DOOR DETAILS : ');
		print('Number of Doors : ${number}');
		print('Type of Door : ${door}');
	}
}