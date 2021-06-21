import 'dart:io';
class Traingle
{
  void areaofTraingle()
  {
    print('Enter the Traingle Hight : ');
    double hight = double.parse(stdin.readLineSync());
    print('Enter the Traingle Breadth : ');
    double breadth = double.parse(stdin.readLineSync());
    dynamic area= 0.5*(hight*breadth);
    print(area);
  }
}
void main()
{
  Traingle area= new Traingle();
  area.areaofTraingle();
}