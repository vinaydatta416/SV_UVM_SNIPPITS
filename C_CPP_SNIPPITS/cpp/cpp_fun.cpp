// Question 1: Function Declaration and Definition
/**
#include <iostream>
void greet() {
    std::cout << "Hello";
}
int main() {
    greet();
    return 0;
}
*/
//===========================================
// Question 2: Function With Parameters
/**
#include <iostream>
void add(int a, int b) {
    std::cout << a + b;
}
int main() {
    add(5, 3);
    return 0;
}
*/
//===========================================
// Question 3: Function With Return
/**
#include <iostream>
int square(int x) {
    return x * x;
}
int main() {
    std::cout << square(4);
    return 0;
}
*/
//===========================================
// Question 4: Call by Value
/**
#include <iostream>
void change(int x) {
    x = 100;
}
int main() {
    int a = 10;
    change(a);
    std::cout << a;
    return 0;
}
*/
//===========================================
// Question 5: Call by Reference
/**
#include <iostream>
void change(int& x) {
    x = 100;
}
int main() {
    int a = 10;
    change(a);
    std::cout << a;
    return 0;
}
*/
//===========================================
// Question 6: Function With No Parameters and No Return
/**
#include <iostream>
void message() {
    std::cout << "Hi!";
}
int main() {
    message();
    return 0;
}
*/
//===========================================
// Question 7: Function With Parameters and No Return
/**
#include <iostream>
void multiply(int x, int y) {
    std::cout << x * y;
}
int main() {
    multiply(3, 4);
    return 0;
}
*/
//===========================================
// Question 8: Function With No Parameters But With Return
/**
#include <iostream>
int getNumber() {
    return 42;
}
int main() {
    std::cout << getNumber();
    return 0;
}
*/
//===========================================
// Question 9: Recursive Function
/**
#include <iostream>
int factorial(int n) {
    if(n == 0) return 1;
    return n * factorial(n - 1);
}
int main() {
    std::cout << factorial(5);
    return 0;
}
*/
//===========================================
// Question 10: Inline Function
/**
#include <iostream>
inline int cube(int x) {
    return x * x * x;
}
int main() {
    std::cout << cube(3);
    return 0;
}
*/
//===========================================
// Question 11: Function Overloading (int)
 /**
#include <iostream>
void display(int a) {
    std::cout << a;
}
int main() {
    display(5);
    return 0;
}
*/
//===========================================
// Question 12: Function Overloading (float)
 /**
#include <iostream>
void display(float a) {
    std::cout << a;
}
int main() {
    display(5.5f);
    return 0;
}
*/
//===========================================
// Question 13: Default Arguments
/**
#include <iostream>
void greet(std::string name = "User") {
    std::cout << "Hello, " << name;
}
int main() {
    greet();
    return 0;
}
*/
//===========================================
// Question 14: Default Argument Provided
/**
#include <iostream>
void greet(std::string name = "User") {
    std::cout << "Hello, " << name;
}
int main() {
    greet("Alice");
    return 0;
}
*/
//===========================================
// Question 15: Function Pointer
/**
#include <iostream>
void hello() {
    std::cout << "Hello";
}
int main() {
    void (*funcPtr)() = hello;
    funcPtr();
    return 0;
}
*/
//===========================================
// Question 16: Function Pointer with Parameters
/**
#include <iostream>
void add(int a, int b) {
    std::cout << a + b;
}
int main() {
    void (*ptr)(int, int) = add;
    ptr(2, 3);
    return 0;
}
*/
//===========================================
// Question 17: Lambda Function No Capture
/**
#include <iostream>
int main() {
    auto sum = [](int a, int b) { return a + b; };
    std::cout << sum(3, 4);
    return 0;
}
*/
//===========================================
// Question 18: Lambda Function With Capture
/**
#include <iostream>
int main() {
    int x = 5;
    auto printX = [x]() { std::cout << x; };
    printX();
    return 0;
}
*/
//===========================================
// Question 19: Return by Reference
/**
#include <iostream>
int& getRef(int& a) {
    return a;
}
int main() {
    int x = 10;
    getRef(x) = 20;
    std::cout << x;
    return 0;
}
*/
//===========================================
// Question 20: Const Parameter
/**
#include <iostream>
void show(const int x) {
    std::cout << x;
}
int main() {
    show(5);
    return 0;
}
*/
//===========================================
// Question 21: Multiple Returns Using if
/**
#include <iostream>
int max(int a, int b) {
    if (a > b) return a;
    return b;
}
int main() {
    std::cout << max(4, 7);
    return 0;
}
*/
//===========================================
// Question 22: Overloading Different Parameters
/**
#include <iostream>
void show(int a) {
    std::cout << "Int";
}
void show(double b) {
    std::cout << "Double";
}
int main() {
    show(5.5);
    return 0;
}
*/
//===========================================
// Question 23: Lambda Capture By Reference
/**
#include <iostream>
int main() {
    int x = 10;
    auto increase = [&x]() { x++; };
    increase();
    std::cout << x;
    return 0;
}
*/
//===========================================
// Question 24: Function Returning Void
/**
#include <iostream>
void printHello() {
    std::cout << "Hello";
}
int main() {
    printHello();
    return 0;
}
*/
//===========================================
// Question 25: Recursive Sum
/**
#include <iostream>
int sum(int n) {
    if (n == 0) return 0;
    return n + sum(n - 1);
}
int main() {
    std::cout << sum(5);
    return 0;
}
*/
//===========================================
// Question 26: Recursive Fibonacci
/**
#include <iostream>
int fib(int n) {
    if(n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}
int main() {
    std::cout << fib(6);
    return 0;
}
*/
//===========================================
// Question 27: Function Returning Pointer
/**
#include <iostream>
int* getPointer(int& x) {
    return &x;
}
int main() {
    int a = 10;
    std::cout << *getPointer(a);
    return 0;
}
*/
//===========================================
// Question 28: Default Args with Multiple Params
/**
#include <iostream>
void greet(std::string name, std::string title = "Mr.") {
    std::cout << "Hello " << title << " " << name;
}
int main() {
    greet("Smith");
    return 0;
}
*/
//===========================================
// Question 29: Inline with Default Args
/**
#include <iostream>
inline int power(int x, int y = 2) {
    int res = 1;
    for(int i = 0; i < y; ++i) res *= x;
    return res;
}
int main() {
    std::cout << power(3);
    return 0;
}
*/
//===========================================
// Question 30: Lambda with Auto
/**
#include <iostream>
int main() {
    auto square = [](auto x) { return x * x; };
    std::cout << square(5);
    return 0;
}
*/
//===========================================
// Question 31: Void Pointer Function
/**
#include <iostream>
void print(void* ptr) {
    std::cout << *(int*)ptr;
}
int main() {
    int x = 20;
    print(&x);
    return 0;
}
*/
//===========================================
// Question 32: Template Function
/**
#include <iostream>
template <typename T>
T add(T a, T b) {
    return a + b;
}
int main() {
    std::cout << add<int>(3, 4);
    return 0;
}
*/
//===========================================
// Question 33: Function with Array Param
/**
#include <iostream>
void printArr(int arr[], int size) {
    for(int i = 0; i < size; ++i) std::cout << arr[i];
}
int main() {
    int a[] = {1, 2, 3};
    printArr(a, 3);
    return 0;
}
*/
//===========================================
// Question 34: Function with String Param
/**
#include <iostream>
void greet(std::string name) {
    std::cout << "Hi " << name;
}
int main() {
    greet("Tom");
    return 0;
}
*/
//===========================================
// Question 35: Static Variable in Function
/**
#include <iostream>
void count() {
    static int x = 0;
    x++;
    std::cout << x;
}
int main() {
    count();
    count();
    return 0;
}
*/
//===========================================
// Question 36: Const Return Type
/**
#include <iostream>
const int get() {
    return 100;
}
int main() {
    std::cout << get();
    return 0;
}
*/
//===========================================
// Question 37: Empty Function
/**
#include <iostream>
void doNothing() {}
int main() {
    doNothing();
    return 0;
}
*/
//===========================================
// Question 38: Function Overloading by Params Count
/**
#include <iostream>
void show() {
    std::cout << "No args";
}
void show(int x) {
    std::cout << "One arg";
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Question 39: Function Returning Bool
/**
#include <iostream>
bool isEven(int x) {
    return x % 2 == 0;
}
int main() {
    std::cout << isEven(4);
    return 0;
}
*/
//===========================================
// Question 40: Use Lambda in Function Call
/**
#include <iostream>
void execute(auto func) {
    func();
}
int main() {
    execute([](){ std::cout << "Run"; });
    return 0;
}
*/
//===========================================
// Question 41: Nested Function-like Behavior
/**
#include <iostream>
int main() {
    auto outer = []() {
        auto inner = []() { std::cout << "Inner"; };
        inner();
    };
    outer();
    return 0;
}
*/
//===========================================
// Question 42: Function with Struct Param
/**
#include <iostream>
struct Point { int x, y; };
void print(Point p) {
    std::cout << p.x << "," << p.y;
}
int main() {
    Point pt = {1, 2};
    print(pt);
    return 0;
}
*/
//===========================================
// Question 43: Return Struct from Function
/**
#include <iostream>
struct Point { int x, y; };
Point getPoint() {
    return {3, 4};
}
int main() {
    Point p = getPoint();
    std::cout << p.x;
    return 0;
}
*/
//===========================================
// Question 44: Function That Takes Function Pointer
/**
#include <iostream>
void callFunc(void (*f)()) {
    f();
}
void hello() {
    std::cout << "Hello";
}
int main() {
    callFunc(hello);
    return 0;
}
*/
//===========================================
// Question 45: Lambda Returning Value
/**
#include <iostream>
int main() {
    auto mul = [](int a, int b) { return a * b; };
    std::cout << mul(2, 3);
    return 0;
}
*/
//===========================================
// Question 46: Global Function Call
/**
#include <iostream>
void show() {
    std::cout << "Global";
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Question 47: Multiple Functions in File
/**
#include <iostream>
void first() {
    std::cout << "First ";
}
void second() {
    std::cout << "Second";
}
int main() {
    first();
    second();
    return 0;
}
*/
//===========================================
// Question 48: Function Inside Namespace
/**
#include <iostream>
namespace MySpace {
    void hello() {
        std::cout << "Hi";
    }
}
int main() {
    MySpace::hello();
    return 0;
}
*/
//===========================================
// Question 49: Ternary Return in Function
/**
#include <iostream>
int max(int a, int b) {
    return (a > b) ? a : b;
}
int main() {
    std::cout << max(10, 20);
    return 0;
}
*/
//===========================================
// Question 50: Use Lambda to Modify Variable
/**
#include <iostream>
int main() {
    int x = 5;
    auto modify = [&]() { x += 10; };
    modify();
    std::cout << x;
    return 0;
}
*/














