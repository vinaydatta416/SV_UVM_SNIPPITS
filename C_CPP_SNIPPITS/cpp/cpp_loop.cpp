//// Question 1: Basic For Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 3; i++) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 2: For Loop with Decrement
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 3; i > 0; i--) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 3: For Loop with Step 2
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 5; i += 2) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 4: For Loop Printing Even Numbers
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 2; i <= 10; i += 2) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 5: For Loop with Continue
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 5; i++) {
        if(i == 2) continue;
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 6: For Loop with Break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 5; i++) {
        if(i == 3) break;
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 7: For Loop with Negative Step
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 5; i > 0; i -= 2) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 8: For Loop with Multiple Variables
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0, j = 5; i < j; i++, j--) {
        std::cout << i << "," << j << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 9: For Loop with No Body
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i;
    for(i = 0; i < 5; i++);
    std::cout << i;
    return 0;
}
*/
//===========================================

//// Question 10: For Loop with Only Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    for(; i < 3;) {
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 11: For Loop with No Initialization
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 1;
    for(; i <= 3; i++) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 12: For Loop with No Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0;; i++) {
        if(i == 3) break;
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 13: For Loop with No Increment
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 3;) {
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 14: For Loop with Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {1, 2, 3};
    for(int i = 0; i < 3; i++) {
        std::cout << arr[i] << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 15: For Loop with Reverse Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {1, 2, 3};
    for(int i = 2; i >= 0; i--) {
        std::cout << arr[i] << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 16: For Loop with Sum
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int sum = 0;
    for(int i = 1; i <= 3; i++) {
        sum += i;
    }
    std::cout << sum;
    return 0;
}
*/
//===========================================

//// Question 17: For Loop with Product
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int prod = 1;
    for(int i = 1; i <= 3; i++) {
        prod *= i;
    }
    std::cout << prod;
    return 0;
}
*/
//===========================================

//// Question 18: For Loop with Char
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(char c = 'a'; c <= 'c'; c++) {
        std::cout << c << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 19: For Loop with Double
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(double d = 0.5; d < 2.0; d += 0.5) {
        std::cout << d << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 20: For Loop with Nested Loops
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 21: For Loop with Break in Inner Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            if(j == 2) break;
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 22: For Loop with Continue in Inner Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            if(j == 2) continue;
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 23: For Loop with Variable Scope
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 2; i++) {
        int x = 5;
        std::cout << x << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 24: For Loop with No Execution
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 10; i < 5; i++) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 25: For Loop with Infinite Loop (with break)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    for(;;) {
        if(i == 3) break;
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 26: For Loop with Function Call
// What is the output of the following code?
/**
#include <iostream>
void print(int n) { std::cout << n << " "; }
int main() {
    for(int i = 1; i <= 3; i++) {
        print(i);
    }
    return 0;
}
*/
//===========================================

//// Question 27: For Loop with STL Vector
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v = {1, 2, 3};
    for(int i = 0; i < v.size(); i++) {
        std::cout << v[i] << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 28: For Loop with Range-based For
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v = {4, 5, 6};
    for(int x : v) {
        std::cout << x << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 29: For Loop with Reference in Range-based For
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v = {1, 2, 3};
    for(int &x : v) {
        x *= 2;
    }
    for(int x : v) {
        std::cout << x << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 30: For Loop with Const Reference in Range-based For
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v = {1, 2, 3};
    for(const int &x : v) {
        std::cout << x << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 31: For Loop with String
// What is the output of the following code?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    for(char c : s) {
        std::cout << c << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 32: For Loop with Nested Range-based For
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<std::vector<int>> v = {{1,2},{3,4}};
    for(const auto& row : v) {
        for(int x : row) {
            std::cout << x << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 33: For Loop with Break in Range-based For
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v = {1, 2, 3};
    for(int x : v) {
        if(x == 2) break;
        std::cout << x << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 34: For Loop with Continue in Range-based For
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v = {1, 2, 3};
    for(int x : v) {
        if(x == 2) continue;
        std::cout << x << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 35: For Loop with Nested For and Continue
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            if(j == 2) continue;
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 36: For Loop with Nested For and Break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            if(j == 2) break;
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 37: For Loop with Large Step
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i <= 10; i += 5) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 38: For Loop with Odd Numbers
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i < 10; i += 2) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 39: For Loop with Condition False Initially
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 10; i < 5; i++) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 40: For Loop with Floating Point Step
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(float f = 0.0; f < 1.0; f += 0.4f) {
        std::cout << f << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 41: For Loop with Boolean Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(bool b = false; !b; b = true) {
        std::cout << "Hello";
    }
    return 0;
}
*/
//===========================================

//// Question 42: For Loop with Post-Increment in Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i++ < 3;) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 43: For Loop with Pre-Increment in Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; ++i < 3;) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 44: For Loop with Assignment in Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    for(; (i = i + 1) < 4;) {
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 45: For Loop with Nested Assignment
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    for(; i < 3; std::cout << i++ << " ");
    return 0;
}
*/
//===========================================

//// Question 46: For Loop with No Statements
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 3; i++);
    std::cout << "Done";
    return 0;
}
*/
//===========================================

//// Question 47: For Loop with Array Size
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {1,2,3,4};
    int n = sizeof(arr)/sizeof(arr[0]);
    for(int i = 0; i < n; i++) {
        std::cout << arr[i] << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 48: For Loop with STL String
// What is the output of the following code?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "xyz";
    for(int i = 0; i < s.length(); i++) {
        std::cout << s[i] << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 49: For Loop with Nested For and Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    for(int i = 0; i < 2; i++) {
        for(int j = 0; j < 2; j++) {
            std::cout << arr[i][j] << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 50: For Loop with All Parts Empty
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    for(;;) {
        if(i == 2) break;
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================





//// Question 1: Basic While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(i < 3) {
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 2: While Loop with Decrement
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 3;
    while(i > 0) {
        std::cout << i << " ";
        i--;
    }
    return 0;
}
*/
//===========================================

//// Question 3: While Loop with Continue
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(i < 5) {
        i++;
        if(i == 3) continue;
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 4: While Loop with Break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(i < 5) {
        if(i == 3) break;
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 5: Infinite While Loop (with break)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(1) {
        if(i == 3) break;
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 6: Basic Do-While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        std::cout << i << " ";
        i++;
    } while(i < 3);
    return 0;
}
*/
//===========================================

//// Question 7: Do-While Loop with False Condition
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 5;
    do {
        std::cout << i << " ";
    } while(i < 3);
    return 0;
}
*/
//===========================================

//// Question 8: Do-While Loop with Continue
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        i++;
        if(i == 2) continue;
        std::cout << i << " ";
    } while(i < 4);
    return 0;
}
*/
//===========================================

//// Question 9: Do-While Loop with Break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        if(i == 2) break;
        std::cout << i << " ";
        i++;
    } while(i < 5);
    return 0;
}
*/
//===========================================

//// Question 10: Infinite Do-While Loop (with break)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        if(i == 3) break;
        std::cout << i << " ";
        i++;
    } while(1);
    return 0;
}
*/
//===========================================

//// Question 11: Nested For Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 12: Nested While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 1;
    while(i <= 2) {
        int j = 1;
        while(j <= 2) {
            std::cout << i << j << " ";
            j++;
        }
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 13: Nested Do-While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 1;
    do {
        int j = 1;
        do {
            std::cout << i << j << " ";
            j++;
        } while(j <= 2);
        i++;
    } while(i <= 2);
    return 0;
}
*/
//===========================================

//// Question 14: For Loop Inside While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 1;
    while(i <= 2) {
        for(int j = 1; j <= 2; j++) {
            std::cout << i << j << " ";
        }
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 15: While Loop Inside For Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        int j = 1;
        while(j <= 2) {
            std::cout << i << j << " ";
            j++;
        }
    }
    return 0;
}
*/
//===========================================

//// Question 16: Do-While Inside For Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        int j = 1;
        do {
            std::cout << i << j << " ";
            j++;
        } while(j <= 2);
    }
    return 0;
}
*/
//===========================================

