package com.Lxisoft.CarRacing;
import com.Lxisoft.CarRacing.*;
import java.util.*;

public class  MainPage
{
	Scanner scanner=new Scanner(System.in);
  public void intro()
	{
		System.out.println("\n\t\t-------------------------------------------\t");
   		System.out.println("\t\t-------------------------------------------\t");
   		System.out.println("\t\t------------------ Marvels ----------------\t");
   		System.out.println("\t\t-------------   The Formula1  -------------\t");
   		System.out.println("\t\t--------------  --------- --------------\t");
   		System.out.println("\t\t-------------------------------------------\t");
   		System.out.println("\t\t-------------------------------------------\t");
   		System.out.println("\t\t------- Scripted by -----------------------\t");
   		System.out.println("\t\t---------------- Faris --------------------\t");
   		System.out.println("\t\t-------------------------------------------\t");
   		
   		this.admin();
	}
	    public void admin()
{  
 int choice=0;
    do
    {
      System.out.println("\n________________________");
        System.out.println("\n\n1.Start Game  \n\n2. Cars \n\n3. About \n\n Press 0 for Exit \n");
        choice=scanner.nextInt();
        if(choice==1)
        {
      	  game.carRacing   
        }
        if(choice==2)
        {
             
           car.carDetails();
         
        }
        if(choice==3)
        {
             
           this.about();
         
        }
        else if(choice==0)
        {
            System.out.println(" ");
        }
    }
    while(choice>0);
      
}
public void about()
{

}
}
