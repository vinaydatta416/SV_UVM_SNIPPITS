```` markdown

````
---

## 1️⃣ Fixed Size Arrays
- **Definition**: Array with pre-defined size.  
- **Syntax**:
```systemverilog
int arr[0:7];       // 8 elements, index 0 to 7
logic [3:0] a[0:3]; // 4-element vector array
````
 
* **Operations**:

  * Access: `arr[3] = 5;`
  * Iteration: `for(int i=0;i<8;i++) arr[i] = i;`
  * Copying: `int b[0:7]; b = arr;`
  * Size query: `int s = $size(arr);`

 

## 2️⃣ Packed Arrays

* **Definition**: Contiguous bits, can be used like a single vector.
* **Syntax**:

```systemverilog
logic [7:0] byte_arr;      // 8-bit packed array
logic [3:0][7:0] matrix;   // 4x8 packed array
```

* **Operations**:

  * Bit slicing: `byte_arr[3:0]`
  * Vector operations: `&byte_arr, |byte_arr, ^byte_arr`
  * Assignments & concatenation: `{byte_arr, 4'b1010}`


## 3️⃣ Unpacked Arrays

* **Definition**: Array of elements, each element separate.
* **Syntax**:

```systemverilog
int arr[10];          // 10-element unpacked array
logic [7:0] mem[0:15];
```

* **Operations**:

  * Indexing: `arr[3] = 10;`
  * Iteration: `foreach(arr[i]) arr[i] += 1;`
  * Dynamic assignment: `mem = '{default:0};`
  * Built-in methods: `$size(arr)`

## 4️⃣ Dynamic Arrays

* **Definition**: Resizable arrays at runtime.
* **Syntax**:

```systemverilog
int dyn[];
dyn = new[10];   // allocate 10 elements
```

* **Operations**:

  * Resizing: `dyn = new[20];`
  * Add / remove: `dyn.push_back(5); dyn.pop_back();`
  * Insert / delete: `dyn.insert(2, 99); dyn.delete(3);`
  * Built-in: `dyn.size(), dyn.find(), dyn.sort(), dyn.reverse()`

 

## 5️⃣ Associative Arrays

* **Definition**: Arrays indexed by key (int, string, etc.)
* **Syntax**:

```systemverilog
int assoc[string];      // string key
assoc["one"] = 1;
```

* **Operations**:

  * Indexing: `assoc["two"] = 2;`
  * Querying: `assoc.exists("one");`
  * Delete element: `assoc.delete("one");`
  * Iteration: `foreach(assoc[key]) $display("%s=%0d", key, assoc[key]);`
  * Find index / key: `assoc.find_index(val);`

 

## 6️⃣ Queues

* **Definition**: FIFO / LIFO dynamic arrays
* **Syntax**:

```systemverilog
int q[$];     // queue of integers
```

* **Operations**:

  * Add / Remove: `q.push_back(5); q.push_front(1); q.pop_back(); q.pop_front();`
  * Insert / Delete: `q.insert(2, 10); q.delete(1);`
  * Iteration: `foreach(q[i]) $display(q[i]);`
  * Size / Check: `int n = q.size(); q.empty()`

 

## 7️⃣ Array Methods (All Types)

* **Manipulation**: `push_back()`, `pop_back()`, `insert()`, `delete()`, `resize()`
* **Locator / Query**: `find()`, `find_index()`, `exists()`
* **Ordering**: `sort()`, `rsort()`, `shuffle()`, `reverse()`
* **Reduction**: `sum()`, `product()`, `and()`, `or()`, `xor()`
* **Iteration**: `foreach(array[i]) ...`
* **Slice / Part-select**: `arr[3:0]`

 


## 8️⃣ Multi-dimensional Arrays

* **Packed**: contiguous bits

```systemverilog
logic [3:0][7:0] matrix; // 4 rows, 8 bits each
```

* **Unpacked / Dynamic / Queue**:

```systemverilog
int arr2d[0:3][0:7];     // static 2D
int dyn2d[][0:7];        // dynamic 2D
int q2d[$][0:3];         // queue of arrays
```

* **Operations**:

  * Iteration: nested loops or foreach:

```systemverilog
foreach(arr2d[i,j]) arr2d[i,j] = i+j;
```

* Insert / delete in dynamic 2D or queue arrays
---

 ## 9️⃣ Structures and Unions in SV

**Structures**
```systemverilog
typedef struct {
  int x;
  int y;
  logic valid;
} point_t;

point_t p;
p.x = 10;
p.y = 20;
p.valid = 1;
````

---

* **Operations**: assign fields, compare, copy, nested struct access

* **Unions**

```systemverilog
typedef union {
  int a;
  logic [31:0] b;
} u_t;

u_t u;
u.a = 10;
u.b = 32'hFF00FF00;
```

* **Operations**: assign field, read any member, copy, cast

 
---
## 🔟 Enumerations

```systemverilog
typedef enum {IDLE, RUN, STOP} state_t;
state_t st;
st = RUN;
```

* **Operations**: assign, compare, cast to int, print as string

 
---

## 1️⃣1️⃣ Procedural Statements & Flow Control

### If Statement

```systemverilog
if(a > b)
  max = a;
else
  max = b;
```
---

* **Operations**: conditional assignment, nesting, logical expressions

### Unique / Priority If

```systemverilog
unique if(sel==0) a=1;
else if(sel==1) a=2;

priority if(sel==0) a=1;
else if(sel==1) a=2;
```

---

* **Operations**: ensure one condition, enforce priority, branching

### Loops

* **For Loop**

```systemverilog
for(int i=0;i<10;i++) arr[i]=i;
```

* **While Loop**

```systemverilog
int i=0;
while(i<5) i++;
```

* **Do-While Loop**

```systemverilog
int i=0;
do i++; while(i<5);
```

* **Forever Loop**

```systemverilog
forever #10 clk = ~clk;
```

* **Foreach Loop**

```systemverilog
foreach(arr[i]) arr[i] = i;
```

* **Repeat Loop**

```systemverilog
repeat(5) $display("Hello");
```


---

* **Operations**: iterate, index arrays, exit loops

### Break and Continue

```systemverilog
for(int i=0;i<10;i++) begin
  if(i==5) break;
  if(i%2==0) continue;
end
```


---


* **Operations**: exit loop, skip iteration

### Named Blocks / Statement Labels

```systemverilog
my_block: begin
  a=1; b=2;
end
disable my_block;
```

* **Operations**: label block, disable block, control scope

### Disable block / statements

```systemverilog
disable named_block;
```

* **Operations**: terminate execution of a block or task

```


---

 ## 4️⃣ Classes & Object-Oriented Programming (OOP)

 ---

### 1. Class Definition
```systemverilog
class Packet;
  int addr;
  function new(); addr = 0; endfunction
endclass

Packet p = new();   // Instantiate object
````

**Operations**: instantiate, access members, pass to tasks/functions

 

### 2. Constructors

```systemverilog
class Packet;
  int addr;
  function new(int a);
    addr = a;
  endfunction
endclass

Packet p = new(10); // Call constructor with parameter
```

**Operations**: initialize members, overload constructors

 

### 3. Accessing Unallocated Memory

```systemverilog
Packet p;
if(p == null) $display("Object not allocated");
```

**Operations**: check null, prevent runtime errors

 

### 4. Class Assignment

```systemverilog
Packet p1 = new(10);
Packet p2;
p2 = p1;  // Shallow assignment
```

**Operations**: assign object handle, shallow copy

 

### 5. Array of Objects

```systemverilog
Packet arr[0:3];
foreach(arr[i]) arr[i] = new(i);
```

**Operations**: instantiate multiple objects, iterate, assign individually

 

### 6. Static Properties & Methods

```systemverilog
class Counter;
  static int count = 0;
  static function void inc(); count++; endfunction
endclass

Counter::inc();
```

**Operations**: shared data among all objects, call without object handle

 

### 7. this Keyword

```systemverilog
class Packet;
  int addr;
  function void set_addr(int a);
    this.addr = a;
  endfunction
endclass
```

**Operations**: refer to current object, disambiguate member names

 

### 8. Shallow Copy / Deep Copy

```systemverilog
Packet p1 = new(5);
Packet p2 = p1;      // Shallow copy
Packet p3 = p1.copy(); // Deep copy if copy() defined
```

**Operations**: copy handles vs copy full object data

 

### 9. Inheritance

```systemverilog
class Base;
  int a;
endclass

class Derived extends Base;
  int b;
endclass
```

**Operations**: extend functionality, access base members

 

### 10. Super Keyword

```systemverilog
class Derived extends Base;
  function new();
    super.new();  // call base constructor
  endfunction
endclass
```

**Operations**: call parent constructor or methods

 

### 11. virtual Keyword

```systemverilog
class Base;
  virtual function void display(); endfunction
endclass
```

**Operations**: allow overriding in child, polymorphism

 

### 12. Abstract Class

```systemverilog
virtual class ABC;
  pure virtual function void run();
endclass
```

**Operations**: cannot instantiate, must override pure virtual methods

 

### 13. Polymorphism

```systemverilog
Base b;
Derived d = new();
b = d;           // base handle pointing to derived object
b.display();     // calls overridden method if virtual
```

**Operations**: handle multiple types, override methods

 

### 14. Scope Resolution Operator `::`

```systemverilog
Derived::some_static_method();
```

**Operations**: access static methods or constants, access base class members

 

### 15. Extern Methods

```systemverilog
class Packet;
  extern function void send();
endclass
```

**Operations**: declare method defined outside, use with DPI or external file

 

### 16. Parameterized Classes

```systemverilog
class #(parameter N=8) MyArray;
  int arr[N];
endclass

MyArray #(16) arr16 = new();
```

**Operations**: customize class, flexible object size/config

 

### 17. Data Encapsulation and Hiding

```systemverilog
class Packet;
  protected int addr;
  local int id;
endclass
```

**Operations**: control access to members, prevent unintended modification

 

### 18. Local / Protected Qualifiers

```systemverilog
local int temp;      // accessible inside class only
protected int shared; // accessible in class + derived classes
```

**Operations**: enforce access control

 

### 19. Constant Class Properties

```systemverilog
class Packet;
  const int ID = 100;
endclass
```

**Operations**: read-only members, compile-time constant

 

### 20. typedef Class

```systemverilog
typedef class Packet pkt_t;
pkt_t p1 = new();
```

**Operations**: simplify object handle types, reuse class handles

 

### 21. Overriding Class Members

```systemverilog
class Base;
  virtual function void display(); endfunction
endclass

class Derived extends Base;
  function void display(); $display("Derived"); endfunction
endclass
```

---

 ## 5️⃣ Randomization & Constraints

--- 

### 1. Randomization in SV
```systemverilog
class Packet;
  rand bit [7:0] addr;
  rand bit [3:0] cmd;
endclass

Packet p = new();
p.randomize();   // Randomize all rand variables
````

**Operations**: randomize variables, use in testbench stimulus

 

### 2. rand / randc

```systemverilog
rand bit [3:0] a;    // random
randc bit [3:0] b;   // random cyclic, no repeat until cycle complete
```

**Operations**: generate random values, cyclic random values

 

### 3. If-Else in Constraints

```systemverilog
constraint c1 {
  if(cmd==1) addr < 16;
  else addr > 16;
}
```

**Operations**: conditional constraints based on other variables

 

### 4. Implication Operator in Constraint

```systemverilog
constraint c2 { (cmd==2) -> (addr<8); }
```

**Operations**: enforce conditional relationship

 

### 5. Foreach in Constraints

```systemverilog
constraint c3 { foreach(arr[i]) arr[i] < 10; }
```

**Operations**: iterate arrays in constraints

 

### 6. Dist Keyword

```systemverilog
constraint c4 { cmd dist {0:=1, 1:=2, 2:=1}; }
```

**Operations**: weighted random distribution of values

 

### 7. Inheritance in Constraint

```systemverilog
class Base;
  rand int a;
  constraint c_base { a < 10; }
endclass

class Derived extends Base;
  rand int b;
  constraint c_derived { b < 20; }
endclass
```

**Operations**: combine parent and child constraints

 

### 8. Function in Constraint

```systemverilog
function int double_val(int x); return x*2; endfunction
constraint c5 { addr < double_val(5); }
```

**Operations**: use functions inside constraint expressions

 

### 9. Disable Randomization

```systemverilog
p.randomize() with { disable constraint_name; }
```

**Operations**: temporarily ignore a constraint

 

### 10. Static Constraints

```systemverilog
constraint c6 { addr == 5; } // always enforced
```

**Operations**: enforce rules every randomization

 

### 11. Unique Constraint

```systemverilog
constraint c7 { unique {a,b,c} inside {[1:3]}; }
```

**Operations**: ensure values are mutually exclusive

 

### 12. Bidirectional Constraint

```systemverilog
constraint c8 { a + b == c; }
```

**Operations**: enforce relation between variables in both directions

 

### 13. Solve Before

```systemverilog
constraint c9 { solve a before b; a < b; }
```

**Operations**: control order of variable randomization

 

### 14. Inline Constraints

```systemverilog
p.randomize() with { addr < 10; }
```

**Operations**: ad-hoc constraint during randomization call

 

### 15. Soft Constraint

```systemverilog
soft constraint c_soft { addr < 20; }
```

**Operations**: hint constraint, can be overridden

 

### 16. Randomization Methods

```systemverilog
p.randomize();
p.randomize() with { addr>5; }
```

**Operations**: randomize object, randomize with inline constraints

 

### 17. randcase

```systemverilog
randcase
  10: addr=1;
  5: addr=2;
  default: addr=0;
endcase
```

**Operations**: weighted random selection of assignments

 

### 18. Random System Methods

```systemverilog
int r;
r = $urandom();       // 32-bit unsigned random
r = $urandom_range(0,10);
r = $urandom(seed);   // seeded random
```

**Operations**: generate random integers, ranged values, repeatable sequences

---


 ## 6️⃣ InterProcess Communication (IPC)

 ---

### 1. Events
```systemverilog
event e;
->e;           // trigger event
@(e);          // wait for event
````

**Operations**: trigger, wait, synchronize processes

 ---

### 2. Nonblocking Events

```systemverilog
fork
  ->e;
join_none
```

**Operations**: trigger asynchronously, do not block current process

 
---
### 3. wait\_order

```systemverilog
event e1, e2;
wait_order(e1, e2);  // wait for events in specific order
```

**Operations**: enforce order of events

 ---

### 4. Merging Events

```systemverilog
event e1, e2;
event merged = {e1, e2};  // combined event
@(merged);                // wait for any
```

**Operations**: merge multiple events, synchronize multiple triggers

 
---
### 5. Passing an Event

```systemverilog
task pass_event(input event e_in);
  @(e_in);  // wait on passed event
endtask
```

**Operations**: pass event handles to tasks/functions

 ---

### 6. Semaphores

```systemverilog
semaphore s = new(2);  // 2 resources
s.get(1);               // acquire
s.put(1);               // release
```

**Operations**: resource control, blocking/nonblocking acquire, release

 
---

### 7. Mailbox

```systemverilog
mailbox mb = new();
int data;
mb.put(10);             // send
mb.get(data);           // receive
```

**Operations**: send/receive messages, synchronize processes, blocking/nonblocking

 
---

## 7️⃣ Interfaces

 

### 1. SystemVerilog Interface

```systemverilog
interface bus_if(input logic clk);
  logic [7:0] addr, data;
endinterface
```

**Operations**: bundle signals, pass as a single handle, modularize connections

 

### 2. Modport

```systemverilog
interface bus_if(input logic clk);
  logic [7:0] addr, data;
  modport master(input clk, output addr, data);
endinterface
```

**Operations**: define directional access, restrict read/write per module

 

### 3. Clocking Block

```systemverilog
interface bus_if(input logic clk);
  logic [7:0] data;
  clocking cb @(posedge clk);
    output data;
  endclocking
endinterface
```

**Operations**: synchronous signal access, specify input/output edges

 

### 4. Virtual Interface

```systemverilog
virtual bus_if vif;
module tb;
  initial begin
    vif.addr = 8'hAA;
  end
end
```

---

---

## 1️⃣ Scheduling Semantics
```systemverilog
initial begin
  #5 a = 1;       // inertial/delta delay
  a <= 0;         // nonblocking assignment
  a = 1;          // blocking assignment
end
````

**Operations**:

* Control execution order
* Use delays (`#`, `@`)
* Blocking vs nonblocking assignment
* Event-driven simulation

--- 

## 2️⃣ Program Block

```systemverilog
program tb_prog;
  initial $display("Program block execution");
endprogram
```

**Operations**:

* Contain testbench stimulus
* Synchronize execution with DUT
* Prevent race conditions

 ---

## 3️⃣ Casting

```systemverilog
int i = 10;
real r;
r = real'(i);      // explicit type casting

logic [3:0] l = 4'b1010;
int x;
x = int'(l);       // cast logic to int
```

**Operations**:

* Convert between types
* Assign compatible values
* Resolve type mismatches
---
 

## 4️⃣ Packages & Imports

### 4.1 Package Declaration

```systemverilog
package defs;
  typedef int my_t;
  function int add(int a,int b); 
    return a+b; 
  endfunction
endpackage
```

**Operations**:

* Group reusable code
* Share types, functions, constants
* Avoid name conflicts

### 4.2 Import Package

```systemverilog
import defs::*;
my_t x = add(1,2);
```

**Operations**:

---

* Access package contents in modules, interfaces, or programs

### 4.3 Package Items

* `typedef`
* `parameters`
* `functions`
* `tasks`
* `classes`
* `covergroups`
  **Operations**: reusable code blocks across multiple modules

```
---


## 1️⃣ Parameters

### 1.1 Module Parameters
```systemverilog
module adder #(parameter N = 8) (
  input logic [N-1:0] a, b,
  output logic [N-1:0] sum
);
  assign sum = a + b;
