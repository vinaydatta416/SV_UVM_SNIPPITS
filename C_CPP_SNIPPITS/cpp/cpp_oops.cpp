//// Question 1: Class Declaration & Object Creation
/**
#include <iostream>
class A {};
int main() {
    A obj;
    std::cout << "Object created";
    return 0;
}
*/
//===========================================

//// Question 2: Data Members and Member Functions
/**
#include <iostream>
class A {
public:
    int x;
    void show() { std::cout << x; }
};
int main() {
    A obj;
    obj.x = 5;
    obj.show();
    return 0;
}
*/
//===========================================

//// Question 3: Access Modifiers - public
/**
#include <iostream>
class A {
public:
    int x;
};
int main() {
    A obj;
    obj.x = 10;
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 4: Access Modifiers - private
/**
#include <iostream>
class A {
private:
    int x = 7;
public:
    int getX() { return x; }
};
int main() {
    A obj;
    std::cout << obj.getX();
    return 0;
}
*/
//===========================================

//// Question 5: Access Modifiers - protected
/**
#include <iostream>
class A {
protected:
    int x = 9;
public:
    int getX() { return x; }
};
int main() {
    A obj;
    std::cout << obj.getX();
    return 0;
}
*/
//===========================================

//// Question 6: Default Constructor
/**
#include <iostream>
class A {
public:
    int x;
    A() { x = 3; }
};
int main() {
    A obj;
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 7: Parameterized Constructor
/**
#include <iostream>
class A {
public:
    int x;
    A(int v) { x = v; }
};
int main() {
    A obj(8);
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 8: Copy Constructor
/**
#include <iostream>
class A {
public:
    int x;
    A(int v) { x = v; }
    A(const A& other) { x = other.x + 1; }
};
int main() {
    A obj1(5);
    A obj2 = obj1;
    std::cout << obj2.x;
    return 0;
}
*/
//===========================================

//// Question 9: Overloaded Constructors
/**
#include <iostream>
class A {
public:
    int x;
    A() { x = 1; }
    A(int v) { x = v; }
};
int main() {
    A a, b(7);
    std::cout << a.x << " " << b.x;
    return 0;
}
*/
//===========================================

//// Question 10: Constructor Initialization List
/**
#include <iostream>
class A {
public:
    int x;
    A(int v): x(v) {}
};
int main() {
    A obj(4);
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 11: Destructor
/**
#include <iostream>
class A {
public:
    ~A() { std::cout << "Destroyed"; }
};
int main() {
    A obj;
    return 0;
}
*/
//===========================================

//// Question 12: Encapsulation
/**
#include <iostream>
class A {
private:
    int x;
public:
    void set(int v) { x = v; }
    int get() { return x; }
};
int main() {
    A obj;
    obj.set(6);
    std::cout << obj.get();
    return 0;
}
*/
//===========================================

//// Question 13: Abstraction
/**
#include <iostream>
class A {
    int x;
public:
    void set(int v) { x = v; }
    int get() { return x; }
};
int main() {
    A obj;
    obj.set(2);
    std::cout << obj.get();
    return 0;
}
*/
//===========================================

//// Question 14: Single Inheritance
/**
#include <iostream>
class A { public: int x = 1; };
class B : public A {};
int main() {
    B obj;
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 15: Multilevel Inheritance
/**
#include <iostream>
class A { public: int x = 2; };
class B : public A {};
class C : public B {};
int main() {
    C obj;
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 16: Multiple Inheritance
/**
#include <iostream>
class A { public: int x = 3; };
class B { public: int y = 4; };
class C : public A, public B {};
int main() {
    C obj;
    std::cout << obj.x << " " << obj.y;
    return 0;
}
*/
//===========================================

//// Question 17: Function Overloading
/**
#include <iostream>
class A {
public:
    void show() { std::cout << "A"; }
    void show(int x) { std::cout << x; }
};
int main() {
    A obj;
    obj.show();
    obj.show(5);
    return 0;
}
*/
//===========================================

//// Question 18: Function Overriding
/**
#include <iostream>
class A { public: void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    B obj;
    obj.show();
    return 0;
}
*/
//===========================================

//// Question 19: Virtual Function
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    A *p = new B();
    p->show();
    delete p;
    return 0;
}
*/
//===========================================

//// Question 20: Pure Virtual Function & Abstract Class
/**
#include <iostream>
class A { public: virtual void show() = 0; };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    B obj;
    obj.show();
    return 0;
}
*/
//===========================================

//// Question 21: this Pointer
/**
#include <iostream>
class A {
public:
    int x;
    void set(int x) { this->x = x; }
};
int main() {
    A obj;
    obj.set(9);
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 22: Friend Function
/**
#include <iostream>
class A {
    int x = 5;
    friend void show(A&);
};
void show(A& a) { std::cout << a.x; }
int main() {
    A obj;
    show(obj);
    return 0;
}
*/
//===========================================

