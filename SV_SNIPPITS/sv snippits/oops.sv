//======================================

/*
class Q1;
  int a = 10;
endclass

module tb;
  Q1 obj = new();
  initial $display("a = %0d", obj.a);
endmodule

*/

//======================================

/*
//  
 class Q2;
  string name = "Vinay";
endclass

module tb;
  Q2 o = new();
  initial $display("Name = %s", o.name);
endmodule
 
*/
//======================================
/*

// 3️Define class method and call it

 class Q3;
  function void show();
    $display("Inside show() method");
  endfunction
endclass

module tb;
  Q3 o = new();
  initial o.show();
endmodule
 
//======================================


// 4️ Class constructor demo

 class Q4;
  function new();
    $display("Constructor called!");
  endfunction
endclass

module tb;
  Q4 o = new();
endmodule
 

//====================================

// 5️ Parameterized constructor

 class Q5;
  int a;
  function new(int x);
    a = x;
  endfunction
endclass

module tb;
  Q5 o = new(42);
  initial $display("a=%0d", o.a);
endmodule
 

//====================================

// 6️ Multiple objects of a class

 class Q6;
  int id;
endclass

module tb;
  Q6 a = new(), b = new();
  initial begin
    a.id = 1; b.id = 2;
    $display("%0d %0d", a.id, b.id);
  end
endmodule
 

//====================================

// 7️ Null object check

 class Q7; endclass
module tb;
  Q7 obj;
  initial if (obj == null) $display("Null object!");
endmodule
 

//====================================

// 8️ Object assignment (shallow copy)

 class Q8; int data; endclass
module tb;
  Q8 a = new(), b;
  initial begin
    a.data = 5;
    b = a;
    b.data = 9;
    $display("%0d", a.data); // 9 (same handle)
  end
endmodule
 

//====================================

// 9 Deep copy using copy constructor

class Q9;
  int data;
  function new(Q9 rhs = null);
    if (rhs != null)
      data = rhs.data;
  endfunction
endclass

module tb;
  Q9 a, b;

  initial begin
    a = new();
    a.data = 10;
    b = new(a);
    b.data = 20;
    $display("\n a=%0d b=%0d", a.data, b.data);
  end
endmodule


//====================================

// 10 Static variable shared by all objects

 class Q10;
  static int count;
  function new();
  count++; 
  endfunction
endclass

module tb;
  initial begin
    Q10 a=new(); 
    Q10 b=new();
    $display("count=%0d", Q10::count);
  end
endmodule
 

//====================================

// 11️ Class inside another class

 class Inner; int x=5; endclass
class Outer;
  Inner i = new();
endclass

module tb;
  Outer o = new();
  initial $display("%0d", o.i.x);
endmodule
 

//====================================

// 12 Use of `this` keyword

 class Q12;
  int a;
  function new(int a);
    this.a = a;
  endfunction
endclass

module tb;
  Q12 o = new(99);
  initial $display("%0d", o.a);
endmodule
 

//====================================

// 13️ Inheritance example

 class Base;
  function void show(); $display("Base");
  endfunction
endclass

class Child extends Base;
  function void show(); $display("Child"); 
  endfunction
endclass

module tb;
  Child c = new();
  initial c.show();
endmodule
 

//====================================

// 14 Use `super.new`

 class A;
  function new(); $display("A new");
  endfunction
endclass
class B extends A;
  function new();
    super.new();
    $display("B new");
  endfunction
endclass
module
 tb; B b = new(); 
endmodule


//====================================

// 15️ Method overriding

	class base;
      function void msg();
        $display("\n base =====");
      endfunction
    endclass
	
class der extends base;
  function void msg();
    $display("\n Derived  ======");
    super.msg();  // calling base class method through super keyword
  endfunction
endclass

	module tb;
      der d = new(); 
      initial
        d.msg();
    endmodule
 

//====================================

// 16️ Polymorphism using virtual class

virtual class Shape;
  pure virtual function void draw();
endclass

class Circle extends Shape;
  function void draw();
    $display("Drawing circle");
  endfunction
endclass

module tb;
  Circle c;          // Declare handle of derived class
  initial begin
    c = new();       // Create object of derived class
    c.draw();        // Call method
  end
endmodule


//====================================

// 17️Abstract class example

virtual class Animal;
  pure virtual function void sound();
endclass

class Dog extends Animal;
  function new();
  endfunction
  function void sound();
    $display("Bark");
  endfunction
endclass

module tb;
  Animal a;
  Dog d;
  initial begin
    d = new();
    a = d;
    a.sound();
  end
endmodule


//====================================

// 18️ Class with static method
// static function and access with scope resolution

 class Math;
  static function int add(int a,b);
    return a+b;
  endfunction
endclass

module tb;
  initial 
  $display("%0d", Math::add(3,4));
endmodule
 

//====================================

// 19️ Parameterized class

 class Box #(type T=int);
  T data;
endclass

module tb;
  Box#(string) s = new();
  initial begin
  s.data="Hi"; $display(s.data);
  end
endmodule
 

//====================================

// 20️Call base method using `super`

 class Base;
  function void show();
  $display("Base show");
  endfunction
endclass

class Child extends Base;
  function void show();
    super.show();
    $display("Child show");
  endfunction
endclass

module tb; 
Child c=new(); initial c.show(); 
endmodule
 

//====================================

// 21️ Dynamic object creation using `new`

 class Item;
  int id;
endclass

module tb;
  Item i;
  initial begin
    i = new();
    i.id = 55;
    $display("id=%0d", i.id);
  end
endmodule
 

//====================================

// 22️ Class method returning value

 class Calc;
  function int add(int a,b);
    return a+b;
  endfunction
endclass

module tb;
  Calc c = new();
  initial $display("%0d", c.add(4,6));
endmodule
 

//====================================

// 23️Constructor overloading (via if)

 class Demo;
  int x;
  function new(int v=0);
    x=v;
  endfunction
endclass

module tb;
  Demo d1=new(), d2=new(10);
  initial 
  $display("%0d %0d", d1.x, d2.x);
endmodule
 

//====================================

// 24️Local variable and automatic scope

 class Q24;
  function void f();
    automatic int x=5;
    $display("x=%0d",x);
  endfunction
endclass

module tb; 
Q24 o=new(); 
initial o.f(); 
endmodule
 

//====================================

// 25️ Copy method using `copy()`

 class Q25;
  int d;
  function void copy(Q25 rhs); 
  this.d=rhs.d;
  endfunction
endclass

module tb;
  Q25 a=new(), b=new();
  initial begin a.d=9; 
  b.copy(a); 
  $display(b.d); 
  end
endmodule
 

//====================================

// 26️ Compare two objects

 class Q26;
  int d;
  function bit compare(Q26 rhs);
  return (this.d==rhs.d);
  endfunction
endclass

module tb;
  Q26 a=new(), b=new();
  initial begin 
  a.d=5; b.d=5; 
  $display(a.compare(b)); 
  end
endmodule
 

//====================================

// 27️ Class array

 class Item; int id; endclass
module tb;
  Item arr[3];
  initial begin
    foreach(arr[i]) arr[i]=new();
    arr[0].id=10; arr[1].id=20;
    $display("%0d", arr[1].id);
  end
endmodule

//====================================

// 29️ Virtual method example

// testbench.sv

class A;
  virtual function void show(); 
    $display("A"); 
  endfunction
endclass

class B extends A;
  function void show(); 
    $display("B"); 
  endfunction
endclass

module tb;
  A obj;

  initial begin
    B b_obj = new();     // create a B object explicitly
    obj = b_obj;         // assign to base class handle
    obj.show();          // calls B's show() via virtual function
  end
endmodule

 

//====================================

// 30️ Use of `$cast`

class Base;
endclass

class Child extends Base;
  int x = 5;
endclass

module tb;
  Base b;
  Child c;

  initial begin
    Child temp = new(); // instantiate Child explicitly
    b = temp;           // assign to base class handle
    if ($cast(c, b))
      $display("x=%0d", c.x);
  end
endmodule




//====================================

// 31️ Random variable inside class

 class RandC;
  rand int a;
endclass

module tb;
  RandC r=new();
  initial begin r.randomize(); 
  $display("%0d",r.a); 
  end
endmodule
 

//====================================

// 32️ Constraint inside class

 class RandC;
  rand int a;
  constraint c1 { a inside {[1:10]}; }
endclass

module tb;
  RandC r=new();
  initial 
  repeat(3) begin r.randomize();
  $display(r.a);
  end
endmodule
 
*/
//====================================

