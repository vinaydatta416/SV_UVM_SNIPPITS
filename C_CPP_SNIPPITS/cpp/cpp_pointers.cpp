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







//// Question 1: Pointer Declaration and Initialization
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 5;
    int *p = &a;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 2: Pointer Assignment
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 10, y = 20;
    int *p = &x;
    p = &y;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 3: Pointer Arithmetic (Increment)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {1, 2, 3};
    int *p = arr;
    p++;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 4: Pointer Arithmetic (Decrement)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {5, 6, 7};
    int *p = &arr[2];
    p--;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 5: Pointer to Pointer
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 8;
    int *p = &a;
    int **pp = &p;
    std::cout << **pp;
    return 0;
}
*/
//===========================================

//// Question 6: Array and Pointer Relation
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {1, 2, 3};
    int *p = arr;
    std::cout << *(p + 2);
    return 0;
}
*/
//===========================================

//// Question 7: Void Pointer Usage
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 10;
    void *p = &a;
    std::cout << *(int*)p;
    return 0;
}
*/
//===========================================

//// Question 8: NULL Pointer
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int *p = NULL;
    std::cout << (p == NULL);
    return 0;
}
*/
//===========================================

//// Question 9: Dangling Pointer Example
// What is the output of the following code?
/**
#include <iostream>
int* foo() {
    int a = 5;
    return &a;
}
int main() {
    int *p = foo();
    // std::cout << *p; // Undefined behavior
    std::cout << "Dangling";
    return 0;
}
*/
//===========================================

//// Question 10: Function Pointer Declaration
// What is the output of the following code?
/**
#include <iostream>
void fun() { std::cout << "Hello"; }
int main() {
    void (*fp)() = fun;
    fp();
    return 0;
}
*/
//===========================================

//// Question 11: Pointer to Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[3] = {1, 2, 3};
    int (*p)[3] = &arr;
    std::cout << (*p)[1];
    return 0;
}
*/
//===========================================

//// Question 12: Pointer to Function with Arguments
// What is the output of the following code?
/**
#include <iostream>
int add(int a, int b) { return a + b; }
int main() {
    int (*fp)(int, int) = add;
    std::cout << fp(2, 3);
    return 0;
}
*/
//===========================================

//// Question 13: Pointer to Structure
// What is the output of the following code?
/**
#include <iostream>
struct Point { int x; };
int main() {
    Point p = {5};
    Point *ptr = &p;
    std::cout << ptr->x;
    return 0;
}
*/
//===========================================

//// Question 14: Pointer to Class Member
// What is the output of the following code?
/**
#include <iostream>
class A { public: int x = 7; };
int main() {
    A a;
    A *p = &a;
    std::cout << p->x;
    return 0;
}
*/
//===========================================

//// Question 15: Pointer and sizeof
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int *p;
    std::cout << sizeof(p);
    return 0;
}
*/
//===========================================

//// Question 16: Pointer Increment in Loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {1, 2, 3};
    int *p = arr;
    for(int i=0;i<3;i++) std::cout << *(p+i) << " ";
    return 0;
}
*/
//===========================================

//// Question 17: Pointer to Const
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const int a = 10;
    const int *p = &a;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 18: Const Pointer
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 5, b = 6;
    int *const p = &a;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 19: Pointer to Pointer to Pointer
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int x = 1;
    int *p = &x;
    int **pp = &p;
    int ***ppp = &pp;
    std::cout << ***ppp;
    return 0;
}
*/
//===========================================

//// Question 20: Pointer and Dynamic Allocation
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int *p = new int(7);
    std::cout << *p;
    delete p;
    return 0;
}
*/
//===========================================

//// Question 21: Pointer to Array Element
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {10, 20, 30};
    int *p = &arr[1];
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 22: Pointer as Function Argument
// What is the output of the following code?
/**
#include <iostream>
void foo(int *p) { *p = 9; }
int main() {
    int a = 1;
    foo(&a);
    std::cout << a;
    return 0;
}
*/
//===========================================

//// Question 23: Pointer Return from Function
// What is the output of the following code?
/**
#include <iostream>
int* foo() {
    static int x = 5;
    return &x;
}
int main() {
    int *p = foo();
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 24: Pointer to Array of Pointers
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 1, b = 2;
    int *arr[2] = {&a, &b};
    std::cout << *arr[1];
    return 0;
}
*/
//===========================================

