import 'dart:io';
class Engine 
{

  void engineDetails() 
  {
    print('Enter The Engine Details : ');
    print('Enter The Engine Number : ');
   String number = stdin.readLineSync();

    print('Enter The Model Name Of the Engine : ');
    String name = stdin.readLineSync();
  }

  void printEngineDetails()
   {
    print('Engine Details Of The Car  ');
    print('Engine Number : ${number}');
    print('Engine Model Name : ${name}');
  }
}