/*

// 33️ Encapsulation using private

 class Q33;
  local int secret = 42;
  function int get();
  return secret;
  endfunction
endclass

module tb;
 Q33 o=new(); 
 initial
 $display(o.get());
 endmodule
 
 
 /*
class q33;
  local int secret = 42;
  function int get();
    return secret;
  endfunction
endclass

module tb;
  q33 o=new();
  initial 
    $display(o.get());
endmodule

*/

/* 

// protected 

class Parent;
  protected int secret = 42;
endclass

class Child extends Parent;
  function int get();
    return secret; // ✅ OK: accessed from subclass
  endfunction
endclass

module tb;
  Child o = new();
  initial 
  $display("Protected: %0d", o.get()); // ✅ OK
  // initial
  $display(o.secret); // ❌ Error: 'secret' is protected
endmodule

*/

/*

// private

class MyClass;
  private int secret = 42;

  function int get();
    return secret; // OK: accessed within the class
  endfunction
endclass

module tb;
  MyClass o = new();
  initial $display("Private: %0d", o.get()); // ✅ OK
  // initial $display(o.secret); // ❌ Error: 'secret' is private
endmodule

*/
 

//===================================================

/*
// 34️ Associative array inside class

 class Store;
  int data[string];
endclass

module tb;
  Store s=new();
  initial begin
    s.data["a"]=10;
    $display("%0d", s.data["a"]);
  end
endmodule

//====================================

// 35️ Queue inside class

 class Q35;
  int q[$];
endclass

module tb;
  Q35 o=new();
  initial begin o.q.push_back(5); 
  $display(o.q.size()); 
  end
endmodule
 

//====================================

// 36️ Class returning another object

 class A;
  int id;
  function new(int i); 
  id=i;
  endfunction
  function A get_clone();
  return new(id); 
  endfunction
endclass

module tb;
  A a=new(10), b;
  initial begin
  b=a.get_clone();
  $display(b.id);
  end
endmodule
 

//====================================

// 37️ Class with default values

 class Q37;
  int a=3,b=4;
endclass
module tb; 
Q37 o=new();
 initial
 $display("%0d",o.a+o.b);
 endmodule
 

//====================================

// 38️Use of `typedef` for class

 typedef class Packet;
class Packet; 
int id;
 endclass

module tb;
  Packet p=new();
  initial begin p.id=9; 
  $display(p.id); 
  end
endmodule
 

//====================================

// 39️ Enum inside class

 class Q39;
  typedef enum {IDLE, BUSY} state_t;
  state_t st = IDLE;
endclass

module tb;
 Q39 o=new(); 
 initial $display("%s", o.st.name()); 
 endmodule

//====================================

// 41️ Dynamic memory allocation inside class

 class Dyn;
  int data[];
  function new(int n);
  data = new[n];
  endfunction
endclass

module tb; 
Dyn d=new(3); 
initial $display("%0d", d.data.size());
 endmodule
 

//====================================

// 42️ Using `foreach` inside class

 class C;
  int arr[3];
  function void init();
    foreach(arr[i]) arr[i]=i+1;
  endfunction
endclass

module tb;
  C c=new();
  initial begin c.init(); 
  $display("%p",c.arr);
  end
endmodule
 

//====================================

// 43️ Function overloading

 class Math;
  function int add(int a,b); 
  return a+b; 
  endfunction
  function real add(real a,b);
  return a+b;
  endfunction
endclass

module tb;
  Math m=new();
  initial
  $display("%0f", m.add(2.5,3.1));
endmodule
 

//====================================

// 44️ Inheritance of constructor args

 class Base;
  int id;
  function new(int id); 
  this.id=id; 
  endfunction
endclass
class Child extends Base;
  function new(int id);
  super.new(id);
  endfunction
endclass
module tb; 
Child c=new(99); 
initial $display(c.id); 
endmodule
 

//====================================

// 45️ Constant variable inside class

 class Q45;
  const int val = 10;
endclass
module tb; 
Q45 o=new();
 initial $display(o.val);
 endmodule
 

//====================================

// 46️ Use of `virtual` class method (override)

class Parent;
  virtual function void show(); 
    $display("Parent");
  endfunction
endclass

class Child extends Parent;
  function void show(); 
    $display("Child"); 
  endfunction
endclass

module tb;
  initial begin
    Child c = new();     // Create Child object
    Parent p = c;        // Assign to Parent handle
    p.show();            // Will print "Child" due to virtual
  end
endmodule


//====================================

// 47️ Class with associative array of objects

 class Node; int id; endclass
module tb;
  Node n[string];
  initial begin
    n["A"]=new(); n["A"].id=11;
    $display("%0d", n["A"].id);
  end
endmodule
 

//====================================

// 48️ Pass object to function

 class C; int x; endclass
module tb;
  task print_obj(C o);
  $display("x=%0d",o.x); 
  endtask
  C c=new(); 
  initial begin c.x=5; 
  print_obj(c); 
  end
endmodule
 

//====================================

// 49️ Object inside struct (hybrid)

 class C; int x=7; endclass
typedef struct { C obj; } wrap_t;

module tb;
  wrap_t w; 
  initial begin w.obj=new(); 
  $display(w.obj.x); 
  end
endmodule
 

//====================================

// 50️ End-to-end mini example (inheritance + method call)

 class Animal; 
 virtual function void speak();
 endfunction 
 endclass
class Cat extends Animal; 
function void speak(); 
$display("Meow"); 
endfunction
 endclass
class Dog
 extends Animal;
 function void speak();
 $display("Bark"); 
 endfunction 
 endclass

module tb;
  Animal a1=new Cat(), a2=new Dog();
  initial begin a1.speak(); a2.speak(); end
  
endmodule

//====================================

// 51️: Show hierarchical class calling (parent → child → grandchild)

 class A;
 function void show();
 $display("A"); 
 endfunction
 endclass
class B extends A; 
function void show(); 
$display("B"); 
endfunction 
endclass

class C extends B;
function void show();
$display("C"); 
endfunction 
endclass

module tb;
  C c = new();
  initial
  begin c.show();
  c.B::show();
  c.A::show();
  end
endmodule
 

//====================================

// 52️ Q: Demonstrate virtual + override keyword usage

 class Base;
  virtual function void msg();
  $display("Base msg");
  endfunction
endclass

class Sub extends Base;
  function void msg();
  $display("Sub msg");
  endfunction
endclass

module tb;
  Base b = new Sub();
  initial b.msg();
endmodule
 

//====================================

// 53️ Q: How to call parent’s method inside overridden child method

 class Parent;
  function void hello();
  $display("Parent hello");
  endfunction
endclass

class Child extends Parent;
  function void hello();
    super.hello();
    $display("Child hello");
  endfunction
endclass

module tb; Child c=new(); initial c.hello(); endmodule
 

//====================================

// 54️ Q: Using class handles as arguments

 class Packet;
  int id;
endclass

task print_pkt(Packet p);
  $display("Packet id=%0d", p.id);
endtask

module tb;
  Packet p=new(); initial begin p.id=5; print_pkt(p); end
endmodule
 

//====================================

// 55️ Q: Demonstrate virtual class array of derived objects

 virtual class Animal;
 pure virtual function void speak();
 endclass
class Cat extends Animal;
function void speak();
$display("Meow"); 
endfunction
endclass
class Dog extends Animal;
function void speak(); 
$display("Bark"); 
endfunction 
endclass

module tb;
  Animal pets[$];
  initial begin
    pets.push_back(new Cat());
    pets.push_back(new Dog());
    foreach(pets[i]) pets[i].speak();
  end
endmodule
 

//====================================

// 56️ Q: Clone an object using deep copy method

 class Box;
  int val;
  function Box clone(); Box b=new(); b.val=this.val; return b; endfunction
endclass

module tb;
  Box a=new(); a.val=10;
  Box b=a.clone();
  initial begin b.val=99; $display("a=%0d b=%0d",a.val,b.val); end
endmodule
 

//====================================

// 57️ Q: Create multiple levels of inheritance and call all

 class A; virtual function void disp(); $display("A"); endfunction endclass
class B extends A; function void disp(); $display("B"); endfunction endclass
class C extends B; function void disp(); $display("C"); endfunction endclass

module tb;
  A obj = new C();
  initial obj.disp();
endmodule
 

//====================================

// 58️ Q: Use of `$cast` with polymorphism

 class Parent; endclass
class Child extends Parent; int data=55; endclass

module tb;
  Parent p = new Child(); Child c;
  initial if($cast(c,p)) $display("data=%0d", c.data);
endmodule
 

//====================================

// 59️ Q: Interface a class with another through composition

 class Engine; function void start(); $display("Engine start"); endfunction endclass
class Car;
  Engine e;
  function new(); e=new(); endfunction
  function void drive(); e.start(); $display("Car moving"); endfunction
endclass

module tb; Car c=new(); initial c.drive(); endmodule
 

//====================================

// 60️ Q: Static method accessing static data

 class Counter;
  static int count=0;
  static function void inc(); count++; endfunction
endclass

module tb;
  initial begin
    repeat(3) Counter::inc();
    $display("Count=%0d", Counter::count);
  end
endmodule
 

//====================================

// 61️ Q: Demonstrate polymorphic array

 class A; virtual function void show(); $display("A"); endfunction endclass
class B extends A; function void show(); $display("B"); endfunction endclass
class C extends A; function void show(); $display("C"); endfunction endclass

module tb;
  A arr[$];
  initial begin
    arr.push_back(new B());
    arr.push_back(new C());
    foreach(arr[i]) arr[i].show();
  end
endmodule
 

//====================================

// 62 Q: Write a class using nested methods (method calls another)

 class Calc;
  function int add(int a,b); return a+b; endfunction
  function void display();
    $display("Sum=%0d", add(4,6));
  endfunction
endclass

module tb; Calc c=new(); initial c.display(); endmodule
 

//====================================

// 63 Q: Demonstrate class inheritance with extra member

 class Base; int x; endclass
class Derived extends Base; int y; endclass
module tb; Derived d=new(); initial begin d.x=5; d.y=10; $display("%0d %0d",d.x,d.y); end endmodule
 

//====================================

// 64️ Q: Create parameterized class with multiple data types

 class Pair #(type T1=int, type T2=string);
  T1 key; T2 value;
endclass

module tb;
  Pair#(int, string) p=new();
  initial begin p.key=1; p.value="One"; $display("%0d:%s",p.key,p.value); end
endmodule
 */

