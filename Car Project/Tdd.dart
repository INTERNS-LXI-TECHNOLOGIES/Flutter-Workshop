import 'dart:io';
	void main()
{
	Car car = Car(); 

   void enterCarDetails()
   {
		print('1 - Enter The Details Of vehicle : ');
		print('2 - Print The Details Of Vehicle : ');
		int choice = int.parse(stdin.readLineSync());
		if(choice==1)
		{
		    print('-------------------------------------');
			print('Enter The Details of Car : ');
			print('Enter Name of the car : ');
			car.carName=stdin.readLineSync();
			print('Enter Model of the Car :');
			car.carModel=stdin.readLineSync();
        	print('Enter Manufacture of the Car : ');
        	car.carManufacturer=stdin.readLineSync();
        	print('-------------------------------------');
            print('-------------------------------------');
        	print('Enter The RC Details : ');
			print('Enter The Name Of RC Owner :');
			car.rcOwner= stdin.readLineSync();
			print ('Enter Adress Of RC Owner');
			car.ownerAddress=stdin.readLineSync();
			print('-------------------------------------');
			print('-------------------------------------');
			print('Enter The Engine Details : ');
    		print('Enter The Engine CC : ');
    		car.engineNumber = stdin.readLineSync();
    		print('Enter The Type Of Engine : ');
    		car.engineType = stdin.readLineSync();
    		print('-------------------------------------');
    		print('-------------------------------------');
    		print('Enter the Details of Doors : ');
			print('Enter The Number OF Doors : ');
			car.doorNumber=int.parse(stdin.readLineSync());
			print('Enter The Type Of Door : ');
			car.doorType=stdin.readLineSync();
			print('-------------------------------------');
			print('-------------------------------------');
			print('Enter the Details of Tyre : ');
			print('Enter The Size OF Tyre : ');
			car.tyreSize=stdin.readLineSync();
			print('Enter The Name Of Manufacture Of the Tyre : ');
			car.tyreName=stdin.readLineSync();
			print('-------------------------------------');
			this.enterCarDetails();
        }
	    else if(choice==2)
    {  
       car.printCarDetails();   
    }	
	  else
		{
			print('Invalid Choice');
			this.enterCarDetails();
		}
   }
}

