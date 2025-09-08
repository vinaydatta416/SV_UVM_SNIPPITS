 
//===========================================  
// Code 2: Class Blueprint  
/*
class Student;
  string name;
  int roll;
endclass

module test2;
  initial begin
    Student s = new();
    s.name = "Vinay"; s.roll = 101;
    $display("Student: %s, Roll: %0d", s.name, s.roll);
  end
endmodule
*/
//===========================================  
// Code 3: Properties and Methods  
/*
class Math;
  int a, b;

  function in t add();
    return a + b;
  endfunction
endclass

module test3;
  initial begin
    Math m = new();
    m.a = 4; m.b = 5;
    $display("Sum = %0d", m.add());
  end
endmodule
*/
//===========================================  
// Code 4: Instance/Object Creation  
/*
class Clock;
  string type = "Digital";
endclass

module test4;
  initial begin
    Clock c1 = new();
    $display("Clock Type = %s", c1.type);
  end
endmodule
*/
//===========================================  
// Code 5: Constructor Example  
/*
class Server;
  string id;

  function new(string name);
    id = name;
  endfunction
endclass

module test5;
  initial begin
    Server s = new("S1");
    $display("Server ID = %s", s.id);
  end
endmodule
*/
//===========================================  
// Code 6: Null Object Handle  
/*
class Node;
  int data;
endclass

module test6;
  initial begin
    Node n;
    if (n == null)
      $display("Node is null");
    n = new();
    n.data = 42;
    $display("Data = %0d", n.data);
  end
endmodule
*/
//===========================================  
// Code 7: Accessing Members  
/*
class Device;
  string brand;
  int price;

  function void show();
    $display("Brand: %s, Price: %0d", brand, price);
  endfunction
endclass

module test7;
  initial begin
    Device d = new();
    d.brand = "Sony"; d.price = 999;
    d.show();
  end
endmodule
*/
//===========================================  
// Code 8: Object Assignment  
/*
class Box;
  int size;
endclass

module test8;
  initial begin
    Box a = new(); a.size = 20;
    Box b = a;
    b.size = 40;
    $display("a.size = %0d", a.size); // prints 40
  end
endmodule
*/
//===========================================  
// Code 9: Shallow Copy  
/*
class Coord;
  int x;
endclass

module test9;
  initial begin
    Coord p1 = new(); p1.x = 10;
    Coord p2 = p1;
    p2.x = 25;
    $display("p1.x = %0d", p1.x); // prints 25
  end
endmodule
*/
//===========================================  
// Code 10: Deep Copy  
/*
class ID;
  int value;

  function ID clone();
    ID temp = new();
    temp.value = this.value;
    return temp;
  endfunction
endclass

module test10;
  initial begin
    ID id1 = new(); id1.value = 55;
    ID id2 = id1.clone();
    id2.value = 99;
    $display("id1 = %0d, id2 = %0d", id1.value, id2.value);
  end
endmodule
*/
//===========================================  
// Code 11: Class Inheritance  
/*
class Base;
  int val = 100;
endclass

class Derived extends Base;
endclass

module test11;
  initial begin
    Derived d = new();
    $display("Inherited val = %0d", d.val);
  end
endmodule
*/
//===========================================  
// Code 12: Super Keyword  
/*
class Parent;
  function void greet();
    $display("Hello from Parent");
  endfunction
endclass

class Child extends Parent;
  function void greet();
    super.greet();
    $display("Hello from Child");
  endfunction
endclass

module test12;
  initial begin
    Child c = new();
    c.greet();
  end
endmodule
*/
//===========================================  
// Code 13: super.new  
/*
class Vehicle;
  string model;

  function new(string m);
    model = m;
  endfunction
endclass

class Car extends Vehicle;
  int wheels;

  function new(string m, int w);
    super.new(m);
    wheels = w;
  endfunction
endclass

module test13;
  initial begin
    Car c = new("Sedan", 4);
    $display("%s with %0d wheels", c.model, c.wheels);
  end
endmodule
*/
//===========================================  
// Code 14: Static Properties  
/*
class Counter;
  static int count = 0;

  function new();
    count++;
  endfunction
endclass

module test14;
  initial begin
    Counter a = new(); Counter b = new();
    $display("Total Objects = %0d", Counter::count);
  end
endmodule
*/
//===========================================  
// Code 15: Overriding Methods  
/*
class Animal;
  virtual function void sound();
    $display("Generic Animal Sound");
  endfunction
endclass

class Cat extends Animal;
  function void sound();
    $display("Meow");
  endfunction
endclass

module test15;
  initial begin
    Animal a = new Cat();
    a.sound();
  end
endmodule
*/
//===========================================  
// Code 16: Polymorphism Example  
/*
class Shape;
  virtual function void draw();
  endfunction
endclass

class Circle extends Shape;
  function void draw();
    $display("Drawing Circle");
  endfunction
endclass

class Square extends Shape;
  function void draw();
    $display("Drawing Square");
  endfunction
endclass

module test16;
  initial begin
    Shape s;
    s = new Circle(); s.draw();
    s = new Square(); s.draw();
  end
endmodule
*/
//===========================================  
// Code 17: Virtual Class Declaration  
/*
virtual class VBase;
  pure virtual function void show();
endclass
*/
//===========================================  
// Code 18: Virtual Class Implementation  
/*
virtual class Animal;
  pure virtual function void speak();
endclass

class Dog extends Animal;
  function void speak();
    $display("Bark");
  endfunction
endclass

module test18;
  initial begin
    Animal a = new Dog();
    a.speak();
  end
endmodule
*/
//===========================================  
// Code 19: Parameterized Class  
/*
class Wrapper #(type T=int);
  T data;

  function void set(T d);
    data = d;
  endfunction

  function void show();
    $display("Value = %0d", data);
  endfunction
endclass

module test19;
  initial begin
    Wrapper#(int) w = new();
    w.set(50); w.show();
  end
endmodule
*/
//===========================================  
// Code 20: Constructor Overloading Simulation  
/*
class Info;
  int a, b;

  function new();
    a = 0; b = 0;
  endfunction

  function void init(int x, int y);
    a = x; b = y;
  endfunction
endclass

module test20;
  initial begin
    Info i = new();
    i.init(4, 5);
    $display("a=%0d b=%0d", i.a, i.b);
  end
endmodule
*/
//===========================================  
// Code 21: Assign and Compare Object Handles  
/*
class Alpha;
  int v;
endclass

module test21;
  initial begin
    Alpha a = new(); a.v = 5;
    Alpha b = a;
    $display("a == b : %0b", a == b);
  end
endmodule
*/
//===========================================  
// Code 22: Dynamic Object Array  
/*
class Packet;
  int id;
endclass

module test22;
  initial begin
    Packet pkts[$];
    for (int i = 0; i < 3; i++) begin
      pkts.push_back(new());
      pkts[i].id = i + 10;
      $display("Pkt[%0d] = %0d", i, pkts[i].id);
    end
  end
endmodule
*/
//===========================================  
// Code 23: Constant Class Property (local)  
/*
class Fixed;
  localparam int SIZE = 8;
endclass

module test23;
  initial $display("SIZE = %0d", Fixed::SIZE);
endmodule
*/
//===========================================  
// Code 24: Array of Objects  
/*
class Item;
  int id;
endclass

module test24;
  initial begin
    Item i[3];
    foreach(i[j]) begin
      i[j] = new();
      i[j].id = j * 10;
      $display("Item[%0d] = %0d", j, i[j].id);
    end
  end
endmodule
*/
//===========================================  
// Code 25: Method Calling Inside Method  
/*
class CallChain;
  function void f1();
    $display("Inside f1");
  endfunction

  function void f2();
    f1();
    $display("Inside f2");
  endfunction
endclass

module test25;
  initial begin
    CallChain c = new();
    c.f2();
  end
endmodule
*/
//===========================================  

