// Question 1: Basic structure definition and usage
/**
#include <iostream>
struct Point {
    int x, y;
};
int main() {
    Point p = {1, 2};
    std::cout << p.x;
    return 0;
}
*/
//===========================================
// Question 2: Access structure members
/**
#include <iostream>
struct Student {
    int roll;
    float marks;
};
int main() {
    Student s = {1, 95.5};
    std::cout << s.marks;
    return 0;
}
*/
//===========================================
// Question 3: Nested structure
/**
#include <iostream>
struct Date {
    int day, month, year;
};
struct Student {
    int id;
    Date dob;
};
int main() {
    Student s = {1, {12, 10, 2000}};
    std::cout << s.dob.year;
    return 0;
}
*/
//===========================================
// Question 4: Structure with array member
/**
#include <iostream>
struct Data {
    int values[3];
};
int main() {
    Data d = {{10, 20, 30}};
    std::cout << d.values[1];
    return 0;
}
*/
//===========================================
// Question 5: Array of structures
/**
#include <iostream>
struct Item {
    int id;
};
int main() {
    Item items[2] = {{1}, {2}};
    std::cout << items[1].id;
    return 0;
}
*/
//===========================================
// Question 6: Structure passed to function
/**
#include <iostream>
struct Person {
    int age;
};
void print(Person p) {
    std::cout << p.age;
}
int main() {
    Person p = {25};
    print(p);
    return 0;
}
*/
//===========================================
// Question 7: Structure returned from function
/**
#include <iostream>
struct Info {
    int code;
};
Info getInfo() {
    return {42};
}
int main() {
    Info i = getInfo();
    std::cout << i.code;
    return 0;
}
*/
//===========================================
// Question 8: Structure pointer
/**
#include <iostream>
struct Box {
    int size;
};
int main() {
    Box b = {10};
    Box* ptr = &b;
    std::cout << ptr->size;
    return 0;
}
*/
//===========================================
// Question 9: Structure pointer as function parameter
/**
#include <iostream>
struct Score {
    int marks;
};
void show(Score* s) {
    std::cout << s->marks;
}
int main() {
    Score s = {90};
    show(&s);
    return 0;
}
*/
//===========================================
// Question 10: Structure inside structure
/**
#include <iostream>
struct Address {
    int pincode;
};
struct Employee {
    Address addr;
};
int main() {
    Employee e = {{560001}};
    std::cout << e.addr.pincode;
    return 0;
}
*/
//===========================================
// Question 11: typedef for structure
/**
#include <iostream>
typedef struct {
    int id;
} Employee;
int main() {
    Employee e = {101};
    std::cout << e.id;
    return 0;
}
*/
//===========================================
// Question 12: typedef with struct tag
/**
#include <iostream>
typedef struct Emp {
    int salary;
} Emp;
int main() {
    Emp e = {5000};
    std::cout << e.salary;
    return 0;
}
*/
//===========================================
// Question 13: Union basic usage
/**
#include <iostream>
union Data {
    int i;
    float f;
};
int main() {
    Data d;
    d.i = 5;
    std::cout << d.i;
    return 0;
}
*/
//===========================================
// Question 14: Union memory sharing
/**
#include <iostream>
union Value {
    int i;
    float f;
};
int main() {
    Value v;
    v.i = 10;
    v.f = 3.14;
    std::cout << v.i;
    return 0;
}
*/
//===========================================
// Question 15: Structure size
/**
#include <iostream>
struct A {
    char c;
    int x;
};
int main() {
    std::cout << sizeof(A);
    return 0;
}
*/
//===========================================
// Question 16: Union size
/**
#include <iostream>
union U {
    int x;
    double y;
};
int main() {
    std::cout << sizeof(U);
    return 0;
}
*/
//===========================================
// Question 17: Anonymous structure
/**
#include <iostream>
struct {
    int id;
} obj = {11};
int main() {
    std::cout << obj.id;
    return 0;
}
*/
//===========================================
// Question 18: Structure with char array
/**
#include <iostream>
struct Person {
    char name[10];
};
int main() {
    Person p = {"John"};
    std::cout << p.name;
    return 0;
}
*/
//===========================================
// Question 19: Structure with constructor (C++)
/**
#include <iostream>
struct Item {
    int price;
    Item(int p) { price = p; }
};
int main() {
    Item i(100);
    std::cout << i.price;
    return 0;
}
*/
//===========================================
// Question 20: Bit field usage
/**
#include <iostream>
struct Flags {
    unsigned int a : 1;
    unsigned int b : 1;
};
int main() {
    Flags f = {1, 0};
    std::cout << f.a;
    return 0;
}
*/
//===========================================
// Question 21: Bit field total size
/**
#include <iostream>
struct Bits {
    unsigned int a : 3;
    unsigned int b : 5;
};
int main() {
    std::cout << sizeof(Bits);
    return 0;
}
*/
//===========================================
// Question 22: Nested structure typedef
/**
#include <iostream>
typedef struct {
    int x;
    struct {
        int y;
    } inner;
} Outer;
int main() {
    Outer o = {1, {2}};
    std::cout << o.inner.y;
    return 0;
}
*/
//===========================================
// Question 23: Pointer to structure array
/**
#include <iostream>
struct S {
    int x;
};
int main() {
    S arr[2] = {{1}, {2}};
    S* ptr = arr;
    std::cout << (ptr + 1)->x;
    return 0;
}
*/
//===========================================
// Question 24: Structure with bool member
/**
#include <iostream>
struct Flag {
    bool enabled;
};
int main() {
    Flag f = {true};
    std::cout << f.enabled;
    return 0;
}
*/
//===========================================
// Question 25: Modify struct member using pointer
/**
#include <iostream>
struct Point {
    int x;
};
int main() {
    Point p = {5};
    Point* ptr = &p;
    ptr->x = 10;
    std::cout << p.x;
    return 0;
}
*/






