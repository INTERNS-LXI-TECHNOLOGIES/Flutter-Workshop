import 'dart:io';
class StudentsDetails
{
  var students= new List();
  void details()
  {
  print('Enter the Number 0f Students wants to be added : ');
  int max=int.parse(stdin.readLineSync());
  for(var i=1; i<=max; i++)
  {
    print ('Enter The Name of ${i}th Student : ');
    String name= stdin.readLineSync();
    students[i]=name;

    print('Enter the Register Number : ');
    int reg = int.parse(stdin.readLineSync());
    students[i]=reg;
    
    print('Enter the Mark of Subject 1: ');
    int m1 = int.parse(stdin.readLineSync());
    students[i]=m1;

    
    print('Enter the Mark of Subject 2: ');
    int m2 = int.parse(stdin.readLineSync());
    students[i]=m2;

    
    print('Enter the Mark of Subject 3: ');
    int m3 = int.parse(stdin.readLineSync());
    students[i]=m3;
    
  }
  }
}
void main()
{
  StudentsDetails std = new StudentsDetails();
  std.details();
  
}