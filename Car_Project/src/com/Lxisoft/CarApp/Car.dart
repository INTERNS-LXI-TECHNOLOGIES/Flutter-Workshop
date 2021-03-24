package com.Lxisoft.CarRacing;
import java.util.*;

public class  Car
{
	Scanner scanner=new Scanner(System.in);
	ArrayList<String>  car= new ArrayList<>();
	private float engineCC;
	private String fuelType;
	private int power;

	public void addCar()
	{
		//for (i=0; i<10; i++)
		//{
		//	car.add;
		//	engine.set
		//}

		car.add("Top Racers of the event ");
		car.add("1. Lamborgini Gallardo");
		car.add("2. Ford Mustag");
		car.add("3. Chevrolet Camaro");
		car.add("4. Chevrolet Corvette");
		car.add("5. Mini Cooper Countryman");
		car.add("6. Subaru WRX");
		car.add("7. Volkswagen GTI");
		car.add("8. Mazda MX-5 Miata");
		car.add("9. Nissan 370Z");
		car.add("10 BMW GTR M3");


	}

	public void printCars()
	{
	}
	public void setEngineCC(float engineCC)
	{
		this.engineCC=engineCC;	
	}
	public float getEngineCC()
	{
		return engineCC;
	}
	public void setFuelType(String fuelType)
	{
		this.fuelType=fuelType;
	}
	public String getFuelType()
	{
		return fuelType;
	}

	
	public void setPower(int power)
	{
		this.power=power;
	}
	public int getPower()
	{
		return power;
	}
	}
