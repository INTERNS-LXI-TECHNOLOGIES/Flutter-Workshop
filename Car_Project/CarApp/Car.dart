class Car
{
     void printRCDetails(RC rc)
    {
    	print('Details of the Given Car is Follows: ');
		print('Name of the car : ${rc.carName}');
		print('Model of the Car : ${rc.carModel}');
        print('Manufacturer of the Car : ${rc.carManufacturer}');

        print('Details of the Given Car Registration certificate is Follows: ');
		print('Name of RC Owner : ${rc.rcName}');
		print('Adress of RC owner: ${rc.rcAdress}');
    }

    void printEngineSpecifications(Engine engine)
    {        
    	print('Engine Details Are Following . ');
    	print('Engine CC is : ${engine.engineCC}');
    	print('Engine Type is : ${engine.engineType}');
	}
	void printTyreDetails(Tyre tyre)
	{
    	print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : ${tyre.tyreName}');
		print('Tyre Size is : ${tyre.tyreSize}');
	}
	void printDoorAndSeatArrangements(Door door)
	{
		print('Details Of The Door and Seating of vehicle : ');
		print('Number of Doors : ${door.noofDoors}');
		print('Type of Door : ${door.doorType}');
		print('Number of seats Available : ${door.noofSeats}');
    
    }

}