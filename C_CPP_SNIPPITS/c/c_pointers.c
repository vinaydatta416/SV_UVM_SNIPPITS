
//===========================================
//               Pointer
//===========================================

// Code 1: Pointer Basics - Print value using pointer
/**
#include <stdio.h>
int main() {
    int x = 10;          // Declare an integer variable
    int *p = &x;         // Declare a pointer and assign address of x
    printf("%d\n", *p);  // Dereference pointer to print value of x
    return 0;
}
*/
//===========================================
// Code 2: Pointer Basics - Change value using pointer
/**
#include <stdio.h>
int main() {
    int x = 5;           // Declare an integer variable
    int *p = &x;         // Pointer points to x
    *p = 20;             // Change value of x using pointer
    printf("%d\n", x);   // Prints 20
    return 0;
}
*/
//===========================================
// Code 3: Pointer Arithmetic - Increment pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3}; // Array of integers
    int *p = arr;         // Pointer to first element
    printf("%d ", *p);    // Prints 1
    p++;                  // Move pointer to next element
    printf("%d\n", *p);   // Prints 2
    return 0;
}
*/
//===========================================
// Code 4: Pointer Arithmetic - Decrement pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {10,20,30};
    int *p = &arr[2];     // Pointer to last element
    printf("%d ", *p);    // Prints 30
    p--;                  // Move pointer to previous element
    printf("%d\n", *p);   // Prints 20
    return 0;
}
*/
//===========================================
// Code 5: Pointer Arithmetic - Difference between pointers
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5};
    int *p1 = &arr[1];    // Pointer to arr[1]
    int *p2 = &arr[4];    // Pointer to arr[4]
    printf("%ld\n", p2 - p1); // Prints 3 (number of elements between)
    return 0;
}
*/
//===========================================
// Code 6: Pointers & Arrays - Access array using pointer
/**
#include <stdio.h>
int main() {
    int arr[4] = {2,4,6,8};
    int *p = arr;         // Pointer to first element
    for(int i=0; i<4; i++)
        printf("%d ", *(p+i)); // Access elements using pointer arithmetic
    return 0;
}
*/
//===========================================
// Code 7: Pointers & Arrays - Modify array using pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    *(p+1) = 10;          // Change arr[1] to 10
    for(int i=0; i<3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 8: Array of Pointers - Print values
/**
#include <stdio.h>
int main() {
    int a=5, b=10, c=15;
    int *arr[3] = {&a, &b, &c}; // Array of pointers to int
    for(int i=0; i<3; i++)
        printf("%d ", *arr[i]); // Print values using pointers
    return 0;
}
*/
//===========================================
// Code 9: Array of Pointers - Change values
/**
#include <stdio.h>
int main() {
    int a=1, b=2, c=3;
    int *arr[3] = {&a, &b, &c};
    *arr[0] = 100;        // Change value of a using pointer
    printf("%d\n", a);    // Prints 100
    return 0;
}
*/
//===========================================
// Code 10: Pointer to Pointer - Print value
/**
#include <stdio.h>
int main() {
    int x = 50;
    int *p = &x;          // Pointer to x
    int **pp = &p;        // Pointer to pointer
    printf("%d\n", **pp); // Prints 50
    return 0;
}
*/
//===========================================
// Code 11: Pointer to Pointer - Change value
/**
#include <stdio.h>
int main() {
    int x = 7;
    int *p = &x;
    int **pp = &p;
    **pp = 99;            // Change value of x using double pointer
    printf("%d\n", x);    // Prints 99
    return 0;
}
*/
//===========================================
// Code 12: Passing Pointer to Function - Set value
/**
#include <stdio.h>
void set100(int *p) { *p = 100; } // Function sets value to 100
int main() {
    int x = 0;
    set100(&x);           // Pass address of x
    printf("%d\n", x);    // Prints 100
    return 0;
}
*/
//===========================================
// Code 13: Passing Pointer to Function - Swap values
/**
#include <stdio.h>
void swap(int *a, int *b) {
    int t = *a;
    *a = *b;
    *b = t;
}
int main() {
    int x = 1, y = 2;
    swap(&x, &y);         // Swap values using pointers
    printf("%d %d\n", x, y); // Prints 2 1
    return 0;
}
*/
//===========================================
// Code 14: Returning Pointer from Function - Return address
/**
#include <stdio.h>
int* getPtr(int *x) { return x; } // Function returns pointer
int main() {
    int a = 42;
    int *p = getPtr(&a);
    printf("%d\n", *p);   // Prints 42
    return 0;
}
*/
//===========================================
// Code 15: Returning Pointer from Function - Return static array
/**
#include <stdio.h>
int* getArr() {
    static int arr[3] = {1,2,3}; // Static array persists after function returns
    return arr;
}
int main() {
    int *p = getArr();
    for(int i=0; i<3; i++)
        printf("%d ", p[i]); // Prints 1 2 3
    return 0;
}
*/
//===========================================
// Code 16: Character Pointer - Print string
/**
#include <stdio.h>
int main() {
    char *str = "Hello";  // Pointer to string literal
    printf("%s\n", str);  // Prints Hello
    return 0;
}
*/
//===========================================
// Code 17: Character Pointer - Change character
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    *p = 'B';             // Change first character to 'B'
    printf("%s\n", str);  // Prints Bi
    return 0;
}
*/
//===========================================
// Code 18: NULL Pointer - Check for NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;        // Initialize pointer to NULL
    if(p == NULL)
        printf("Pointer is NULL\n");
    return 0;
}
*/
//===========================================
// Code 19: NULL Pointer - Avoid dereferencing NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    if(p)
        printf("%d\n", *p); // Won't print
    else
        printf("Safe from crash\n");
    return 0;
}
*/
//===========================================
// Code 20: void Pointer - Store address of int
/**
#include <stdio.h>
int main() {
    int x = 42;
    void *p = &x;         // void pointer can point to any type
    printf("%d\n", *(int*)p); // Cast to int* before dereferencing
    return 0;
}
*/
//===========================================
// Code 21: void Pointer - Store address of float
/**
#include <stdio.h>
int main() {
    float f = 3.14;
    void *p = &f;
    printf("%.2f\n", *(float*)p); // Cast to float* before dereferencing
    return 0;
}
*/
//===========================================
// Code 22: Dereference Pointer - Print value
/**
#include <stdio.h>
int main() {
    int x = 5;
    int *p = &x;
    printf("%d\n", *p);   // Prints 5
    return 0;
}
*/
//===========================================
// Code 23: Dereference Pointer - Change value
/**
#include <stdio.h>
int main() {
    int x = 8;
    int *p = &x;
    *p = 20;              // Change value using pointer
    printf("%d\n", x);    // Prints 20
    return 0;
}
*/
//===========================================
// Code 24: Pointer Initialization - Initialize to NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;        // Good practice to initialize pointer
    printf("%p\n", p);    // Prints 0x0 or (nil)
    return 0;
}
*/
//===========================================
// Code 25: Pointer Initialization - Assign address later
/**
#include <stdio.h>
int *p;                  // Uninitialized pointer
int main() {
    int x = 10;
    p = &x;              // Assign address to pointer
    printf("%d\n", *p);  // Prints 10
    return 0;
}
*/
//===========================================
// Code 26: Pointers to Structures - Access members
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {1,2};
    struct Point *p = &pt;
    printf("%d %d\n", p->x, p->y); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 27: Pointers to Structures - Change member value
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {3,4};
    struct Point *p = &pt;
    p->x = 10;            // Change x member using pointer
    printf("%d\n", pt.x); // Prints 10
    return 0;
}
*/
//=========================================== 