//// Question 17: Infinite For Loop (with break)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    for(;;) {
        if(i == 3) break;
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 18: Infinite While Loop (with break)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(true) {
        if(i == 2) break;
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 19: Infinite Do-While Loop (with break)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        if(i == 2) break;
        std::cout << i << " ";
        i++;
    } while(true);
    return 0;
}
*/
//===========================================

//// Question 20: Nested Switch Statement
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 1, b = 2;
    switch(a) {
        case 1:
            switch(b) {
                case 2: std::cout << "Inner"; break;
                default: std::cout << "Default Inner";
            }
            break;
        default: std::cout << "Outer Default";
    }
    return 0;
}
*/
//===========================================

//// Question 21: Nested Switch with Default
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 2, b = 3;
    switch(a) {
        case 1:
            switch(b) {
                case 2: std::cout << "Inner"; break;
                default: std::cout << "Default Inner";
            }
            break;
        default: std::cout << "Outer Default";
    }
    return 0;
}
*/
//===========================================

//// Question 22: Break in Nested Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            if(j == 2) break;
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 23: Continue in Nested Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        for(int j = 1; j <= 2; j++) {
            if(j == 2) continue;
            std::cout << i << j << " ";
        }
    }
    return 0;
}
*/
//===========================================

//// Question 24: Goto Statement (Simple)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    goto label;
    std::cout << "Skip";
    label:
    std::cout << "Goto";
    return 0;
}
*/
//===========================================

//// Question 25: Goto Statement (Loop)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    start:
    if(i < 3) {
        std::cout << i << " ";
        i++;
        goto start;
    }
    return 0;
}
*/
//===========================================

//// Question 26: Goto with Nested Loops
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 2; i++) {
        for(int j = 0; j < 2; j++) {
            if(j == 1) goto out;
            std::cout << i << j << " ";
        }
    }
    out:
    std::cout << "End";
    return 0;
}
*/
//===========================================

