import 'dart:io';
class Car 
{   
    String _carName;
	String _carModel;
    String _carmanufacturer;
    String _rcOwner;
	String _ownerAddress;
	String _engineNumber;
    String _engineType;
    String _tyreName;
    String _tyreSize;
    String _doorNumber;
    String _doorType;

    void set carName(String carName)=> _carName;
    String get CarName =>_carName;

    void set carModel(String carModel)=> _carModel;
    String get carModel => _carcarModel;

    void set carManufacturer(String carManufacturer)=> _carManufacturer;
    String get carManufacturer => _carManufacturer;

	void set rcOwner (String rcOwner)=> _rcOwner;
	String get rcOwner =>_rcOwner;

	void set OwnerAddress(String ownerAddress)=> _ownerAddress;
	String get ownerAddress => _ownerAddress;

    void set engineNumber(String engineNumber)=> _engineNumber;
    String get engineNumber =>_engineNumber;

    void set engineType(String engineType)=> _engineType;
    String get engineType => _engineType;

    void set tyreName(String name)=> _tyreName;
    String get tyreName =>_tyreName;

    void set tyreSize(String tyreSize)=> _tyreSize;
    String get tyreSize => _tyreSize;

    void set doorNumber(String doorNumber)=> _doorNumber;
    String get doorNumber =>_doorNumber;

    void set doorType(String doorType)=> _doorType;
    String get doorType => _doorType;

     void printCarDetails()
		{
	     print('-------------------------------------');
    	print('Details of the Car');
		print('Name of the car : 'car.carName);
		print('Model of the Car : 'car.carModel);
        print('Manufacturer of the Car : 'car.carManufacturer);
		print('-------------------------------------');				
       }

    Engine engine =  Engine(); 
	Rc rc = Rc();
	Door door = Door();
	Tyre tyre = Tyre();

	engine.printEngineDetails(car);
	rc.printRcDetails(car);
    tyre.printTyreDetails(car);
    door.printDoorDetails(car);

}