// Code 28: Pointer Arithmetic - Add integer to pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    printf("%d\n", *(p+2)); // Prints 3
    return 0;
}
*/
//===========================================
// Code 29: Pointer Arithmetic - Subtract integer from pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {5,6,7};
    int *p = &arr[2];
    printf("%d\n", *(p-1)); // Prints 6
    return 0;
}
*/
//===========================================
// Code 30: Pointer Arithmetic - Difference between two pointers
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5};
    int *p1 = &arr[0];
    int *p2 = &arr[3];
    printf("%ld\n", p2 - p1); // Prints 3
    return 0;
}
*/
//===========================================
// Code 31: Pointers & Arrays - Print array using pointer
/**
#include <stdio.h>
int main() {
    int arr[4] = {10,20,30,40};
    int *p = arr;
    for(int i=0; i<4; i++)
        printf("%d ", *(p+i)); // Prints 10 20 30 40
    return 0;
}
*/
//===========================================
// Code 32: Pointers & Arrays - Modify array using pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    *(p+2) = 99; // Change arr[2] to 99
    for(int i=0; i<3; i++)
        printf("%d ", arr[i]); // Prints 1 2 99
    return 0;
}
*/
//===========================================
// Code 33: Pointers & Arrays - Pointer as array index
/**
#include <stdio.h>
int main() {
    int arr[3] = {4,5,6};
    int *p = arr;
    printf("%d\n", p[1]); // Prints 5
    return 0;
}
*/
//===========================================
// Code 34: Array of Pointers - Array of string literals
/**
#include <stdio.h>
int main() {
    char *arr[] = {"one", "two", "three"};
    for(int i=0; i<3; i++)
        printf("%s ", arr[i]); // Prints one two three
    return 0;
}
*/
//===========================================
// Code 35: Array of Pointers - Array of int pointers
/**
#include <stdio.h>
int main() {
    int a=1, b=2, c=3;
    int *arr[3] = {&a, &b, &c};
    for(int i=0; i<3; i++)
        printf("%d ", *arr[i]); // Prints 1 2 3
    return 0;
}
*/
//===========================================
// Code 36: Array of Pointers - Change value via pointer array
/**
#include <stdio.h>
int main() {
    int a=10, b=20;
    int *arr[2] = {&a, &b};
    *arr[1] = 99; // Change b to 99
    printf("%d\n", b); // Prints 99
    return 0;
}
*/
//===========================================
// Code 37: Pointer to Pointer - Array of pointers to int
/**
#include <stdio.h>
int main() {
    int a=5, b=10;
    int *arr[2] = {&a, &b};
    int **pp = arr;
    printf("%d %d\n", **pp, *(*(pp+1))); // Prints 5 10
    return 0;
}
*/
//===========================================
// Code 38: Pointer to Pointer - Change value via double pointer
/**
#include <stdio.h>
int main() {
    int x = 7;
    int *p = &x;
    int **pp = &p;
    **pp = 42; // Change x to 42
    printf("%d\n", x); // Prints 42
    return 0;
}
*/
//===========================================
// Code 39: Passing Pointer to Function - Print array
/**
#include <stdio.h>
void printArr(int *arr, int n) {
    for(int i=0; i<n; i++)
        printf("%d ", arr[i]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(arr, 3); // Prints 1 2 3
    return 0;
}
*/
//===========================================
// Code 40: Passing Pointer to Function - Increment value
/**
#include <stdio.h>
void inc(int *p) {
    (*p)++;
}
int main() {
    int x = 9;
    inc(&x);
    printf("%d\n", x); // Prints 10
    return 0;
}
*/
//===========================================
// Code 41: Passing Pointer to Function - Swap two numbers
/**
#include <stdio.h>
void swap(int *a, int *b) {
    int t = *a;
    *a = *b;
    *b = t;
}
int main() {
    int x = 3, y = 4;
    swap(&x, &y);
    printf("%d %d\n", x, y); // Prints 4 3
    return 0;
}
*/
//===========================================
// Code 42: Passing Pointer to Function - Set array elements
/**
#include <stdio.h>
void setArr(int *arr, int n, int val) {
    for(int i=0; i<n; i++)
        arr[i] = val;
}
int main() {
    int arr[3];
    setArr(arr, 3, 7);
    for(int i=0; i<3; i++)
        printf("%d ", arr[i]); // Prints 7 7 7
    return 0;
}
*/
//===========================================
// Code 43: Returning Pointer from Function - Return pointer to int
/**
#include <stdio.h>
int* getAddr(int *x) {
    return x;
}
int main() {
    int a = 55;
    int *p = getAddr(&a);
    printf("%d\n", *p); // Prints 55
    return 0;
}
*/
//===========================================
// Code 44: Returning Pointer from Function - Return pointer to static int
/**
#include <stdio.h>
int* getStatic() {
    static int x = 123;
    return &x;
}
int main() {
    int *p = getStatic();
    printf("%d\n", *p); // Prints 123
    return 0;
}
*/
//===========================================
// Code 45: Returning Pointer from Function - Return pointer to static array
/**
#include <stdio.h>
int* getArr() {
    static int arr[2] = {9,8};
    return arr;
}
int main() {
    int *p = getArr();
    printf("%d %d\n", p[0], p[1]); // Prints 9 8
    return 0;
}
*/
//===========================================
// Code 46: Returning Pointer from Function - Return NULL pointer
/**
#include <stdio.h>
int* getNull() {
    return NULL;
}
int main() {
    int *p = getNull();
    if(p == NULL)
        printf("NULL pointer\n");
    return 0;
}
*/
//===========================================
// Code 47: Function Pointer - Call function using pointer
/**
#include <stdio.h>
void hello() { printf("Hello\n"); }
int main() {
    void (*fptr)() = hello;
    fptr(); // Calls hello
    return 0;
}
*/
//===========================================
// Code 48: Function Pointer - Pointer to function with arguments
/**
#include <stdio.h>
int add(int a, int b) { return a+b; }
int main() {
    int (*fptr)(int, int) = add;
    printf("%d\n", fptr(2,3)); // Prints 5
    return 0;
}
*/
//===========================================
// Code 49: Function Pointer - Array of function pointers
/**
#include <stdio.h>
void f1() { printf("A "); }
void f2() { printf("B "); }
int main() {
    void (*arr[2])() = {f1, f2};
    arr[0](); // Prints A
    arr[1](); // Prints B
    return 0;
}
*/
//===========================================
// Code 50: Function Pointer - Pass function pointer to another function
/**
#include <stdio.h>
void greet() { printf("Hi!\n"); }
void run(void (*f)()) { f(); }
int main() {
    run(greet); // Prints Hi!
    return 0;
}
*/
//===========================================
// Code 51: Pointer to Array - Access elements using pointer to array
/**
#include <stdio.h>
int main() {
    int arr[3] = {7,8,9};
    int (*p)[3] = &arr;
    printf("%d %d\n", (*p)[0], (*p)[2]); // Prints 7 9
    return 0;
}
*/
//===========================================
// Code 52: Pointer to Array - Loop through array using pointer to array
/**
#include <stdio.h>
int main() {
    int arr[4] = {1,2,3,4};
    int (*p)[4] = &arr;
    for(int i=0; i<4; i++)
        printf("%d ", (*p)[i]); // Prints 1 2 3 4
    return 0;
}
*/
//===========================================
// Code 53: Pointer to Array - Pass pointer to array to function
/**
#include <stdio.h>
void printArr(int (*p)[3]) {
    for(int i=0; i<3; i++)
        printf("%d ", (*p)[i]);
}
int main() {
    int arr[3] = {5,6,7};
    printArr(&arr); // Prints 5 6 7
    return 0;
}
*/
//===========================================
// Code 54: Pointers to Structures - Print structure members
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {1,2};
    struct Point *p = &pt;
    printf("%d %d\n", p->x, p->y); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 55: Pointers to Structures - Change structure member
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {3,4};
    struct Point *p = &pt;
    p->y = 99;
    printf("%d\n", pt.y); // Prints 99
    return 0;
}
*/
//===========================================
// Code 56: Pointers to Structures - Array of structures and pointers
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point arr[2] = {{1,2},{3,4}};
    struct Point *p = arr;
    printf("%d %d\n", (p+1)->x, (p+1)->y); // Prints 3 4
    return 0;
}
*/
//===========================================
// Code 57: Pointers to Structures - Pass structure pointer to function
/**
#include <stdio.h>
struct Point { int x, y; };
void print(struct Point *p) {
    printf("%d %d\n", p->x, p->y);
}
int main() {
    struct Point pt = {7,8};
    print(&pt); // Prints 7 8
    return 0;
}
*/
//===========================================
// Code 58: Pointer vs Array - Print using both
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    printf("%d %d\n", arr[1], *(p+1)); // Prints 2 2
    return 0;
}
*/
//===========================================
// Code 59: Pointer vs Array - Modify using pointer
/**
#include <stdio.h>
int main() {
    int arr[2] = {5,6};
    int *p = arr;
    *(p+1) = 10;
    printf("%d\n", arr[1]); // Prints 10
    return 0;
}
*/
//===========================================
// Code 60: Pointer vs Array - Sizeof difference
/**
#include <stdio.h>
int main() {
    int arr[5];
    int *p = arr;
    printf("%lu %lu\n", sizeof(arr), sizeof(p)); // Prints 20 8 (on 64-bit)
    return 0;
}
*/
//===========================================
// Code 61: Chain of Pointers - Double pointer to int
/**
#include <stdio.h>
int main() {
    int x = 11;
    int *p = &x;
    int **pp = &p;
    printf("%d\n", **pp); // Prints 11
    return 0;
}
*/
//===========================================
// Code 62: Chain of Pointers - Change value via double pointer
/**
#include <stdio.h>
int main() {
    int x = 22;
    int *p = &x;
    int **pp = &p;
    **pp = 33;
    printf("%d\n", x); // Prints 33
    return 0;
}
*/
//===========================================
// Code 63: Character Pointers - Print string using pointer
/**
#include <stdio.h>
int main() {
    char *str = "Pointer";
    printf("%s\n", str); // Prints Pointer
    return 0;
}
*/
//===========================================
// Code 64: Character Pointers - Print each character
/**
#include <stdio.h>
int main() {
    char *str = "C Lang";
    while(*str)
        printf("%c ", *str++);
    return 0;
}
*/
//===========================================
// Code 65: Character Pointers - Modify character array
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    *(p+1) = 'o';
    printf("%s\n", str); // Prints Ho
    return 0;
}
*/
//===========================================
// Code 66: NULL Pointer - Initialize and check
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    if(p == NULL)
        printf("Pointer is NULL\n");
    return 0;
}
*/
//===========================================
// Code 67: NULL Pointer - Avoid dereferencing
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    if(p)
        printf("%d\n", *p);
    else
        printf("Safe\n");
    return 0;
}
*/
//===========================================
// Code 68: void Pointer - Assign int and print
/**
#include <stdio.h>
int main() {
    int x = 77;
    void *p = &x;
    printf("%d\n", *(int*)p); // Prints 77
    return 0;
}
*/
//===========================================
// Code 69: void Pointer - Assign float and print
/**
#include <stdio.h>
int main() {
    float f = 2.5;
    void *p = &f;
    printf("%.1f\n", *(float*)p); // Prints 2.5
    return 0;
}
*/
//===========================================
// Code 70: Dangling Pointer - Local variable address returned
/**
#include <stdio.h>
int* getDangling() {
    int x = 10;
    return &x; // Dangling pointer
}
int main() {
    int *p = getDangling();
    // printf("%d\n", *p); // Undefined behavior
    printf("Dangling pointer example\n");
    return 0;
}
*/
//===========================================
// Code 71: Dangling Pointer - Freed memory
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *p = malloc(sizeof(int));
    *p = 5;
    free(p);
    // printf("%d\n", *p); // Dangling pointer
    printf("Dangling pointer after free\n");
    return 0;
}
*/
//===========================================
// Code 72: Dereference Pointer - Print value
/**
#include <stdio.h>
int main() {
    int x = 15;
    int *p = &x;
    printf("%d\n", *p); // Prints 15
    return 0;
}
*/
//===========================================
// Code 73: Dereference Pointer - Change value
/**
#include <stdio.h>
int main() {
    int x = 21;
    int *p = &x;
    *p = 42;
    printf("%d\n", x); // Prints 42
    return 0;
}
*/
//===========================================
// Code 74: Pointer Initialization - Assign address after declaration
/**
#include <stdio.h>
int main() {
    int *p;
    int x = 100;
    p = &x;
    printf("%d\n", *p); // Prints 100
    return 0;
}
*/
//===========================================
// Code 75: Pointer Initialization - Initialize to NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    printf("%p\n", p); // Prints 0x0 or (nil)
    return 0;
}
*/
//===========================================
// Code 76: Pointer Initialization - Assign address in function
/**
#include <stdio.h>
void setPtr(int **pp, int *x) {
    *pp = x;
}
int main() {
    int x = 9;
    int *p = NULL;
    setPtr(&p, &x);
    printf("%d\n", *p); // Prints 9
    return 0;
}
*/
//===========================================
// Code 77: Pointers vs Multi-D Arrays - Access 2D array with pointer
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int *p = &arr[0][0];
    for(int i=0; i<4; i++)
        printf("%d ", *(p+i)); // Prints 1 2 3 4
    return 0;
}
*/
//===========================================
// Code 78: Pointers vs Multi-D Arrays - Pointer to array row
/**
#include <stdio.h>
int main() {
    int arr[2][3] = {{1,2,3},{4,5,6}};
    int (*p)[3] = arr;
    for(int i=0; i<2; i++)
        for(int j=0; j<3; j++)
            printf("%d ", p[i][j]); // Prints 1 2 3 4 5 6
    return 0;
}
*/
//===========================================
// Code 79: Pointers vs Multi-D Arrays - Pass 2D array to function
/**
#include <stdio.h>
void print2D(int arr[2][2]) {
    for(int i=0; i<2; i++)
        for(int j=0; j<2; j++)
            printf("%d ", arr[i][j]);
}
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    print2D(arr); // Prints 1 2 3 4
    return 0;
}
*/
//===========================================
// Code 80: Pointers vs Multi-D Arrays - Pointer arithmetic on 2D array
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int *p = &arr[0][0];
    printf("%d %d\n", *(p+1), *(p+3)); // Prints 2 4
    return 0;
}
*/
//===========================================
// Code 81: Pointer to Pointer - Array of string pointers
/**
#include <stdio.h>
int main() {
    char *arr[] = {"one", "two"};
    char **pp = arr;
    printf("%s %s\n", *pp, *(pp+1)); // Prints one two
    return 0;
}
*/
//===========================================
// Code 82: Pointer to Pointer - Pointer to pointer to structure
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {3,4};
    struct Point *p = &pt;
    struct Point **pp = &p;
    printf("%d %d\n", (*pp)->x, (*pp)->y); // Prints 3 4
    return 0;
}
*/
//===========================================
// Code 83: Pointer to Pointer - Pass double pointer to function
/**
#include <stdio.h>
void setVal(int **pp) {
    **pp = 77;
}
int main() {
    int x = 0;
    int *p = &x;
    setVal(&p);
    printf("%d\n", x); // Prints 77
    return 0;
}
*/
//===========================================
// Code 84: Pointer to Pointer - Return double pointer from function
/**
#include <stdio.h>
int** getPP(int **pp) { return pp; }
int main() {
    int x = 5;
    int *p = &x;
    int **pp = &p;
    int **res = getPP(pp);
    printf("%d\n", **res); // Prints 5
    return 0;
}
*/
//===========================================
// Code 85: Pointer to Pointer - Change pointer address
/**
#include <stdio.h>
int main() {
    int a = 1, b = 2;
    int *p = &a;
    int **pp = &p;
    *pp = &b; // Now p points to b
    printf("%d\n", *p); // Prints 2
    return 0;
}
*/
//===========================================
// Code 86: Pointer to Pointer - Array of pointers to int
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    int *arr[2] = {&a, &b};
    int **pp = arr;
    printf("%d %d\n", **pp, *(*(pp+1))); // Prints 10 20
    return 0;
}
*/
//===========================================
// Code 87: Pointer to Pointer - Array of pointers to char
/**
#include <stdio.h>
int main() {
    char *arr[] = {"A", "B"};
    char **pp = arr;
    printf("%s %s\n", *pp, *(pp+1)); // Prints A B
    return 0;
}
*/
//===========================================
// Code 88: Pointer to Pointer - Pass array of pointers to function
/**
#include <stdio.h>
void printPtrs(int **pp, int n) {
    for(int i=0; i<n; i++)
        printf("%d ", **(pp+i));
}
int main() {
    int a=1, b=2;
    int *arr[2] = {&a, &b};
    printPtrs(arr, 2); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 89: Pointer to Pointer - Pointer to pointer to array
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    int **pp = &p;
    printf("%d\n", **pp); // Prints 1
    return 0;
}
*/
//===========================================
// Code 90: Pointer to Pointer - Pointer to pointer to char array
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    char **pp = &p;
    printf("%s\n", *pp); // Prints Hi
    return 0;
}
*/
//===========================================
// Code 91: Pointer to Pointer - Change string via double pointer
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    char **pp = &p;
    **pp = 'B';
    printf("%s\n", str); // Prints Bi
    return 0;
}
*/
//===========================================
// Code 92: Pointer to Pointer - Double pointer to structure
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {5,6};
    struct Point *p = &pt;
    struct Point **pp = &p;
    (*pp)->y = 77;
    printf("%d\n", pt.y); // Prints 77
    return 0;
}
*/
//===========================================
// Code 93: Pointer to Pointer - Double pointer to array of pointers
/**
#include <stdio.h>
int main() {
    int a=1, b=2;
    int *arr[2] = {&a, &b};
    int **pp = arr;
    printf("%d %d\n", **pp, *(*(pp+1))); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 94: Pointer to Pointer - Double pointer to array of strings
/**
#include <stdio.h>
int main() {
    char *arr[] = {"X", "Y"};
    char **pp = arr;
    printf("%s %s\n", *pp, *(pp+1)); // Prints X Y
    return 0;
}
*/
//===========================================
// Code 95: Pointer to Pointer - Double pointer to array of structures
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point a = {1,2}, b = {3,4};
    struct Point *arr[2] = {&a, &b};
    struct Point **pp = arr;
    printf("%d %d\n", (*pp)->x, (*(pp+1))->y); // Prints 1 4
    return 0;
}
*/
//===========================================
// Code 96: Pointer to Pointer - Double pointer to array of arrays
/**
#include <stdio.h>
int main() {
    int a[2] = {1,2}, b[2] = {3,4};
    int *arr[2] = {a, b};
    int **pp = arr;
    printf("%d %d\n", pp[0][1], pp[1][0]); // Prints 2 3
    return 0;
}
*/
//===========================================
// Code 97: Pointer to Pointer - Double pointer to array of char arrays
/**
#include <stdio.h>
int main() {
    char a[] = "ab", b[] = "cd";
    char *arr[2] = {a, b};
    char **pp = arr;
    printf("%s %s\n", pp[0], pp[1]); // Prints ab cd
    return 0;
}
*/
//===========================================
// Code 98: Pointer to Pointer - Double pointer to array of int arrays
/**
#include <stdio.h>
int main() {
    int a[2] = {1,2}, b[2] = {3,4};
    int *arr[2] = {a, b};
    int **pp = arr;
    printf("%d %d\n", pp[0][0], pp[1][1]); // Prints 1 4
    return 0;
}
*/
//===========================================
// Code 99: Pointer to Pointer - Double pointer to array of float arrays
/**
#include <stdio.h>
int main() {
    float a[2] = {1.1,2.2}, b[2] = {3.3,4.4};
    float *arr[2] = {a, b};
    float **pp = arr;
    printf("%.1f %.1f\n", pp[0][1], pp[1][0]); // Prints 2.2 3.3
    return 0;
}
*/
//===========================================
// Code 100: Pointer to Pointer - Double pointer to array of pointers to structures
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point a = {1,2}, b = {3,4};
    struct Point *arr[2] = {&a, &b};
    struct Point **pp = arr;
    printf("%d %d\n", (*pp)->x, (*(pp+1))->y); // Prints 1 4
    return 0;
}
*/