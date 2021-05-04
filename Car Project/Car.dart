class Car 
{ 
    Engine engine =  Engine(); 
	Rc rc = Rc();
	Door door = Door();
	Tyre tyre = Tyre();  
    String _carName;
	String _carModel;
    String _carmanufacturer;
     void set carName(String carName)=> _carName;
    String get CarName =>_carName;

    void set carModel(String carModel)=> _carModel;
    String get carModel => _carcarModel;

    void set carManufacturer(String carManufacturer)=> _carManufacturer;
    String get carManufacturer => _carManufacturer;
void printCarDetails()
{
	 print('-------------------------------------');
    	print('Details of the Car');
		print('Name of the car : 'car.carName);
		print('Model of the Car : 'car.carModel);
        print('Manufacturer of the Car : 'car.carManufacturer);
		print('-------------------------------------');				
}
rc.printRcDetails();
engine.printEngineDetails();
tyre.printTyreDetails();
door.printDoorDetails();
}