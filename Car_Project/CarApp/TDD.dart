import 'dart:io';

class TDD{
		
void main()
	{
		Car car = Car();

		print('Please Choose Any Option : ');
		print('1 - Enter The Details Of vehicle : ');
		print('2 - Print The Details Of Vehicle : ');
		int options = int.parse(stdin.readLineSync());
		if(options==1)
		{
			print('Enter The Details of Car : ');
			print('Enter Name of the car : ');
			car.carName=stdin.readLineSync();
			print('Enter Model of the Car :');
			car.carModel=stdin.readLineSync();
        	print('Enter Manufacture of the Car : ');
        	car.carManufacturer=stdin.readLineSync();

        	print('Enter The RC Details : ');
			print('Enter The Name Of RC Owner :');
			car.rc.rcName= stdin.readLineSync();
			print ('Enter Adress Of RC Owner');
			car.rc.rcAdress=stdin.readLineSync();

			print('Enter The Engine Details : ');
    		print('Enter The Engine CC : ');
    		car.engine.engineCC = stdin.readLineSync();
    		print('Enter The Type Of Engine : ');
    		car.engine.engineType = stdin.readLineSync();

    		print('Enter the Details of Doors : ');
			print('Enter The Number OF Doors : ');
			car.door.noofDoors=int.parse(stdin.readLineSync());
			print('Enter The Type Of Door : ');
			car.door.doorType=stdin.readLineSync();
		    print('Enter The Number Of Seats Available : ');
			car.door.noofSeats=int.parse(stdin.readLineSync());

			print('Enter the Details of Tyre : ');
			print('Enter The Size OF Tyre : ');
			car.tyre.tyreSize=stdin.readLineSync();

			print('Enter The Name Of Manufacture Of the Tyre : ');
			car.tyre.tyreName=stdin.readLineSync();

            

		    main();
        }
		else if(options==2)
		{
		
    	print('Details of the Given Car is Follows: ');
		print('Name of the car : '+ car.carName);
		print('Model of the Car : '+ car.carModel);
        print('Manufacturer of the Car : '+ car.carManufacturer);

        print('Details of the Given Car Registration certificate is Follows: ');
		print('Name of RC Owner : '+car.rc.rcName);
		print('Adress of RC owner: '+car.rc.rcAdress);
            
    	print('Engine Details Are Following . ');
    	print('Engine CC is : '+car.engine.engineCC);
    	print('Engine Type is : '+car.engine.engineType);
	
    	print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : '+car.tyre.tyreName);
		print('Tyre Size is : '+car.tyre.tyreSize);
	
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : ${car.door.noofDoors}');
		print('Type of Door : '+car.door.doorType);
		print('Number of seats Available : ${car.door.noofSeats}');
          
          
          main();

		}
		
		else
		{
			print('You are Entered A wrong Input. Please Try Again ::: ');
			main();
		}

	}
}