//// Question 23: Friend Class
/**
#include <iostream>
class A {
    int x = 7;
    friend class B;
};
class B {
public:
    void show(A& a) { std::cout << a.x; }
};
int main() {
    A obj;
    B b;
    b.show(obj);
    return 0;
}
*/
//===========================================

//// Question 24: Static Data Member
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 11;
int main() {
    std::cout << A::x;
    return 0;
}
*/
//===========================================

//// Question 25: Static Member Function
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A::show();
    return 0;
}
*/
//===========================================

//// Question 26: Private Data Member Access Error
/**
#include <iostream>
class A {
private:
    int x = 1;
};
int main() {
    A obj;
    // std::cout << obj.x; // Error: private member
    std::cout << "Private";
    return 0;
}
*/
//===========================================

//// Question 27: Protected Data Member Access Error
/**
#include <iostream>
class A {
protected:
    int x = 2;
};
int main() {
    A obj;
    // std::cout << obj.x; // Error: protected member
    std::cout << "Protected";
    return 0;
}
*/
//===========================================

//// Question 28: Inline Member Function
/**
#include <iostream>
class A {
public:
    inline void show() { std::cout << "Inline"; }
};
int main() {
    A obj;
    obj.show();
    return 0;
}
*/
//===========================================

//// Question 29: Default Copy Constructor
/**
#include <iostream>
class A {
public:
    int x;
};
int main() {
    A a;
    a.x = 5;
    A b = a;
    std::cout << b.x;
    return 0;
}
*/
//===========================================

//// Question 30: Destructor Call Order
/**
#include <iostream>
class A {
public:
    ~A() { std::cout << "A"; }
};
class B : public A {
public:
    ~B() { std::cout << "B"; }
};
int main() {
    B obj;
    return 0;
}
*/
//===========================================

//// Question 31: Constructor Call Order (Inheritance)
/**
#include <iostream>
class A {
public:
    A() { std::cout << "A"; }
};
class B : public A {
public:
    B() { std::cout << "B"; }
};
int main() {
    B obj;
    return 0;
}
*/
//===========================================

//// Question 32: Static Member Shared by Objects
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 0;
int main() {
    A a, b;
    a.x = 5;
    std::cout << b.x;
    return 0;
}
*/
//===========================================

//// Question 33: Static Member Function Access
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "S"; }
};
int main() {
    A::show();
    return 0;
}
*/
//===========================================

//// Question 34: Overloading Constructor with Default Arg
/**
#include <iostream>
class A {
public:
    int x;
    A(int v = 2) { x = v; }
};
int main() {
    A a, b(7);
    std::cout << a.x << " " << b.x;
    return 0;
}
*/
//===========================================

//// Question 35: Overriding with Virtual Function
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    A *p = new B();
    p->show();
    delete p;
    return 0;
}
*/
//===========================================

//// Question 36: Abstract Class Cannot Instantiate
/**
#include <iostream>
class A { public: virtual void show() = 0; };
// A obj; // Error: cannot instantiate abstract class
int main() {
    std::cout << "Abstract";
    return 0;
}
*/
//===========================================

//// Question 37: Constructor with Initialization List
/**
#include <iostream>
class A {
public:
    int x;
    A(int v): x(v) {}
};
int main() {
    A obj(10);
    std::cout << obj.x;
    return 0;
}
*/
//===========================================

//// Question 38: Multiple Objects
/**
#include <iostream>
class A {
public:
    int x;
};
int main() {
    A a, b;
    a.x = 1; b.x = 2;
    std::cout << a.x << " " << b.x;
    return 0;
}
*/
//===========================================

//// Question 39: Member Function Outside Class
/**
#include <iostream>
class A {
public:
    void show();
};
void A::show() { std::cout << "Outside"; }
int main() {
    A obj;
    obj.show();
    return 0;
}
*/
//===========================================

//// Question 40: Private Constructor (Singleton Pattern Example)
/**
#include <iostream>
class A {
private:
    A() {}
public:
    static void show() { std::cout << "Singleton"; }
};
int main() {
    A::show();
    return 0;
}
*/
//===========================================

//// Question 41: Static Data Member Increment
/**
#include <iostream>
class A {
public:
    static int x;
    void inc() { x++; }
};
int A::x = 0;
int main() {
    A a, b;
    a.inc();
    b.inc();
    std::cout << A::x;
    return 0;
}
*/
//===========================================

//// Question 42: Static Member Function No this Pointer
/**
#include <iostream>
class A {
public:
    static void show() { /* no this */ std::cout << "NoThis"; }
};
int main() {
    A::show();
    return 0;
}
*/
//===========================================

//// Question 43: Virtual Destructor
/**
#include <iostream>
class A {
public:
    virtual ~A() { std::cout << "A"; }
};
class B : public A {
public:
    ~B() { std::cout << "B"; }
};
int main() {
    A *p = new B();
    delete p;
    return 0;
}
*/
//===========================================

