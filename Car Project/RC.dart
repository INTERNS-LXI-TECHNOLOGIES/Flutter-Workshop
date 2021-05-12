Class RC 
{
	void printRcDetails(Car car)
       {
        for(Car rc : car)
       {
        print('-------------------------------------');
        print('Details of the Car Rc ');
		print('Name of RC Owner : 'rc.rcOwner);
		print('Adress of RC owner: 'rc.ownerAddress);
		print('-------------------------------------'); 
		} 
       }
 
}