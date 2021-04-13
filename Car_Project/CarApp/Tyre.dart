import 'dart:io';

class Tyre
{
	String _tyreSize;
	String _tyreName;

	void set tyreName(String tname) => _tyreName;
	String get tname => _tyreName;

	void set tyreSize(String Tyre) => _tyreSize;
	String get tyreSize =>_tyreSize;
	


	void tyreDetails()
	{
		print('Enter the Details of Tyre : ');

		print('Enter The Size OF Tyre : ');
		tyreSize=stdin.readLineSync();

		print('Enter The Name Of Manufacture Of the Tyre : ');
		tName=stdin.readLineSync();
	}

	void printTyreDetails()
	{
		print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : ${tName}');
		print('Tyre Size is : ${tyreSize}');

	}
}