//// Question 44: Friend Function Access Private
/**
#include <iostream>
class A {
private:
    int x = 4;
    friend void show(A&);
};
void show(A& a) { std::cout << a.x; }
int main() {
    A obj;
    show(obj);
    return 0;
}
*/
//===========================================

//// Question 45: Friend Class Access Private
/**
#include <iostream>
class A {
private:
    int x = 6;
    friend class B;
};
class B {
public:
    void show(A& a) { std::cout << a.x; }
};
int main() {
    A obj;
    B b;
    b.show(obj);
    return 0;
}
*/
//===========================================

//// Question 46: Static Member Initialization Outside
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 12;
int main() {
    std::cout << A::x;
    return 0;
}
*/
//===========================================

//// Question 47: Static Member Shared by All Objects
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 0;
int main() {
    A a, b;
    a.x = 3;
    std::cout << b.x;
    return 0;
}
*/
//===========================================

//// Question 48: Static Member Function Call by Object
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A a;
    a.show();
    return 0;
}
*/
//===========================================

//// Question 49: Static Member Function Call by Class
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A::show();
    return 0;
}
*/
//===========================================

//// Question 50: Virtual Function Table
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    A *p = new B();
    p->show();
    delete p;
    return 0;
}
*/
//===========================================









// ...existing code...

//// Question 51: Base Pointer to Derived Object (No Virtual)
/**
#include <iostream>
class A { public: void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    A *p = new B();
    p->show();
    delete p;
    return 0;
}
*/
// Output: A
//===========================================

//// Question 52: Base Pointer to Derived Object (With Virtual)
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    A *p = new B();
    p->show();
    delete p;
    return 0;
}
*/
// Output: B
//===========================================

//// Question 53: Calling Parent Function from Child
/**
#include <iostream>
class A { public: void show() { std::cout << "A"; } };
class B : public A { public: void show() { A::show(); std::cout << "B"; } };
int main() {
    B obj;
    obj.show();
    return 0;
}
*/
// Output: AB
//===========================================

//// Question 54: Constructor Overloading
/**
#include <iostream>
class A {
public:
    int x;
    A() { x = 1; }
    A(int v) { x = v; }
};
int main() {
    A a, b(5);
    std::cout << a.x << " " << b.x;
    return 0;
}
*/
// Output: 1 5
//===========================================

//// Question 55: Destructor for Array of Objects
/**
#include <iostream>
class A {
public:
    ~A() { std::cout << "D"; }
};
int main() {
    A arr[2];
    return 0;
}
*/
// Output: DD
//===========================================

//// Question 56: Static Variable in Member Function
/**
#include <iostream>
class A {
public:
    void show() { static int x = 0; x++; std::cout << x; }
};
int main() {
    A a;
    a.show();
    a.show();
    return 0;
}
*/
// Output: 12
//===========================================

//// Question 57: Multiple Inheritance Ambiguity
/**
#include <iostream>
class A { public: void show() { std::cout << "A"; } };
class B { public: void show() { std::cout << "B"; } };
class C : public A, public B {};
int main() {
    C obj;
    obj.A::show();
    obj.B::show();
    return 0;
}
*/
// Output: AB
//===========================================

//// Question 58: Protected Inheritance
/**
#include <iostream>
class A { protected: int x = 5; };
class B : protected A {
public:
    void show() { std::cout << x; }
};
int main() {
    B obj;
    obj.show();
    return 0;
}
*/
// Output: 5
//===========================================

//// Question 59: Private Inheritance
/**
#include <iostream>
class A { public: int x = 7; };
class B : private A {
public:
    void show() { std::cout << x; }
};
int main() {
    B obj;
    obj.show();
    return 0;
}
*/
// Output: 7
//===========================================

//// Question 60: Object Array
/**
#include <iostream>
class A { public: int x; };
int main() {
    A arr[2];
    arr[0].x = 1; arr[1].x = 2;
    std::cout << arr[0].x << arr[1].x;
    return 0;
}
*/
// Output: 12
//===========================================

//// Question 61: Object Pointer
/**
#include <iostream>
class A { public: int x = 3; };
int main() {
    A obj, *p = &obj;
    std::cout << p->x;
    return 0;
}
*/
// Output: 3
//===========================================

//// Question 62: Dynamic Object Creation
/**
#include <iostream>
class A { public: int x; };
int main() {
    A *p = new A();
    p->x = 4;
    std::cout << p->x;
    delete p;
    return 0;
}
*/
// Output: 4
//===========================================

//// Question 63: Static Object Lifetime
/**
#include <iostream>
class A {
public:
    A() { std::cout << "C"; }
    ~A() { std::cout << "D"; }
};
void foo() {
    static A a;
}
int main() {
    foo();
    foo();
    return 0;
}
*/
// Output: C (D after program ends)
//===========================================

//// Question 64: Inline Function in Class
/**
#include <iostream>
class A {
public:
    inline void show() { std::cout << "I"; }
};
int main() {
    A obj;
    obj.show();
    return 0;
}
*/
// Output: I
//===========================================