endmodule
````
---

**Operations**: parameterize module width, configurable design, reuse module with different sizes

### 1.2 Local Parameters

```systemverilog
module example;
  localparam M = 16;
  logic [M-1:0] data;
endmodule
```

**Operations**: constants local to module, cannot be overridden from outside

 ---

## 2️⃣ Final Block

```systemverilog
final begin
  $display("Final block executes at end of simulation");
end
```

**Operations**: run cleanup code at simulation end, finalize testbench operations

 ---

## 3️⃣ Callback

### 3.1 Callback Declaration & Method

```systemverilog
class MyClass;
  function void notify();
    $display("Callback called");
  endfunction
endclass
```
---

**Operations**: define a method that can be triggered externally

### 3.2 Using Callback

```systemverilog
MyClass obj = new();
obj.notify();   // invoke callback method
```

**Operations**: trigger predefined actions, customize behavior in response to events

---

# 🟢 SystemVerilog DPI (Direct Programming Interface)
 

## 1️⃣ Importing C Functions

```systemverilog
import "DPI-C" function int add_c(input int a, input int b);
````

**Operations**: call C functions from SV, pass input arguments, get return values

 

## 2️⃣ Exporting SV Functions to C

```systemverilog
export "DPI-C" function sv_func;
function int sv_func(input int a);
  return a+1;