//====================================
/*
// 65️ Q: Demonstrate pure virtual method

 virtual class Shape; pure virtual function void area(); endclass
class Circle extends Shape;
  function void area(); $display("πr²"); endfunction
endclass

module tb; Shape s=new Circle(); initial s.area(); endmodule
 

//====================================

// 66️ Q: Show multiple objects modifying same static variable

 class Demo;
  static int shared;
  function new(); shared++; endfunction
endclass

module tb;
  initial begin
    Demo a=new(); Demo b=new();
    $display("Shared=%0d", Demo::shared);
  end
endmodule
 

//====================================

// 67️ Q: Demonstrate object handle reassignment

 class Obj; int id; endclass
module tb;
  Obj a=new(); Obj b=new();
  initial begin a.id=10; b=a; b.id=99; $display(a.id); end
endmodule
 

//====================================

// 68️ Q: Call virtual method chain using base handle

 class A; virtual function void print(); $display("A"); endfunction endclass
class B extends A; function void print(); $display("B"); endfunction endclass
class C extends B; function void print(); $display("C"); endfunction endclass

module tb; A obj=new C(); initial obj.print(); endmodule
 

//====================================

// 69️ Q: Use of `const` data member

 class Config;
  const string version = "v1.0";
endclass

module tb; Config c=new(); initial $display(c.version); endmodule
 

//====================================

// 70️ Q: Randomize object array elements

 class RandObj;
  rand int val;
  constraint c { val inside {[1:5]}; }
endclass

module tb;
  RandObj objs[3];
  initial begin
    foreach(objs[i]) objs[i]=new();
    foreach(objs[i]) begin objs[i].randomize(); $display(objs[i].val); end
  end
endmodule
 

//====================================

// 71️ Q: Polymorphic method calling in loop

 class Shape; virtual function void draw(); endfunction endclass
class Sq extends Shape; function void draw(); $display("Square"); endfunction endclass
class Tri extends Shape; function void draw(); $display("Triangle"); endfunction endclass

module tb;
  Shape s[$];
  initial begin s.push_back(new Sq()); s.push_back(new Tri());
    foreach(s[i]) s[i].draw();
  end
endmodule
 

//====================================

// 72️ Q: Nested inheritance + super call chain

 class A; function void show(); $display("A"); endfunction endclass
class B extends A; function void show(); super.show(); $display("B"); endfunction endclass
class C extends B; function void show(); super.show(); $display("C"); endfunction endclass

module tb; C c=new(); initial c.show(); endmodule
 

//====================================

// 73️ Q: Composition of 2 classes and function call chain

 class Logger; function void log(string msg); $display("LOG: %s", msg); endfunction endclass
class App;
  Logger l;
  function new(); l=new(); endfunction
  function void run(); l.log("Running App"); endfunction
endclass

module tb; App a=new(); initial a.run(); endmodule
 

//====================================

// 74️ Q: Static function inside parameterized class

 class Math#(type T=int);
  static function T add(T a,b); return a+b; endfunction
endclass

module tb; initial $display("%0d", Math#(int)::add(3,7)); endmodule
 

//====================================

// 75️ Q: Use of default arguments in constructor

 class Packet;
  int id; string name;
  function new(int id=0, string name="none");
    this.id=id; this.name=name;
  endfunction
endclass

module tb;
  Packet p1=new(1,"cmd"), p2=new();
  initial $display("%0d %s | %0d %s", p1.id,p1.name,p2.id,p2.name);
endmodule
 

//====================================

// 76️ Q: Overriding same method with different logic

 class Base; virtual function void calc(); $display("Base calc"); endfunction endclass
class Der1 extends Base; function void calc(); $display("Der1 calc"); endfunction endclass
class Der2 extends Base; function void calc(); $display("Der2 calc"); endfunction endclass

module tb;
  Base b;
  initial begin b=new Der1(); b.calc(); b=new Der2(); b.calc(); end
endmodule
 

//====================================

// 77️ Q: Factory-style object creation using class type parameter

 class Base; virtual function void kind(); endfunction endclass
class Alpha extends Base; function void kind(); $display("Alpha"); endfunction endclass
class Beta extends Base; function void kind(); $display("Beta"); endfunction endclass

module tb;
  function Base create(string t);
    if(t=="A") return new Alpha();
    else return new Beta();
  endfunction

  Base b; initial begin b=create("A"); b.kind(); end
endmodule
 

//====================================

// 78️ Q: Object handle array of different derived classes

 class Parent; virtual function void show(); endfunction endclass
class One extends Parent; function void show(); $display("One"); endfunction endclass
class Two extends Parent; function void show(); $display("Two"); endfunction endclass

module tb;
  Parent arr[$] = {new One(), new Two()};
  initial foreach(arr[i]) arr[i].show();
endmodule
 

//====================================

// 79️ Q: Compare two objects’ fields logically

 class Data;
  int x,y;
  function bit same(Data rhs);
    return (x==rhs.x && y==rhs.y);
  endfunction
endclass

module tb;
  Data d1=new(), d2=new();
  initial begin d1.x=1; d1.y=2; d2.x=1; d2.y=2;
    $display("Equal=%0d", d1.same(d2));
  end
endmodule
 

//====================================

// 80️ Q: Virtual base class for multiple derived types

 virtual class Trans;
  pure virtual function void execute();
endclass

class Read extends Trans;
  function void execute(); $display("Read op"); endfunction
endclass

class Write extends Trans;
  function void execute(); $display("Write op"); endfunction
endclass

module tb;
  Trans t[$] = {new Read(), new Write()};
  initial foreach(t[i]) t[i].execute();
endmodule
 

//====================================

// 81️⃣ Q: Class calling task from inside function

 class Q81;
  task delay_print(); #1 $display("Task done"); endtask
  function void run(); delay_print(); endfunction
endclass

module tb; Q81 q=new(); initial q.run(); endmodule
 

//====================================

// 82️ Q: Create linked list nodes using class

 class Node;
  int data; Node next;
endclass

module tb;
  Node n1=new(), n2=new();
  initial begin n1.data=5; n2.data=10; n1.next=n2;
    $display("%0d->%0d", n1.data, n1.next.data);
  end
endmodule
 

//====================================

// 83 Q: Class with array of sub-objects

 class Item; int id; endclass
class Group;
  Item members[2];
  function new(); foreach(members[i]) members[i]=new(); endfunction
endclass

module tb; Group g=new(); initial g.members[0].id=7; endmodule
 

//====================================

// 84️ Q: Inherit and extend class with new methods

 class Base; function void show(); $display("Base"); endfunction endclass
class Ext extends Base; function void extra(); $display("Extra"); endfunction endclass

module tb; Ext e=new(); initial begin e.show(); e.extra(); end endmodule
 

//====================================

// 85️ Q: Demonstrate protected variable access

 class A;
  protected int val=99;
endclass
class B extends A;
  function void disp(); $display("val=%0d",val); endfunction
endclass
module tb; B b=new(); initial b.disp(); endmodule
 

//====================================

// 86️ Q: Override a constraint in derived class

 class Base;
  rand int x; constraint c1 { x<5; }
endclass
class Der extends Base;
  constraint c2 { x>10; }
endclass

module tb;
  Der d=new(); initial begin d.randomize(); $display("%0d",d.x); end
endmodule
 

//====================================

// 87️ Q: Call static and non-static together

 class Test;
  static int cnt=0; int id;
  function new(); id=++cnt; endfunction
  static function void show_cnt(); $display("Total=%0d",cnt); endfunction
endclass

module tb;
  Test a=new(), b=new(); initial Test::show_cnt();
endmodule
 

//====================================

// 88️ Q: Use of `super` to access parent data

 class P; int a=10; endclass
class C extends P;
  function void print(); $display("a=%0d", super.a); endfunction
endclass

module tb; C c=new(); initial c.print(); endmodule
 

//====================================

// 89️ Q: Demonstrate virtual interface with class

 interface intf; logic clk; endinterface
class Driver;
  virtual intf vif;
  function new(virtual intf vif); this.vif=vif; endfunction
  task run(); repeat(3) #1 vif.clk=~vif.clk; endtask
endclass

module tb;
  intf i(); Driver d=new(i);
  initial begin i.clk=0; d.run(); $display("clk=%0b",i.clk); end
endmodule
 

//====================================

// 90️ : Multiple inheritance using virtual base (conceptual)

 virtual class A; virtual function void f(); endfunction endclass
class B extends A; function void f(); $display("B"); endfunction endclass
class C extends A; function void f(); $display("C"); endfunction endclass
class D extends B; function void f(); $display("D"); endfunction endclass
module tb; A a=new D(); initial a.f(); endmodule
 

//====================================

// 91️ Q: Override virtual method and access both outputs

 class Base;
  virtual function string get_name(); return "Base"; endfunction
endclass
class Der extends Base;
  function string get_name(); return {super.get_name(),"->Der"}; endfunction
endclass
module tb; Der d=new(); initial $display(d.get_name()); endmodule
 

//====================================

// 92️ Q: Return class handle from function

class Maker;
  function Maker create(); return new(); endfunction
endclass

module tb;
  Maker m; initial begin m=new().create(); $display("Created"); end
endmodule

//==========================================================

// 93️ : Array of handles passed between tasks

class Obj; int id; endclass
task show(Obj arr[$]); foreach(arr[i]) $display("id=%0d", arr[i].id); endtask
module tb;
  Obj a[$]; initial begin foreach(a[i]) a[i]=new();
    repeat(3) begin Obj t=new(); t.id=$urandom_range(1,10); a.push_back(t); end
    show(a);
  end
endmodule

//==========================================================



//==========================================================
//  Q95: Use of static function to count number of objects
//==========================================================
class counter;
  static int obj_count = 0;
  
  function new();
    obj_count++;
  endfunction
  
  static function void show_count();
    $display("Total objects created = %0d", obj_count);
  endfunction
endclass

module q95;
  initial begin
    counter c1 = new();
    counter c2 = new();
    counter::show_count();
  end
endmodule


//==========================================================
//  Q96: Demonstrate virtual function overriding
//==========================================================
class base96;
  virtual function void display();
    $display("Base display()");
  endfunction
endclass

class child96 extends base96;
  function void display();
    $display("Child display()");
  endfunction
endclass

module q96;
  initial begin
    base96 b = new();
    child96 c = new();
    base96 ref;
    ref = c;      // polymorphism
    ref.display(); // calls child method
  end
endmodule


//==========================================================
//  Q97: Demonstrate parameterized class usage
//==========================================================
class data_holder #(type T=int);
  T value;
  function new(T v);
    value = v;
  endfunction
  function void show();
    $display("Value = %0p", value);
  endfunction
endclass

module q97;
  initial begin
    data_holder#(int)   d1 = new(42);
    data_holder#(string)d2 = new("Hello");
    d1.show();
    d2.show();
  end
endmodule


//==========================================================
//  Q98: Use of super.new() and constructor chaining
//==========================================================
class parent98;
  function new();
    $display("Parent constructor called");
  endfunction
endclass

class child98 extends parent98;
  function new();
    super.new();
    $display("Child constructor called");
  endfunction
endclass

module q98;
  initial child98 c = new();
endmodule


//==========================================================
//  Q99: Abstract (virtual) class and implementation
//==========================================================
virtual class shape99;
  pure virtual function void area();
endclass

class circle99 extends shape99;
  int r;
  function new(int rad);
    r = rad;
  endfunction
  function void area();
    $display("Circle area = %0d", 3*r*r);
  endfunction
endclass

module q99;
  initial begin
    shape99 s;
    s = new circle99(5);
    s.area();
  end
endmodule


//==========================================================
//  Q100: Demonstrate deep copy using clone()
//==========================================================
class packet100;
  int id;
  string data;
  function new(int id, string data);
    this.id = id;
    this.data = data;
  endfunction
  
  function packet100 clone();
    packet100 p = new(this.id, this.data);
    return p;
  endfunction
endclass

module q100;
  initial begin
    packet100 p1 = new(10, "DATA");
    packet100 p2 = p1.clone();
    p2.data = "CHANGED";
    $display("p1.data = %s | p2.data = %s", p1.data, p2.data);
  end
endmodule








//-----------------------------------------------------------
// Q101: Basic class with property and method
//-----------------------------------------------------------
class q101;
  int a;
  function void set_a(int val);
    a = val;
  endfunction
  function int get_a();
    return a;
  endfunction
endclass

module test_q101;
  initial begin
    q101 obj = new();
    obj.set_a(10);
    $display("Q101: a=%0d", obj.get_a());
  end
endmodule


//-----------------------------------------------------------
// Q102: Class with constructor
//-----------------------------------------------------------
class q102;
  int x;
  function new(int val);
    x = val;
  endfunction
  function int get_x();
    return x;
  endfunction
endclass

module test_q102;
  initial begin
    q102 obj = new(20);
    $display("Q102: x=%0d", obj.get_x());
  end
endmodule


//-----------------------------------------------------------
// Q103: Class with default constructor
//-----------------------------------------------------------
class q103;
  int data;
  function new();
    data = 5;
  endfunction
endclass

module test_q103;
  initial begin
    q103 obj = new();
    $display("Q103: data=%0d", obj.data);
  end
endmodule


//-----------------------------------------------------------
// Q104: Class inheritance
//-----------------------------------------------------------
class base104;
  int a;
endclass

class derived104 extends base104;
  int b;
endclass

module test_q104;
  initial begin
    derived104 obj = new();
    obj.a = 10;
    obj.b = 20;
    $display("Q104: a=%0d, b=%0d", obj.a, obj.b);
  end
endmodule


//-----------------------------------------------------------
// Q105: Method overriding
//-----------------------------------------------------------
class base105;
  function void display();
    $display("Base class");
  endfunction
endclass

class derived105 extends base105;
  function void display();
    $display("Derived class");
  endfunction
endclass

module test_q105;
  initial begin
    derived105 obj = new();
    obj.display();
  end
endmodule


//-----------------------------------------------------------
// Q106: Static property
//-----------------------------------------------------------
class q106;
  static int count = 0;
  function void incr();
    count++;
  endfunction
endclass

module test_q106;
  initial begin
    q106 o1 = new();
    q106 o2 = new();
    o1.incr();
    o2.incr();
    $display("Q106: count=%0d", q106::count);
  end
endmodule

*/
//-----------------------------------------------------------
// Q107: Null object check
//-----------------------------------------------------------