//// Question 65: Operator Overloading (Member)
/**
#include <iostream>
class A {
public:
    int x;
    A(int v) : x(v) {}
    A operator+(const A& b) { return A(x + b.x); }
};
int main() {
    A a(2), b(3);
    A c = a + b;
    std::cout << c.x;
    return 0;
}
*/
// Output: 5
//===========================================

//// Question 66: Operator Overloading (Friend)
/**
#include <iostream>
class A {
public:
    int x;
    A(int v) : x(v) {}
    friend A operator-(const A& a, const A& b) { return A(a.x - b.x); }
};
int main() {
    A a(5), b(2);
    A c = a - b;
    std::cout << c.x;
    return 0;
}
*/
// Output: 3
//===========================================

//// Question 67: Overloading << Operator
/**
#include <iostream>
class A {
public:
    int x;
    A(int v) : x(v) {}
    friend std::ostream& operator<<(std::ostream& os, const A& a) {
        os << a.x; return os;
    }
};
int main() {
    A obj(7);
    std::cout << obj;
    return 0;
}
*/
// Output: 7
//===========================================

//// Question 68: Overloading >> Operator
/**
#include <iostream>
class A {
public:
    int x;
    friend std::istream& operator>>(std::istream& is, A& a) {
        is >> a.x; return is;
    }
};
int main() {
    A obj;
    // Input: 9
    std::cin >> obj;
    std::cout << obj.x;
    return 0;
}
*/
// Output: 9 (if input is 9)
//===========================================

//// Question 69: Static Local Variable in Member Function
/**
#include <iostream>
class A {
public:
    void show() { static int x = 0; x++; std::cout << x; }
};
int main() {
    A a;
    a.show();
    a.show();
    return 0;
}
*/
// Output: 12
//===========================================

//// Question 70: Calling Base Class Constructor
/**
#include <iostream>
class A {
public:
    A() { std::cout << "A"; }
};
class B : public A {
public:
    B() { std::cout << "B"; }
};
int main() {
    B obj;
    return 0;
}
*/
// Output: AB
//===========================================

//// Question 71: Calling Base Class Destructor
/**
#include <iostream>
class A {
public:
    ~A() { std::cout << "A"; }
};
class B : public A {
public:
    ~B() { std::cout << "B"; }
};
int main() {
    B obj;
    return 0;
}
*/
// Output: BA
//===========================================

//// Question 72: Virtual Base Class
/**
#include <iostream>
class A { public: int x = 1; };
class B : virtual public A {};
class C : virtual public A {};
class D : public B, public C {};
int main() {
    D obj;
    std::cout << obj.x;
    return 0;
}
*/
// Output: 1
//===========================================

//// Question 73: Pure Virtual Function Implementation
/**
#include <iostream>
class A { public: virtual void show() = 0; };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    B obj;
    obj.show();
    return 0;
}
*/
// Output: B
//===========================================

//// Question 74: Abstract Class Pointer
/**
#include <iostream>
class A { public: virtual void show() = 0; };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    A* p = new B();
    p->show();
    delete p;
    return 0;
}
*/
// Output: B
//===========================================

//// Question 75: Object Slicing
/**
#include <iostream>
class A { public: int x = 1; };
class B : public A { public: int y = 2; };
int main() {
    B b;
    A a = b;
    std::cout << a.x;
    return 0;
}
*/
// Output: 1
//===========================================

//// Question 76: Dynamic Cast with Polymorphism
/**
#include <iostream>
class A { public: virtual void show() {} };
class B : public A { public: void show() { std::cout << "B"; } };
int main() {
    A* p = new B();
    B* q = dynamic_cast<B*>(p);
    if(q) q->show();
    delete p;
    return 0;
}
*/
// Output: B
//===========================================

//// Question 77: Static Cast
/**
#include <iostream>
class A { public: int x = 5; };
int main() {
    A a;
    void* p = &a;
    A* q = static_cast<A*>(p);
    std::cout << q->x;
    return 0;
}
*/
// Output: 5
//===========================================

//// Question 78: Const Cast
/**
#include <iostream>
int main() {
    const int x = 10;
    int* p = const_cast<int*>(&x);
    *p = 20;
    std::cout << *p;
    return 0;
}
*/
// Output: 20 (but undefined behavior!)
//===========================================

//// Question 79: Reinterpret Cast
/**
#include <iostream>
class A { public: int x = 7; };
int main() {
    A a;
    int* p = reinterpret_cast<int*>(&a);
    std::cout << *p;
    return 0;
}
*/
// Output: 7 (on most compilers)
//===========================================

//// Question 80: Aggregation Example
/**
#include <iostream>
class Engine {
public:
    void start() { std::cout << "Engine"; }
};
class Car {
    Engine* eng;
public:
    Car(Engine* e) : eng(e) {}
    void start() { eng->start(); }
};
int main() {
    Engine e;
    Car c(&e);
    c.start();
    return 0;
}
*/
// Output: Engine
//===========================================

