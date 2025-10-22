//// Question 1: Basic If Statement
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 10;
    if (x > 5) {
        std::cout << "Greater";
    }
    return 0;
}
*/
//===========================================

//// Question 2: If-Else Statement
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int age = 15;
    if (age >= 18) {
        std::cout << "Adult";
    } else {
        std::cout << "Minor";
    }
    return 0;
}
*/
//===========================================

//// Question 3: Else-If Ladder
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int score = 75;
    if (score >= 90) std::cout << "A";
    else if (score >= 80) std::cout << "B";
    else if (score >= 70) std::cout << "C";
    else std::cout << "F";
    return 0;
}
*/
//===========================================

//// Question 4: Nested If
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 5, y = 10;
    if (x > 0) {
        if (y > 5) {
            std::cout << "Both positive";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 5: If with Logical AND
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 5, b = 10;
    if (a > 0 && b > 5) {
        std::cout << "True";
    }
    return 0;
}
*/
//===========================================

//// Question 6: If with Logical OR
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 3;
    if (x < 0 || x > 5) {
        std::cout << "Outside";
    } else {
        std::cout << "Inside";
    }
    return 0;
}
*/
//===========================================

//// Question 7: If with NOT Operator
// What is the output of the following code?
/**
#include <iostream>
int main() {
    bool flag = false;
    if (!flag) {
        std::cout << "Inverted";
    }
    return 0;
}
*/
//===========================================

//// Question 8: Ternary Operator
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 10;
    std::cout << (x > 5 ? "Yes" : "No");
    return 0;
}
*/
//===========================================

//// Question 9: Switch Statement
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int choice = 2;
    switch(choice) {
        case 1: std::cout << "One"; break;
        case 2: std::cout << "Two"; break;
        default: std::cout << "Other";
    }
    return 0;
}
*/
//===========================================

//// Question 10: Switch with Default
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int n = 5;
    switch(n) {
        case 1: std::cout << "A"; break;
        case 2: std::cout << "B"; break;
        default: std::cout << "C";
    }
    return 0;
}
*/
//===========================================

//// Question 11: Nested If-Else
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 8;
    if (a > 0) {
        if (a % 2 == 0) std::cout << "Even";
        else std::cout << "Odd";
    }
    return 0;
}
*/
//===========================================

//// Question 12: If-Else with Strings
// What is the output of the following code?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    if (s == "hello") std::cout << "Hi";
    else std::cout << "Bye";
    return 0;
}
*/
//===========================================

//// Question 13: Multiple Conditions
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 7, y = 7;
    if (x == y) std::cout << "Equal";
    else std::cout << "Not Equal";
    return 0;
}
*/
//===========================================

//// Question 14: If-Else Ladder
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int temp = 30;
    if (temp > 40) std::cout << "Hot";
    else if (temp > 20) std::cout << "Warm";
    else std::cout << "Cold";
    return 0;
}
*/
//===========================================

//// Question 15: Switch Fallthrough
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int n = 1;
    switch(n) {
        case 1: std::cout << "A";
        case 2: std::cout << "B"; break;
        default: std::cout << "C";
    }
    return 0;
}
*/
//===========================================

//// Question 16: If with Assignment
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 0;
    if (x = 5) std::cout << "True";
    else std::cout << "False";
    return 0;
}
*/
//===========================================

//// Question 17: If with Floating Point
// What is the output of the following code?
/**
#include <iostream>
int main() {
    float f = 0.1f;
    if (f == 0.1f) std::cout << "Equal";
    else std::cout << "Not Equal";
    return 0;
}
*/
//===========================================

//// Question 18: If with Char
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char c = 'A';
    if (c == 65) std::cout << "Yes";
    else std::cout << "No";
    return 0;
}
*/
//===========================================

//// Question 19: If with Enum
// What is the output of the following code?
/**
#include <iostream>
enum Color { RED, GREEN, BLUE };
int main() {
    Color c = GREEN;
    if (c == 1) std::cout << "Green";
    else std::cout << "Not Green";
    return 0;
}
*/
//===========================================

//// Question 20: Switch with Enum
// What is the output of the following code?
/**
#include <iostream>
enum Day { MON, TUE, WED };
int main() {
    Day d = WED;
    switch(d) {
        case MON: std::cout << "Monday"; break;
        case TUE: std::cout << "Tuesday"; break;
        case WED: std::cout << "Wednesday"; break;
    }
    return 0;
}
*/
//===========================================

//// Question 21: If with Compound Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 5, b = 10, c = 15;
    if (a < b && b < c) std::cout << "Ordered";
    else std::cout << "Not Ordered";
    return 0;
}
*/
//===========================================

//// Question 22: If with Nested Logical
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 2, y = 4;
    if ((x > 1 && y < 5) || (x == 2 && y == 4)) std::cout << "Yes";
    else std::cout << "No";
    return 0;
}
*/
//===========================================

//// Question 23: If with Boolean Variable
// What is the output of the following code?
/**
#include <iostream>
int main() {
    bool flag = true;
    if (flag) std::cout << "True";
    else std::cout << "False";
    return 0;
}
*/
//===========================================

//// Question 24: If with Precedence
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 1, b = 2, c = 3;
    if (a + b > c && b - a < c) std::cout << "Yes";
    else std::cout << "No";
    return 0;
}
*/
//===========================================

