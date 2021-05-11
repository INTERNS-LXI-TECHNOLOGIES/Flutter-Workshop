import './Car.dart';
import './Door.dart';
import './Engine.dart';
import './Tyre.dart';
import './RC.dart';
class Car
{
    Engine engine = Engine();
	RC rc = RC();
	Door door = Door();
	Tyre frontTyre1 = Tyre();
	Tyre frontTyre2 = Tyre();
	Tyre backTyre1 = Tyre();
	Tyre backTyre2 = Tyre();
    
    String _carName;
	String _carModel;
    String _carManufacturer;
    
    


    void setRC(RC rc)=>rc;
    void setEngine(Engine engine)=> engine;
    void setDoor (Door door)=> door;
    void setFrontTyre1(Tyre frontTyre1)=> frontTyre1;
    void setFrontTyre2(Tyre frontTyre2)=> frontTyre2;
    void setBackTyre1(Tyre backTyre1)=> backTyre1;
    void setBackTyre2(Tyre backTyre2)=> backTyre2;



    void set carName(String carName)=> _carName;
    String get carName =>_carName;

    void set carModel(String carModel)=> _carModel;
    String get carModel => _carModel;

    void set carManufacturer(String carManufacturer)=> _carManufacturer;
    String get carManufacturer => _carManufacturer; 
}