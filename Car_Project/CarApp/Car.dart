class Car
{
    RC rc = RC();
    Engine engine = Engine();
    Door door = Door();
    Tyre tyre = Tyre();

    
    String _carName;
	String _carModel;
    String _carManufacturer;

    void set carName(String carName)=> _carName;
    String get carName =>_carName;

    void set carModel(String carModel)=> _carModel;
    String get carModel => _carModel;

    void set carManufacturer(String carManufacturer)=> _carManufacturer;
    String get carManufacturer => _carManufacturer; 
    
}