// Code 26: Inheritance Chain (3 Levels)  
/*
class Level1;
  function void who();
    $display("I am Level1");
  endfunction
endclass

class Level2 extends Level1;
endclass

class Level3 extends Level2;
endclass

module test26;
  initial begin
    Level3 obj = new();
    obj.who();
  end
endmodule
*/
//===========================================  
// Code 27: Inheritance with Overriding  
/*
class Printer;
  virtual function void print();
    $display("Default Printer");
  endfunction
endclass

class Inkjet extends Printer;
  function void print();
    $display("Inkjet Printer");
  endfunction
endclass

module test27;
  initial begin
    Printer p = new Inkjet();
    p.print();
  end
endmodule
*/
//===========================================  
// Code 28: Virtual Class Chain  
/*
virtual class Processor;
  pure virtual function void execute();
endclass

class RISC extends Processor;
  function void execute();
    $display("RISC Execution");
  endfunction
endclass

module test28;
  initial begin
    Processor p = new RISC();
    p.execute();
  end
endmodule
*/
//===========================================  
// Code 29: Abstract with Data Members  
/*
virtual class Operation;
  int a, b;
  pure virtual function int calc();
endclass

class Adder extends Operation;
  function int calc();
    return a + b;
  endfunction
endclass

module test29;
  initial begin
    Adder obj = new(); obj.a = 10; obj.b = 20;
    $display("Sum = %0d", obj.calc());
  end
endmodule
*/
//===========================================  
// Code 30: Object Array with Methods  
/*
class Bank;
  int acc;

  function void set(int a);
    acc = a;
  endfunction

  function void show();
    $display("Account = %0d", acc);
  endfunction
endclass

module test30;
  initial begin
    Bank b[2];
    foreach(b[i]) begin
      b[i] = new();
      b[i].set(100+i);
      b[i].show();
    end
  end
endmodule
*/
//===========================================  
// Code 31: Static Method Example  
/*
class Util;
  static function int square(int x);
    return x * x;
  endfunction
endclass

module test31;
  initial $display("Square = %0d", Util::square(7));
endmodule
*/
//===========================================  
// Code 32: Static + Non-Static Method  
/*
class MathBox;
  static function int cube(int x);
    return x*x*x;
  endfunction

  function int square(int y);
    return y*y;
  endfunction
endclass

module test32;
  initial begin
    MathBox m = new();
    $display("Square = %0d", m.square(5));
    $display("Cube = %0d", MathBox::cube(3));
  end
endmodule
*/
//===========================================  
// Code 33: Copy Constructor (Manual)  
/*
class Copyer;
  int x;

  function Copyer manual_copy(Copyer c);
    Copyer temp = new();
    temp.x = c.x;
    return temp;
  endfunction
endclass

module test33;
  initial begin
    Copyer a = new(); a.x = 88;
    Copyer b = a.manual_copy(a);
    $display("Copied x = %0d", b.x);
  end
endmodule
*/
//===========================================  
// Code 34: Object Identity Check  
/*
class Sample;
  int val;
endclass

module test34;
  initial begin
    Sample a = new(); Sample b = new();
    $display("Same? %0b", a == b); // 0
    b = a;
    $display("Now Same? %0b", a == b); // 1
  end
endmodule
*/
//===========================================  
// Code 35: Parameterized Class with Type=string  
/*
class Holder #(type T=bit);
  T val;

  function void put(T x);
    val = x;
  endfunction

  function void show();
    $display("Data = %s", val);
  endfunction
endclass

module test35;
  initial begin
    Holder#(string) h = new();
    h.put("Vinay");
    h.show();
  end
endmodule
*/
//===========================================  
// Code 36: Method Return Type is Class  
/*
class Box;
  int size;

  function Box double_size();
    Box tmp = new();
    tmp.size = this.size * 2;
    return tmp;
  endfunction
endclass

module test36;
  initial begin
    Box b1 = new(); b1.size = 15;
    Box b2 = b1.double_size();
    $display("Original = %0d, Double = %0d", b1.size, b2.size);
  end
endmodule
*/
//===========================================  
// Code 37: Superclass Handle to Subclass  
/*
class Human;
  virtual function void info();
    $display("Generic Human");
  endfunction
endclass

class Engineer extends Human;
  function void info();
    $display("Engineer Info");
  endfunction
endclass

module test37;
  initial begin
    Human h = new Engineer();
    h.info();
  end
endmodule
*/
//===========================================  
// Code 38: Constructor Chain Using super.new  
/*
class BaseA;
  int a;

  function new(int val);
    a = val;
  endfunction
endclass

class SubB extends BaseA;
  int b;

  function new(int x, int y);
    super.new(x);
    b = y;
  endfunction
endclass

module test38;
  initial begin
    SubB s = new(10, 20);
    $display("a=%0d b=%0d", s.a, s.b);
  end
endmodule
*/
//===========================================  
// Code 39: Polymorphic Array of Base Handles  
/*
class Tool;
  virtual function void use();
  endfunction
endclass

class Hammer extends Tool;
  function void use();
    $display("Hammering...");
  endfunction
endclass

class Drill extends Tool;
  function void use();
    $display("Drilling...");
  endfunction
endclass

module test39;
  initial begin
    Tool tools[2];
    tools[0] = new Hammer();
    tools[1] = new Drill();
    foreach (tools[i]) tools[i].use();
  end
endmodule
*/
//===========================================  
// Code 40: Dynamic Method Dispatch with Virtual  
/*
class Animal;
  virtual function void move();
    $display("Animal moves");
  endfunction
endclass

class Fish extends Animal;
  function void move();
    $display("Fish swims");
  endfunction
endclass

module test40;
  initial begin
    Animal a = new Fish();
    a.move();
  end
endmodule
*/

