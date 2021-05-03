import 'dart:io';
interface Door 
{

  String _doorNumber;
  String _doorType;

   void set doorNumber(String doorNumber)=> _doorNumber;
    String get doorNumber =>_doorNumber;

    void set doorType(String doorType)=> _doorType;
    String get doorType => _doorType;

    void printDoorDetails()
{
        print('-------------------------------------');
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : 'door.doorNumber);
		print('Type of Door : 'door.doorType);
		print('-------------------------------------');
}
}