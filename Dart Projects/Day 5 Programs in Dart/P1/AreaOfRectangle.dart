import 'dart:io';
class Rectangle
{
  void areaofRectangle()
  {
    print('Enter the Rectangle Height : ');
   double height = double.parse(stdin.readLineSync()); 
  
    print('Enter the Rectangle Breadth : ');
    double breadth = double.parse(stdin.readLineSync());
  
    dynamic area= height*breadth;
    print(area);
  }
}
void main()
{
  Rectangle area= new Rectangle();
  area.areaofRectangle();
}