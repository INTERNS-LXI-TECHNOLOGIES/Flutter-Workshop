import 'dart:io';
class Circle
{
  void areaofCircle()
  {
    print('Enter the Circle Radius : ');
    double radius = double.parse(stdin.readLineSync());
    double pi=22/7;
    dynamic area= pi*(radius*radius);
    print(area);
  }
}
void main()
{
  Circle area= new Circle();
  area.areaofCircle();
}