/*
class q107;
  int a;
endclass

module test_q107;
  initial begin
    q107 obj = null;
    if(obj==null)
      $display("Q107: Object is null");
  end
endmodule


//-----------------------------------------------------------
// Q108: Object assignment (shallow copy)
//-----------------------------------------------------------
class q108;
  int a;
endclass

module test_q108;
  initial begin
    q108 obj1 = new();
    obj1.a = 10;
    q108 obj2;
    obj2 = obj1;
    obj2.a = 20;
    $display("Q108: obj1.a=%0d, obj2.a=%0d", obj1.a, obj2.a);
  end
endmodule


//-----------------------------------------------------------
// Q109: Deep copy using clone()
//-----------------------------------------------------------
class q109;
  int a;
  function q109 clone();
    q109 temp = new();
    temp.a = this.a;
    return temp;
  endfunction
endclass

module test_q109;
  initial begin
    q109 obj1 = new();
    obj1.a = 10;
    q109 obj2 = obj1.clone();
    obj2.a = 20;
    $display("Q109: obj1.a=%0d, obj2.a=%0d", obj1.a, obj2.a);
  end
endmodule


//-----------------------------------------------------------
// Q110: Parameterized class
//-----------------------------------------------------------
class q110 #(int WIDTH=8);
  bit [WIDTH-1:0] data;
endclass

module test_q110;
  initial begin
    q110#(16) obj;
    obj = new();
    obj.data = 16'hABCD;
    $display("Q110: data=%h", obj.data);
  end
endmodule


//-----------------------------------------------------------
// Q111: Class with multiple constructors
//-----------------------------------------------------------
class q111;
  int a,b;
  function new();
    a=0;b=0;
  endfunction
  function new(int x,int y);
    a=x;b=y;
  endfunction
endclass

module test_q111;
  initial begin
    q111 obj = new(5,10);
    $display("Q111: a=%0d, b=%0d", obj.a,obj.b);
  end
endmodule


//-----------------------------------------------------------
// Q112: Class with private property
//-----------------------------------------------------------
class q112;
  int a;
  protected int b;
  function void set_b(int val);
    b = val;
  endfunction
  function int get_b();
    return b;
  endfunction
endclass

module test_q112;
  initial begin
    q112 obj = new();
    obj.set_b(15);
    $display("Q112: b=%0d", obj.get_b());
  end
endmodule


//-----------------------------------------------------------
// Q113: Polymorphism example
//-----------------------------------------------------------
class base113;
  virtual function void show();
    $display("Base");
  endfunction
endclass

class derived113 extends base113;
  function void show();
    $display("Derived");
  endfunction
endclass

module test_q113;
  initial begin
    base113 obj;
    obj = new derived113();
    obj.show();
  end
endmodule


//-----------------------------------------------------------
// Q114: Class with array property
//-----------------------------------------------------------
class q114;
  int arr[3];
endclass

module test_q114;
  initial begin
    q114 obj = new();
    obj.arr[0]=1; obj.arr[1]=2; obj.arr[2]=3;
    $display("Q114: arr=%p", obj.arr);
  end
endmodule


//-----------------------------------------------------------
// Q115: Static method
//-----------------------------------------------------------
class q115;
  static function void say_hello();
    $display("Hello from static method");
  endfunction
endclass

module test_q115;
  initial begin
    q115::say_hello();
  end
endmodule


//-----------------------------------------------------------
// Q116: Super.new() usage
//-----------------------------------------------------------
class base116;
  int a;
  function new(int val);
    a = val;
  endfunction
endclass

class derived116 extends base116;
  int b;
  function new(int val1,int val2);
    super.new(val1);
    b = val2;
  endfunction
endclass

module test_q116;
  initial begin
    derived116 obj = new(5,10);
    $display("Q116: a=%0d, b=%0d", obj.a,obj.b);
  end
endmodule


//-----------------------------------------------------------
// Q117: Class with multiple methods
//-----------------------------------------------------------
class q117;
  int a;
  function void set_a(int val); a=val; endfunction
  function void print_a(); $display("a=%0d",a); endfunction
endclass

module test_q117;
  initial begin
    q117 obj = new();
    obj.set_a(25);
    obj.print_a();
  end
endmodule


//-----------------------------------------------------------
// Q118: Class with dynamic array
//-----------------------------------------------------------
class q118;
  int da[];
endclass

module test_q118;
  initial begin
    q118 obj = new();
    obj.da = new[3];
    obj.da[0]=1; obj.da[1]=2; obj.da[2]=3;
    $display("Q118: da=%p", obj.da);
  end
endmodule


//-----------------------------------------------------------
// Q119: Virtual class usage
//-----------------------------------------------------------
virtual class base119;
  virtual function void display(); endfunction
endclass

class derived119 extends base119;
  function void display();
    $display("Derived class");
  endfunction
endclass

module test_q119;
  initial begin
    base119 obj;
    obj = new derived119();
    obj.display();
  end
endmodule


//-----------------------------------------------------------
// Q120: Class with randomizable property
//-----------------------------------------------------------
class q120;
  rand int a;
  constraint c { a>0; a<10; }
endclass

module test_q120;
  initial begin
    q120 obj = new();
    obj.randomize();
    $display("Q120: a=%0d", obj.a);
  end
endmodule





//-----------------------------------------------------------
// Q121: Class with multiple properties
//-----------------------------------------------------------
class q121;
  int a;
  int b;
  function void set_values(int x,int y);
    a=x; b=y;
  endfunction
  function void print_values();
    $display("Q121: a=%0d, b=%0d",a,b);
  endfunction
endclass

module test_q121;
  initial begin
    q121 obj = new();
    obj.set_values(5,10);
    obj.print_values();
  end
endmodule


//-----------------------------------------------------------
// Q122: Derived class accessing base property
//-----------------------------------------------------------
class base122;
  int a;
endclass

class derived122 extends base122;
  function void set_a(int val);
    a = val;
  endfunction
endclass

module test_q122;
  initial begin
    derived122 obj = new();
    obj.set_a(15);
    $display("Q122: a=%0d", obj.a);
  end
endmodule


//-----------------------------------------------------------
// Q123: Class with method returning sum
//-----------------------------------------------------------
class q123;
  int a,b;
  function int sum();
    return a+b;
  endfunction
endclass

module test_q123;
  initial begin
    q123 obj = new();
    obj.a=5; obj.b=10;
    $display("Q123: sum=%0d", obj.sum());
  end
endmodule


//-----------------------------------------------------------
// Q124: Static function returning value
//-----------------------------------------------------------
class q124;
  static function int get_five();
    return 5;
  endfunction
endclass

module test_q124;
  initial begin
    $display("Q124: %0d", q124::get_five());
  end
endmodule


//-----------------------------------------------------------
// Q125: Class with default and parameterized constructor
//-----------------------------------------------------------
class q125;
  int a;
  function new(); a=0; endfunction
  function new(int val); a=val; endfunction
endclass

module test_q125;
  initial begin
    q125 obj1 = new();
    q125 obj2 = new(20);
    $display("Q125: obj1.a=%0d, obj2.a=%0d", obj1.a,obj2.a);
  end
endmodule


//-----------------------------------------------------------
// Q126: Class with virtual method
//-----------------------------------------------------------
class base126;
  virtual function void display(); endfunction
endclass

class derived126 extends base126;
  function void display();
    $display("Derived126 class");
  endfunction
endclass

module test_q126;
  initial begin
    base126 obj = new derived126();
    obj.display();
  end
endmodule


//-----------------------------------------------------------
// Q127: Class with protected property
//-----------------------------------------------------------
class q127;
  protected int a;
  function void set_a(int val); a=val; endfunction
  function int get_a(); return a; endfunction
endclass

module test_q127;
  initial begin
    q127 obj = new();
    obj.set_a(30);
    $display("Q127: a=%0d", obj.get_a());
  end
endmodule


//-----------------------------------------------------------
// Q128: Null object before initialization
//-----------------------------------------------------------
class q128;
  int a;
endclass

module test_q128;
  initial begin
    q128 obj = null;
    if(obj==null) $display("Q128: Object is null");
  end
endmodule


//-----------------------------------------------------------
// Q129: Shallow copy of object
//-----------------------------------------------------------
class q129;
  int a;
endclass

module test_q129;
  initial begin
    q129 obj1 = new();
    obj1.a = 5;
    q129 obj2;
    obj2 = obj1;
    obj2.a = 10;
    $display("Q129: obj1.a=%0d, obj2.a=%0d", obj1.a,obj2.a);
  end
endmodule


//-----------------------------------------------------------
// Q130: Deep copy using custom function
//-----------------------------------------------------------
class q130;
  int a;
  function q130 clone();
    q130 temp = new();
    temp.a = this.a;
    return temp;
  endfunction
endclass

module test_q130;
  initial begin
    q130 obj1 = new(); obj1.a=15;
    q130 obj2 = obj1.clone(); obj2.a=25;
    $display("Q130: obj1.a=%0d, obj2.a=%0d", obj1.a,obj2.a);
  end
endmodule


//-----------------------------------------------------------
// Q131: Class with dynamic array property
//-----------------------------------------------------------
class q131;
  int da[];
endclass

module test_q131;
  initial begin
    q131 obj = new();
    obj.da = new[3];
    obj.da[0]=1; obj.da[1]=2; obj.da[2]=3;
    $display("Q131: da=%p", obj.da);
  end
endmodule


//-----------------------------------------------------------
// Q132: Parameterized class with default parameter
//-----------------------------------------------------------
class q132 #(int WIDTH=8);
  bit [WIDTH-1:0] data;
endclass

module test_q132;
  initial begin
    q132#(16) obj = new();
    obj.data = 16'hA5A5;
    $display("Q132: data=%h", obj.data);
  end
endmodule


//-----------------------------------------------------------
// Q133: Derived class overriding method
//-----------------------------------------------------------
class base133;
  function void display();
    $display("Base class");
  endfunction
endclass

class derived133 extends base133;
  function void display();
    $display("Derived class");
  endfunction
endclass

module test_q133;
  initial begin
    derived133 obj = new();
    obj.display();
  end
endmodule


//-----------------------------------------------------------
// Q134: Using super.new() in constructor
//-----------------------------------------------------------
class base134;
  int a;
  function new(int val); a=val; endfunction
endclass

class derived134 extends base134;
  int b;
  function new(int val1,int val2);
    super.new(val1);
    b=val2;
  endfunction
endclass

module test_q134;
  initial begin
    derived134 obj = new(5,10);
    $display("Q134: a=%0d, b=%0d", obj.a,obj.b);
  end
endmodule


//-----------------------------------------------------------
// Q135: Class with array sum method
//-----------------------------------------------------------
class q135;
  int arr[3];
  function int sum();
    return arr[0]+arr[1]+arr[2];
  endfunction
endclass

module test_q135;
  initial begin
    q135 obj = new();
    obj.arr[0]=1; obj.arr[1]=2; obj.arr[2]=3;
    $display("Q135: sum=%0d", obj.sum());
  end
endmodule


//-----------------------------------------------------------
// Q136: Virtual class with multiple derived
//-----------------------------------------------------------
virtual class base136;
  virtual function void show(); endfunction
endclass

class d1 extends base136;
  function void show(); $display("D1"); endfunction
endclass

class d2 extends base136;
  function void show(); $display("D2"); endfunction
endclass

module test_q136;
  initial begin
    base136 obj;
    obj = new d1(); obj.show();
    obj = new d2(); obj.show();
  end
endmodule


//-----------------------------------------------------------
// Q137: Static property increment
//-----------------------------------------------------------
class q137;
  static int count=0;
  function void incr(); count++; endfunction
endclass

module test_q137;
  initial begin
    q137 o1 = new(); q137 o2 = new();
    o1.incr(); o2.incr();
    $display("Q137: count=%0d", q137::count);
  end
endmodule


//-----------------------------------------------------------
// Q138: Class with constructor setting multiple properties
//-----------------------------------------------------------
class q138;
  int a,b;
  function new(int x,int y); a=x;b=y; endfunction
endclass

module test_q138;
  initial begin
    q138 obj = new(7,14);
    $display("Q138: a=%0d, b=%0d", obj.a,obj.b);
  end
endmodule


//-----------------------------------------------------------
// Q139: Class with protected array
//-----------------------------------------------------------
class q139;
  protected int arr[3];
  function void set_arr(int i,int val); arr[i]=val; endfunction
  function int get_arr(int i); return arr[i]; endfunction
endclass

module test_q139;
  initial begin
    q139 obj = new();
    obj.set_arr(0,5); obj.set_arr(1,10); obj.set_arr(2,15);
    $display("Q139: arr[0]=%0d, arr[1]=%0d, arr[2]=%0d", obj.get_arr(0),obj.get_arr(1),obj.get_arr(2));
  end
endmodule


//-----------------------------------------------------------
// Q140: Polymorphism with array of base class
//-----------------------------------------------------------
class base140;
  virtual function void show(); endfunction
endclass

class d1_140 extends base140;
  function void show(); $display("D1_140"); endfunction
endclass

class d2_140 extends base140;
  function void show(); $display("D2_140"); endfunction
endclass

module test_q140;
  initial begin
    base140 obj[2];
    obj[0] = new d1_140();
    obj[1] = new d2_140();
    foreach(obj[i]) obj[i].show();
  end
endmodule
*/

