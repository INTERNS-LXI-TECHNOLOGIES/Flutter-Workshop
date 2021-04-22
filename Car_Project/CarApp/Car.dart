class Car
{
     void printRCDetails()
    {
    	print('Details of the Given Car is Follows: ');
		print('Name of the car : ${carName}');
		print('Model of the Car : ${carModel}');
        print('Manufacturer of the Car : ${carManufacturer}');

        print('Details of the Given Car Registration certificate is Follows: ');
		print('Name of RC Owner : ${rcName}');
		print('Adress of RC owner: ${rcAdress}');
    }

    void printEngineSpecifications()
    {        
    	print('Engine Details Are Following . ');
    	print('Engine CC is : ${engineCC}');
    	print('Engine Type is : ${engineType}');
	}
	void printTyreDetails()
	{
    	print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : ${tyreName}');
		print('Tyre Size is : ${tyreSize}');
	}
	void printDoorAndSeatArrangements()
	{
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : ${doors}');
		print('Type of Door : ${doorType}');
		print('Number of seats Available : ${seats}');
    
    }
}
