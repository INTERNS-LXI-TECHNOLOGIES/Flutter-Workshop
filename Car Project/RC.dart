interface RC 
{
	String _rcOwner;
	String _ownerAddress;
	String _carName;
	String _carModel;
    String _carmanufacturer;

    void set carName(String carName)=> _carName;
    String get CarName =>_carName;

    void set carModel(String carModel)=> _carModel;
    String get carModel => _carcarModel;

    void set carManufacturer(String carManufacturer)=> _carManufacturer;
    String get carManufacturer => _carManufacturer;

	void set rcOwner (String rcOwner)=> _rcOwner;
	String get rcOwner =>_rcOwner;

	void set OwnerAddress(String ownerAddress)=> _ownerAddress;
	String get ownerAddress => _ownerAddress;
	
}