endfunction
```

**Operations**: call SV functions from C, expose SV code externally

 

## 3️⃣ Calling DPI Functions

```systemverilog
int result;
result = add_c(5,10);
```

**Operations**: call imported C function, store return value

 

## 4️⃣ Passing Different Data Types

```systemverilog
import "DPI-C" function void c_func(input int i, input real r, input string s);
```

**Operations**: pass integer, real, string, arrays, and structs to C

 

## 5️⃣ Passing Arrays to C

```systemverilog
import "DPI-C" function void sum_array(input int arr[], output int total);
```

**Operations**: pass dynamic arrays, retrieve modified values

 

## 6️⃣ Passing Structs to C

```systemverilog
typedef struct {int a; int b;} my_struct_t;
import "DPI-C" function void c_struct(input my_struct_t s);
```

**Operations**: pass SV structs to C, use in computation

 

## 7️⃣ Calling SV from C

```c
int sv_func(int a);  // declared in SV and exported
int result = sv_func(10);
```

**Operations**: call SV functions from C environment

 


 

## 9️⃣ Task DPI Example

```systemverilog
import "DPI-C" task print_msg(input string msg);
initial begin
  print_msg("Hello from C");
end
```

**Operations**: call DPI tasks for side effects, printing, logging


---
---
 ## 9️⃣ Assertions & SVA

 
---

### 1. SVA Building Blocks
- **Property**
```systemverilog
property p1;
  @(posedge clk) a |-> b;