//// Question 81: Composition Example
/**
#include <iostream>
class Engine {
public:
    void start() { std::cout << "Engine"; }
};
class Car {
    Engine eng;
public:
    void start() { eng.start(); }
};
int main() {
    Car c;
    c.start();
    return 0;
}
*/
// Output: Engine
//===========================================

//// Question 82: Chained Member Function Calls
/**
#include <iostream>
class A {
public:
    int x;
    A& set(int v) { x = v; return *this; }
    void show() { std::cout << x; }
};
int main() {
    A obj;
    obj.set(5).show();
    return 0;
}
*/
// Output: 5
//===========================================

//// Question 83: Default Arguments in Member Function
/**
#include <iostream>
class A {
public:
    void show(int x = 3) { std::cout << x; }
};
int main() {
    A obj;
    obj.show();
    obj.show(7);
    return 0;
}
*/
// Output: 37
//===========================================

//// Question 84: Const Member Function
/**
#include <iostream>
class A {
public:
    int x = 4;
    void show() const { std::cout << x; }
};
int main() {
    const A obj;
    obj.show();
    return 0;
}
*/
// Output: 4
//===========================================

//// Question 85: Mutable Keyword
/**
#include <iostream>
class A {
public:
    mutable int x = 5;
    void show() const { x++; std::cout << x; }
};
int main() {
    const A obj;
    obj.show();
    return 0;
}
*/
// Output: 6
//===========================================

//// Question 86: Static Member Variable in Class
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 8;
int main() {
    std::cout << A::x;
    return 0;
}
*/
// Output: 8
//===========================================

//// Question 87: Static Member Function in Class
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A::show();
    return 0;
}
*/
// Output: Static
//===========================================

//// Question 88: Static Member Function Access Static Variable
/**
#include <iostream>
class A {
public:
    static int x;
    static void show() { std::cout << x; }
};
int A::x = 9;
int main() {
    A::show();
    return 0;
}
*/
// Output: 9
//===========================================

//// Question 89: Static Member Function Cannot Access Non-static
/**
#include <iostream>
class A {
    int x = 1;
public:
    static void show() { /* std::cout << x; */ std::cout << "OK"; }
};
int main() {
    A::show();
    return 0;
}
*/
// Output: OK
//===========================================

//// Question 90: Static Member Variable Shared
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 0;
int main() {
    A a, b;
    a.x = 2;
    std::cout << b.x;
    return 0;
}
*/
// Output: 2
//===========================================

//// Question 91: Static Member Variable Increment
/**
#include <iostream>
class A {
public:
    static int x;
    void inc() { x++; }
};
int A::x = 0;
int main() {
    A a, b;
    a.inc();
    b.inc();
    std::cout << A::x;
    return 0;
}
*/
// Output: 2
//===========================================

//// Question 92: Static Member Function Call by Object
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A a;
    a.show();
    return 0;
}
*/
// Output: Static
//===========================================

//// Question 93: Static Member Function Call by Class
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A::show();
    return 0;
}
*/
// Output: Static
//===========================================

//// Question 94: Virtual Function with Base Reference
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
void print(A& a) { a.show(); }
int main() {
    B b;
    print(b);
    return 0;
}
*/
// Output: B
//===========================================

//// Question 95: Virtual Function with Base Pointer
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
void print(A* a) { a->show(); }
int main() {
    B b;
    print(&b);
    return 0;
}
*/
// Output: B
//===========================================

//// Question 96: Virtual Destructor Order
/**
#include <iostream>
class A { public: virtual ~A() { std::cout << "A"; } };
class B : public A { public: ~B() { std::cout << "B"; } };
int main() {
    A* p = new B();
    delete p;
    return 0;
}
*/
// Output: BA
//===========================================

//// Question 97: Friend Function Access Private Static
/**
#include <iostream>
class A {
private:
    static int x;
    friend void show();
};
int A::x = 5;
void show() { std::cout << A::x; }
int main() {
    show();
    return 0;
}
*/
// Output: 5
//===========================================

//// Question 98: Friend Class Access Private Static
/**
#include <iostream>
class A {
private:
    static int x;
    friend class B;
};
int A::x = 6;
class B {
public:
    void show() { std::cout << A::x; }
};
int main() {
    B b;
    b.show();
    return 0;
}
*/
// Output: 6
//===========================================

//// Question 99: Static Member Variable Initialization
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 13;
int main() {
    std::cout << A::x;
    return 0;
}
*/
// Output: 13
//===========================================

//// Question 100: Static Member Function and Variable
/**
#include <iostream>
class A {
public:
    static int x;
    static void show() { std::cout << x; }
};
int A::x = 14;
int main() {
    A::show();
    return 0;
}
*/
// Output: 14
//===========================================

// ...existing code...

//// Question 101: Deep Copy Constructor
/**
#include <iostream>
class A {
public:
    int* p;
    A(int v) { p = new int(v); }
    A(const A& other) { p = new int(*other.p); }
    ~A() { delete p; }
};
int main() {
    A a(5);
    A b = a;
    *b.p = 10;
    std::cout << *a.p << " " << *b.p;
    return 0;
}
*/
// Output: 5 10
//===========================================

