// program to Search for a perticular elemnt and display the position of the search elemnt using function.
 
import 'dart:io';
class SearchArray
{
	var array = new List();
	void addtoArray()
	{
		print('Enter the number of names to be added');
		int max=int.parse(stdin.readLineSync());

		for(var i=0; i<max; i++)
		{
			print('Enter the ${i}th Name : ');
			String name= stdin.readLineSync();
			array.add(name);
		}
	}
	void search()
	{
		print('Enter the Name of Student you want to search');
		String sname=stdin.readLineSync();
		
		if(array.contains(sname))
		{
        	for (var i=0; i<array.length; i++)
        	{
        		if (sname==array.contains(sname))
        		{
        			print('The Position of ${sname} is ${i}');
        		}
        		else
        		{
        			print('');
        		}
        	}
    	}
     	else 
     	{
        print('$sname is not Available');
		}
	}
}
void main()
{
	SearchArray search = new SearchArray();
	print('Press 1 for Add Details \nPress 2 for Search ');
	int input= int.parse(stdin.readLineSync());
	if(input==1)
	{
		search.addtoArray();
      print('');
      search.search();
	}
	else if(input==2)
	{
		search.search();
      print('');
	}
	else
	{
		print('You are Entered Wrong Input Please Try Again');

	}
}