endproperty
assert property(p1);
````

**Operations**: define behavior, assert with `assert property`, reuse in sequences

* **Sequence**

```systemverilog
sequence s1;
  a ##1 b ##1 c;
endsequence
```

**Operations**: detect temporal patterns, can be used inside properties

 

### 2. Implication Operators

```systemverilog
a |-> b;   // blocking implication (b must hold next cycle)
a |=> b;   // nonblocking implication (b can overlap)
```

**Operations**: enforce cause-effect, timing checks

 

### 3. Repetition Operators

```systemverilog
a [*3];       // a occurs 3 times consecutively
b [=2:5];     // a occurs 2 to 5 times
```

**Operations**: check repeated patterns in sequences/properties

 

### 4. Built-in Methods

```systemverilog
$rose(sig);      // 0 -> 1 transition
$fell(sig);      // 1 -> 0 transition
$stable(sig);    // remains same
$changed(sig);   // changed value
$past(sig, n);   // value n cycles ago
```

**Operations**: temporal checks, detect transitions, check stability

 

### 5. Ended & disable iff

```systemverilog
property p2;
  @(posedge clk) a |-> b;
endproperty

assert property(p2) disable iff (reset);
```

**Operations**: terminate check conditionally (e.g., reset), prevent false failures

 

### 6. Variable Delay

