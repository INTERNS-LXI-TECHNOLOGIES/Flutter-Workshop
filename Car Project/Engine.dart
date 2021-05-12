import 'dart:io';
Class Engine 
{
     void printEngineDetails(Car car)
       {
       for(Car engine : car)
       {
        print('-------------------------------------');
        print('Engine Details . ');
    	print('Engine CC is : 'engine.engineNumber);
    	print('Engine Type is : 'engine.engineType);
		print('-------------------------------------');
		}
       }
}