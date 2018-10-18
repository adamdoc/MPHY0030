// Testing variable declariation and variable information functions

#include <iostream>
#include <string>
#include <typeinfo>

using namespace std;

int main () {

	// Declare variable and print info
	bool varbool = false;
	cout << "Address of varbool = " << &varbool << endl;
	cout << "Size of varbool = " << sizeof(varbool) << endl;
	cout << "Type of varbool = " << typeid(varbool).name() << endl;
	
	// Declare variable and print info
	short varshort = 5;
	cout << "Address of varshort = " << &varshort << endl;
	cout << "Size of varshort = " << sizeof(varshort) << endl;
	cout << "Type of varshort = " << typeid(varshort).name() << endl;
		
	// Declare variable and print info
	int varint = 4;
	cout << "Address of varint = " << &varint << endl;
	cout << "Size of varint = " << sizeof(varint) << endl;
	cout << "Type of varint = " << typeid(varint).name() << endl;
	
	// Declare variable and print info
	long varlong = 52;
	cout << "Address of varlong = " << &varlong << endl;
	cout << "Size of varlong = " << sizeof(varlong) << endl;
	cout << "Type of varlong = " << typeid(varlong).name() << endl;
		
	// Declare variable and print info
	float varfloat = 4.1;
	cout << "Address of varfloat = " << &varfloat << endl;
	cout << "Size of varfloat = " << sizeof(varfloat) << endl;
	cout << "Type of varfloat = " << typeid(varfloat).name() << endl;
			
	// Declare variable and print info
	double vardouble = 355;
	cout << "Address of vardouble = " << &vardouble << endl;
	cout << "Size of vardouble = " << sizeof(vardouble) << endl;
	cout << "Type of vardouble = " << typeid(vardouble).name() << endl;
	
	// Declare variable and print info (const int)
	const int constvarint = 4;
	cout << "Address of constvarint = " << &constvarint << endl;
	cout << "Size of constvarint = " << sizeof(constvarint) << endl;
	cout << "Type of constvarint = " << typeid(constvarint).name() << endl;
		
	// Wrap up
	return 0;
}

