// Declare  a Structure to represent a complex number (a number having both real and imaginary part.)

import 'dart:io';
class ComplexFunction
{
  double real1;
  double img1;
  double real2;
  double img2;
  double real;
  double img;

  void printCF1()
  {  
    print('Enter the Real Number:');
    double real1 = double.parse(stdin.readLineSync());
    print('Enter the Imaginary Number');
    double img1= double.parse(stdin.readLineSync());
    print('The Complex Function Is : $real1,i$img1'); 
  }
  void printCF2()
  {  
    print('Enter the Real Number:');
    double real2= double.parse(stdin.readLineSync());
    print('Enter the Imaginary Number');
    double img2= double.parse(stdin.readLineSync());
    print('The Complex Function Is : $real2,i$img2'); 
  }
  void add()
  {
    real=real1+real2;
    img=img1+img2;
    print('The Added Complex Function Is : $real,i$img');
  }
  void multiplication()
  {
    real=real1*real2;
    img= img1*img2;
    print('The Multiplied Complex Function is : ${real},i${img}')
  }
  
}
void main()
{
  ComplexFunction cf= new ComplexFunction();
  print ('Press 1 for Addition of Complex Functions \nPress 2 for Multiplication of Complex Functions');
  int input = int.parse(stdin.readLineSync());

  if(input==1)
  {
    cf.printCF1();
    cf.printCF2();
    cf.add();
  }
  else if
  {
    cf.printCF1();
    cf.printCF2();
    cf.multiplication();
  }
}