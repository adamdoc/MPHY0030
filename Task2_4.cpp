// Function testing
// Creating a function that returns this input integer
// Recalling this function in main with two arbitary inputs

#include <iostream>
#include <string>
#include <typeinfo>

using namespace std;

// Create function, output the integer given in the input
int function2(int varint) {
	return varint;
	
}

// Create function, output the sum of the two integer inputs
int function_add(int var1, int var2) {
	return (var1+var2);
	
}


// Main function calls previously created function twice
int main() {
	int a=5, b=7;
	int c = function_add(a,b);
	cout << function2(c) << endl;
	return 0;
}