//// Question 102: Shallow Copy Problem
/**
#include <iostream>
class A {
public:
    int* p;
    A(int v) { p = new int(v); }
    ~A() { delete p; }
};
int main() {
    A a(7);
    A b = a; // shallow copy
    *b.p = 9;
    std::cout << *a.p << " " << *b.p;
    return 0;
}
*/
// Output: 9 9 (but double free error on exit!)
//===========================================

//// Question 103: Virtual Function Array
/**
#include <iostream>
class Base { public: virtual void show() { std::cout << "B"; } };
class Derived : public Base { public: void show() { std::cout << "D"; } };
int main() {
    Base* arr[2];
    arr[0] = new Base();
    arr[1] = new Derived();
    arr[0]->show();
    arr[1]->show();
    delete arr[0]; delete arr[1];
    return 0;
}
*/
// Output: BD
//===========================================

//// Question 104: Abstract Class Array
/**
#include <iostream>
class Shape { public: virtual void draw() = 0; };
class Circle : public Shape { public: void draw() { std::cout << "C"; } };
class Square : public Shape { public: void draw() { std::cout << "S"; } };
int main() {
    Shape* arr[2];
    arr[0] = new Circle();
    arr[1] = new Square();
    arr[0]->draw();
    arr[1]->draw();
    delete arr[0]; delete arr[1];
    return 0;
}
*/
// Output: CS
//===========================================

//// Question 105: Virtual Function Default Arg
/**
#include <iostream>
class A { public: virtual void show(int x = 1) { std::cout << x; } };
class B : public A { public: void show(int x = 2) { std::cout << x; } };
int main() {
    A* p = new B();
    p->show();
    delete p;
    return 0;
}
*/
// Output: 1
//===========================================

//// Question 106: Calling Destructor Explicitly
/**
#include <iostream>
class A {
public:
    ~A() { std::cout << "D"; }
};
int main() {
    A a;
    a.~A();
    return 0;
}
*/
// Output: DD
//===========================================

//// Question 107: Array of Objects with Constructors
/**
#include <iostream>
class A {
public:
    int x;
    A() { x = 1; }
};
int main() {
    A arr[3];
    std::cout << arr[0].x << arr[1].x << arr[2].x;
    return 0;
}
*/
// Output: 111
//===========================================

//// Question 108: Array of Pointers to Objects
/**
#include <iostream>
class A { public: int x; };
int main() {
    A* arr[2];
    arr[0] = new A(); arr[1] = new A();
    arr[0]->x = 5; arr[1]->x = 6;
    std::cout << arr[0]->x << arr[1]->x;
    delete arr[0]; delete arr[1];
    return 0;
}
*/
// Output: 56
//===========================================

//// Question 109: Returning Object from Function
/**
#include <iostream>
class A { public: int x; };
A foo() { A a; a.x = 8; return a; }
int main() {
    A obj = foo();
    std::cout << obj.x;
    return 0;
}
*/
// Output: 8
//===========================================

//// Question 110: Passing Object to Function by Value
/**
#include <iostream>
class A { public: int x; };
void show(A a) { std::cout << a.x; }
int main() {
    A obj; obj.x = 9;
    show(obj);
    return 0;
}
*/
// Output: 9
//===========================================

//// Question 111: Passing Object to Function by Reference
/**
#include <iostream>
class A { public: int x; };
void show(A& a) { std::cout << a.x; }
int main() {
    A obj; obj.x = 10;
    show(obj);
    return 0;
}
*/
// Output: 10
//===========================================

//// Question 112: Const Object
/**
#include <iostream>
class A { public: int x = 11; };
int main() {
    const A obj;
    std::cout << obj.x;
    return 0;
}
*/
// Output: 11
//===========================================

//// Question 113: Const Member Function with Non-const Object
/**
#include <iostream>
class A { public: int x = 12; void show() const { std::cout << x; } };
int main() {
    A obj;
    obj.show();
    return 0;
}
*/
// Output: 12
//===========================================

//// Question 114: Member Function Returning Reference
/**
#include <iostream>
class A { public: int x = 13; int& get() { return x; } };
int main() {
    A obj;
    obj.get() = 20;
    std::cout << obj.x;
    return 0;
}
*/
// Output: 20
//===========================================

//// Question 115: Member Function Returning Pointer
/**
#include <iostream>
class A { public: int x = 14; int* get() { return &x; } };
int main() {
    A obj;
    *obj.get() = 21;
    std::cout << obj.x;
    return 0;
}
*/
// Output: 21
//===========================================

//// Question 116: Static Data Member in Template Class
/**
#include <iostream>
template <class T>
class A {
public:
    static int x;
};
template <class T> int A<T>::x = 15;
int main() {
    std::cout << A<int>::x;
    return 0;
}
*/
// Output: 15
//===========================================

