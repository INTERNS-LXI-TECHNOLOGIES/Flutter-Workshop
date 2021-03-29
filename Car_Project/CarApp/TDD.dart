import 'dart:io';

class TDD
{
	void main()
	{
	Car car = new Car();
	Engine engine = new Engine();
	Door door = new Door();
	Tyre tyre = new Tyre();
	car.rcDetails();
	engine.engineDetails();
	tyre.tyreDetails();
	door.doorDetails();
	//details of car
	car.printRcDetails();
	engine.printEngineDetails();
	tyre.printTyreDetails();
	door.printDoorDetails();



	}
}