//// Question 25: Pointer to Function Array
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    fp[1]();
    return 0;
}
*/
//===========================================

//// Question 26: Pointer to Member Function
// What is the output of the following code?
/**
#include <iostream>
class A { public: void show() { std::cout << "X"; } };
int main() {
    void (A::*fp)() = &A::show;
    A a;
    (a.*fp)();
    return 0;
}
*/
//===========================================

//// Question 27: Pointer to Array of Structures
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S arr[2] = {{1}, {2}};
    S *p = arr;
    std::cout << (p+1)->x;
    return 0;
}
*/
//===========================================

//// Question 28: Pointer to Array of Classes
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C arr[2] = {{1}, {2}};
    C *p = arr;
    std::cout << (p+1)->x;
    return 0;
}
*/
//===========================================

//// Question 29: Pointer to Array of Functions
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    fp[0]();
    return 0;
}
*/
//===========================================

//// Question 30: Pointer to Array of Arrays
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int (*p)[2] = arr;
    std::cout << p[1][1];
    return 0;
}
*/
//===========================================

//// Question 31: Pointer to Void Function
// What is the output of the following code?
/**
#include <iostream>
void foo() { std::cout << "F"; }
int main() {
    void (*fp)() = foo;
    fp();
    return 0;
}
*/
//===========================================

//// Question 32: Pointer to Const Data
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const int a = 5;
    const int *p = &a;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 33: Const Pointer to Data
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 7;
    int *const p = &a;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 34: Pointer to Const Pointer
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 8;
    int *p = &a;
    int **const pp = &p;
    std::cout << **pp;
    return 0;
}
*/
//===========================================

//// Question 35: Pointer to Array Element (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {2, 4, 6};
    int *p = arr + 1;
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 36: Pointer and Reference
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 10;
    int *p = &a;
    int &r = *p;
    std::cout << r;
    return 0;
}
*/
//===========================================

//// Question 37: Pointer to Pointer to Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[] = {1, 2};
    int *p = arr;
    int **pp = &p;
    std::cout << *(*pp + 1);
    return 0;
}
*/
//===========================================

//// Question 38: Pointer to Function Returning Pointer
// What is the output of the following code?
/**
#include <iostream>
int* foo() { static int x = 9; return &x; }
int main() {
    int *p = foo();
    std::cout << *p;
    return 0;
}
*/
//===========================================

//// Question 39: Pointer to Array of Pointers to Functions
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    pp[1]();
    return 0;
}
*/
//===========================================

//// Question 40: Pointer to Member Variable
// What is the output of the following code?
/**
#include <iostream>
class A { public: int x = 3; };
int main() {
    int A::*ptr = &A::x;
    A a;
    std::cout << a.*ptr;
    return 0;
}
*/
//===========================================

//// Question 41: Pointer to Member Function Call
// What is the output of the following code?
/**
#include <iostream>
class A { public: void show() { std::cout << "Y"; } };
int main() {
    void (A::*fp)() = &A::show;
    A a;
    (a.*fp)();
    return 0;
}
*/
//===========================================

//// Question 42: Pointer to Array of Const
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const int arr[] = {1, 2};
    const int *p = arr;
    std::cout << *(p+1);
    return 0;
}
*/
//===========================================

//// Question 43: Pointer to Array of Pointers to Const
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const int a = 1, b = 2;
    const int *arr[2] = {&a, &b};
    std::cout << *arr[1];
    return 0;
}
*/
//===========================================

//// Question 44: Pointer to Array of Void Pointers
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a = 5;
    void *arr[1] = {&a};
    std::cout << *(int*)arr[0];
    return 0;
}
*/
//===========================================

//// Question 45: Pointer to Array of Function Pointers
// What is the output of the following code?
/**
#include <iostream>
void f() { std::cout << "F"; }
int main() {
    void (*arr[1])() = {f};
    arr[0]();
    return 0;
}
*/
//===========================================

//// Question 46: Pointer to Array of Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S arr[2] = {{1}, {2}};
    S *p = arr;
    std::cout << (p+1)->x;
    return 0;
}
*/
//===========================================

