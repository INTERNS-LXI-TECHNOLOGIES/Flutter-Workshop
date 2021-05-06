  class Car
{
    Engine engine = Engine();
	RC rc = RC();
	Door door = Door();
	Tyre tyre = Tyre();
    
    String _carName;
	String _carModel;
    String _carManufacturer;
    
    


    void setRC(RC rc)=>rc;
    void setEngine(Engine engine)=> engine;
    void setDoor (Door door)=> door;
    void setTyre(Tyre tyre)=> tyre;


    void set carName(String carName)=> _carName;
    String get carName =>_carName;

    void set carModel(String carModel)=> _carModel;
    String get carModel => _carModel;

    void set carManufacturer(String carManufacturer)=> _carManufacturer;
    String get carManufacturer => _carManufacturer; 
}