// Question 26: Structure with float and int
/**
#include <iostream>
struct Product {
    int id;
    float price;
};
int main() {
    Product p = {101, 49.99f};
    std::cout << p.price;
    return 0;
}
*/
//===========================================
// Question 27: Array of structures with loop
/**
#include <iostream>
struct Item {
    int code;
};
int main() {
    Item items[3] = {{1}, {2}, {3}};
    for (int i = 0; i < 3; i++)
        std::cout << items[i].code;
    return 0;
}
*/
//===========================================
// Question 28: Compare structure values
/**
#include <iostream>
struct Point {
    int x, y;
};
int main() {
    Point p1 = {1, 2}, p2 = {1, 2};
    std::cout << (p1.x == p2.x);
    return 0;
}
*/
//===========================================
// Question 29: Pass structure by reference
/**
#include <iostream>
struct Box {
    int volume;
};
void update(Box& b) {
    b.volume = 100;
}
int main() {
    Box b = {50};
    update(b);
    std::cout << b.volume;
    return 0;
}
*/
//===========================================
// Question 30: Structure with default values (C++)
/**
#include <iostream>
struct Config {
    int speed = 10;
};
int main() {
    Config c;
    std::cout << c.speed;
    return 0;
}
*/
//===========================================
// Question 31: Union initialized
/**
#include <iostream>
union Data {
    int x;
    char c;
};
int main() {
    Data d = {65};
    std::cout << d.x;
    return 0;
}
*/
//===========================================
// Question 32: Print union char
/**
#include <iostream>
union U {
    char c;
    int x;
};
int main() {
    U u;
    u.c = 'A';
    std::cout << u.c;
    return 0;
}
*/
//===========================================
// Question 33: Structure with multiple types
/**
#include <iostream>
struct Record {
    int id;
    char grade;
    float score;
};
int main() {
    Record r = {1, 'A', 98.5f};
    std::cout << r.grade;
    return 0;
}
*/
//===========================================
// Question 34: Bit fields for flags
/**
#include <iostream>
struct Flags {
    unsigned int read : 1;
    unsigned int write : 1;
    unsigned int exec : 1;
};
int main() {
    Flags f = {1, 0, 1};
    std::cout << f.exec;
    return 0;
}
*/
//===========================================
// Question 35: Modify union value
/**
#include <iostream>
union Info {
    int a;
    float b;
};
int main() {
    Info i;
    i.a = 5;
    i.b = 3.14;
    std::cout << i.a;
    return 0;
}
*/
//===========================================
// Question 36: Struct with enum inside
/**
#include <iostream>
struct Status {
    enum State { On, Off } s;
};
int main() {
    Status x;
    x.s = Status::On;
    std::cout << x.s;
    return 0;
}
*/
//===========================================
// Question 37: Struct with bool array
/**
#include <iostream>
struct Flags {
    bool bits[3];
};
int main() {
    Flags f = {{true, false, true}};
    std::cout << f.bits[2];
    return 0;
}
*/
//===========================================
// Question 38: Struct with string (C++)
/**
#include <iostream>
#include <string>
struct Person {
    std::string name;
};
int main() {
    Person p = {"Alice"};
    std::cout << p.name;
    return 0;
}
*/
//===========================================
// Question 39: Pointer to union
/**
#include <iostream>
union Data {
    int x;
};
int main() {
    Data d = {100};
    Data* p = &d;
    std::cout << p->x;
    return 0;
}
*/
//===========================================
// Question 40: Structure with static member (C++)
/**
#include <iostream>
struct Counter {
    static int count;
};
int Counter::count = 5;
int main() {
    std::cout << Counter::count;
    return 0;
}
*/
//===========================================
// Question 41: Array inside union
/**
#include <iostream>
union Buffer {
    char data[4];
    int val;
};
int main() {
    Buffer b;
    b.val = 65;
    std::cout << b.val;
    return 0;
}
*/
//===========================================
// Question 42: Multiple structs in main
/**
#include <iostream>
struct A { int x; };
struct B { int y; };
int main() {
    A a = {1};
    B b = {2};
    std::cout << a.x + b.y;
    return 0;
}
*/
//===========================================
// Question 43: Anonymous union
/**
#include <iostream>
struct Holder {
    union {
        int x;
        float y;
    };
};
int main() {
    Holder h;
    h.x = 5;
    std::cout << h.x;
    return 0;
}
*/
//===========================================
// Question 44: Union inside struct
/**
#include <iostream>
struct Mixed {
    int id;
    union {
        int score;
        float percent;
    };
};
int main() {
    Mixed m;
    m.id = 1;
    m.score = 90;
    std::cout << m.score;
    return 0;
}
*/
//===========================================
// Question 45: Struct array with loop input
/**
#include <iostream>
struct Num {
    int val;
};
int main() {
    Num arr[2];
    for (int i = 0; i < 2; i++)
        arr[i].val = i + 10;
    std::cout << arr[1].val;
    return 0;
}
*/
//===========================================
// Question 46: Const member in struct
/**
#include <iostream>
struct ConstVal {
    const int val = 100;
};
int main() {
    ConstVal c;
    std::cout << c.val;
    return 0;
}
*/
//===========================================
// Question 47: Struct as class member
/**
#include <iostream>
struct Data {
    int x;
};
class Box {
public:
    Data d;
};
int main() {
    Box b;
    b.d.x = 20;
    std::cout << b.d.x;
    return 0;
}
*/
//===========================================
// Question 48: Bit field overflow
/**
#include <iostream>
struct Bits {
    unsigned int a : 2;
};
int main() {
    Bits b = {5};
    std::cout << b.a;
    return 0;
}
*/
//===========================================
// Question 49: Struct inside array
/**
#include <iostream>
struct Pair {
    int x, y;
};
int main() {
    Pair p[1] = {{1, 2}};
    std::cout << p[0].y;
    return 0;
}
*/
//===========================================
// Question 50: Typedef with union
/**
#include <iostream>
typedef union {
    int i;
    float f;
} Number;
int main() {
    Number n;
    n.i = 10;
    std::cout << n.i;
    return 0;
}
*/
