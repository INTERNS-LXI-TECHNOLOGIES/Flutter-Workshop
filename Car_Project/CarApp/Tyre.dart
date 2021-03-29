import 'dart:io';

class Tyre
{
	String tyreSize;
	String tName;

	//var tyre= new List();

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