//// Question 27: Continue in While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(i < 4) {
        i++;
        if(i == 2) continue;
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 28: Break in While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(i < 4) {
        if(i == 2) break;
        std::cout << i << " ";
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 29: Continue in Do-While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        i++;
        if(i == 2) continue;
        std::cout << i << " ";
    } while(i < 4);
    return 0;
}
*/
//===========================================

//// Question 30: Break in Do-While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        if(i == 2) break;
        std::cout << i << " ";
        i++;
    } while(i < 4);
    return 0;
}
*/
//===========================================

//// Question 31: Nested Infinite Loops (with break)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0, j = 0;
    while(true) {
        while(true) {
            std::cout << i << j << " ";
            break;
        }
        i++;
        if(i == 2) break;
    }
    return 0;
}
*/
//===========================================

//// Question 32: Nested Infinite Loops (with continue)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0, j = 0;
    while(i < 2) {
        while(j < 2) {
            j++;
            if(j == 2) continue;
            std::cout << i << j << " ";
        }
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 33: Goto Skipping Code
// What is the output of the following code?
/**
#include <iostream>
int main() {
    std::cout << "Start ";
    goto skip;
    std::cout << "Middle ";
    skip:
    std::cout << "End";
    return 0;
}
*/
//===========================================

//// Question 34: Goto to End Loop Early
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 3; i++) {
        if(i == 1) goto end;
        std::cout << i << " ";
    }
    end:
    std::cout << "Done";
    return 0;
}
*/
//===========================================

//// Question 35: Nested Switch with Same Variable
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 1;
    switch(x) {
        case 1:
            switch(x) {
                case 1: std::cout << "Inner1"; break;
                default: std::cout << "InnerDefault";
            }
            break;
        default: std::cout << "OuterDefault";
    }
    return 0;
}
*/
//===========================================

//// Question 36: Nested Switch with Different Cases
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 2, y = 1;
    switch(x) {
        case 2:
            switch(y) {
                case 1: std::cout << "Y1"; break;
                case 2: std::cout << "Y2"; break;
            }
            break;
        default: std::cout << "OuterDefault";
    }
    return 0;
}
*/
//===========================================

//// Question 37: Nested For-While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        int j = 1;
        while(j <= 2) {
            std::cout << i << j << " ";
            j++;
        }
    }
    return 0;
}
*/
//===========================================

//// Question 38: Nested While-For Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 1;
    while(i <= 2) {
        for(int j = 1; j <= 2; j++) {
            std::cout << i << j << " ";
        }
        i++;
    }
    return 0;
}
*/
//===========================================

//// Question 39: Nested Do-While-For Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 1;
    do {
        for(int j = 1; j <= 2; j++) {
            std::cout << i << j << " ";
        }
        i++;
    } while(i <= 2);
    return 0;
}
*/
//===========================================

//// Question 40: Nested For-Do-While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 1; i <= 2; i++) {
        int j = 1;
        do {
            std::cout << i << j << " ";
            j++;
        } while(j <= 2);
    }
    return 0;
}
*/
//===========================================

//// Question 41: Infinite While with Continue and Break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(true) {
        i++;
        if(i == 2) continue;
        if(i == 4) break;
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 42: Infinite Do-While with Continue and Break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        i++;
        if(i == 2) continue;
        if(i == 4) break;
        std::cout << i << " ";
    } while(true);
    return 0;
}
*/
//===========================================

//// Question 43: Infinite For with Continue and Break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    for(;;) {
        i++;
        if(i == 2) continue;
        if(i == 4) break;
        std::cout << i << " ";
    }
    return 0;
}
*/
//===========================================

//// Question 44: Goto in While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    while(i < 3) {
        std::cout << i << " ";
        i++;
        if(i == 2) goto end;
    }
    end:
    std::cout << "Done";
    return 0;
}
*/
//===========================================

//// Question 45: Goto in Do-While Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    do {
        std::cout << i << " ";
        i++;
        if(i == 2) goto finish;
    } while(i < 3);
    finish:
    std::cout << "End";
    return 0;
}
*/
//===========================================

//// Question 46: Goto in For Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    for(int i = 0; i < 3; i++) {
        if(i == 1) goto stop;
        std::cout << i << " ";
    }
    stop:
    std::cout << "Stop";
    return 0;
}
*/
//===========================================

//// Question 47: Nested Goto
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0, j = 0;
    for(; i < 2; i++) {
        for(j = 0; j < 2; j++) {
            if(j == 1) goto out;
            std::cout << i << j << " ";
        }
    }
    out:
    std::cout << "Exit";
    return 0;
}
*/
//===========================================

//// Question 48: Goto to Skip Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    goto skip;
    while(i < 3) {
        std::cout << i << " ";
        i++;
    }
    skip:
    std::cout << "Skipped";
    return 0;
}
*/
//===========================================

//// Question 49: Goto to Repeat Code
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int i = 0;
    repeat:
    std::cout << i << " ";
    i++;
    if(i < 3) goto repeat;
    return 0;
}
*/
//===========================================

//// Question 50: Goto with Multiple Labels
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 1;
    if(x == 1) goto label1;
    std::cout << "A";
    label1:
    std::cout << "B";
    return 0;
}
*/
//===========================================