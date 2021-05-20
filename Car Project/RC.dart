Class RC 
{
     String _rcOwner;
	String _ownerAddress;

    void set rcOwner (String rcOwner)=> _rcOwner;
	String get rcOwner =>_rcOwner;

	void set OwnerAddress(String ownerAddress)=> _ownerAddress;
	String get ownerAddress => _ownerAddress;

	void printRcDetails()
       {
        print('-------------------------------------');
        print('Details of the Car Rc ');
		print('Name of RC Owner : 'rc.rcOwner);
		print('Adress of RC owner: 'rc.ownerAddress);
		print('-------------------------------------'); 
       }
 
}