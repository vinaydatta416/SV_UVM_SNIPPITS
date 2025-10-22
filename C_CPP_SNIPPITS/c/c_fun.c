
//=======================================================================

// Code 1: Function Declaration & Definition
/**
#include <stdio.h>
void greet() {
    printf("\n Hello! \t World ");
}
int main() {
    greet();
    return 0;
}   */


//===========================================
// Code 2: Function with Return Value
/**
#include <stdio.h>
int add(int a, int b) {
    return a+b;
}
int main() {
    printf("%d\n", add(2,3));
    return 0;
}   */

//===========================================
// Code 3: Function with Parameters, No Return
/**
#include <stdio.h>
void printfsum(int a, int b) {
    printf("%d\n", a+b);
}
int main() {
    printfsum(4, 5);
    return 0;
}  *///////////

//===========================================
// Code 4: Function with No Parameters, No Return
/**
#include <stdio.h>
void hello() {
    printf("Hello, World! \n");
}
int main() {
    hello();
    return 0;
}   */
//===========================================
// Code 5: Call by Value
/**
#include <stdio.h>
void change(int x) {
    x = 100;
}
int main() {
    int a = 10;
    change(a);
    printf("%d\n", a); // Output: 10
    return 0;
}   */
//===========================================
// Code 6: Call by Reference
/**
#include <stdio.h>
void change (int *x) {
    *x = 100;
}
int main() {
    int a=10;
    change(&a);
    printf("%d\n", a);
    return 0;
}   */
//===========================================
// Code 7: Function with Return, No Parameters
/**
#include <stdio.h>
int getNumber() {
    return 42;
}
int main() {
    printf("%d\n", getNumber());
    return 0;
}
//===============================
#include <stdio.h>
int getnumber() {
    return 0;
}
int main() {
    printf("%d\n", getnumber());
    return 0;
}
*/
//===========================================
// Code 8: Function with Parameters, Return
/**
#include <stdio.h>
int multiply(int a, int b) {
    return a * b;
}
int main() {
    printf("%d\n", multiply(3, 4));
    return 0;
}
*/
//===========================================
// Code 9: main() Function Example
/**
#include <stdio.h>
int main() {
    printf("This is main function\n");
    return 0;
}
*/
//===========================================
// Code 10: Nested Functions (GCC only)
/**
// Only works in GCC
#include <stdio.h>
int main() {
    void inner() {
        printf("Nested function\n");
    }
    inner();
    return 0;
}
*/
//===========================================
// Code 11: Variadic Function (sum)
/**
#include <stdio.h>
#include <stdarg.h>
int sum(int count, ...) {
    va_list args;
    va_start(args, count);
    int total = 0;
    for (int i = 0; i < count; i++)
        total += va_arg(args, int);
    va_end(args);
    return total;
}
int main() {
    printf("%d\n", sum(3, 1, 2, 3));
    return 0;
}
*/
//===========================================
// Code 12: User-defined Function (factorial)
/**
#include <stdio.h>
int factorial(int n) {
    int f = 1;
    for (int i = 1; i <= n; i++)
        f *= i;
    return f;
}
int main() {
    printf("%d\n", factorial(5));
    return 0;
}
*/
//===========================================
// Code 13: Callback Function
/**
#include <stdio.h>
void call(void (*fptr)()) {
    fptr();
}
void hello() {
    printf("Hello from callback!\n");
}
int main() {
    call(hello);
    return 0;
}
*/
//===========================================
// Code 14: Recursion (factorial)
/**
#include <stdio.h>
int fact(int n) {
    if (n == 0) return 1;
    return n * fact(n-1);
}
int main() {
    printf("%d\n", fact(5));
    return 0;
}
*/
//===========================================
// Code 15: Recursion (Fibonacci)
/**
#include <stdio.h>
int fib(int n) {
    if (n <= 1) return n;
    return fib(n-1) + fib(n-2);
}
int main() {
    printf("%d\n", fib(6));
    return 0;
}
*/
//===========================================
// Code 16: Function Returning Pointer
/**
#include <stdio.h>
int* getPtr(int *x) {
    return x;
}
int main() {
    int a = 10;
    int *p = getPtr(&a);
    printf("%d\n", *p);
    return 0;
}
*/
//===========================================
// Code 17: Function Returning Array (static)
/**
#include <stdio.h>
int* getArr() {
    static int arr[3] = {1,2,3};
    return arr;
}
int main() {
    int *a = getArr();
    for (int i = 0; i < 3; i++)
        printf("%d ", a[i]);
    return 0;
}
*/
//===========================================
// Code 18: Function with Array Parameter
/**
#include <stdio.h>
void printArr(int arr[], int n) {
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(arr, 3);
    return 0;
}
*/
//===========================================
// Code 19: Function Pointer as Parameter
/**
#include <stdio.h>
void greet() {
    printf("Hi!\n");
}
void run(void (*f)()) {
    f();
}
int main() {
    run(greet);
    return 0;
}
*/
//===========================================
// Code 20: Function Pointer Returning Value
/**
#include <stdio.h>
int add(int a, int b) {
    return a + b;
}
int main() {
    int (*fptr)(int, int) = add;
    printf("%d\n", fptr(2,3));
    return 0;
}
*/
//===========================================
// Code 21: Inline Function (GCC extension)
/**
// GCC only
#include <stdio.h>
inline int square(int x) { return x*x; }
int main() {
    printf("%d\n", square(4));
    return 0;
}
*/
//===========================================
// Code 22: Function Overloading (Not in C, but with macros)
/**
#include <stdio.h>
#define add(a, b) ((a)+(b))
int main() {
    printf("%d\n", add(2,3));
    printf("%.2f\n", add(2.5,3.5));
    return 0;
}
*/
//===========================================
// Code 23: Function with Struct Parameter
/**
#include <stdio.h>
struct Point { int x, y; };
void printPoint(struct Point p) {
    printf("(%d, %d)\n", p.x, p.y);
}
int main() {
    struct Point pt = {3,4};
    printPoint(pt);
    return 0;
}
*/
//===========================================
// Code 24: Function Returning Struct
/**
#include <stdio.h>
struct Point { int x, y; };
struct Point makePoint(int x, int y) {
    struct Point p = {x, y};
    return p;
}
int main() {
    struct Point pt = makePoint(5,6);
    printf("(%d, %d)\n", pt.x, pt.y);
    return 0;
}
*/
//===========================================
// Code 25: Function with Union Parameter
/**
#include <stdio.h>
union Data { int i; float f; };
void printData(union Data d) {
    printf("%d %.2f\n", d.i, d.f);
}
int main() {
    union Data d;
    d.i = 10;
    d.f = 3.14;
    printData(d);
    return 0;
}
*/
//===========================================
// Code 26: Function with Enum Parameter
/**
#include <stdio.h>
enum Color { RED, GREEN, BLUE };
void printColor(enum Color c) {
    if (c == RED) printf("Red\n");
    else if (c == GREEN) printf("Green\n");
    else printf("Blue\n");
}
int main() {
    printColor(GREEN);
    return 0;
}
*/
//===========================================
// Code 27: Function with Typedef Parameter
/**
#include <stdio.h>
typedef int myint;
void printNum(myint n) {
    printf("%d\n", n);
}
int main() {
    printNum(10);
    return 0;
}
*/
//===========================================
// Code 28: Function with Default Arguments (Not in C, but simulated)
/**
#include <stdio.h>
void show(int x, int y) {
    printf("%d %d\n", x, y);
}
int main() {
    show(1, 2);
    // No default arguments in C
    return 0;
}
*/
//===========================================
// Code 29: Function with Variable Length Array Parameter
/**
#include <stdio.h>
void printVLA(int n, int arr[n]) {
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
}
int main() {
    int arr[4] = {1,2,3,4};
    printVLA(4, arr);
    return 0;
}
*/
//===========================================
// Code 30: Function with const Parameter
/**
#include <stdio.h>
void printConst(const int x) {
    printf("%d\n", x);
}
int main() {
    printConst(10);
    return 0;
}
*/
//===========================================
// Code 31: Function with Static Variable
/**
#include <stdio.h>
void counter() {
    static int c = 0;
    c++;
    printf("%d ", c);
}
int main() {
    counter();
    counter();
    counter();
    return 0;
}
*/
//===========================================
// Code 32: Function with Volatile Parameter
/**
#include <stdio.h>
void printVolatile(volatile int x) {
    printf("%d\n", x);
}
int main() {
    volatile int a = 5;
    printVolatile(a);
    return 0;
}
*/
//===========================================
// Code 33: Function with Register Variable
/**
#include <stdio.h>
void printReg(register int x) {
    printf("%d\n", x);
}
int main() {
    printReg(7);
    return 0;
}
*/
//===========================================
// Code 34: Function with extern Variable
/**
#include <stdio.h>
int x = 10;
void printExtern() {
    extern int x;
    printf("%d\n", x);
}
int main() {
    printExtern();
    return 0;
}
*/
//===========================================
// Code 35: Function with Global Variable
/**
#include <stdio.h>
int g = 20;
void show() {
    printf("%d\n", g);
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 36: Function with Local Variable
/**
#include <stdio.h>
void show() {
    int x = 5;
    printf("%d\n", x);
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 37: Function with Block Scope
/**
#include <stdio.h>
void show() {
    {
        int x = 10;
        printf("%d\n", x);
    }
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 38: Function with Multiple Returns
/**
#include <stdio.h>
int check(int x) {
    if (x > 0) return 1;
    else if (x < 0) return -1;
    return 0;
}
int main() {
    printf("%d\n", check(-5));
    return 0;
}
*/
//===========================================
// Code 39: Function with Early Return
/**
#include <stdio.h>
void test(int x) {
    if (x < 0) return;
    printf("x is non-negative\n");
}
int main() {
    test(-1);
    test(2);
    return 0;
}
*/
//===========================================
// Code 40: Function with Multiple Parameters
/**
#include <stdio.h>
void printAll(int a, float b, char c) {
    printf("%d %.2f %c\n", a, b, c);
}
int main() {
    printAll(5, 3.14, 'A');
    return 0;
}
*/
//===========================================
// Code 41: Function with Array of Pointers
/**
#include <stdio.h>
void printPtrs(int *arr[], int n) {
    for (int i = 0; i < n; i++)
        printf("%d ", *arr[i]);
}
int main() {
    int a = 1, b = 2, c = 3;
    int *arr[3] = {&a, &b, &c};
    printPtrs(arr, 3);
    return 0;
}
*/
//===========================================
// Code 42: Function with Pointer to Array
/**
#include <stdio.h>
void printArr(int (*arr)[3]) {
    for (int i = 0; i < 3; i++)
        printf("%d ", (*arr)[i]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(&arr);
    return 0;
}
*/
//===========================================
// Code 43: Function with Pointer to Function
/**
#include <stdio.h>
void hello() {
    printf("Hello!\n");
}
void call(void (*f)()) {
    f();
}
int main() {
    call(hello);
    return 0;
}
*/
//===========================================
// Code 44: Function with Function Pointer Array
/**
#include <stdio.h>
void f1() { printf("A "); }
void f2() { printf("B "); }
int main() {
    void (*arr[2])() = {f1, f2};
    for (int i = 0; i < 2; i++)
        arr[i]();
    return 0;
}
*/
//===========================================
// Code 45: Function with Recursion (sum of digits)
/**
#include <stdio.h>
int sumDigits(int n) {
    if (n == 0) return 0;
    return n % 10 + sumDigits(n/10);
}
int main() {
    printf("%d\n", sumDigits(1234));
    return 0;
}
*/
//===========================================
// Code 46: Function with Recursion (reverse number)
/**
#include <stdio.h>
int reverse(int n, int rev) {
    if (n == 0) return rev;
    return reverse(n/10, rev*10 + n%10);
}
int main() {
    printf("%d\n", reverse(123, 0));
    return 0;
}
*/
//===========================================
// Code 47: Function with Recursion (GCD)
/**
#include <stdio.h>
int gcd(int a, int b) {
    if (b == 0) return a;
    return gcd(b, a % b);
}
int main() {
    printf("%d\n", gcd(24, 18));
    return 0;
}
*/
//===========================================
// Code 48: Function with Recursion (Power)
/**
#include <stdio.h>
int power(int x, int y) {
    if (y == 0) return 1;
    return x * power(x, y-1);
}
int main() {
    printf("%d\n", power(2, 5));
    return 0;
}
*/
//===========================================
// Code 49: Function with Recursion (Sum N numbers)
/**
#include <stdio.h>
int sumN(int n) {
    if (n == 0) return 0;
    return n + sumN(n-1);
}
int main() {
    printf("%d\n", sumN(10));
    return 0;
}
*/
//===========================================
// Code 50: Function with Recursion (Print N to 1)
/**
#include <stdio.h>
void printNto1(int n) {
    if (n == 0) return;
    printf("%d ", n);
    printNto1(n-1);
}
int main() {
    printNto1(5);
    return 0;
}
*/
//===========================================
// Code 51: Function with Recursion (Print 1 to N)
/**
#include <stdio.h>
void print1toN(int n) {
    if (n == 0) return;
    print1toN(n-1);
    printf("%d ", n);
}
int main() {
    print1toN(5);
    return 0;
}
*/
//===========================================
// Code 52: Function with Recursion (Sum Array)
/**
#include <stdio.h>
int sumArr(int arr[], int n) {
    if (n == 0) return 0;
    return arr[n-1] + sumArr(arr, n-1);
}
int main() {
    int arr[3] = {1,2,3};
    printf("%d\n", sumArr(arr, 3));
    return 0;
}
*/
//===========================================
// Code 53: Function with Recursion (Palindrome)
/**
#include <stdio.h>
int isPalindrome(char *str, int l, int r) {
    if (l >= r) return 1;
    if (str[l] != str[r]) return 0;
    return isPalindrome(str, l+1, r-1);
}
int main() {
    char s[] = "madam";
    printf("%d\n", isPalindrome(s, 0, 4));
    return 0;
}
*/
//===========================================
// Code 54: Function with Recursion (Binary Search)
/**
#include <stdio.h>
int binarySearch(int arr[], int l, int r, int x) {
    if (l > r) return -1;
    int m = (l + r) / 2;
    if (arr[m] == x) return m;
    if (arr[m] > x) return binarySearch(arr, l, m-1, x);
    return binarySearch(arr, m+1, r, x);
}
int main() {
    int arr[5] = {1,2,3,4,5};
    printf("%d\n", binarySearch(arr, 0, 4, 3));
    return 0;
}
*/
//===========================================
// Code 55: Function with Recursion (Tower of Hanoi)
/**
#include <stdio.h>
void hanoi(int n, char from, char to, char aux) {
    if (n == 1) {
        printf("Move disk 1 from %c to %c\n", from, to);
        return;
    }
    hanoi(n-1, from, aux, to);
    printf("Move disk %d from %c to %c\n", n, from, to);
    hanoi(n-1, aux, to, from);
}
int main() {
    hanoi(3, 'A', 'C', 'B');
    return 0;
}
*/
//===========================================
// Code 56: Function with Recursion (Sum of Digits)
/**
#include <stdio.h>
int sumDigits(int n) {
    if (n == 0) return 0;
    return n % 10 + sumDigits(n/10);
}
int main() {
    printf("%d\n", sumDigits(12345));
    return 0;
}
*/
//===========================================
// Code 57: Function with Recursion (Print Even Numbers)
/**
#include <stdio.h>
void printEven(int n) {
    if (n == 0) return;
    printEven(n-1);
    if (n % 2 == 0) printf("%d ", n);
}
int main() {
    printEven(10);
    return 0;
}
*/
//===========================================
// Code 58: Function with Recursion (Print Odd Numbers)
/**
#include <stdio.h>
void printOdd(int n) {
    if (n == 0) return;
    printOdd(n-1);
    if (n % 2 != 0) printf("%d ", n);
}
int main() {
    printOdd(10);
    return 0;
}
*/
//===========================================
// Code 59: Function with Recursion (Sum of Even Numbers)
/**
#include <stdio.h>
int sumEven(int n) {
    if (n == 0) return 0;
    if (n % 2 == 0) return n + sumEven(n-1);
    return sumEven(n-1);
}
int main() {
    printf("%d\n", sumEven(10));
    return 0;
}
*/
//===========================================
// Code 60: Function with Recursion (Sum of Odd Numbers)
/**
#include <stdio.h>
int sumOdd(int n) {
    if (n == 0) return 0;
    if (n % 2 != 0) return n + sumOdd(n-1);
    return sumOdd(n-1);
}
int main() {
    printf("%d\n", sumOdd(10));
    return 0;
}
*/
//===========================================
// Code 61: Function with Recursion (Find Max in Array)
/**
#include <stdio.h>
int findMax(int arr[], int n) {
    if (n == 1) return arr[0];
    int max = findMax(arr, n-1);
    return arr[n-1] > max ? arr[n-1] : max;
}
int main() {
    int arr[5] = {1, 5, 3, 9, 2};
    printf("%d\n", findMax(arr, 5));
    return 0;
}
*/
//===========================================
// Code 62: Function with Recursion (Find Min in Array)
/**
#include <stdio.h>
int findMin(int arr[], int n) {
    if (n == 1) return arr[0];
    int min = findMin(arr, n-1);
    return arr[n-1] < min ? arr[n-1] : min;
}
int main() {
    int arr[5] = {1, 5, 3, 9, 2};
    printf("%d\n", findMin(arr, 5));
    return 0;
}
*/
//===========================================
// Code 63: Function with Recursion (Count Digits)
/**
#include <stdio.h>
int countDigits(int n) {
    if (n == 0) return 0;
    return 1 + countDigits(n/10);
}
int main() {
    printf("%d\n", countDigits(12345));
    return 0;
}
*/
//===========================================
// Code 64: Function with Recursion (Sum of Series)
/**
#include <stdio.h>
int sumSeries(int n) {
    if (n == 0) return 0;
    return n*n + sumSeries(n-1);
}
int main() {
    printf("%d\n", sumSeries(3));
    return 0;
}
*/
//===========================================
// Code 65: Function with Recursion (Print Array)
/**
#include <stdio.h>
void printArr(int arr[], int n) {
    if (n == 0) return;
    printArr(arr, n-1);
    printf("%d ", arr[n-1]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(arr, 3);
    return 0;
}
*/
//===========================================
// Code 66: Function with Recursion (Reverse String)
/**
#include <stdio.h>
void reverse(char *str, int l, int r) {
    if (l >= r) return;
    char t = str[l];
    str[l] = str[r];
    str[r] = t;
    reverse(str, l+1, r-1);
}
int main() {
    char s[] = "hello";
    reverse(s, 0, 4);
    printf("%s\n", s);
    return 0;
}
*/
//===========================================
// Code 67: Function with Recursion (Sum of Natural Numbers)
/**
#include <stdio.h>
int sumN(int n) {
    if (n == 0) return 0;
    return n + sumN(n-1);
}
int main() {
    printf("%d\n", sumN(100));
    return 0;
}
*/
//===========================================
// Code 68: Function with Recursion (Print Reverse Array)
/**
#include <stdio.h>
void printReverse(int arr[], int n) {
    if (n == 0) return;
    printf("%d ", arr[n-1]);
    printReverse(arr, n-1);
}
int main() {
    int arr[3] = {1,2,3};
    printReverse(arr, 3);
    return 0;
}
*/
//===========================================
// Code 69: Function with Recursion (Sum of Digits Even)
/**
#include <stdio.h>
int sumEvenDigits(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 2 == 0) return d + sumEvenDigits(n/10);
    return sumEvenDigits(n/10);
}
int main() {
    printf("%d\n", sumEvenDigits(123456));
    return 0;
}
*/
//===========================================
// Code 70: Function with Recursion (Sum of Digits Odd)
/**
#include <stdio.h>
int sumOddDigits(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 2 != 0) return d + sumOddDigits(n/10);
    return sumOddDigits(n/10);
}
int main() {
    printf("%d\n", sumOddDigits(123456));
    return 0;
}
*/
//===========================================
// Code 71: Function with Recursion (Print String)
/**
#include <stdio.h>
void printStr(char *str, int i) {
    if (str[i] == '\0') return;
    printf("%c ", str[i]);
    printStr(str, i+1);
}
int main() {
    char s[] = "abc";
    printStr(s, 0);
    return 0;
}
*/
//===========================================
// Code 72: Function with Recursion (Print String Reverse)
/**
#include <stdio.h>
void printStrRev(char *str, int i) {
    if (str[i] == '\0') return;
    printStrRev(str, i+1);
    printf("%c ", str[i]);
}
int main() {
    char s[] = "abc";
    printStrRev(s, 0);
    return 0;
}
*/
//===========================================
// Code 73: Function with Recursion (Sum of Array Even)
/**
#include <stdio.h>
int sumEvenArr(int arr[], int n) {
    if (n == 0) return 0;
    if (arr[n-1] % 2 == 0) return arr[n-1] + sumEvenArr(arr, n-1);
    return sumEvenArr(arr, n-1);
}
int main() {
    int arr[4] = {1,2,3,4};
    printf("%d\n", sumEvenArr(arr, 4));
    return 0;
}
*/
//===========================================
// Code 74: Function with Recursion (Sum of Array Odd)
/**
#include <stdio.h>
int sumOddArr(int arr[], int n) {
    if (n == 0) return 0;
    if (arr[n-1] % 2 != 0) return arr[n-1] + sumOddArr(arr, n-1);
    return sumOddArr(arr, n-1);
}
int main() {
    int arr[4] = {1,2,3,4};
    printf("%d\n", sumOddArr(arr, 4));
    return 0;
}
*/
//===========================================
// Code 75: Function with Recursion (Find Element in Array)
/**
#include <stdio.h>
int find(int arr[], int n, int x) {
    if (n == 0) return 0;
    if (arr[n-1] == x) return 1;
    return find(arr, n-1, x);
}
int main() {
    int arr[4] = {1,2,3,4};
    printf("%d\n", find(arr, 4, 3));
    return 0;
}
*/
//===========================================
// Code 76: Function with Recursion (Count Occurrences)
/**
#include <stdio.h>
int count(int arr[], int n, int x) {
    if (n == 0) return 0;
    return (arr[n-1] == x) + count(arr, n-1, x);
}
int main() {
    int arr[5] = {1,2,3,2,2};
    printf("%d\n", count(arr, 5, 2));
    return 0;
}
*/
//===========================================
// Code 77: Function with Recursion (Sum of Digits Product)
/**
#include <stdio.h>
int prodDigits(int n) {
    if (n == 0) return 1;
    return (n % 10) * prodDigits(n/10);
}
int main() {
    printf("%d\n", prodDigits(123));
    return 0;
}
*/
//===========================================
// Code 78: Function with Recursion (Print All Subsets)
/**
#include <stdio.h>
void printSubsets(char *set, char *subset, int i, int j) {
    if (set[i] == '\0') {
        subset[j] = '\0';
        printf("%s\n", subset);
        return;
    }
    subset[j] = set[i];
    printSubsets(set, subset, i+1, j+1);
    printSubsets(set, subset, i+1, j);
}
int main() {
    char set[] = "ab", subset[3];
    printSubsets(set, subset, 0, 0);
    return 0;
}
*/
//===========================================
// Code 79: Function with Recursion (Sum of Series 1+2+...+n)
/**
#include <stdio.h>
int sumSeries(int n) {
    if (n == 1) return 1;
    return n + sumSeries(n-1);
}
int main() {
    printf("%d\n", sumSeries(10));
    return 0;
}
*/
//===========================================
// Code 80: Function with Recursion (Print Binary)
/**
#include <stdio.h>
void printBinary(int n) {
    if (n == 0) return;
    printBinary(n/2);
    printf("%d", n%2);
}
int main() {
    printBinary(10);
    return 0;
}
*/
//===========================================
// Code 81: Function with Recursion (Sum of Digits to Single Digit)
/**
#include <stdio.h>
int digitalRoot(int n) {
    if (n < 10) return n;
    int sum = 0;
    while (n) {
        sum += n % 10;
        n /= 10;
    }
    return digitalRoot(sum);
}
int main() {
    printf("%d\n", digitalRoot(9875));
    return 0;
}
*/
//===========================================
// Code 82: Function with Recursion (Print Permutations)
/**
#include <stdio.h>
void swap(char *x, char *y) {
    char t = *x; *x = *y; *y = t;
}
void permute(char *str, int l, int r) {
    if (l == r) {
        printf("%s\n", str);
        return;
    }
    for (int i = l; i <= r; i++) {
        swap(&str[l], &str[i]);
        permute(str, l+1, r);
        swap(&str[l], &str[i]);
    }
}
int main() {
    char s[] = "abc";
    permute(s, 0, 2);
    return 0;
}
*/
//===========================================
// Code 83: Function with Recursion (Sum of Squares)
/**
#include <stdio.h>
int sumSquares(int n) {
    if (n == 0) return 0;
    return n*n + sumSquares(n-1);
}
int main() {
    printf("%d\n", sumSquares(3));
    return 0;
}
*/
//===========================================
// Code 84: Function with Recursion (Sum of Cubes)
/**
#include <stdio.h>
int sumCubes(int n) {
    if (n == 0) return 0;
    return n*n*n + sumCubes(n-1);
}
int main() {
    printf("%d\n", sumCubes(3));
    return 0;
}
*/
//===========================================
// Code 85: Function with Recursion (Print All Paths in Maze)
/**
#include <stdio.h>
#define N 2
void printMaze(int maze[N][N], int x, int y, char *path, int idx) {
    if (x == N-1 && y == N-1) {
        path[idx] = '\0';
        printf("%s\n", path);
        return;
    }
    if (x+1 < N && maze[x+1][y]) {
        path[idx] = 'D';
        printMaze(maze, x+1, y, path, idx+1);
    }
    if (y+1 < N && maze[x][y+1]) {
        path[idx] = 'R';
        printMaze(maze, x, y+1, path, idx+1);
    }
}
int main() {
    int maze[N][N] = {{1,1},{1,1}};
    char path[10];
    printMaze(maze, 0, 0, path, 0);
    return 0;
}
*/
//===========================================
// Code 86: Function with Recursion (Sum of Digits Even Position)
/**
#include <stdio.h>
int sumEvenPos(int n, int pos) {
    if (n == 0) return 0;
    int d = n % 10;
    if (pos % 2 == 0) return d + sumEvenPos(n/10, pos+1);
    return sumEvenPos(n/10, pos+1);
}
int main() {
    printf("%d\n", sumEvenPos(123456, 1));
    return 0;
}
*/
//===========================================
// Code 87: Function with Recursion (Sum of Digits Odd Position)
/**
#include <stdio.h>
int sumOddPos(int n, int pos) {
    if (n == 0) return 0;
    int d = n % 10;
    if (pos % 2 != 0) return d + sumOddPos(n/10, pos+1);
    return sumOddPos(n/10, pos+1);
}
int main() {
    printf("%d\n", sumOddPos(123456, 1));
    return 0;
}
*/
//===========================================
// Code 88: Function with Recursion (Print All Combinations)
/**
#include <stdio.h>
void combine(char *set, char *out, int i, int j) {
    if (set[i] == '\0') {
        out[j] = '\0';
        printf("%s\n", out);
        return;
    }
    out[j] = set[i];
    combine(set, out, i+1, j+1);
    combine(set, out, i+1, j);
}
int main() {
    char set[] = "ab", out[3];
    combine(set, out, 0, 0);
    return 0;
}
*/
//===========================================
// Code 89: Function with Recursion (Print All Substrings)
/**
#include <stdio.h>
void substr(char *str, int start, int end) {
    if (str[end] == '\0') return;
    for (int i = start; i <= end; i++)
        printf("%c", str[i]);
    printf("\n");
    substr(str, start, end+1);
}
int main() {
    char s[] = "abc";
    for (int i = 0; s[i] != '\0'; i++)
        substr(s, i, i);
    return 0;
}
*/
//===========================================
// Code 90: Function with Recursion (Sum of Digits to Even/Odd)
/**
#include <stdio.h>
int sumEvenOdd(int n, int even) {
    if (n == 0) return 0;
    int d = n % 10;
    if ((d % 2 == 0) == even) return d + sumEvenOdd(n/10, even);
    return sumEvenOdd(n/10, even);
}
int main() {
    printf("%d\n", sumEvenOdd(123456, 1)); // even
    printf("%d\n", sumEvenOdd(123456, 0)); // odd
    return 0;
}
*/
//===========================================
// Code 91: Function with Recursion (Sum of Digits Divisible by 3)
/**
#include <stdio.h>
int sumDiv3(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 3 == 0) return d + sumDiv3(n/10);
    return sumDiv3(n/10);
}
int main() {
    printf("%d\n", sumDiv3(123456));
    return 0;
}
*/
//===========================================
// Code 92: Function with Recursion (Sum of Digits Not Divisible by 3)
/**
#include <stdio.h>
int sumNotDiv3(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 3 != 0) return d + sumNotDiv3(n/10);
    return sumNotDiv3(n/10);
}
int main() {
    printf("%d\n", sumNotDiv3(123456));
    return 0;
}
*/
//===========================================
// Code 93: Function with Recursion (Print All Palindromic Substrings)
/**
#include <stdio.h>
int isPal(char *str, int l, int r) {
    if (l >= r) return 1;
    if (str[l] != str[r]) return 0;
    return isPal(str, l+1, r-1);
}
void palSubs(char *str, int n) {
    for (int i = 0; i < n; i++)
        for (int j = i; j < n; j++)
            if (isPal(str, i, j)) {
                for (int k = i; k <= j; k++)
                    printf("%c", str[k]);
                printf("\n");
            }
}
int main() {
    char s[] = "aba";
    palSubs(s, 3);
    return 0;
}
*/
//===========================================
// Code 94: Function with Recursion (Sum of Digits to Nth Power)
/**
#include <stdio.h>
int sumPow(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    return pow + sumPow(n/10, p);
}
int main() {
    printf("%d\n", sumPow(123, 2));
    return 0;
}
*/
//===========================================
// Code 95: Function with Recursion (Print All Permutations of Numbers)
/**
#include <stdio.h>
void swap(int *x, int *y) {
    int t = *x; *x = *y; *y = t;
}
void permute(int *arr, int l, int r) {
    if (l == r) {
        for (int i = 0; i <= r; i++)
            printf("%d ", arr[i]);
        printf("\n");
        return;
    }
    for (int i = l; i <= r; i++) {
        swap(&arr[l], &arr[i]);
        permute(arr, l+1, r);
        swap(&arr[l], &arr[i]);
    }
}
int main() {
    int arr[] = {1,2,3};
    permute(arr, 0, 2);
    return 0;
}
*/
//===========================================
// Code 96: Function with Recursion (Sum of Digits to Nth Power Even)
/**
#include <stdio.h>
int sumPowEven(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 2 == 0) return pow + sumPowEven(n/10, p);
    return sumPowEven(n/10, p);
}
int main() {
    printf("%d\n", sumPowEven(1234, 2));
    return 0;
}
*/
//===========================================
// Code 97: Function with Recursion (Sum of Digits to Nth Power Odd)
/**
#include <stdio.h>
int sumPowOdd(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 2 != 0) return pow + sumPowOdd(n/10, p);
    return sumPowOdd(n/10, p);
}
int main() {
    printf("%d\n", sumPowOdd(1234, 2));
    return 0;
}
*/
//===========================================
// Code 98: Function with Recursion (Sum of Digits to Nth Power Divisible by 3)
/**
#include <stdio.h>
int sumPowDiv3(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 3 == 0) return pow + sumPowDiv3(n/10, p);
    return sumPowDiv3(n/10, p);
}
int main() {
    printf("%d\n", sumPowDiv3(1236, 2));
    return 0;
}
*/
//===========================================
// Code 99: Function with Recursion (Sum of Digits to Nth Power Not Divisible by 3)
/**
#include <stdio.h>
int sumPowNotDiv3(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 3 != 0) return pow + sumPowNotDiv3(n/10, p);
    return sumPowNotDiv3(n/10, p);
}
int main() {
    printf("%d\n", sumPowNotDiv3(1236, 2));
    return 0;
}
*/
//===========================================
// Code 100: Function with Recursion (Sum of Digits to Nth Power Even Position)
/**
#include <stdio.h>
int sumPowEvenPos(int n, int p, int pos) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (pos % 2 == 0) return pow + sumPowEvenPos(n/10, p, pos+1);
    return sumPowEvenPos(n/10, p, pos+1);
}
int main() {
    printf("%d\n", sumPowEvenPos(1234, 2, 1));
    return 0;
}
*/