```systemverilog
property p3;
  @(posedge clk) a |-> ##[1:delay_var] b;
endproperty
```

**Operations**: flexible timing checks using variables

 

### 7. \$onehot / \$onehot0 / \$unique

```systemverilog
assert ($onehot(signal));   // exactly one bit is 1
assert ($onehot0(signal));  // zero or one bit is 1
assert ($unique(signal));   // exactly one condition true among multiple
```

**Operations**: encoding checks, mutual exclusivity, detect illegal states

 

### 8. Sequences + Properties Examples

```systemverilog
sequence s_valid_ready;
  valid ##1 ready;
endsequence

property p_handshake;
  @(posedge clk) s_valid_ready |=> done;
endproperty
assert property(p_handshake);
```

**Operations**: handshake checks, pipelining checks, temporal behavior verification

 

### 9. Other Useful SVA Checks

```systemverilog
$past(a,1) == a;          // check previous value
$rose(b) |=> stable(c);   // if b rises, c must remain stable
$changed(d);               // detect any change
```

**Operations**: temporal data integrity, signal transition monitoring



---


 # 🟢 SystemVerilog Functional Coverage

 

## 1️⃣ Covergroup Declaration
```systemverilog
covergroup cg_name @(posedge clk);
  coverpoint signal;
endgroup

cg_name cg = new();
````

**Operations**: define coverage container, sample signals, instance creation

 

## 2️⃣ Coverpoints

```systemverilog
coverpoint addr {
  bins low = {0,1,2};
  bins mid = {3,4,5};
  bins high = {6,7,8};
}
```

**Operations**: define value ranges, bins, named bins

 

## 3️⃣ Bins Types

* **Explicit Bins**

```systemverilog
bins low = {0,1,2};
```

* **Wildcard Bins**

```systemverilog
bins w = {[0:3]};
```

* **Illegal Bins**

```systemverilog
illegal_bins illegal = {9,10};
```

* **Ignore Bins**

```systemverilog
ignore_bins ig = {11,12};
```

**Operations**: classify signal values, exclude illegal patterns, ignore unwanted values

 

## 4️⃣ Cross Coverage

```systemverilog
coverpoint addr;
coverpoint data;
cross addr, data {
  ignore_bins illegal = binsof(addr) intersect {8};
}
```

**Operations**: track combinations of multiple signals, ignore invalid cross patterns

 

## 5️⃣ Coverage Options

```systemverilog
covergroup cg_opts @(posedge clk);
  option.per_instance = 1;   // instance-specific coverage
  option.comment = "Example";
  option.name = "my_cg";
