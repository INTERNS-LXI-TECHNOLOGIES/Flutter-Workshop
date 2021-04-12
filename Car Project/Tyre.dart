import 'dart:io';

class Tyre
{
	String tyreSize;
	String tName;

	void tyreDetails()
	{
		print('Enter the Details of Tyre : ');

		print('Enter The Size OF Tyre : ');
		String size=stdin.readLineSync();

		print('Enter The Name Of Manufacture Of the Tyre : ');
		String name=stdin.readLineSync();
	}

	void printTyreDetails()
	{
		print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : ${name}');
		print('Tyre Size is : ${Size}');

	}
}