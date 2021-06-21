import 'dart:io';
class DateAndTime
{

  void times(int hour, int minute, int seconds)
  {
  int dd=1;
  int mm=1;
  int yyyy=2021;
    var time=DateTime(dd,mm,yyyy,hour,minute,seconds);
    print(time);
  }

}
void main()
{
  DateAndTime dt= new DateAndTime(); 
  print('Select the time you wants to Select \n1. for T1 \n2. for T2 \n3.for T3');
  int input= int.parse(stdin.readLineSync());
  if(input==1)
  {
    int hour=3;
    int minute=40;
    int seconds=35;
    dt.times(hour,minute,seconds);
  }
else if(input==2)
  {
    int hour=2;
    int minute=35;
    int seconds=30;
    dt.times(hour,minute,seconds);
  }
else if(input==2)
  {
    int hour=6;
    int minute=16;
    int seconds=5;
    dt.times(hour,minute,seconds);
  }
else{
  print('You Are Entered a wrong Entry Try again Later');
  

}
}