endgroup
```

**Operations**: configure sampling, instance behavior, reporting options

 

## 6️⃣ Sampling Coverage

```systemverilog
cg_name.sample();     // sample current value
```

**Operations**: manually trigger coverage, automatic sampling

 

## 7️⃣ Functional Coverage Methods

```systemverilog
int cov = cg_name.get_coverage();  // get % coverage
cg_name.print();                    // print coverage report
cg_name.clear();                    // reset coverage
```

**Operations**: query coverage %, display report, reset for next run

 

## 8️⃣ Coverpoint Options

```systemverilog
coverpoint addr {
  option.goal = 100;      // target % coverage
  option.weight = 2;      // weight of this bin
  ignore_bins ig = {0};   // ignore value
}
```

**Operations**: assign weights, set coverage goals, ignore values

 

## 9️⃣ Bins Control

```systemverilog
bins a[] = {0,1,2};      // array bins
bins b[] with (a inside {0,1});
```

**Operations**: multi-value bins, array of bins, conditional bins

 

## 🔟 Cross Coverage Options

```systemverilog
cross addr, data {
  at_least = 1;           // minimum hits
  ignore_bins illegal = binsof(addr) intersect {8};
}
```

**Operations**: enforce minimum hits, ignore unwanted combinations, monitor cross patterns

 

## 1️⃣1️⃣ Dynamic Coverpoints / Sampling

```systemverilog
covergroup cg_dyn;
  coverpoint addr {
    bins low = {0,1};
    bins high = {2,3};
  }
