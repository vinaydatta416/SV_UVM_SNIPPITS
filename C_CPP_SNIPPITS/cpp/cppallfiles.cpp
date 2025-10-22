// Question 1: Integer Types
/**
#include <iostream>
int main() {
    int a = 10;
    int b = 20;
    std::cout << a + b;
    return 0;
}
*/
//===========================================
// Question 2: Integer Types
// What is the size of a short in bytes?
/**
#include <iostream>
int main() {
    std::cout << sizeof(short);
    return 0;
}
*/
//===========================================
//// Question 3: Integer Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    long a = 100000;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 4: Integer Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    long long a = 1234567890123;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 5: Integer Types
// What is the range of values for int?
/**
#include <iostream>
#include <climits>
int main() {
    std::cout << INT_MIN << " to " << INT_MAX;
    return 0;
}
*/
//===========================================
//// Question 6: Integer Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 7, b = 3;
    std::cout << a / b;
    return 0;
}
*/
//===========================================
//// Question 7: Integer Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 7, b = 3;
    std::cout << a % b;
    return 0;
}
*/
//===========================================
//// Question 8: Integer Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    short a = 32767;
    a++;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 9: Integer Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    unsigned int a = 0;
    a--;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 10: Integer Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = -10;
    unsigned int b = a;
    std::cout << b;
    return 0;
}
*/
//===========================================
//// Question 11: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    float a = 5.5;
    float b = 2.0;
    std::cout << a + b;
    return 0;
}
*/
//===========================================
//// Question 12: Floating-Point Types
// What is the size of a double in bytes?
/**
#include <iostream>
int main() {
    std::cout << sizeof(double);
    return 0;
}
*/
//===========================================
//// Question 13: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    double a = 10.0;
    double b = 3.0;
    std::cout << a / b;
    return 0;
}
*/
//===========================================
//// Question 14: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    float a = 1.0f / 3.0f;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 15: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    long double a = 2.5;
    std::cout << a * 2;
    return 0;
}
*/
//===========================================
//// Question 16: Floating-Point Types
// What is the range of values for float?
/**
#include <iostream>
#include <cfloat>
int main() {
    std::cout << FLT_MIN << " to " << FLT_MAX;
    return 0;
}
*/
//===========================================
//// Question 17: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    double a = 1.0 / 0.0;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 18: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    float a = 0.0 / 0.0;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 19: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    double a = 1e308;
    double b = a * 10;
    std::cout << b;
    return 0;
}
*/
//===========================================
//// Question 20: Floating-Point Types
// What is the output of the following code?
/**
#include <iostream>
int main() {
    float a = 1.23456789f;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 21: Character Type
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char c = 'A';
    std::cout << c;
    return 0;
}
*/
//===========================================
//// Question 22: Character Type
// What is the ASCII value of 'Z'?
/**
#include <iostream>
int main() {
    char c = 'Z';
    std::cout << int(c);
    return 0;
}
*/
//===========================================
//// Question 23: Character Type
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char c = 66;
    std::cout << c;
    return 0;
}
*/
//===========================================
//// Question 24: Character Type
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char c = 'A' + 5;
    std::cout << c;
    return 0;
}
*/
//===========================================
//// Question 25: Character Type
// What is the size of char in bytes?
/**
#include <iostream>
int main() {
    std::cout << sizeof(char);
    return 0;
}
*/
//===========================================
//// Question 26: Void Type
// What is the output of the following code?
/**
#include <iostream>
void greet() {
    std::cout << "Hello!";
}
int main() {
    greet();
    return 0;
}
*/
//===========================================
//// Question 27: Void Type
// Can a void function return a value?
/**
#include <iostream>
void greet() {
    std::cout << "Hi";
    // return 0; // Uncommenting this line will cause an error
}
int main() {
    greet();
    return 0;
}
*/
//===========================================
//// Question 28: Void Type
// What is the output of the following code?
/**
#include <iostream>
void greet(std::string name) {
    std::cout << "Hello, " << name << "!";
}
int main() {
    greet("Alice");
    return 0;
}
*/
//===========================================
//// Question 29: Void Type
// What is the output of the following code?
/**
#include <iostream>
void greet(std::string name = "World") {
    std::cout << "Hello, " << name << "!";
}
int main() {
    greet();
    return 0;
}
*/
//===========================================
//// Question 30: Void Type
// What is the output of the following code?
/**
#include <iostream>
void greet(std::string name = "World") {
    std::cout << "Hello, " << name << "!";
}
int main() {
    greet("Bob");
    return 0;
}
*/
//===========================================
//// Question 31: Modifiers (signed)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    signed int a = -10;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 32: Modifiers (unsigned)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    unsigned int a = 10;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 33: Modifiers (const)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const int a = 5;
    // a = 10; // Uncommenting this line will cause an error
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 34: Modifiers (volatile)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    volatile int a = 5;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 35: Modifiers (static)
// What is the output of the following code?
/**
#include <iostream>
void increment() {
    static int a = 0;
    a++;
    std::cout << a << " ";
}
int main() {
    increment();
    increment();
    return 0;
}
*/
//===========================================
//// Question 36: Modifiers (static)
// What is the output of the following code?
/**
#include <iostream>
void increment() {
    static int a = 0;
    a++;
    std::cout << a << " ";
}
int main() {
    for (int i = 0; i < 3; i++) {
        increment();
    }
    return 0;
}
*/
//===========================================
//// Question 37: Modifiers (extern)
// What is the purpose of the extern modifier?
/**
// File1.cpp
#include <iostream>
extern int a;
void print() {
    std::cout << a;
}
// File2.cpp
int a = 5;
*/
//===========================================
//// Question 38: Modifiers (register)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    register int a = 5;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 39: Modifiers (signed)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    signed int a = 100;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 40: Modifiers (unsigned)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    unsigned int a = -1;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 41: Modifiers (const)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const float a = 3.14;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 42: Modifiers (volatile)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    volatile int a = 10;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 43: Modifiers (static)
// What is the output of the following code?
/**
#include <iostream>
void increment() {
    static int a = 0;
    a++;
    std::cout << a << " ";
}
int main() {
    for (int i = 0; i < 5; i++) {
        increment();
    }
    return 0;
}
*/
//===========================================
//// Question 44: Modifiers (extern)
// What is the output of the following code?
/**
// File1.cpp
#include <iostream>
extern int a;
void print() {
    std::cout << a;
}
// File2.cpp
int a = 10;
*/
//===========================================
//// Question 45: Modifiers (register)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    register int a = 20;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 46: Modifiers (signed)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    signed int a = -100;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 47: Modifiers (unsigned)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    unsigned int a = 100;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 48: Modifiers (const)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const int a = 50;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 49: Modifiers (volatile)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    volatile int a = 15;
    std::cout << a;
    return 0;
}
*/
//===========================================
//// Question 50: Modifiers (static)
// What is the output of the following code?
/**
#include <iostream>
void increment() {
    static int a = 0;
    a++;
    std::cout << a << " ";
}
int main() {
    for (int i = 0; i < 10; i++) {
        increment();
    }
    return 0;
}
*/

//=======================================================================

//=======================================================================
