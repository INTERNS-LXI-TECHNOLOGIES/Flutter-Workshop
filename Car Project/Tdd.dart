void main()
{
	Car c = Car();    

		print('1 - Enter The Details Of vehicle : ');
		print('2 - Print The Details Of Vehicle : ');
		int choice = int.parse(stdin.readLineSync());
		if(choice==1)
		{
		    print('-------------------------------------');
			print('Enter The Details of Car : ');
			print('Enter Name of the car : ');
			c.carName=stdin.readLineSync();
			print('Enter Model of the Car :');
			c.carModel=stdin.readLineSync();
        	print('Enter Manufacture of the Car : ');
        	c.carManufacturer=stdin.readLineSync();
        	print('-------------------------------------');
            print('-------------------------------------');
        	print('Enter The RC Details : ');
			print('Enter The Name Of RC Owner :');
			c.rcOwner= stdin.readLineSync();
			print ('Enter Adress Of RC Owner');
			c.ownerAddress=stdin.readLineSync();
			print('-------------------------------------');
			print('-------------------------------------');
			print('Enter The Engine Details : ');
    		print('Enter The Engine CC : ');
    		c.engineNumber = stdin.readLineSync();
    		print('Enter The Type Of Engine : ');
    		c.engineType = stdin.readLineSync();
    		print('-------------------------------------');
    		print('-------------------------------------')
    		print('Enter the Details of Doors : ');
			print('Enter The Number OF Doors : ');
			c.doorNumber=int.parse(stdin.readLineSync());
			print('Enter The Type Of Door : ');
			c.doorType=stdin.readLineSync();
			print('-------------------------------------');
			print('-------------------------------------');
			print('Enter the Details of Tyre : ');
			print('Enter The Size OF Tyre : ');
			c.tyreSize=stdin.readLineSync();
			print('Enter The Name Of Manufacture Of the Tyre : ');
			c.tyreName=stdin.readLineSync();
			print('-------------------------------------');
		    main();
        }
	else if(choice==2)
	{
		print('-------------------------------------');
    	print('Details of the Car');
		print('Name of the car : 'c.carName);
		print('Model of the Car : 'c.carModel);
        print('Manufacturer of the Car : 'c.carManufacturer);
		print('-------------------------------------');

		print('-------------------------------------');
        print('Details of the Car Rc ');
		print('Name of RC Owner : 'c.rcOwner);
		print('Adress of RC owner: 'c.ownerAddress);
		print('-------------------------------------');

	    print('-------------------------------------');
        print('Engine Details . ');
    	print('Engine CC is : 'c.engineNumber);
    	print('Engine Type is : 'c.engineType);
		print('-------------------------------------');

		print('-------------------------------------');
    	print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : 'c.tyreName);
		print('Tyre Size is : 'c.tyreSize);
		print('-------------------------------------');

        print('-------------------------------------');
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : 'c.doorNumber);
		print('Type of Door : 'c.doorType);
		print('-------------------------------------');
        main();
    }	
	else
		{
			print('1 or 2 not this number. Please Try Again ::: ');
			main();
		}
}