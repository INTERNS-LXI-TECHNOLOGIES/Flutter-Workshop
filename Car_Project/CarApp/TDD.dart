import 'dart:io';
class TDD{
		
void main()
	{
		Car car = Car();
		RC rc =  RC();
		Engine engine =  Engine();
		Door door = Door();
		Tyre tyre = Tyre();

		print('Welcome to Car Project: ')
        print('Please Choose Any Option : ');
		print('1 - Enter The Details Of vehicle : ');
			print('Enter The Details of Car : ');
			print('Enter Name of the car : ');
			rc.carName=stdin.readLineSync();
			print('Enter Model of the Car :');
			rc.carModel=stdin.readLineSync();
        	print('Enter Manufacture of the Car : ');
        	rc.carManufacturer=stdin.readLineSync();

        	print('Enter The RC Details : ');
			print('Enter The Name Of RC Owner :');
			rc.rcName= stdin.readLineSync();
			print ('Enter Adress Of RC Owner');
			rc.rcAdress=stdin.readLineSync();

			print('Enter The Engine Details : ');
    		print('Enter The Engine CC : ');
    		engine.engineCC = stdin.readLineSync();
    		print('Enter The Type Of Engine : ');
    		engine.engineType = stdin.readLineSync();

    		print('Enter the Details of Doors : ');
			print('Enter The Number OF Doors : ');
			door.noofDoors=int.parse(stdin.readLineSync());
			print('Enter The Type Of Door : ');
			door.doorType=stdin.readLineSync();
			print('Enter The Number Of Seats Available : ');
			door.noofSeats=int.parse(stdin.readLineSync());

			print('Enter the Details of Tyre : ');
			print('Enter The Size OF Tyre : ');
			tyre.tyreSize=stdin.readLineSync();

			print('Enter The Name Of Manufacture Of the Tyre : ');
			tyre.tyreName=stdin.readLineSync();
//
   //       String carName=${rc.carName}
			car.printRCDetails(rc.carName, rc.carModel, rc.carManufacturer, rc.rcName, rc.rcAdress);
            car.printEngineSpecifications(engine.engineCC, engine.engineType);
            car.printTyreDetails(tyre.tyreName, tyre.tyreSize);
          
        }
	
	}
}