import 'dart:io';
class Square
{
  void areaofSquare()
  {
    print('Enter the Square Side : ');
   	double side = double.parse(stdin.readLineSync()); 
    dynamic area= side*side;
    print(area);
  }
}
void main()
{
  Square area= new Square();
  area.areaofSquare();
}