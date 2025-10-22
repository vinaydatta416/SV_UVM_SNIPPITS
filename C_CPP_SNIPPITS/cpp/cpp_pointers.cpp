// Question 1: Declare a pointer
/**
#include <iostream>
int main() {
    int a = 5;
    int* p = &a;
    std::cout << *p;
    return 0;
}
*/
//===========================================
// Question 2: Pointer to pointer
/**
#include <iostream>
int main() {
    int a = 10;
    int* p = &a;
    int** pp = &p;
    std::cout << **pp;
    return 0;
}
*/
//===========================================
// Question 3: Pointer arithmetic (increment)
/**
#include <iostream>
int main() {
    int arr[] = {1, 2, 3};
    int* p = arr;
    p++;
    std::cout << *p;
    return 0;
}
*/
//===========================================
// Question 4: NULL pointer
/**
#include <iostream>
int main() {
    int* p = NULL;
    std::cout << p;
    return 0;
}
*/
//===========================================
// Question 5: Void pointer usage
/**
#include <iostream>
int main() {
    int x = 42;
    void* p = &x;
    std::cout << *(int*)p;
    return 0;
}
*/
//===========================================
// Question 6: Array and pointer relation
/**
#include <iostream>
int main() {
    int a[3] = {10, 20, 30};
    int* p = a;
    std::cout << *(p + 1);
    return 0;
}
*/
//===========================================
// Question 7: Dangling pointer example
/**
#include <iostream>
int* getPointer() {
    int x = 10;
    return &x;
}
int main() {
    int* p = getPointer();
    std::cout << *p; // Undefined behavior
    return 0;
}
*/
//===========================================
// Question 8: Pointer to array
/**
#include <iostream>
int main() {
    int a[3] = {1, 2, 3};
    int (*p)[3] = &a;
    std::cout << (*p)[2];
    return 0;
}
*/
//===========================================
// Question 9: Function pointer
/**
#include <iostream>
void greet() {
    std::cout << "Hello";
}
int main() {
    void (*fp)() = greet;
    fp();
    return 0;
}
*/
//===========================================
// Question 10: Pointer with structure
/**
#include <iostream>
struct Point {
    int x;
};
int main() {
    Point p = {10};
    Point* ptr = &p;
    std::cout << ptr->x;
    return 0;
}
*/
//===========================================
// Question 11: Modify value using pointer
/**
#include <iostream>
int main() {
    int a = 5;
    int* p = &a;
    *p = 20;
    std::cout << a;
    return 0;
}
*/
//===========================================
// Question 12: Pointer subtraction
/**
#include <iostream>
int main() {
    int a[] = {1, 2, 3};
    int* p1 = &a[2];
    int* p2 = &a[0];
    std::cout << p1 - p2;
    return 0;
}
*/
//===========================================
// Question 13: Constant pointer
/**
#include <iostream>
int main() {
    int a = 10;
    int* const p = &a;
    *p = 20;
    std::cout << *p;
    return 0;
}
*/
//===========================================
// Question 14: Pointer to constant
/**
#include <iostream>
int main() {
    int a = 10;
    const int* p = &a;
    std::cout << *p;
    return 0;
}
*/
//===========================================
// Question 15: Array of pointers
/**
#include <iostream>
int main() {
    int a = 10, b = 20;
    int* arr[2] = {&a, &b};
    std::cout << *arr[1];
    return 0;
}
*/
//===========================================
// Question 16: Pointer as function parameter
/**
#include <iostream>
void update(int* p) {
    *p = 100;
}
int main() {
    int a = 5;
    update(&a);
    std::cout << a;
    return 0;
}
*/
//===========================================
// Question 17: Pointer initialized to nullptr
/**
#include <iostream>
int main() {
    int* p = nullptr;
    std::cout << p;
    return 0;
}
*/
//===========================================
// Question 18: Pointer comparison
/**
#include <iostream>
int main() {
    int a = 5, b = 5;
    int* p1 = &a;
    int* p2 = &b;
    std::cout << (p1 == p2);
    return 0;
}
*/
//===========================================
// Question 19: Swap using pointers
/**
#include <iostream>
void swap(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}
int main() {
    int x = 1, y = 2;
    swap(&x, &y);
    std::cout << x << " " << y;
    return 0;
}
*/
//===========================================
// Question 20: Pointer to function with parameters
/**
#include <iostream>
void print(int x) {
    std::cout << x;
}
int main() {
    void (*fp)(int) = print;
    fp(10);
    return 0;
}
*/
//===========================================
// Question 21: Structure pointer with arrow
/**
#include <iostream>
struct Car {
    int speed;
};
int main() {
    Car c = {100};
    Car* ptr = &c;
    std::cout << ptr->speed;
    return 0;
}
*/
//===========================================
// Question 22: Dynamic memory allocation
/**
#include <iostream>
int main() {
    int* p = new int(50);
    std::cout << *p;
    delete p;
    return 0;
}
*/
//===========================================
// Question 23: Pointer to class member
/**
#include <iostream>
class A {
public:
    int x = 7;
};
int main() {
    A obj;
    A* ptr = &obj;
    std::cout << ptr->x;
    return 0;
}
*/
//===========================================
// Question 24: Pointer to array element
/**
#include <iostream>
int main() {
    int a[] = {11, 22, 33};
    int* p = a;
    std::cout << *(p + 2);
    return 0;
}
*/
//===========================================
// Question 25: Double pointer dereferencing
/**
#include <iostream>
int main() {
    int a = 99;
    int* p = &a;
    int** pp = &p;
    std::cout << **pp;
    return 0;
}
*/