//// Question 47: Pointer to Array of Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C arr[2] = {{1}, {2}};
    C *p = arr;
    std::cout << (p+1)->x;
    return 0;
}
*/
//===========================================

//// Question 48: Pointer to Array of Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int (*p)[2] = arr;
    std::cout << p[1][1];
    return 0;
}
*/
//===========================================

//// Question 49: Pointer to Array of Pointers to Arrays
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << arr[1][0];
    return 0;
}
*/
//===========================================

//// Question 50: Pointer to Array of Pointers to Functions (Call All)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    for(int i=0;i<2;i++) fp[i]();
    return 0;
}
*/
//===========================================

//// Question 51: Pointer to Array of Pointers to Structures
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << arr[1]->x;
    return 0;
}
*/
//===========================================

//// Question 52: Pointer to Array of Pointers to Classes
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << arr[1]->x;
    return 0;
}
*/
//===========================================

//// Question 53: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[0]+1);
    return 0;
}
*/
//===========================================

//// Question 54: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    pp[0]();
    return 0;
}
*/
//===========================================

//// Question 55: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*arr)->x;
    return 0;
}
*/
//===========================================

//// Question 56: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*arr)->x;
    return 0;
}
*/
//===========================================

//// Question 57: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *arr[1];
    return 0;
}
*/
//===========================================

//// Question 58: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*pp)();
    return 0;
}
*/
//===========================================

//// Question 59: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << arr[0]->x;
    return 0;
}
*/
//===========================================

//// Question 60: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << arr[0]->x;
    return 0;
}
*/
//===========================================

//// Question 61: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[1]+1);
    return 0;
}
*/
//===========================================

//// Question 62: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+1))();
    return 0;
}
*/
//===========================================

//// Question 63: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 64: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 65: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[0]+0);
    return 0;
}
*/
//===========================================

//// Question 66: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+0))();
    return 0;
}
*/
//===========================================

//// Question 67: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 68: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 69: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[1]+0);
    return 0;
}
*/
//===========================================

//// Question 70: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+1))();
    return 0;
}
*/
//===========================================

//// Question 71: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 72: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 73: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[0]+1);
    return 0;
}
*/
//===========================================

//// Question 74: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+0))();
    return 0;
}
*/
//===========================================

//// Question 75: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 76: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 77: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[1]+1);
    return 0;
}
*/
//===========================================

//// Question 78: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+1))();
    return 0;
}
*/
//===========================================

//// Question 79: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 80: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 81: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[0]+0);
    return 0;
}
*/
//===========================================

//// Question 82: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+0))();
    return 0;
}
*/
//===========================================

//// Question 83: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 84: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 85: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[1]+0);
    return 0;
}
*/
//===========================================

//// Question 86: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+1))();
    return 0;
}
*/
//===========================================

//// Question 87: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 88: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 89: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[0]+1);
    return 0;
}
*/
//===========================================

//// Question 90: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+0))();
    return 0;
}
*/
//===========================================

//// Question 91: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 92: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 93: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[1]+1);
    return 0;
}
*/
//===========================================

//// Question 94: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+1))();
    return 0;
}
*/
//===========================================

//// Question 95: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 96: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+1))->x;
    return 0;
}
*/
//===========================================

//// Question 97: Pointer to Array of Pointers to Arrays (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2}, b[] = {3,4};
    int *arr[2] = {a, b};
    std::cout << *(arr[0]+1);
    return 0;
}
*/
//===========================================

//// Question 98: Pointer to Array of Pointers to Functions (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
void f1() { std::cout << "A"; }
void f2() { std::cout << "B"; }
int main() {
    void (*fp[2])() = {f1, f2};
    void (**pp)() = fp;
    (*(pp+0))();
    return 0;
}
*/
//===========================================

//// Question 99: Pointer to Array of Pointers to Structures (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
struct S { int x; };
int main() {
    S a = {1}, b = {2};
    S *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================

//// Question 100: Pointer to Array of Pointers to Classes (Pointer Arithmetic)
// What is the output of the following code?
/**
#include <iostream>
class C { public: int x; };
int main() {
    C a = {1}, b = {2};
    C *arr[2] = {&a, &b};
    std::cout << (*(arr+0))->x;
    return 0;
}
*/
//===========================================