//===========================================  
// Code 41: Constructor with Default Argument  
/*
class User;
  string name;

  function new(string n = "Guest");
    name = n;
  endfunction
endclass

module test41;
  initial begin
    User u1 = new();
    User u2 = new("Vinay");
    $display("u1: %s, u2: %s", u1.name, u2.name);
  end
endmodule
*/
//===========================================  
// Code 42: Virtual Method with Base Implementation  
/*
class OS;
  virtual function void boot();
    $display("Booting generic OS...");
  endfunction
endclass

class Linux extends OS;
  function void boot();
    $display("Booting Linux OS...");
  endfunction
endclass

module test42;
  initial begin
    OS o = new Linux();
    o.boot();
  end
endmodule
*/
//===========================================  
// Code 43: Class with Enum Inside  
/*
class Traffic;
  typedef enum {RED, GREEN, YELLOW} signal_e;
  signal_e light;

  function void set(signal_e val);
    light = val;
  endfunction

  function void show();
    $display("Signal = %s", light.name());
  endfunction
endclass

module test43;
  initial begin
    Traffic t = new();
    t.set(Traffic::YELLOW);
    t.show();
  end
endmodule
*/
//===========================================  
// Code 44: Nested Class  
/*
class Outer;
  int x = 5;

  class Inner;
    int y = 10;
  endclass
endclass

module test44;
  initial begin
    Outer o = new();
    Outer::Inner i = new();
    $display("Outer.x = %0d, Inner.y = %0d", o.x, i.y);
  end
endmodule
*/
//===========================================  
// Code 45: Class with Queue  
/*
class QueueBox;
  int q[$];

  function void insert(int val);
    q.push_back(val);
  endfunction

  function void show();
    foreach (q[i])
      $display("q[%0d] = %0d", i, q[i]);
  endfunction
endclass

module test45;
  initial begin
    QueueBox qb = new();
    qb.insert(11); qb.insert(22);
    qb.show();
  end
endmodule
*/
//===========================================  
// Code 46: Class Method Returning Sum  
/*
class Adder;
  int a, b;

  function int sum();
    return a + b;
  endfunction
endclass

module test46;
  initial begin
    Adder a = new();
    a.a = 9; a.b = 1;
    $display("Sum = %0d", a.sum());
  end
endmodule
*/
//===========================================  
// Code 47: Class Array Sort Using Comparator  
/*
class Item;
  int price;

  function new(int p);
    price = p;
  endfunction
endclass

module test47;
  initial begin
    Item arr[$];
    arr.push_back(new(20));
    arr.push_back(new(10));
    arr.push_back(new(30));

    arr.sort( function int(Item a, Item b);
      return (a.price < b.price);
    endfunction );

    foreach(arr[i]) $display("Price[%0d] = %0d", i, arr[i].price);
  end
endmodule
*/
//===========================================  
// Code 48: Virtual Task in Class  
/*
class Worker;
  virtual task perform();
    $display("Worker performing...");
  endtask
endclass

class Plumber extends Worker;
  task perform();
    $display("Fixing pipe...");
  endtask
endclass

module test48;
  initial begin
    Worker w = new Plumber();
    w.perform();
  end
endmodule
*/
//===========================================  
// Code 49: Deep Copy with Method  
/*
class Data;
  int value;

  function Data deep();
    Data d = new();
    d.value = this.value;
    return d;
  endfunction
endclass

module test49;
  initial begin
    Data a = new(); a.value = 77;
    Data b = a.deep(); b.value = 99;
    $display("a=%0d, b=%0d", a.value, b.value);
  end
endmodule
*/
//===========================================  
// Code 50: Class With Constant Property  
/*
class FinalMark;
  const int max = 100;
endclass

module test50;
  initial begin
    FinalMark m = new();
    $display("Max = %0d", m.max);
  end
endmodule
*/
//===========================================  
// Code 51: Type Parameterized Copy  
/*
class Box #(type T=int);
  T data;

  function Box copy();
    Box b = new();
    b.data = this.data;
    return b;
  endfunction
endclass

module test51;
  initial begin
    Box#(int) a = new(); a.data = 33;
    Box#(int) b = a.copy(); b.data = 44;
    $display("a=%0d, b=%0d", a.data, b.data);
  end
endmodule
*/
//===========================================  
// Code 52: Class with Struct Inside  
/*
class Record;
  typedef struct {
    int id;
    string name;
  } student_s;

  student_s s;
endclass

module test52;
  initial begin
    Record r = new();
    r.s.id = 7;
    r.s.name = "Vinay";
    $display("ID=%0d, Name=%s", r.s.id, r.s.name);
  end
endmodule
*/
//===========================================  
// Code 53: Class with Covergroup  
/*
class Coverage;
  rand bit [3:0] mode;

  covergroup cg;
    coverpoint mode;
  endgroup

  function new();
    cg = new();
  endfunction
endclass

module test53;
  initial begin
    Coverage c = new();
    repeat(10) begin
      void'(c.randomize());
      c.cg.sample();
    end
  end
endmodule
*/
//===========================================  
// Code 54: Class as Return Type  
/*
class Temp;
  int t;
endclass

class Factory;
  function Temp create();
    Temp obj = new(); obj.t = 25;
    return obj;
  endfunction
endclass

module test54;
  initial begin
    Factory f = new();
    Temp t1 = f.create();
    $display("Temp = %0d", t1.t);
  end
endmodule
*/
//===========================================  
// Code 55: Multi-Object Static Counter  
/*
class Node;
  static int count = 0;

  function new();
    count++;
  endfunction
endclass

module test55;
  initial begin
    repeat(5) Node n = new();
    $display("Total Nodes = %0d", Node::count);
  end
endmodule
*/
//===========================================  
// Code 56: Nested Method Calls  
/*
class Op;
  function int add(int x, int y);
    return x + y;
  endfunction

  function int double_sum(int a, int b);
    return 2 * add(a, b);
  endfunction
endclass

module test56;
  initial begin
    Op o = new();
    $display("Double Sum = %0d", o.double_sum(3, 5));
  end
endmodule
*/
//===========================================  
// Code 57: Class with Union Inside  
/*
class Packet;
  typedef union packed {
    logic [7:0] byte;
    logic [3:0] nibbles[2];
  } u_data;

  u_data u;
endclass

module test57;
  initial begin
    Packet p = new();
    p.u.byte = 8'hAB;
    $display("Low Nibble = %h", p.u.nibbles[0]);
    $display("High Nibble = %h", p.u.nibbles[1]);
  end
endmodule
*/
//===========================================  
// Code 58: Parameterized Width and Type  
/*
class BitHolder #(int W=4, type T=bit);
  T val;

  function void set(T v);
    val = v;
  endfunction
endclass

module test58;
  initial begin
    BitHolder#(4, bit [3:0]) h = new();
    h.set(4'b1010);
    $display("Value = %b", h.val);
  end
endmodule
*/
//===========================================  
// Code 59: Method Overloading via Args  
/*
class Calc;
  function int op(int a, int b);
    return a + b;
  endfunction

  function int op(int a);
    return a * 2;
  endfunction
endclass

module test59;
  initial begin
    Calc c = new();
    $display("op(4,6) = %0d", c.op(4,6));
    $display("op(3)   = %0d", c.op(3));
  end
endmodule
*/
//===========================================  
// Code 60: Object Array Random Initialization  
/*
class Element;
  rand bit [3:0] id;
endclass

module test60;
  initial begin
    Element e[4];
    foreach(e[i]) begin
      e[i] = new();
      void'(e[i].randomize());
      $display("e[%0d] = %0d", i, e[i].id);
    end
  end
endmodule
*/

