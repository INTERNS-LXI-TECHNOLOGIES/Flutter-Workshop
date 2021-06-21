//program to pass two number and find the GCD of two numbers using functions
import 'dart:io';
class GCDTest
{
    int gcd(int n1,int n2)
	{
		if (n1 == 0)
		{
          return n2;
		}
        if (n2 == 0)
        {
          return n1;
        }
     
        if (n1 == n2)
        {
            return n1;
        }
      
        if (n1 > n2)
        {
            return gcd(n1-n2, n2);
        }
        return gcd(n1, n2-n1);
      print('The GCD OF Entered Number Is : ${gcd(n1,n2)}');
	}
}
void main()
{
  GCDTest gcdtest= new GCDTest();
  print ('Enter The First numbers to find the GCD');
  int n1=int.parse(stdin.readLineSync());
  print ('Enter The Second numbers to find the GCD');
  int n2=int.parse(stdin.readLineSync());
  gcdtest.gcd(n1,n2);
  //print('GCD of ${n1}  and ${n2} is ${gcd(n1, n2)');
}