//// Question 117: Template Member Function in Class
/**
#include <iostream>
class A {
public:
    template <typename T>
    void show(T x) { std::cout << x; }
};
int main() {
    A obj;
    obj.show(16);
    return 0;
}
*/
// Output: 16
//===========================================

//// Question 118: Friend Function Template
/**
#include <iostream>
template <typename T>
class A {
    T x;
public:
    A(T v) : x(v) {}
    friend void show<>(A<T>);
};
template <typename T>
void show(A<T> a) { std::cout << a.x; }
int main() {
    A<int> obj(17);
    show(obj);
    return 0;
}
*/
// Output: 17
//===========================================

//// Question 119: Friend Class Template
/**
#include <iostream>
template <typename T>
class B;
template <typename T>
class A {
    T x;
    friend class B<T>;
public:
    A(T v) : x(v) {}
};
template <typename T>
class B {
public:
    void show(A<T>& a) { std::cout << a.x; }
};
int main() {
    A<int> a(18);
    B<int> b;
    b.show(a);
    return 0;
}
*/
// Output: 18
//===========================================

//// Question 120: Lambda as Member Function Argument
/**
#include <iostream>
class A {
public:
    void apply(void (*f)()) { f(); }
};
int main() {
    A obj;
    obj.apply([](){ std::cout << "L"; });
    return 0;
}
*/
// Output: L
//===========================================

//// Question 121: Using std::function as Member
/**
#include <iostream>
#include <functional>
class A {
public:
    std::function<void()> f;
    void call() { f(); }
};
int main() {
    A obj;
    obj.f = [](){ std::cout << "F"; };
    obj.call();
    return 0;
}
*/
// Output: F
//===========================================

//// Question 122: Member Initialization Order
/**
#include <iostream>
class A {
public:
    int x;
    int y;
    A() : y(22), x(21) { std::cout << x << y; }
};
int main() {
    A obj;
    return 0;
}
*/
// Output: 2122
//===========================================

//// Question 123: Inheriting Constructors (C++11)
**
#include <iostream>
class A {
public:
    A(int x) { std::cout << x; }
};
class B : public A {
public:
    using A::A;
};
int main() {
    B obj(23);
    return 0;
}
*/
// Output: 23
//===========================================

//// Question 124: Delegating Constructor (C++11)
/**
#include <iostream>
class A {
public:
    int x;
    A() : A(24) {}
    A(int v) : x(v) { std::cout << x; }
};
int main() {
    A obj;
    return 0;
}
*/
// Output: 24
//===========================================

//// Question 125: Explicit Constructor
/**
#include <iostream>
class A {
public:
    int x;
    explicit A(int v) : x(v) {}
};
int main() {
    // A obj = 25; // Error
    A obj(25);
    std::cout << obj.x;
    return 0;
}
*/
// Output: 25
//===========================================

//// Question 126: Delete Copy Constructor (C++11)
/**
#include <iostream>
class A {
public:
    A() {}
    A(const A&) = delete;
};
int main() {
    A a;
    // A b = a; // Error
    std::cout << "OK";
    return 0;
}
*/
// Output: OK
//===========================================

//// Question 127: Defaulted Constructor (C++11)
/**
#include <iostream>
class A {
public:
    A() = default;
    int x = 27;
};
int main() {
    A obj;
    std::cout << obj.x;
    return 0;
}
*/
// Output: 27
//===========================================

//// Question 128: Move Constructor (C++11)
/**
#include <iostream>
#include <utility>
class A {
public:
    int x;
    A(int v) : x(v) {}
    A(A&& other) { x = other.x; other.x = 0; }
};
int main() {
    A a(28);
    A b = std::move(a);
    std::cout << b.x << a.x;
    return 0;
}
*/
// Output: 280
//===========================================

//// Question 129: Move Assignment Operator (C++11)
/**
#include <iostream>
#include <utility>
class A {
public:
    int x;
    A(int v) : x(v) {}
    A& operator=(A&& other) { x = other.x; other.x = 0; return *this; }
};
int main() {
    A a(29), b(0);
    b = std::move(a);
    std::cout << b.x << a.x;
    return 0;
}
*/
// Output: 290
//===========================================

//// Question 130: Override Keyword (C++11)
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() override { std::cout << "B"; } };
int main() {
    A* p = new B();
    p->show();
    delete p;
    return 0;
}
*/
// Output: B
//===========================================

//// Question 131: Final Keyword (C++11)
/**
#include <iostream>
class A final { public: void show() { std::cout << "A"; } };
// class B : public A {}; // Error: cannot inherit from final
int main() {
    A obj;
    obj.show();
    return 0;
}
*/
// Output: A
//===========================================

//// Question 132: Virtual Inheritance Diamond Problem
/**
#include <iostream>
class A { public: int x = 1; };
class B : virtual public A {};
class C : virtual public A {};
class D : public B, public C {};
int main() {
    D obj;
    std::cout << obj.x;
    return 0;
}
*/
// Output: 1
//===========================================

