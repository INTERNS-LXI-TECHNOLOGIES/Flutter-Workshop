import 'dart:io';

class RC
{
	String rcName;
	String rcAdress;

	void ownerInformation()
	{
		print('Enter The RC Details : ');

		print('Enter The Name Of RC Owner :');
		rcName= stdin.readLineSync();

		print ('Enter Adress Of RC Owner');
		rcAdress=stdin.readLineSync();
	}
	void printOwnerInformation()
	{
		print('Details of the Given Car Registration certificate is Follows: ');
		print('Name of RC Owner : ${rcName}');
		print('Adress of RC owner: ${rcAdress}');
		
	}
}