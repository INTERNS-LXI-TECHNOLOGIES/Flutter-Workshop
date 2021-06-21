// program to convert Inches into Equivalent Feet and Inches using function
import 'dart:io';
class ConversionOfInchesIntoFeet
{
	void conversion()
	{
		Print('Enter The Inches:');
		double name=double.parse(stdin.readLineSync());
  		name = feet/12;
  		print('The Converted Inches to Feet Is $name' );		
	}
}

void main()
{
	ConversionOfInchesIntoFeet inchestofeet = new ConversionOfInchesIntoFeet();
	inchestofeet.conversion();
}