//===========================================  
// Code 61: Class with Typedef Enum Method  
/*
class Engine;
  typedef enum {OFF, IDLE, RUN} state_e;
  state_e st;

  function void set(state_e s);
    st = s;
  endfunction

  function void show();
    $display("State = %s", st.name());
  endfunction
endclass

module test61;
  initial begin
    Engine e = new();
    e.set(Engine::RUN);
    e.show();
  end
endmodule
*/
//===========================================  
// Code 62: Object Array Shuffle  
/*
class Chip;
  int id;
endclass

module test62;
  initial begin
    Chip c[3];
    foreach(c[i]) begin
      c[i] = new();
      c[i].id = i;
    end

    c.shuffle();
    foreach(c[i]) $display("id[%0d] = %0d", i, c[i].id);
  end
endmodule
*/
//===========================================  
// Code 63: Class with Associative Array  
/*
class Phonebook;
  string directory[string];

  function void add(string name, string num);
    directory[name] = num;
  endfunction

  function void print();
    foreach(directory[k])
      $display("%s : %s", k, directory[k]);
  endfunction
endclass

module test63;
  initial begin
    Phonebook p = new();
    p.add("Vinay", "1234");
    p.add("Ajay", "5678");
    p.print();
  end
endmodule
*/
//===========================================  
// Code 64: Inheritance with Parameterized Class  
/*
class Base #(type T=int);
  T val;
endclass

class Sub #(type T=int) extends Base#(T);
  function void set(T v);
    val = v;
  endfunction
endclass

module test64;
  initial begin
    Sub#(int) s = new();
    s.set(99);
    $display("Val = %0d", s.val);
  end
endmodule
*/
//===========================================  
// Code 65: Inheritance with Covergroup  
/*
class Parent;
  rand bit [3:0] op;

  covergroup cg;
    coverpoint op;
  endgroup

  function new();
    cg = new();
  endfunction
endclass

class Child extends Parent;
endclass

module test65;
  initial begin
    Child c = new();
    repeat(10) begin
      void'(c.randomize());
      c.cg.sample();
    end
  end
endmodule
*/
//===========================================  
// Code 66: Class With Random Object Array  
/*
class Worker;
  rand int id;
endclass

module test66;
  initial begin
    Worker w[3];
    foreach (w[i]) begin
      w[i] = new();
      void'(w[i].randomize());
      $display("w[%0d] = %0d", i, w[i].id);
    end
  end
endmodule
*/
//===========================================  
// Code 67: Virtual Method and Class Handle  
/*
class Msg;
  virtual function void text();
    $display("Base Message");
  endfunction
endclass

class ErrorMsg extends Msg;
  function void text();
    $display("Error Occurred!");
  endfunction
endclass

module test67;
  initial begin
    Msg m = new ErrorMsg();
    m.text();
  end
endmodule
*/
//===========================================  
// Code 68: Class with Constraint  
/*
class ConBox;
  rand bit [3:0] a;

  constraint c1 { a inside {[5:10]}; }
endclass

module test68;
  initial begin
    ConBox c = new();
    repeat(5) begin
      void'(c.randomize());
      $display("a = %0d", c.a);
    end
  end
endmodule
*/
//===========================================  
// Code 69: Composition - Class Inside Class  
/*
class CPU;
  int cores;
endclass

class Computer;
  CPU c;
endclass

module test69;
  initial begin
    Computer comp = new();
    comp.c = new();
    comp.c.cores = 8;
    $display("Cores = %0d", comp.c.cores);
  end
endmodule
*/
//===========================================  
// Code 70: Factory Method Pattern  
/*
class Gen;
  virtual function void run(); endfunction
endclass

class A extends Gen;
  function void run(); $display("Running A"); endfunction
endclass

class B extends Gen;
  function void run(); $display("Running B"); endfunction
endclass

module test70;
  function Gen factory(string sel);
    if (sel == "A") return new A();
    else return new B();
  endfunction

  initial begin
    Gen g = factory("B");
    g.run();
  end
endmodule
*/
//===========================================  
// Code 71: Object Swap  
/*
class Obj;
  int v;
endclass

module test71;
  initial begin
    Obj a = new(); a.v = 5;
    Obj b = new(); b.v = 10;

    Obj temp = a; a = b; b = temp;
    $display("a = %0d, b = %0d", a.v, b.v);
  end
endmodule
*/
//===========================================  
// Code 72: Override and Call super.method()  
/*
class Alpha;
  virtual function void info();
    $display("Alpha");
  endfunction
endclass

class Beta extends Alpha;
  function void info();
    super.info();
    $display("Beta");
  endfunction
endclass

module test72;
  initial begin
    Beta b = new();
    b.info();
  end
endmodule
*/
//===========================================  
// Code 73: Inheritance + Parameter in Subclass  
/*
class Base;
  int b;
endclass

class Child extends Base;
  function new(int x);
    b = x;
  endfunction
endclass

module test73;
  initial begin
    Child c = new(123);
    $display("b = %0d", c.b);
  end
endmodule
*/
//===========================================  
// Code 74: Class With $random  
/*
class Dice;
  int face;

  function void roll();
    face = $urandom_range(1,6);
  endfunction
endclass

module test74;
  initial begin
    Dice d = new();
    repeat(3) begin
      d.roll();
      $display("Face = %0d", d.face);
    end
  end
endmodule
*/
//===========================================  
// Code 75: Polymorphism with Virtual and Random  
/*
class Shape;
  rand bit [2:0] id;
  virtual function void draw(); endfunction
endclass

class Square extends Shape;
  function void draw(); $display("Drawing Square"); endfunction
endclass

module test75;
  initial begin
    Shape s = new Square();
    void'(s.randomize());
    $display("ID = %0d", s.id);
    s.draw();
  end
endmodule
*/
//===========================================  
// Code 76: Constraint Inheritance  
/*
class Base;
  rand int x;
  constraint cx { x < 50; }
endclass

class Sub extends Base;
  constraint cy { x > 10; }
endclass

module test76;
  initial begin
    Sub s = new();
    repeat(5) begin
      void'(s.randomize());
      $display("x = %0d", s.x);
    end
  end
endmodule
*/
//===========================================  
// Code 77: Object Pool  
/*
class Worker;
  int id;
endclass

module test77;
  initial begin
    Worker pool[$];
    foreach(int i in '{0,1,2}) begin
      Worker w = new(); w.id = i;
      pool.push_back(w);
    end
    foreach(pool[i]) $display("Worker[%0d] = %0d", i, pool[i].id);
  end
endmodule
*/
//===========================================  
// Code 78: Factory Using Type Parameter  
/*
class Gen #(type T=int);
  T val;

  function new(T v);
    val = v;
  endfunction
endclass

module test78;
  initial begin
    Gen#(int) g = new(123);
    $display("Val = %0d", g.val);
  end
endmodule
*/
//===========================================  
// Code 79: Random Object Selector  
/*
class Job;
  string name;
endclass

module test79;
  initial begin
    Job arr[3];
    foreach(arr[i]) begin
      arr[i] = new();
      arr[i].name = $sformatf("Job%0d", i);
    end

    int sel = $urandom_range(0,2);
    $display("Selected = %s", arr[sel].name);
  end
endmodule
*/
//===========================================  
// Code 80: Method Returning Class Itself  
/*
class Self;
  int data;

  function Self link(int x);
    data = x;
    return this;
  endfunction
endclass

module test80;
  initial begin
    Self s = new();
    s.link(88);
    $display("Data = %0d", s.data);
  end
endmodule
*/