// Question 51: Function with double return
/**
#include <iostream>
double divide(int a, int b) {
    return (double)a / b;
}
int main() {
    std::cout << divide(10, 3);
    return 0;
}
*/
//===========================================
// Question 52: Pass string by reference
/**
#include <iostream>
void update(std::string& s) {
    s += " World";
}
int main() {
    std::string str = "Hello";
    update(str);
    std::cout << str;
    return 0;
}
*/
//===========================================
// Question 53: Lambda that returns string
/**
#include <iostream>
#include <string>
int main() {
    auto greet = []() -> std::string {
        return "Hello";
    };
    std::cout << greet();
    return 0;
}
*/
//===========================================
// Question 54: Overload with different types
/**
#include <iostream>
void print(int x) {
    std::cout << "int";
}
void print(char c) {
    std::cout << "char";
}
int main() {
    print('a');
    return 0;
}
*/
//===========================================
// Question 55: Call lambda in return statement
/**
#include <iostream>
int main() {
    std::cout << [](){ return 5 + 5; }();
    return 0;
}
*/
//===========================================
// Question 56: Capture all by reference
/**
#include <iostream>
int main() {
    int a = 1, b = 2;
    auto add = [&]() { return a + b; };
    std::cout << add();
    return 0;
}
*/
//===========================================
// Question 57: Capture all by value
/**
#include <iostream>
int main() {
    int a = 3, b = 4;
    auto mul = [=]() { return a * b; };
    std::cout << mul();
    return 0;
}
*/
//===========================================
// Question 58: Use std::function for function pointer
/**
#include <iostream>
#include <functional>
void hello() {
    std::cout << "Hello";
}
int main() {
    std::function<void()> f = hello;
    f();
    return 0;
}
*/
//===========================================
// Question 59: Recursive GCD
/**
#include <iostream>
int gcd(int a, int b) {
    if (b == 0) return a;
    return gcd(b, a % b);
}
int main() {
    std::cout << gcd(48, 18);
    return 0;
}
*/
//===========================================
// Question 60: Return array element by reference
/**
#include <iostream>
int& get(int arr[], int index) {
    return arr[index];
}
int main() {
    int a[3] = {1, 2, 3};
    get(a, 1) = 10;
    std::cout << a[1];
    return 0;
}
*/
//===========================================
// Question 61: Default arguments in middle param
/**
#include <iostream>
void print(int a, int b = 2, int c = 3) {
    std::cout << a + b + c;
}
int main() {
    print(1);
    return 0;
}
*/
//===========================================
// Question 62: Function returning auto
/**
#include <iostream>
auto add(int a, int b) {
    return a + b;
}
int main() {
    std::cout << add(4, 5);
    return 0;
}
*/
//===========================================
// Question 63: Pass pointer to function
/**
#include <iostream>
void increment(int* p) {
    (*p)++;
}
int main() {
    int a = 5;
    increment(&a);
    std::cout << a;
    return 0;
}
*/
//===========================================
// Question 64: Const reference parameter
/**
#include <iostream>
void print(const std::string& s) {
    std::cout << s;
}
int main() {
    std::string str = "Text";
    print(str);
    return 0;
}
*/
//===========================================
// Question 65: Return pointer to local static
/**
#include <iostream>
int* getCounter() {
    static int count = 0;
    count++;
    return &count;
}
int main() {
    std::cout << *getCounter();
    return 0;
}
*/
//===========================================
// Question 66: Call function from another function
/**
#include <iostream>
void say() {
    std::cout << "Hi";
}
void callSay() {
    say();
}
int main() {
    callSay();
    return 0;
}
*/
//===========================================
// Question 67: Overload with const
/**
#include <iostream>
void show(int& x) {
    std::cout << "Non-const";
}
void show(const int& x) {
    std::cout << "Const";
}
int main() {
    const int a = 5;
    show(a);
    return 0;
}
*/
//===========================================
// Question 68: Function returns function pointer
/**
#include <iostream>
void greet() {
    std::cout << "Hello";
}
void (*getFunc())() {
    return greet;
}
int main() {
    getFunc()();
    return 0;
}
*/
//===========================================
// Question 69: Lambda with mutable
/**
#include <iostream>
int main() {
    int x = 10;
    auto func = [x]() mutable { x++; std::cout << x; };
    func();
    return 0;
}
*/
//===========================================
// Question 70: Call recursive lambda
/**
#include <iostream>
int main() {
    std::function<int(int)> fact = [&](int n) {
        return (n <= 1) ? 1 : n * fact(n - 1);
    };
    std::cout << fact(5);
    return 0;
}
*/
//===========================================
// Question 71: Inline keyword usage
/**
#include <iostream>
inline int triple(int x) {
    return x * 3;
}
int main() {
    std::cout << triple(3);
    return 0;
}
*/
//===========================================
// Question 72: Function that returns nothing
/**
#include <iostream>
void doWork() {
    std::cout << "Working";
}
int main() {
    doWork();
    return 0;
}
*/
//===========================================
// Question 73: Overload based on return type (Invalid)
/**
// Not allowed in C++
// Return type can't be used alone to overload
*/
//===========================================
// Question 74: Function with bool parameter
/**
#include <iostream>
void flagCheck(bool flag) {
    if (flag) std::cout << "True";
    else std::cout << "False";
}
int main() {
    flagCheck(true);
    return 0;
}
*/
//===========================================
// Question 75: Lambda with default capture
/**
#include <iostream>
int main() {
    int x = 3;
    auto f = [=]() { std::cout << x; };
    f();
    return 0;
}
*/
//===========================================
// Question 76: Function with float return
/**
#include <iostream>
float average(int a, int b) {
    return (a + b) / 2.0f;
}
int main() {
    std::cout << average(4, 6);
    return 0;
}
*/
//===========================================
// Question 77: Reference return with static
/**
#include <iostream>
int& counter() {
    static int c = 0;
    c++;
    return c;
}
int main() {
    std::cout << counter();
    return 0;
}
*/
//===========================================
// Question 78: Templated function with two types
/**
#include <iostream>
template <typename T, typename U>
auto add(T a, U b) {
    return a + b;
}
int main() {
    std::cout << add(3, 4.5);
    return 0;
}
*/
//===========================================
// Question 79: Lambda storing in variable
/**
#include <iostream>
int main() {
    auto printer = []() { std::cout << "Lambda"; };
    printer();
    return 0;
}
*/
//===========================================
// Question 80: Pass lambda to function
/**
#include <iostream>
void run(auto func) {
    func();
}
int main() {
    run([](){ std::cout << "Running"; });
    return 0;
}
*/
//===========================================
// Question 81: Recursive countdown
/**
#include <iostream>
void countdown(int n) {
    if (n < 0) return;
    std::cout << n << " ";
    countdown(n - 1);
}
int main() {
    countdown(5);
    return 0;
}
*/
//===========================================
// Question 82: Use decltype in return type
/**
#include <iostream>
auto multiply(int a, int b) -> decltype(a * b) {
    return a * b;
}
int main() {
    std::cout << multiply(3, 4);
    return 0;
}
*/
//===========================================
// Question 83: Function with enum parameter
/**
#include <iostream>
enum Color { RED, GREEN, BLUE };
void printColor(Color c) {
    std::cout << c;
}
int main() {
    printColor(GREEN);
    return 0;
}
*/
//===========================================
// Question 84: Function with default string
/**
#include <iostream>
void greet(std::string name = "Guest") {
    std::cout << "Hello " << name;
}
int main() {
    greet();
    return 0;
}
*/
//===========================================
// Question 85: Static function inside class
/**
#include <iostream>
class Test {
public:
    static void show() {
        std::cout << "Static";
    }
};
int main() {
    Test::show();
    return 0;
}
*/
//===========================================
// Question 86: Constexpr function
/**
#include <iostream>
constexpr int cube(int x) {
    return x * x * x;
}
int main() {
    std::cout << cube(3);
    return 0;
}
*/
//===========================================
// Question 87: Function that returns char
/**
#include <iostream>
char getChar() {
    return 'A';
}
int main() {
    std::cout << getChar();
    return 0;
}
*/
//===========================================
// Question 88: Auto return with template
/**
#include <iostream>
template <typename T>
auto square(T x) {
    return x * x;
}
int main() {
    std::cout << square(5);
    return 0;
}
*/
//===========================================
// Question 89: Use noexcept
/**
#include <iostream>
int add(int a, int b) noexcept {
    return a + b;
}
int main() {
    std::cout << add(2, 3);
    return 0;
}
*/
//===========================================
// Question 90: Pass vector to function
/**
#include <iostream>
#include <vector>
void print(std::vector<int> v) {
    for (int x : v) std::cout << x;
}
int main() {
    print({1, 2, 3});
    return 0;
}
*/
//===========================================
// Question 91: Return vector from function
/**
#include <iostream>
#include <vector>
std::vector<int> getVector() {
    return {4, 5, 6};
}
int main() {
    auto v = getVector();
    std::cout << v[1];
    return 0;
}
*/
//===========================================
// Question 92: Variadic template function
/**
#include <iostream>
template<typename... Args>
void printAll(Args... args) {
    (std::cout << ... << args);
}
int main() {
    printAll(1, " ", 2.5);
    return 0;
}
*/
//===========================================
// Question 93: Function with char* param
/**
#include <iostream>
void show(char* msg) {
    std::cout << msg;
}
int main() {
    char msg[] = "Hello";
    show(msg);
    return 0;
}
*/
//===========================================
// Question 94: Function with switch
/**
#include <iostream>
void check(int x) {
    switch(x) {
        case 1: std::cout << "One"; break;
        default: std::cout << "Other";
    }
}
int main() {
    check(1);
    return 0;
}
*/
//===========================================
// Question 95: Recursive sum of digits
/**
#include <iostream>
int sumDigits(int n) {
    if (n == 0) return 0;
    return n % 10 + sumDigits(n / 10);
}
int main() {
    std::cout << sumDigits(123);
    return 0;
}
*/
//===========================================
// Question 96: Use typeid in function
/**
#include <iostream>
#include <typeinfo>
void checkType(auto x) {
    std::cout << typeid(x).name();
}
int main() {
    checkType(3.14);
    return 0;
}
*/
//===========================================
// Question 97: Use function as class member
/**
#include <iostream>
class Test {
public:
    void hello() {
        std::cout << "Hello";
    }
};
int main() {
    Test t;
    t.hello();
    return 0;
}
*/
//===========================================
// Question 98: Static local variable
/**
#include <iostream>
void run() {
    static int count = 0;
    count++;
    std::cout << count;
}
int main() {
    run();
    run();
    return 0;
}
*/
//===========================================
// Question 99: Inline recursive (Valid but ignored)
/**
#include <iostream>
inline int sum(int n) {
    if (n == 0) return 0;
    return n + sum(n - 1);
}
int main() {
    std::cout << sum(3);
    return 0;
}
*/
//===========================================
// Question 100: Function with long long return
/**
#include <iostream>
long long factorial(int n) {
    long long res = 1;
    for (int i = 2; i <= n; i++) res *= i;
    return res;
}
int main() {
    std::cout << factorial(10);
    return 0;
}
*/
