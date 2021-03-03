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
    real1=stdin.readLineSync();
    print('Enter the Imaginary Number');
    img1=stdin.readLineSync();
    print('The Complex Function Is : $real1,i$img1'); 
  }
  void printCF2()
  {  
    print('Enter the Real Number:');
    real2=stdin.readLineSync();
    print('Enter the Imaginary Number');
    img2=stdin.readLineSync();
    print('The Complex Function Is : $real2,i$img2'); 
  }
  void add()
  {
    real=real1+real2;
    img=img1+img2;
    print('The Added Complex Function Is : $real,i$img');
  }
  
}
void main()
{
  ComplexFunction cf= new ComplexFunction();
  cf.printCF1();
  cf.printCF1();
  cf.add();
}