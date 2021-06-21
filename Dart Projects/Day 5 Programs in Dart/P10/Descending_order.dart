// Program to sort the elements in descending order in 1D array
  import 'dart:io';
  class Descending_order 
  {
  	var array = new List();
  	void addToArray()
  	{
  		print('Enter Number Of Elements To be added in :');
  		int max = int.parse(stdin.readLineSync());
  		for(var i=0; i<max; i++)
  		{
  			print('Enter the Numbers  to be added : ');
  			int values= int.parse(stdin.readLineSync());
  			array.add(values);
  		}
  	}
  	void printDescending()
  	{
  		print(array.reversed.toList());
  	}

  }
  void main()
  {
  	Descending_order dsc= new Descending_order();
  	dsc.addToArray();
  	dsc.printDescending();

  }