//===========================================  
// Code 81: Clone Method Returning Deep Copy  
/*
class Info;
  int id;

  function Info clone();
    Info temp = new();
    temp.id = this.id;
    return temp;
  endfunction
endclass

module test81;
  initial begin
    Info a = new(); a.id = 10;
    Info b = a.clone(); b.id = 99;
    $display("a = %0d, b = %0d", a.id, b.id);
  end
endmodule
*/
//===========================================  
// Code 82: Static Function Inside Parameterized Class  
/*
class Util #(type T=int);
  static function T double_val(T x);
    return x * 2;
  endfunction
endclass

module test82;
  initial begin
    $display("Double = %0d", Util#(int)::double_val(11));
  end
endmodule
*/
//===========================================  
// Code 83: Factory Pattern With Class Array  
/*
class App;
  virtual function void run(); endfunction
endclass

class Calc extends App;
  function void run(); $display("Running Calc"); endfunction
endclass

class Paint extends App;
  function void run(); $display("Running Paint"); endfunction
endclass

module test83;
  function App create(string mode);
    if(mode == "calc") return new Calc();
    else return new Paint();
  endfunction

  initial begin
    App progs[2];
    progs[0] = create("calc");
    progs[1] = create("paint");
    foreach(progs[i]) progs[i].run();
  end
endmodule
*/
//===========================================  
// Code 84: Method Returning This (Method Chaining)  
/*
class Chain;
  int data;

  function Chain set(int d);
    data = d;
    return this;
  endfunction

  function Chain show();
    $display("Data = %0d", data);
    return this;
  endfunction
endclass

module test84;
  initial begin
    Chain c = new();
    c.set(123).show();
  end
endmodule
*/
//===========================================  
// Code 85: Protected Members  
/*
class Base;
  protected int x = 10;

  function int getX();
    return x;
  endfunction
endclass

class Derived extends Base;
  function void access();
    $display("Protected x = %0d", getX());
  endfunction
endclass

module test85;
  initial begin
    Derived d = new();
    d.access();
  end
endmodule
*/
//===========================================  
// Code 86: Virtual Method With Default and Overridden Behavior  
/*
class Logger;
  virtual function void log();
    $display("Default Logger");
  endfunction
endclass

class FileLogger extends Logger;
  function void log();
    $display("Logging to File");
  endfunction
endclass

module test86;
  initial begin
    Logger l;
    l = new FileLogger();
    l.log();
  end
endmodule
*/
//===========================================  
// Code 87: Class With Conditional Random Constraints  
/*
class Packet;
  rand bit [3:0] kind;
  rand bit [7:0] data;

  constraint valid {
    if (kind == 0) data == 0;
    else data inside {[1:255]};
  }
endclass

module test87;
  initial begin
    Packet p = new();
    repeat(5) begin
      void'(p.randomize());
      $display("Kind = %0d, Data = %0d", p.kind, p.data);
    end
  end
endmodule
*/
//===========================================  
// Code 88: Class Array with Different Sizes  
/*
class Task;
  int id;
endclass

module test88;
  initial begin
    Task list1[2];
    Task list2[4];

    foreach(list1[i]) list1[i] = new();
    foreach(list2[j]) list2[j] = new();

    $display("Size1 = %0d, Size2 = %0d", list1.size(), list2.size());
  end
endmodule
*/
//===========================================  
// Code 89: Returning Different Subclasses from Factory  
/*
class Fruit;
  virtual function void taste(); endfunction
endclass

class Apple extends Fruit;
  function void taste(); $display("Sweet Apple"); endfunction
endclass

class Lemon extends Fruit;
  function void taste(); $display("Sour Lemon"); endfunction
endclass

module test89;
  function Fruit make(string sel);
    if (sel == "apple") return new Apple();
    else return new Lemon();
  endfunction

  initial begin
    Fruit f1 = make("apple");
    Fruit f2 = make("lemon");
    f1.taste();
    f2.taste();
  end
endmodule
*/
//===========================================  
// Code 90: Class With Covergroup in Constructor  
/*
class Timer;
  rand bit [2:0] mode;

  covergroup cg;
    coverpoint mode;
  endgroup

  function new();
    cg = new();
  endfunction
endclass

module test90;
  initial begin
    Timer t = new();
    repeat(8) begin
      void'(t.randomize());
      t.cg.sample();
    end
  endendmodule
*/
//===========================================  
// Code 91: Object Handle Passed Between Functions  
/*
class Data;
  int val;
endclass

function void update(Data d, int newval);
  d.val = newval;
endfunction

module test91;
  initial begin
    Data a = new(); a.val = 5;
    update(a, 50);
    $display("Updated val = %0d", a.val);
  end
endmodule
*/
//===========================================  
// Code 92: Virtual Method with Random Dispatch  
/*
class Shape;
  virtual function void draw(); endfunction
endclass

class Triangle extends Shape;
  function void draw(); $display("▲ Triangle"); endfunction
endclass

class Circle extends Shape;
  function void draw(); $display("◯ Circle"); endfunction
endclass

module test92;
  initial begin
    Shape s;
    if ($urandom%2 == 0)
      s = new Triangle();
    else
      s = new Circle();
    s.draw();
  end
endmodule
*/
//===========================================  
// Code 93: Interface to Class Handle Conversion  
/*
interface intf;
  logic [7:0] data;
endinterface

class Drive;
  virtual intf vif;

  function void write();
    vif.data = 8'hAB;
  endfunction
endclass

module test93;
  intf i();
  Drive d = new();

  initial begin
    d.vif = i;
    d.write();
    $display("data = %h", i.data);
  end
endmodule
*/
//===========================================  
// Code 94: Class Array Using push_back and pop_front  
/*
class Entry;
  int id;
endclass

module test94;
  initial begin
    Entry e[$];
    foreach (int i in '{1,2,3}) begin
      Entry t = new(); t.id = i;
      e.push_back(t);
    end

    $display("Popped: %0d", e.pop_front().id);
    $display("Remaining = %0d", e.size());
  end
endmodule
*/
//===========================================  
// Code 95: Class with Local and Global Scope  
/*
class Env;
  int global_var;

  function void show();
    int global_var = 10;
    $display("Local = %0d, Class = %0d", global_var, this.global_var);
  endfunction
endclass

module test95;
  initial begin
    Env e = new(); e.global_var = 99;
    e.show();
  end
endmodule
*/
//===========================================  
// Code 96: Dynamic Cast Using $cast  
/*
class Animal;
endclass

class Dog extends Animal;
  function void bark(); $display("Woof!"); endfunction
endclass

module test96;
  initial begin
    Animal a = new Dog();
    Dog d;
    if ($cast(d, a)) d.bark();
  end
endmodule
*/
//===========================================  
// Code 97: Nested Class Member Access  
/*
class Container;
  class Sub;
    int v;
  endclass

  Sub s;
endclass

module test97;
  initial begin
    Container c = new();
    c.s = new();
    c.s.v = 10;
    $display("Nested v = %0d", c.s.v);
  end
endmodule
*/
//===========================================  
// Code 98: Custom Print Method  
/*
class Msg;
  string text;

  function void print();
    $display("[LOG]: %s", text);
  endfunction
endclass

module test98;
  initial begin
    Msg m = new(); m.text = "Hello Vinay!";
    m.print();
  end
endmodule
*/
//===========================================  
// Code 99: Override Method with Argument  
/*
class Parent;
  virtual function void config(int x);
    $display("Parent Config = %0d", x);
  endfunction
endclass

class Child extends Parent;
  function void config(int x);
    $display("Child Config = %0d", x+10);
  endfunction
endclass

module test99;
  initial begin
    Parent p = new Child();
    p.config(5);
  end
endmodule
*/
//===========================================  
// Code 100: Polymorphic Object Random Execution  
/*
class Worker;
  virtual function void execute(); endfunction
endclass

class Print extends Worker;
  function void execute(); $display("Printing..."); endfunction
endclass

class Save extends Worker;
  function void execute(); $display("Saving..."); endfunction
endclass

module test100;
  initial begin
    Worker w;
    if ($urandom_range(0,1)) w = new Print();
    else w = new Save();
    w.execute();
  end
endmodule
*/
