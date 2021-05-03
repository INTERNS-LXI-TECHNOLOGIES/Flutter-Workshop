import 'dart:io';
interface Tyre 
{

  String _tyreName;
  String _tyreSize;

    void set tyreName(String name)=> _tyreName;
    String get tyreName =>_tyreName;

    void set tyreSize(String tyreSize)=> _tyreSize;
    String get tyreSize => _tyreSize;

    void printTyreDetails()
{
        print('-------------------------------------');
    	print('Details Of The Tyre :  ');
		print('Tyre Manufactures name is : 'tyre.tyreName);
		print('Tyre Size is : 'tyre.tyreSize);
		print('-------------------------------------');	
		this.printDoorDetails();
}
}