//// Question 133: Multiple Inheritance with Same Function Name
/**
#include <iostream>
class A { public: void show() { std::cout << "A"; } };
class B { public: void show() { std::cout << "B"; } };
class C : public A, public B {};
int main() {
    C obj;
    obj.A::show();
    obj.B::show();
    return 0;
}
*/
// Output: AB
//===========================================

//// Question 134: Static Member in Derived Class
/**
#include <iostream>
class A { public: static int x; };
int A::x = 34;
class B : public A {};
int main() {
    std::cout << B::x;
    return 0;
}
*/
// Output: 34
//===========================================

//// Question 135: Static Member Function in Derived Class
/**
#include <iostream>
class A { public: static void show() { std::cout << "A"; } };
class B : public A {};
int main() {
    B::show();
    return 0;
}
*/
// Output: A
//===========================================

//// Question 136: Calling Base Class Method from Derived
/**
#include <iostream>
class A { public: void show() { std::cout << "A"; } };
class B : public A { public: void showB() { show(); } };
int main() {
    B obj;
    obj.showB();
    return 0;
}
*/
// Output: A
//===========================================

//// Question 137: Using this Pointer for Chaining
/**
#include <iostream>
class A {
public:
    int x;
    A& set(int v) { x = v; return *this; }
    void show() { std::cout << x; }
};
int main() {
    A obj;
    obj.set(37).show();
    return 0;
}
*/
// Output: 37
//===========================================

//// Question 138: Static Member Variable in Template
/**
#include <iostream>
template <typename T>
class A {
public:
    static int x;
};
template <typename T> int A<T>::x = 38;
int main() {
    std::cout << A<int>::x;
    return 0;
}
*/
// Output: 38
//===========================================

//// Question 139: Static Member Function in Template
/**
#include <iostream>
template <typename T>
class A {
public:
    static void show() { std::cout << "T"; }
};
int main() {
    A<int>::show();
    return 0;
}
*/
// Output: T
//===========================================

//// Question 140: Friend Function Accessing Private Member
/**
#include <iostream>
class A {
private:
    int x = 40;
    friend void show(A&);
};
void show(A& a) { std::cout << a.x; }
int main() {
    A obj;
    show(obj);
    return 0;
}
*/
// Output: 40
//===========================================

//// Question 141: Friend Class Accessing Private Member
/**
#include <iostream>
class A {
private:
    int x = 41;
    friend class B;
};
class B {
public:
    void show(A& a) { std::cout << a.x; }
};
int main() {
    A obj;
    B b;
    b.show(obj);
    return 0;
}
*/
// Output: 41
//===========================================

//// Question 142: Static Member Variable Shared by All Objects
/**
#include <iostream>
class A {
public:
    static int x;
};
int A::x = 42;
int main() {
    A a, b;
    a.x = 43;
    std::cout << b.x;
    return 0;
}
*/
// Output: 43
//===========================================

//// Question 143: Static Member Function Accessing Static Variable
/**
#include <iostream>
class A {
public:
    static int x;
    static void show() { std::cout << x; }
};
int A::x = 44;
int main() {
    A::show();
    return 0;
}
*/
// Output: 44
//===========================================

//// Question 144: Static Member Function Cannot Access Non-static Variable
/**
#include <iostream>
class A {
    int x = 1;
public:
    static void show() { /* std::cout << x; */ std::cout << "OK"; }
};
int main() {
    A::show();
    return 0;
}
*/
// Output: OK
//===========================================

//// Question 145: Static Member Variable Incremented by All Objects
/**
#include <iostream>
class A {
public:
    static int x;
    void inc() { x++; }
};
int A::x = 0;
int main() {
    A a, b;
    a.inc();
    b.inc();
    std::cout << A::x;
    return 0;
}
*/
// Output: 2
//===========================================

//// Question 146: Static Member Function Called by Object
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A a;
    a.show();
    return 0;
}
*/
// Output: Static
//===========================================

//// Question 147: Static Member Function Called by Class
/**
#include <iostream>
class A {
public:
    static void show() { std::cout << "Static"; }
};
int main() {
    A::show();
    return 0;
}
*/
// Output: Static
//===========================================

//// Question 148: Virtual Function with Base Reference
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
void print(A& a) { a.show(); }
int main() {
    B b;
    print(b);
    return 0;
}
*/
// Output: B
//===========================================

//// Question 149: Virtual Function with Base Pointer
/**
#include <iostream>
class A { public: virtual void show() { std::cout << "A"; } };
class B : public A { public: void show() { std::cout << "B"; } };
void print(A* a) { a->show(); }
int main() {
    B b;
    print(&b);
    return 0;
}
*/
// Output: B
//===========================================

//// Question 150: Virtual Destructor Order
/**
#include <iostream>
class A { public: virtual ~A() { std::cout << "A"; } };
class B : public A { public: ~B() { std::cout << "B"; } };
int main() {
    A* p = new B();
    delete p;
    return 0;
}
*/
// Output: BA
//===========================================