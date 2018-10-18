// Function testing
// Creating a void function with string output
// Recalling this function in main

#include <iostream>
#include <string>
#include <typeinfo>

using namespace std;

// Create function, no output, shows string 
void function1() {
	cout << "Welcome to UCL!" << endl;
	
}


// Main function calls previously created function
int main() {
	function1();
	return 0;
}