//-----------------------------------------------------------
// Q141: Class with method modifying property
//-----------------------------------------------------------

/*

class q141;
  int a;
  function void add(int val); a+=val; endfunction
endclass

module test_q141;
  initial begin
    q141 obj = new(); obj.a=5;
    obj.add(10);
    $display("Q141: a=%0d", obj.a);
  end
endmodule


//-----------------------------------------------------------
// Q142: Class with default value for property
//-----------------------------------------------------------
class q142;
  int a=100;
endclass

module test_q142;
  initial begin
    q142 obj = new();
    $display("Q142: a=%0d", obj.a);
  end
endmodule


//-----------------------------------------------------------
// Q143: Derived class accessing method of base
//-----------------------------------------------------------
class base143;
  function void greet(); $display("Hello Base"); endfunction
endclass

class derived143 extends base143;
endclass

module test_q143;
  initial begin
    derived143 obj = new();
    obj.greet();
  end
endmodule


//-----------------------------------------------------------
// Q144: Class with array of objects
//-----------------------------------------------------------
class q144;
  int a;
endclass

module test_q144;
  initial begin
    q144 arr[3];
    foreach(arr[i]) arr[i] = new();
    arr[0].a=5; arr[1].a=10; arr[2].a=15;
    foreach(arr[i]) $display("Q144: arr[%0d].a=%0d", i, arr[i].a);
  end
endmodule


//-----------------------------------------------------------
// Q145: Class with randomizable property
//-----------------------------------------------------------
class q145;
  rand int a;
  constraint c { a>0 && a<10; }
endclass

module test_q145;
  initial begin
    q145 obj = new();
    obj.randomize();
    $display("Q145: a=%0d", obj.a);
  end
endmodule


//-----------------------------------------------------------
// Q146: Class with two methods returning different values
//-----------------------------------------------------------
class q146;
  int a;
  function int get_a(); return a; endfunction
  function int double_a(); return 2*a; endfunction
endclass

module test_q146;
  initial begin
    q146 obj = new(); obj.a=7;
    $display("Q146: get_a=%0d, double_a=%0d", obj.get_a(), obj.double_a());
  end
endmodule


//-----------------------------------------------------------
// Q147: Virtual method overridden in derived
//-----------------------------------------------------------
class base147;
  virtual function void display(); endfunction
endclass

class derived147 extends base147;
  function void display(); $display("Derived147"); endfunction
endclass

module test_q147;
  initial begin
    base147 obj = new derived147();
    obj.display();
  end
endmodule


//-----------------------------------------------------------
// Q148: Class with multiple constructors (default + param)
//-----------------------------------------------------------
class q148;
  int a,b;
  function new(); a=0;b=0; endfunction
  function new(int x,int y); a=x;b=y; endfunction
endclass

module test_q148;
  initial begin
    q148 obj1 = new(); q148 obj2 = new(5,10);
    $display("Q148: obj1.a=%0d, obj2.a=%0d", obj1.a,obj2.a);
  end
endmodule


//-----------------------------------------------------------
// Q149: Class with method updating array
//-----------------------------------------------------------
class q149;
  int arr[3];
  function void set_val(int i,int val); arr[i]=val; endfunction
endclass

module test_q149;
  initial begin
    q149 obj = new();
    obj.set_val(0,5); obj.set_val(1,10); obj.set_val(2,15);
    $display("Q149: arr=%p", obj.arr);
  end
endmodule

*/
//-----------------------------------------------------------
// Q150: Class with dynamic memory allocation
//-----------------------------------------------------------