endgroup

cg_dyn cg = new();
cg.sample();
```

**Operations**: dynamic creation of bins, sample at runtime

 

## 1️⃣2️⃣ Functional Coverage in Arrays

```systemverilog
coverpoint arr[i] {
  bins val = {0,1,2};
}
```

**Operations**: cover arrays, track multiple indices, multi-dimensional arrays

 

## 1️⃣3️⃣ Cross-Coverage of Arrays

```systemverilog
coverpoint arr[i];
coverpoint arr[j];
cross arr[i], arr[j] {
  ignore_bins illegal = {0};
}
```

**Operations**: monitor relationships between array elements

 

## 1️⃣4️⃣ Weighted / Random Coverage

```systemverilog
coverpoint signal {
  bins low = {0,1} weight=2;
  bins high = {2,3} weight=1;
}
```

**Operations**: prioritize certain bins for coverage, assign probability weight

 

## 1️⃣5️⃣ Functional Coverage Summary Methods

```systemverilog
cg_name.get_inst_coverage();    // instance-specific coverage %
cg_name.get_coverage();         // overall coverage %
cg_name.print();                // print report
cg_name.clear();                // reset coverage
```

**Operations**: query per instance, overall coverage, reset, print reports

 

## 1️⃣6️⃣ Cross Coverage Summary

```systemverilog
cg_name.cross_cov_get_coverage();
```

**Operations**: get cross coverage %, check cross combinations, print cross report

 

## 1️⃣7️⃣ Covergroup with Multiple Coverpoints

```systemverilog
covergroup cg_multi @(posedge clk);
  coverpoint addr;
  coverpoint data;
  cross addr, data;
