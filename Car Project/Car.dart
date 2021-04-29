class Car implements Rc,Engine,Door,Tyre
{  
void printCarDetails()
{
	 print('-------------------------------------');
    	print('Details of the Car');
		print('Name of the car : 'rc.carName);
		print('Model of the Car : 'rc.carModel);
        print('Manufacturer of the Car : 'rc.carManufacturer);
		print('-------------------------------------');

		print('-------------------------------------');
        print('Details of the Car Rc ');
		print('Name of RC Owner : 'rc.rcOwner);
		print('Adress of RC owner: 'rc.ownerAddress);
		print('-------------------------------------');   
		this.printEngineDetails();
		
}
void printEngineDetails()
{
        print('-------------------------------------');
        print('Engine Details . ');
    	print('Engine CC is : 'engine.engineNumber);
    	print('Engine Type is : 'engine.engineType);
		print('-------------------------------------');
		this.printTyreDetails();
}
void printTyreDetails()
{
        print('-------------------------------------');
    	print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : 'tyre.tyreName);
		print('Tyre Size is : 'tyre.tyreSize);
		print('-------------------------------------');	
		this.printDoorDetails();
}
		
void printDoorDetails()
{
        print('-------------------------------------');
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : 'door.doorNumber);
		print('Type of Door : 'door.doorType);
		print('-------------------------------------');
}
}