/*


class q150;
  int da[]; 
endclass

module test_q150;
  initial begin
    q150 obj = new();
    obj.da = new[4];
    obj.da[0]=1; obj.da[1]=2; obj.da[2]=3; obj.da[3]=4;
    $display("Q150: da=%p", obj.da);
  end
endmodule




*/


//=========================================

/*


//-----------------------------------------------------------
// Q151: Simple class with string property
//-----------------------------------------------------------
class q151;
  string name;
endclass

module test_q151;
  initial begin
    q151 obj = new();
    obj.name = "Vinay";
    $display("Q151: name=%s", obj.name);
  end
endmodule


//-----------------------------------------------------------
// Q152: Class method returning square of number
//-----------------------------------------------------------
class q152;
  function int square(int x);
    return x*x;
  endfunction
endclass

module test_q152;
  initial $display("Q152: %0d", (new q152()).square(5));
endmodule


//-----------------------------------------------------------
// Q153: Copying one object data to another
//-----------------------------------------------------------
class q153;
  int a;
  function void copy(q153 rhs);
    this.a = rhs.a;
  endfunction
endclass

module test_q153;
  initial begin
    q153 o1 = new(); o1.a=10;
    q153 o2 = new(); o2.copy(o1);
    $display("Q153: o1.a=%0d, o2.a=%0d", o1.a,o2.a);
  end
endmodule


//-----------------------------------------------------------
// Q154: Class with array initialized in constructor
//-----------------------------------------------------------
class q154;
  int arr[];
  function new(int n);
    arr = new[n];
  endfunction
endclass

module test_q154;
  initial begin
    q154 obj = new(3);
    $display("Q154: size=%0d", obj.arr.size());
  end
endmodule


//-----------------------------------------------------------
// Q155: Class method with string argument
//-----------------------------------------------------------
class q155;
  function void greet(string name);
    $display("Hello %s!", name);
  endfunction
endclass

module test_q155;
  initial (new q155()).greet("Vinay");
endmodule


//-----------------------------------------------------------
// Q156: Base and derived class displaying messages
//-----------------------------------------------------------
class base156;
  function void show(); $display("Base"); endfunction
endclass

class derived156 extends base156;
  function void show(); $display("Derived"); endfunction
endclass

module test_q156;
  initial begin
    base156 b = new();
    derived156 d = new();
    b.show(); d.show();
  end
endmodule


//-----------------------------------------------------------
// Q157: Class with two-level inheritance
//-----------------------------------------------------------
class A157; function void msg(); $display("A"); endfunction endclass
class B157 extends A157; endclass
class C157 extends B157; endclass

module test_q157;
  initial (new C157()).msg();
endmodule


//-----------------------------------------------------------
// Q158: Virtual function override chain
//-----------------------------------------------------------
class base158;
  virtual function void f(); $display("Base"); endfunction
endclass
class mid158 extends base158;
  function void f(); $display("Mid"); endfunction
endclass
class child158 extends mid158;
  function void f(); $display("Child"); endfunction
endclass

module test_q158;
  initial begin
    base158 b = new child158();
    b.f();
  end
endmodule


//-----------------------------------------------------------
// Q159: Parameterized class for any datatype
//-----------------------------------------------------------
class q159 #(type T=int);
  T val;
  function new(T v); val=v; endfunction
endclass

module test_q159;
  initial begin
    q159#(real) r = new(5.5);
    q159#(string) s = new("Data");
    $display("Q159: %0f %s", r.val, s.val);
  end
endmodule


//-----------------------------------------------------------
// Q160: Class returning formatted string
//-----------------------------------------------------------
class q160;
  string name;
  int id;
  function string info();
    return {$sformatf("Name:%s ID:%0d", name, id)};
  endfunction
endclass

module test_q160;
  initial begin
    q160 o = new();
    o.name="Vinay"; o.id=10;
    $display("Q160: %s", o.info());
  end
endmodule


//-----------------------------------------------------------
// Q161: Class with local variable
//-----------------------------------------------------------
class q161;
  local int secret = 77;
  function int get_secret(); return secret; endfunction
endclass

module test_q161;
  initial $display("Q161: %0d", (new q161()).get_secret());
endmodule


//-----------------------------------------------------------
// Q162: Class with method overloading (same name)
//-----------------------------------------------------------
class q162;
  function void disp(int a); $display("Int=%0d", a); endfunction
  function void disp(string s); $display("Str=%s", s); endfunction
endclass

module test_q162;
  initial begin
    q162 obj = new();
    obj.disp(5);
    obj.disp("Hello");
  end
endmodule


//-----------------------------------------------------------
// Q163: Inheritance without overriding
//-----------------------------------------------------------
class A163; int a=10; endclass
class B163 extends A163; endclass

module test_q163;
  initial $display("Q163: %0d", (new B163()).a);
endmodule


//-----------------------------------------------------------
// Q164: Abstract class with one method implemented
//-----------------------------------------------------------
virtual class q164;
  function void f(); $display("Implemented"); endfunction
  pure virtual function void g();
endclass

class child164 extends q164;
  function void g(); $display("Implemented g()"); endfunction
endclass

module test_q164;
  initial (new child164()).f();
endmodule


//-----------------------------------------------------------
// Q165: Static counter for all created objects
//-----------------------------------------------------------
class q165;
  static int cnt=0;
  function new(); cnt++; endfunction
endclass

module test_q165;
  initial begin
    q165 a=new(), b=new(), c=new();
    $display("Q165: Count=%0d", q165::cnt);
  end
endmodule


//-----------------------------------------------------------
// Q166: Class with array passed as argument
//-----------------------------------------------------------
class q166;
  function int sum(int arr[]);
    int s=0; foreach(arr[i]) s+=arr[i];
    return s;
  endfunction
endclass

module test_q166;
  initial begin
    int arr[]={1,2,3};
    $display("Q166: sum=%0d", (new q166()).sum(arr));
  end
endmodule


//-----------------------------------------------------------
// Q167: Multiple objects with different data
//-----------------------------------------------------------
class q167;
  int id;
endclass

module test_q167;
  initial begin
    q167 a=new(), b=new();
    a.id=1; b.id=2;
    $display("Q167: a=%0d b=%0d", a.id,b.id);
  end
endmodule


//-----------------------------------------------------------
// Q168: Constructor calling another method
//-----------------------------------------------------------
class q168;
  int a;
  function new(); set_val(10); endfunction
  function void set_val(int v); a=v; endfunction
endclass

module test_q168;
  initial $display("Q168: %0d", (new q168()).a);
endmodule


//-----------------------------------------------------------
// Q169: Class with method comparing two objects
//-----------------------------------------------------------
class q169;
  int x;
  function bit equal(q169 rhs);
    return (x==rhs.x);
  endfunction
endclass

module test_q169;
  initial begin
    q169 a=new(); a.x=5;
    q169 b=new(); b.x=5;
    $display("Q169: equal=%0b", a.equal(b));
  end
endmodule


//-----------------------------------------------------------
// Q170: Base class constructor called via super.new()
//-----------------------------------------------------------
class base170;
  function new(); $display("Base new()"); endfunction
endclass
class child170 extends base170;
  function new(); super.new(); $display("Child new()"); endfunction
endclass

module test_q170;
  initial child170 c = new();
endmodule


//-----------------------------------------------------------
// Q171: Class using foreach loop on array
//-----------------------------------------------------------
class q171;
  int arr[3];
  function void print();
    foreach(arr[i]) $display("arr[%0d]=%0d",i,arr[i]);
  endfunction
endclass

module test_q171;
  initial begin
    q171 obj = new();
    obj.arr='{1,2,3};
    obj.print();
  end
endmodule


//-----------------------------------------------------------
// Q172: Derived accessing base property using super
//-----------------------------------------------------------
class base172; int val=5; endclass
class child172 extends base172;
  function void show(); $display("super.val=%0d", super.val); endfunction
endclass

module test_q172;
  initial (new child172()).show();
endmodule


//-----------------------------------------------------------
// Q173: Virtual method called from base handle
//-----------------------------------------------------------
class base173; virtual function void f(); endfunction endclass
class child173 extends base173; function void f(); $display("Child173"); endfunction endclass
module test_q173;
  initial begin
    base173 b = new child173();
    b.f();
  end
endmodule


//-----------------------------------------------------------
// Q174: Static property shared among objects
//-----------------------------------------------------------
class q174;
  static int val=0;
  function void inc(); val++; endfunction
endclass

module test_q174;
  initial begin
    q174 a=new(); q174 b=new();
    a.inc(); b.inc();
    $display("Q174: val=%0d", q174::val);
  end
endmodule


//-----------------------------------------------------------
// Q175: Class with random property constrained
//-----------------------------------------------------------
class q175;
  rand int x;
  constraint c { x inside {[5:10]}; }
endclass

module test_q175;
  initial begin
    q175 o=new(); o.randomize();
    $display("Q175: x=%0d", o.x);
  end
endmodule


//-----------------------------------------------------------
// Q176: Copy constructor example
//-----------------------------------------------------------
class q176;
  int a;
  function new(int x=0); a=x; endfunction
  function new copy(q176 rhs);
    this.a = rhs.a;
  endfunction
endclass

module test_q176;
  initial begin
    q176 o1 = new(5);
    q176 o2 = new copy(o1);
    $display("Q176: o1.a=%0d o2.a=%0d", o1.a, o2.a);
  end
endmodule


//-----------------------------------------------------------
// Q177: Class with random bit vector
//-----------------------------------------------------------
class q177;
  rand bit [3:0] val;
  constraint c { val inside {[0:7]}; }
endclass

module test_q177;
  initial begin
    q177 o=new(); o.randomize();
    $display("Q177: val=%b", o.val);
  end
endmodule


//-----------------------------------------------------------
// Q178: Class with increment and decrement methods
//-----------------------------------------------------------
class q178;
  int x;
  function void inc(); x++; endfunction
  function void dec(); x--; endfunction
endclass

module test_q178;
  initial begin
    q178 o=new(); o.inc(); o.inc(); o.dec();
    $display("Q178: x=%0d", o.x);
  end
endmodule


//-----------------------------------------------------------
// Q179: Class comparing greater value
//-----------------------------------------------------------
class q179;
  int val;
  function bit greater(q179 rhs);
    return (this.val > rhs.val);
  endfunction
endclass

module test_q179;
  initial begin
    q179 a=new(); a.val=10;
    q179 b=new(); b.val=7;
    $display("Q179: greater=%0b", a.greater(b));
  end
endmodule


//-----------------------------------------------------------
// Q180: Virtual base pointer calling derived methods
//-----------------------------------------------------------
class base180; virtual function void disp(); endfunction endclass
class d180a extends base180; function void disp(); $display("A"); endfunction endclass
class d180b extends base180; function void disp(); $display("B"); endfunction endclass

module test_q180;
  initial begin
    base180 obj;
    obj = new d180a(); obj.disp();
    obj = new d180b(); obj.disp();
  end
endmodule


//-----------------------------------------------------------
// Q181: Method calling another method
//-----------------------------------------------------------
class q181;
  int a;
  function void set_a(int v); a=v; endfunction
  function void show(); $display("a=%0d",a); endfunction
  function void call(); set_a(10); show(); endfunction
endclass

module test_q181;
  initial (new q181()).call();
endmodule


//-----------------------------------------------------------
// Q182: Private variable access via getter/setter
//-----------------------------------------------------------
class q182;
  private int val;
  function void set(int x); val=x; endfunction
  function int get(); return val; endfunction
endclass

module test_q182;
  initial begin
    q182 o=new(); o.set(12);
    $display("Q182: %0d", o.get());
  end
endmodule


//-----------------------------------------------------------
// Q183: Base reference array holding different derived
//-----------------------------------------------------------
class base183; virtual function void f(); endfunction endclass
class d1_183 extends base183; function void f(); $display("D1"); endfunction endclass
class d2_183 extends base183; function void f(); $display("D2"); endfunction endclass

module test_q183;
  initial begin
    base183 arr[2];
    arr[0]=new d1_183();
    arr[1]=new d2_183();
    foreach(arr[i]) arr[i].f();
  end
endmodule


//-----------------------------------------------------------
// Q184: Static method modifying static variable
//-----------------------------------------------------------
class q184;
  static int cnt=0;
  static function void add(); cnt++; endfunction
endclass

module test_q184;
  initial begin
    q184::add(); q184::add();
    $display("Q184: cnt=%0d", q184::cnt);
  end
endmodule


//-----------------------------------------------------------
// Q185: Object handle passed as argument
//-----------------------------------------------------------
class q185;
  int val;
endclass

module test_q185;
  task show(q185 obj);
    $display("Q185: val=%0d", obj.val);
  endtask
  initial begin
    q185 o = new(); o.val=9;
    show(o);
  end
endmodule


//-----------------------------------------------------------
// Q186: Object comparison by handle
//-----------------------------------------------------------
class q186; int x; endclass
module test_q186;
  initial begin
    q186 a=new(), b=a;
    $display("Q186: same handle=%0b", a==b);
  end
endmodule


//-----------------------------------------------------------
// Q187: Class with foreach initialization
//-----------------------------------------------------------
class q187;
  int arr[3];
  function new(); foreach(arr[i]) arr[i]=i*2; endfunction
endclass

module test_q187;
  initial $display("Q187: arr=%p", (new q187()).arr);
endmodule


//-----------------------------------------------------------
// Q188: Base property shadowed in derived
//-----------------------------------------------------------
class base188; int x=5; endclass
class derived188 extends base188; int x=10; endclass

module test_q188;
  initial $display("Q188: %0d", (new derived188()).x);
endmodule


//-----------------------------------------------------------
// Q189: Randomize inside class method
//-----------------------------------------------------------
class q189;
  rand int x;
  constraint c { x inside {[1:5]}; }
  function void gen(); this.randomize(); endfunction
endclass

module test_q189;
  initial begin
    q189 o=new(); o.gen();
    $display("Q189: x=%0d", o.x);
  end
endmodule


//-----------------------------------------------------------
// Q190: Parameterized inheritance
//-----------------------------------------------------------
class base190 #(type T=int); T data; endclass
class derived190 #(type T=int) extends base190#(T); endclass

module test_q190;
  initial begin
    derived190#(string) d = new();
    d.data="Data";
    $display("Q190: %s", d.data);
  end
endmodule


//-----------------------------------------------------------
// Q191: Static constant in class
//-----------------------------------------------------------
class q191;
  static const int LIMIT = 5;
endclass

module test_q191;
  initial $display("Q191: %0d", q191::LIMIT);
endmodule


//-----------------------------------------------------------
// Q192: Polymorphism demo simple
//-----------------------------------------------------------
class base192; virtual function void f(); endfunction endclass
class c192 extends base192; function void f(); $display("c192"); endfunction endclass

module test_q192;
  initial begin
    base192 o = new c192();
    o.f();
  end
endmodule


//-----------------------------------------------------------
// Q193: Object array initialized in loop
//-----------------------------------------------------------
class q193; int id; endclass
module test_q193;
  initial begin
    q193 arr[3];
    foreach(arr[i]) arr[i]=new();
    foreach(arr[i]) arr[i].id=i;
    foreach(arr[i]) $display("Q193: id=%0d", arr[i].id);
  end
endmodule


//-----------------------------------------------------------
// Q194: Dynamic array inside class
//-----------------------------------------------------------
class q194;
  int da[];
  function void alloc(int n); da=new[n]; endfunction
endclass

module test_q194;
  initial begin
    q194 o=new(); o.alloc(4);
    $display("Q194: size=%0d", o.da.size());
  end
endmodule


//-----------------------------------------------------------
// Q195: Constructor prints during creation
//-----------------------------------------------------------
class q195;
  function new(); $display("Q195: Object Created"); endfunction
endclass

module test_q195;
  initial q195 o = new();
endmodule


//-----------------------------------------------------------
// Q196: Multiple objects in queue
//-----------------------------------------------------------
class q196;
  int val;
endclass

module test_q196;
  initial begin
    q196 q[$];
    repeat(3) begin
      q196 o = new(); o.val=$urandom_range(1,10);
      q.push_back(o);
    end
    foreach(q[i]) $display("Q196: val=%0d", q[i].val);
  end
endmodule


//-----------------------------------------------------------
// Q197: Class with void return task
//-----------------------------------------------------------
class q197;
  int a;
  task show(); $display("Q197: a=%0d", a); endtask
endclass

module test_q197;
  initial begin
    q197 o=new(); o.a=9; o.show();
  end
endmodule

*/