//// Question 25: If with Multiple Statements
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 5;
    if (x > 0) {
        std::cout << "Positive ";
        std::cout << x;
    }
    return 0;
}
*/
//===========================================

//// Question 26: If with No Braces
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 5;
    if (x > 0)
        std::cout << "Yes";
    std::cout << "Done";
    return 0;
}
*/
//===========================================

//// Question 27: If-Else with No Braces
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = -1;
    if (x > 0)
        std::cout << "Positive";
    else
        std::cout << "Non-positive";
    return 0;
}
*/
//===========================================

//// Question 28: Switch with Char
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char c = 'b';
    switch(c) {
        case 'a': std::cout << "A"; break;
        case 'b': std::cout << "B"; break;
        default: std::cout << "Other";
    }
    return 0;
}
*/
//===========================================

//// Question 29: If with String Comparison
// What is the output of the following code?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    if (s > "aaa") std::cout << "Greater";
    else std::cout << "Smaller";
    return 0;
}
*/
//===========================================

//// Question 30: If with Input
// What is the output if user enters 10?
/**
#include <iostream>
int main() {
    int n;
    std::cin >> n;
    if (n % 2 == 0) std::cout << "Even";
    else std::cout << "Odd";
    return 0;
}
*/
//===========================================

//// Question 31: If with Double Negation
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 0;
    if (!!x) std::cout << "True";
    else std::cout << "False";
    return 0;
}
*/
//===========================================

//// Question 32: If with Short-Circuit
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 0, b = 5;
    if (a != 0 && (b / a) > 1) std::cout << "Yes";
    else std::cout << "No";
    return 0;
}
*/
//===========================================

//// Question 33: If with Nested Ternary
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 5;
    std::cout << (x > 0 ? (x > 3 ? "Big" : "Small") : "Negative");
    return 0;
}
*/
//===========================================

//// Question 34: Switch with No Breaks
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int n = 2;
    switch(n) {
        case 1: std::cout << "A";
        case 2: std::cout << "B";
        case 3: std::cout << "C";
    }
    return 0;
}
*/
//===========================================

//// Question 35: If with Constexpr
// What is the output of the following code?
/**
#include <iostream>
int main() {
    constexpr int x = 10;
    if (x == 10) std::cout << "Ten";
    else std::cout << "Not Ten";
    return 0;
}
*/
//===========================================

//// Question 36: If with Inline Variable
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 5;
    if (int y = x * 2; y > 5) std::cout << y;
    else std::cout << "Small";
    return 0;
}
*/
//===========================================

//// Question 37: If with Multiple Variables
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 2, b = 3, c = 4;
    if (a + b == c) std::cout << "Yes";
    else std::cout << "No";
    return 0;
}
*/
//===========================================

//// Question 38: If with Floating Point Comparison
// What is the output of the following code?
/**
#include <iostream>
int main() {
    double a = 0.3 - 0.2;
    double b = 0.1;
    if (a == b) std::cout << "Equal";
    else std::cout << "Not Equal";
    return 0;
}
*/
//===========================================

//// Question 39: If with Boolean Expression
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 1;
    if (x) std::cout << "True";
    else std::cout << "False";
    return 0;
}
*/
//===========================================

//// Question 40: If with Negative Number
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = -5;
    if (x < 0) std::cout << "Negative";
    else std::cout << "Non-negative";
    return 0;
}
*/
//===========================================

//// Question 41: If with Zero
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 0;
    if (x) std::cout << "Non-zero";
    else std::cout << "Zero";
    return 0;
}
*/
//===========================================

//// Question 42: If with Char Comparison
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char c = 'z';
    if (c > 'a') std::cout << "Lowercase";
    else std::cout << "Uppercase";
    return 0;
}
*/
//===========================================

//// Question 43: If with Multiple Else
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int n = 0;
    if (n > 0) std::cout << "Positive";
    else if (n < 0) std::cout << "Negative";
    else std::cout << "Zero";
    return 0;
}
*/
//===========================================

//// Question 44: Switch with String (invalid)
// What happens if you try to use a string in switch?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    // switch(s) { } // Error: switch does not support strings
    return 0;
}
*/
//===========================================

//// Question 45: If with Sizeof
// What is the output of the following code?
/**
#include <iostream>
int main() {
    if (sizeof(int) == 4) std::cout << "32-bit";
    else std::cout << "Other";
    return 0;
}
*/
//===========================================

//// Question 46: If with Bitwise AND
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 5;
    if (x & 1) std::cout << "Odd";
    else std::cout << "Even";
    return 0;
}
*/
//===========================================

//// Question 47: If with Bitwise OR
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 2;
    if (x | 1) std::cout << "True";
    else std::cout << "False";
    return 0;
}
*/
//===========================================

//// Question 48: If with Bitwise XOR
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 3;
    if (x ^ 3) std::cout << "Not Equal";
    else std::cout << "Equal";
    return 0;
}
*/
//===========================================

//// Question 49: If with Switch in If
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 1;
    if (x) {
        switch(x) {
            case 1: std::cout << "One"; break;
            default: std::cout << "Other";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 50: Final Complex Example
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 5, b = 10, c = 15;
    if (a < b && b < c) {
        switch(a) {
            case 5: 
                if (b == 10) {
                    std::cout << "Perfect";
                }
                break;
            default:
                std::cout << "Not perfect";
        }
    }
    return 0;
}
*/
//===========================================