endgroup
```

**Operations**: combine multiple coverpoints and cross coverage, modular sampling




---



 ## 1️⃣1️⃣ File I/O in SystemVerilog

 

### 1. Opening a File
```systemverilog
int fd;
fd = $fopen("file.txt", "r");   // "r" = read, "w" = write, "a" = append
````

**Operations**: open file, get file descriptor, choose mode

 

### 2. Closing a File

```systemverilog
$fclose(fd);
```

**Operations**: release file descriptor, finalize writing

 

### 3. Reading from File

```systemverilog
int data;
$fscanf(fd, "%d\n", data);     // read integer
```

**Operations**: read formatted data, scan line by line, store in variables

 

### 4. Writing to File

```systemverilog
$fwrite(fd, "Value = %d\n", data);   // write formatted data
$display("Value = %d", data);        // print to console
```

**Operations**: write formatted data, append or overwrite, console display

 

### 5. Checking End of File

```systemverilog
if ($feof(fd)) $display("End of file reached");
```

**Operations**: detect EOF, control reading loop

 

### 6. File I/O Example – Line by Line

```systemverilog
string line;
while (!$feof(fd)) begin
  line = "";
  $fgets(line, fd);        // read one line
  $display("%s", line);
end
```

**Operations**: read strings, process each line

 

## 1️⃣2️⃣ Verification Process and Testbench

### 1. Testbench Structure

```systemverilog
module tb_adder;
  logic [3:0] a,b,sum;
  adder dut(.a(a), .b(b), .sum(sum));

  initial begin
    a = 0; b = 0;
    #10 a=3; b=5;
    #10 a=7; b=2;
  end
endmodule
```

**Operations**: instantiate DUT, drive stimulus, monitor outputs

 

### 2. Example: SV Adder TB

```systemverilog
module adder(input logic [3:0] a,b, output logic [3:0] sum);
  assign sum = a + b;
endmodule

module tb_adder;
  logic [3:0] a,b,sum;
  adder dut(.a(a), .b(b), .sum(sum));

  initial begin
    $display("Time\t a b sum");
    $monitor("%0t\t %0d %0d %0d",$time,a,b,sum);
    a=1; b=2; #10;
    a=3; b=5; #10;
  end
endmodule
```


---


 ## 1️⃣1️⃣ File I/O in SystemVerilog

 

### 1. Opening a File
```systemverilog
int fd;
fd = $fopen("file.txt", "r");   // "r" = read, "w" = write, "a" = append
````

**Operations**: open file, get file descriptor, choose mode

 

### 2. Closing a File

```systemverilog
$fclose(fd);
```

**Operations**: release file descriptor, finalize writing

 

### 3. Reading from File

```systemverilog
int data;
$fscanf(fd, "%d\n", data);     // read integer
```

**Operations**: read formatted data, scan line by line, store in variables

 

### 4. Writing to File

```systemverilog
$fwrite(fd, "Value = %d\n", data);   // write formatted data
$display("Value = %d", data);        // print to console
```

**Operations**: write formatted data, append or overwrite, console display

 

### 5. Checking End of File

```systemverilog
if ($feof(fd)) $display("End of file reached");
```

**Operations**: detect EOF, control reading loop

 

### 6. File I/O Example – Line by Line

```systemverilog
string line;
while (!$feof(fd)) begin
  line = "";
  $fgets(line, fd);        // read one line
  $display("%s", line);
end
```

**Operations**: read strings, process each line


