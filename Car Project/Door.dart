import 'dart:io';
Class Door 
{
    void printDoorDetails(Car car)
       {
       for(Car door : car)
       {
        print('-------------------------------------');
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : 'door.doorNumber);
		print('Type of Door : 'door.doorType);
		print('-------------------------------------');
		}
       }

}