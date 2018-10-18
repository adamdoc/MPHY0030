// Function testing
// Creating a function that returns this input integer
// Recalling this function in main with two arbitary inputs

#include <iostream>
#include <string>
#include <typeinfo>

using namespace std;

// Create function, output the integer given in the input
int function2(int varint) {
	cout << "Address of varint = " << &varint << endl;
	return varint;
	
}


// Main function calls previously created function twice
int main() {
	int a=5, b=7;
	cout << function2(a) << endl;
	cout << function2(b) << endl;
	cout << "Address of a = " << &a << endl;
	cout << "Address of b = " << &b << endl;
	return 0;
}
