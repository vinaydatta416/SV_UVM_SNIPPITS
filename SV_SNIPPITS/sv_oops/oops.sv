//===================================================

//Class example
class sv_class;
  //class properties
  int x;
  int y[5] = '{1,2,3,4,5};
  //method-1
  task set(int y);
    $display("y=%d",y[1]);
  endtask

  //method-2

endclass

module sv_class_ex;
 sv_class class_1; //Creating Handle

  initial begin
    sv_class class_2 = new(); //Creating handle and Object
    //class_1 = new(); //Creating Object for the Handle
    //Accessing Class methods
   // class_1.set(10);
 class_2.set(20);
   // $display("\tclass_1 :: Value of x = %0d",class_1.get());
   // $display("\tclass_2 :: Value of x = %0d",class_2.get());
  end
endmodule


//===================================================
/*
//this keyword example

class packet;
  
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  bit   write;
  string  pkt_type;
  
  //constructor
  function new(bit [31:0] addr,data,bit write,string pkt_type);
    addr  = addr;
    data  = data;
    write = write;
    pkt_type = pkt_type;
  endfunction
  
  //method to display class prperties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0h",addr);
    $display("\t data  = %0h",data);
    $display("\t write = %0h",write);
    $display("\t pkt_type  = %0s",pkt_type);
    $display("---------------------------------------------------------");
  endfunction
  
endclass

module sv_constructor;
  packet pkt;

  initial begin
    pkt = new(32'h10,32'hFF,1,"GOOD_PKT");
    pkt.display();
  end
  
endmodule






*/

//===================================================
/*
//this 

class packet;
  
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  bit   write;
  string  pkt_type;
  
  //constructor
  function new(bit [31:0] addr,data,bit write,string pkt_type);
    this.addr  = addr;
    this.data  = data;
    this.write = write;
    this.pkt_type = pkt_type;
  endfunction
  
  //method to display class prperties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0h",addr);
    $display("\t data  = %0h",data);
    $display("\t write = %0h",write);
    $display("\t pkt_type  = %0s",pkt_type);
    $display("---------------------------------------------------------");
  endfunction
  
endclass

module sv_constructor;
  packet pkt;

  initial begin
    pkt = new(32'h10,32'hFF,1,"GOOD_PKT");
    pkt.display();
  end
  
endmodule







*/

//===================================================
/*
Class Constructor example
class packet;
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  bit  write;
  string pkt_type;
  //constructor
  function new();
    addr  = 32'h10;
    data  = 32'hFF;
    write = 1;
    pkt_type = "GOOD_PKT";
  endfunction

  //method to display class prperties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0d",addr);
    $display("\t data  = %0h",data);
    $display("\t write = %0d",write);
    $display("\t pkt_type  = %0s",pkt_type);
    $display("---------------------------------------------------------");
  endfunction
endclass

module sv_constructor;
  packet pkt;
  initial begin
    pkt = new();
    pkt.display();
  end
endmodule







*/

//===================================================
/*
//Static properties example

class packet;
  
  //class properties
  byte packet_id;
    
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
    packet_id = no_of_pkts_created;
  endfunction
  
  //method to display class prperties
  function void display();
    $display("--------------------------------------");
    $display("\t packet_id  = %0d",packet_id);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
      pkt[i].display();
    end
  end  
endmodule






*/

//===================================================
/*
//Static method example

class packet;
  
  //class properties
  byte packet_id;
    
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
    packet_id = no_of_pkts_created;
  endfunction
  
  //method to display class prperties
  function void display();
    $display("--------------------------------------");
    $display("\t packet_id  = %0d",packet_id);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
      pkt[i].display();
    end
  end  
endmodule






*/

//===================================================
/*
//Static method trying to access a non-static variable

class packet;
  byte packet_id;
  
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
  endfunction
    
  //Static method to display class prperties
  static function void display_packets_created();
    $display("--------------------------------------");
    $display("\t Packet Id is %0d",packet_id);
    $display("\t %0d packets created.",no_of_pkts_created);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    pkt[0].display_packets_created();
  end  
endmodule






*/

//===================================================
/*

//Accessing static class properties without creating an object

class packet;
    
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
  endfunction
    
  //Static method to display class prperties
  static function void display_packets_created();
    $display("--------------------------------------");
    $display("\t %0d packets created.",no_of_pkts_created);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];
  packet p;

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    
    //Accesing static Variable with class handle p
    $display("--------------------------------------");
    $display("\t %0d packets created.",p.no_of_pkts_created);
    $display("--------------------------------------");    
    
    //Accesing static Method with class handle p
    p.display_packets_created();
  end  
endmodule





*/

//===================================================
/*
//Class Assignment


class packet;
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  bit write;
  string pkt_type;
  //constructor
  function new();
    addr  = 32'h10;
    data  = 32'hFF;
    write = 1;
    pkt_type = "GOOD_PKT";
  endfunction

  //method to display class properties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0d",addr);
    $display("\t data  = %0h",data);
    $display("\t write = %0d",write);
    $display("\t pkt_type  = %0s",pkt_type);
    $display("---------------------------------------------------------");
  endfunction
endclass

module class_assignment;
  packet pkt_1;
  packet pkt_2;

  initial begin
    pkt_1 = new();
    $display("\t****  calling pkt_1 display  ****");
    pkt_1.display();
    //assigning pkt_1 to pkt_2
    pkt_2 = pkt_1;
    $display("\t****  calling pkt_2 display  ****");
    pkt_2.display();
    //changing values with pkt_2 handle
    pkt_2.addr = 32'hAB;
    pkt_2.pkt_type = "BAD_PKT";

    //changes made with pkt_2 handle will reflect on pkt_1
    $display("\t****  calling pkt_1 display  ****");
    pkt_1.display();
  end
endmodule

*/
//===================================================
/*
//Shallow copy example

//-- class --- 
class address_range;
  bit [31:0] start_address;
  bit [31:0] end_address  ;
  function new();    start_address = 10;
    end_address   = 50;
  endfunction
endclass

//-- class ---   
class packet;
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  address_range ar; //class handle

  //constructor
  function new();
    addr  = 32'h10;
    data  = 32'hFF;
    ar = new(); //creating object
  endfunction
  //method to display class properties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0h",addr);
    $display("\t data  = %0h",data);
    $display("\t start_address  = %0d",ar.start_address);
    $display("\t end_address  = %0d",ar.end_address);
    $display("---------------------------------------------------------");
  endfunction
endclass

// -- module ---
module class_assignment;
  packet pkt_1;
  packet pkt_2;

  initial begin
    pkt_1 = new();   //creating pkt_1 object
    $display("\t****  calling pkt_1 display  ****");
    pkt_1.display();
 
    pkt_2 = new pkt_1;   //creating pkt_2 object and copying pkt_1 to pkt_2
    $display("\t****  calling pkt_2 display  ****");
    pkt_2.display();

    //changing values with pkt_2 handle
    pkt_2.addr = 32'h68;
    pkt_2.ar.start_address = 60;
    pkt_2.ar.end_address = 80;
    $display("\t****  calling pkt_1 display after changing pkt_2 properties ****");

    //changes made to pkt_2.ar properties reflected on pkt_1.ar, so only handle of the object get copied, this is called shallow copy
    pkt_1.display();
    $display("\t****  calling pkt_2 display after changing pkt_2 properties ****");
    pkt_2.display(); //
  end
endmodule

*/
//===================================================
/*
//deep copy


//-- class --- 
class address_range;
  bit [31:0] start_address;
  bit [31:0] end_address  ;

  function new();
    start_address = 10;
    end_address   = 50;
  endfunction
  //copy method
  function address_range copy;
    copy = new();
    copy.start_address = this.start_address;
    copy.end_address   = this.end_address;
    return copy;
  endfunction
endclass

//-- class ---   
class packet;
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  address_range ar; //class handle

  //constructor
  function new();
    addr  = 32'h10;
    data  = 32'hFF;
    ar = new(); //creating object
  endfunction

  //method to display class prperties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0h",addr);
    $display("\t data  = %0h",data);
    $display("\t start_address  = %0d",ar.start_address);
    $display("\t end_address  = %0d",ar.end_address);
    $display("---------------------------------------------------------");
  endfunction

  //copy method
  function packet copy();
    copy = new();
    copy.addr = this.addr;
    copy.data = this.data;
    copy.ar   = ar.copy;//calling copy function of tr
    return copy;
  endfunction
endclass

// -- module ---
module class_assignment;
  packet pkt_1;
  packet pkt_2;
  initial begin
    pkt_1 = new();   //creating pkt_1 object
    $display("\t****  calling pkt_1 display  ****");
    pkt_1.display();
    pkt_2 = new();   //creating pkt_2 object
    $display("\t****  calling pkt_2 display  ****");
    pkt_2.display();
    pkt_2 = pkt_1.copy(); //calling copy method
    //changing values with pkt_2 handle
    pkt_2.addr = 32'h68;
    pkt_2.ar.start_address = 60;
    pkt_2.ar.end_address = 80;
    $display("\t****  calling pkt_1 display after changing pkt_2 properties ****");
    pkt_1.display();
    $display("\t****  calling pkt_2 display after changing pkt_2 properties ****");
    pkt_2.display();
  end
endmodule





*/

//===================================================
/*

//Inheritance Example

class parent_class;
  bit [31:0] addr;
endclass

class child_class extends parent_class;
  bit [31:0] data;
endclass

module inheritence;
  initial begin
    child_class c = new();
    c.addr = 10;
    c.data = 20;
    $display("Value of addr = %0d data = %0d",c.addr,c.data);
  end
endmodule






*/

//===================================================
/*
//Polymorphism example
// base class 
class base_class;
  virtual function void display();
    $display("Inside base class");
  endfunction
endclass

// extended class 1
class ext_class_1 extends base_class;
  function void display();
    $display("Inside extended class 1");
  endfunction
endclass

// extended class 2
class ext_class_2 extends base_class;
  function void display();
    $display("Inside extended class 2");
  endfunction
endclass

// extended class 3
class ext_class_3 extends base_class;
  function void display();
    $display("Inside extended class 3");
  endfunction
endclass

// module
module class_polymorphism;

  initial begin 
    
    //declare and create extended class
    ext_class_1 ec_1 = new();
    ext_class_2 ec_2 = new();
    ext_class_3 ec_3 = new();
    
    //base class handle
    base_class b_c[3];
    
    //assigning extended class to base class
    b_c[0] = ec_1;
    b_c[1] = ec_2;
    b_c[2] = ec_3;
    
    //accessing extended class methods using base class handle
    b_c[0].display();
    b_c[1].display();
    b_c[2].display();
  end

endmodule


*/

//===================================================
/*

//Overriding class members

class parent_class;
  bit [31:0] addr;

  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    child_class c=new();
    c.addr = 10;
    c.data = 20;
    c.display();
  end
endmodule





*/

//===================================================
/*

//Super keyword
class parent_class;
  bit [31:0] addr;

  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;

  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction

endclass

module inheritence;
  initial begin
    child_class c=new();
    c.addr = 10;
    c.data = 20;
    c.display();
  end
endmodule

*/

/*
class parent_class;
  bit [31:0] addr;

  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;

  function display();
    $display("Data = %0d",data);
  endfunction

endclass

module inheritence;
  initial begin
    child_class c=new();
    c.addr = 10;
    c.data = 20;
    c.display();
  end
endmodule



*/


//===================================================
/*
//SystemVerilog Casting

module casting;
  
  real r_a;
  int  i_a;
  
  initial begin
    
    r_a = (2.1 * 3.2);
    
    //real to integer conversion
    i_a = int'(2.1 * 3.2); //or i_a = int'(r_a);
    
    $display("real value is %f",r_a);
    $display("int  value is %d",i_a);
  end
endmodule


*/

//===================================================
/*
//Dynamic Casting examples

class parent_class;
  bit [31:0] addr;
  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    parent_class p=new();
    child_class  c=new();
    c.addr = 10;
    c.data = 20;
    p = c;        //assigning child class handle to parent class handle
    c.display();
  end
endmodule



*/

//===================================================
/*

//assigning parent class handle to child class handle

class parent_class;
  bit [31:0] addr;
  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;

  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    parent_class p=new();
    child_class  c=new();
    c.addr = 10;
    c.data = 20;
    c = p;        //assigning child class handle to parent class handle
    c.display();
  end
endmodule





*/
//===================================================
/*

//assigning parent class handle to child class handle

class parent_class;
  bit [31:0] addr;

  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    parent_class p;
    child_class  c=new();
    child_class  c1;
    c.addr = 10;
    c.data = 20;
    p  = c;        //p is pointing to child class handle c.
    c1 = p;        //type check fails during compile time.
    c1.display();
  end
endmodule





*/
//===================================================
/*
//Use of $cast or casting

class parent_class;
  bit [31:0] addr;

  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;

  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    parent_class p;
    child_class  c=new();
    child_class  c1;
    c.addr = 10;
    c.data = 20;

    p = c;         //p is pointing to child class handle c.
    $cast(c1,p);   //with the use of $cast, type chek will occur during runtime

    c1.display();
  end
endmodule






*/

//===================================================
/*
Accessing local variable outside the class ( Not allowed )


class parent_class;
  local bit [31:0] tmp_addr;
  
  function new(bit [31:0] r_addr);
    tmp_addr = r_addr + 10;
  endfunction

  function display();
    $display("tmp_addr = %0d",tmp_addr);
  endfunction
endclass


//   module
module encapsulation;
  initial begin
    parent_class p_c = new(5);
       
    p_c.tmp_addr = 20;  //Accessing local variable outside the class
    p_c.display();
  end
endmodule

*/

//===================================================
/*
//Accessing local variable within the class ( Allowed )

class parent_class;
  local bit [31:0] tmp_addr;
  
  function new(bit [31:0] r_addr);
    tmp_addr = r_addr + 10;
  endfunction

  function display();
    $display("tmp_addr = %0d",tmp_addr);
  endfunction
endclass

//   module
module encapsulation;
  initial begin
    parent_class p_c = new(5);
    p_c.display();
  end
endmodule

*/

//===================================================
/*
//Protected Class members examples

class parent_class;
  protected bit [31:0] tmp_addr;
  
  function new(bit [31:0] r_addr);
    tmp_addr = r_addr + 10;
  endfunction

  function display();
    $display("tmp_addr = %0d",tmp_addr);
  endfunction
endclass

class child_class extends parent_class;
  function new(bit [31:0] r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
    tmp_addr++;
  endfunction  
endclass

//   module
module encapsulation;
  initial begin
    parent_class p_c = new(5);
    child_class  c_c = new(10);
        
    // variable declared as protected cannot be accessed outside the class 
    p_c.tmp_addr = 10;
    p_c.display();
   
    c_c.incr_addr();  //Accessing protected variable in extended class
    c_c.display();
  end
endmodule

*/

//===================================================
/*

//Accessing a protected variable in the extended class ( allowed )

class parent_class;
  protected bit [31:0] tmp_addr;
  
  function new(bit [31:0] r_addr);
    tmp_addr = r_addr + 10;
  endfunction

  function display();
    $display("tmp_addr = %0d",tmp_addr);
  endfunction
endclass

class child_class extends parent_class;
  function new(bit [31:0] r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
    tmp_addr++;
  endfunction  
endclass

//   module
module encapsulation;
  initial begin
    child_class  c_c = new(10);
    
    c_c.incr_addr();  //Accessing protected variable in extended class
    c_c.display();
  end
endmodule

*/

//===================================================
/*
//abstract class
virtual class packet;
  bit [31:0] addr;
endclass
module virtual_class;
  initial begin
    packet p;
    p = new();
  end
endmodule


*/

//===================================================
/*
//Deriving virtual class

//abstract class
virtual class packet;
  bit [31:0] addr;
endclass
 
class extended_packet extends packet;
  function void display;
    $display("Value of addr is %0d", addr);
  endfunction
endclass
 
module virtual_class;
  initial begin
    extended_packet p;
    p = new();
    p.addr = 10;
    p.display();
  end
endmodule



*/

//===================================================
/*
//Virtual Method Examples

class base_class;
  
  function void display;
    $display("Inside base_class");
  endfunction
  
endclass
 
class extended_class extends base_class;
  
  function void display;
    $display("Inside extended class");
  endfunction
  
endclass

module virtual_class;
  initial begin
    base_class     b_c;
    extended_class e_c;
    
    e_c = new();
    b_c = e_c;
    
    b_c.display();
  end
endmodule



*/
//===================================================
/*

//A method with virtual keyword

class base_class;
  
  virtual function void display;
    $display("Inside base_class");
  endfunction
  
endclass
 
class extended_class extends base_class;
  
  function void display;
    $display("Inside extended_class");
  endfunction
  
endclass
 
module virtual_class;
  initial begin
    base_class     b_c;
    extended_class e_c;
    
    e_c = new();
    b_c = e_c;
    
    b_c.display();
  end
endmodule


*/
//===================================================
/*

//Scope Resolution Operator ::

//class
class packet;
         bit [31:0] addr;
  static bit [31:0] id;

  function display(bit [31:0] a,b);
    $display("Values are %0d %0d",a,b);
  endfunction
endclass

module sro_class;
  int id=10;
  initial begin
    packet p;
    p = new();
    packet::id = 20;
    p.display(packet::id,id);
  end
endmodule

*/

//===================================================
/*
//External function example

//class with extern function
class packet;
  bit [31:0] addr;
  bit [31:0] data;

  //function declaration - extern indicates out-of-body declaration
  extern virtual function void display();
endclass

//function implementation outside class body
function void packet::display();
  $display("Addr = %0d Data = %0d",addr,data);
endfunction
  
module extern_method;
  initial begin
    packet p;
    p = new();
    p.addr = 10;
    p.data = 20;
    p.display();
  end
endmodule




*/

//===================================================
/*
//External task example

//class with extern function
class packet;
  bit [31:0] addr;
  bit [31:0] data;

  //task declaration - extern indicates out-of-body declaration
  extern virtual task display();
endclass

//task implementation outside class body
task packet::display();
  $display("Addr = %0d Data = %0d",addr,data);
endtask
  
module extern_method;
  initial begin
    packet p;
    p = new();
    p.addr = 10;
    p.data = 20;
    p.display();
  end
endmodule



*/

//===================================================
/*
//External function with arguments

class packet;
  
  //function declaration - extern indicates out-of-body declaration
  extern virtual function void display(bit [31:0] addr, data );
endclass

   //function implementation outside class body
    function void packet::display(bit [31:0] addr_t, data_t);
      $display("Addr = %0d Data = %0d",addr_t,data_t);
    endfunction
    
module extern_method;
  initial begin
    packet p;
    p = new();
    p.display(20,30); 
  end
endmodule



*/

//===================================================
/*
//arguments name match

class packet;
  
  //function declaration - extern indicates out-of-body declaration
  extern virtual function void display(bit [31:0] addr, data );
endclass

   //function implementation outside class body
    function void packet::display(bit [31:0] addr, data);
      $display("Addr = %0d Data = %0d",addr,data);
    endfunction
    
module extern_method;
  initial begin
    packet p;
    p = new();
    p.display(20,30); 
  end
endmodule


*/

//===================================================
/*
//Without typedef

//class-1
class c1;
  c2 c;    //using class c2 handle before declaring it.
endclass

//class-2
class c2;
  c1 c;
endclass
 
module typedef_class;
  initial begin
    c1 class1;
    c2 class2;
    $display("Inside typedef_class");
  end
endmodule

*/

//===================================================
/*

//With typedef
typedef class c2;
//class-1
class c1;
  c2 c;    //using class c2 handle before declaring it.
endclass

//class-2
class c2;
  c1 c;
endclass
 
module typedef_class;
  initial begin
    c1 class1;
    c2 class2;
    $display("Inside typedef_class");
  end
endmodule



*/

//===================================================
/*
//class  
class myPacket;
	bit [2:0]  header;
	bit        encode;
	bit [2:0]  mode;
	bit [7:0]  data;
	bit        stop;

	function new (bit [2:0] header = 3'h1, bit [2:0] mode = 5);
		this.header = header;
		this.encode = 0;
		this.mode   = mode;
		this.stop   = 1;
	endfunction

	function display ();
		$display ("Header = 0x%0h, Encode = %0b, Mode = 0x%0h, Stop = %0b",
		           this.header, this.encode, this.mode, this.stop);
	endfunction
endclass


*/
//===================================================
/*

//how can access signals within the class

module tb_top;
	myPacket pkt0, pkt1;

	initial begin
		pkt0 = new (3'h2, 2'h3);
		pkt0.display ();

		pkt1 = new ();
		pkt1.display ();
	end
endmodule 

*/
//===================================================
/*
//create an array of class

module tb_top;
	myPacket pkt0 [3];

	initial begin
    	for(int i = 0; i < $size (pkt0); i++) begin
   	   		pkt0[i] = new ();
       		pkt0[i].display ();
   		end
   	end
endmodule


*/

//===================================================
/*
//what is inheritence

class networkPkt extends myPacket;
	bit        parity;
	bit [1:0]  crc;

	function new ();
		super.new ();
		this.parity = 1;
		this.crc = 3;
	endfunction

	function display ();
		super.display();
		$display ("Parity = %0b, CRC = 0x%0h", this.parity, this.crc);
	endfunction
endclass


*/

//===================================================
/*
//abstract / virtual class

// Creation of base class object is invalid
virtual class Base;
   bit [7:0]   data;
   bit         enable;

endclass

// Creation of child class object is valid
class Child extends Base;
  // User definition
endclass

*/

//===================================================
/*
//class handles

// Create a new class with a single member called
// count that stores integer values
class Packet;
	int count;
endclass

module tb;
  	// Create a "handle" for the class Packet that can point to an
  	// object of the class type Packet
  	// Note: This "handle" now points to NULL
	Packet pkt;

  	initial begin
      if (pkt == null)
        $display ("Packet handle 'pkt' is null");

      // Display the class member using the "handle"
      // Expect a run-time error because pkt is not an object
      // yet, and is still pointing to NULL. So pkt is not
      // aware that it should hold a member
      $display ("count = %0d", pkt.count);
  	end
endmodule


*/

//===================================================
/*

//class object

// Create a new class with a single member called
// count that stores integer values
class Packet;
	int count;
endclass

module tb;
  	// Create a "handle" for the class Packet that can point to an
  	// object of the class type Packet
  	// Note: This "handle" now points to NULL
	Packet pkt;

  	initial begin
      if (pkt == null)
        $display ("Packet handle 'pkt' is null");

      // Call the new() function of this class
      pkt = new();

      if (pkt == null)
        $display ("What's wrong, pkt is still null ?");
      else
        $display ("Packet handle 'pkt' is now pointing to an object, and not NULL");

      // Display the class member using the "handle"
      $display ("count = %0d", pkt.count);
  	end
endmodule


*/

//===================================================
/*

//what happens when both points to same object
// Create a new class with a single member called
// count that stores integer values
class Packet;
	int count;
endclass

module tb;
  	// Create two "handles" for the class Packet
  	// Note: These "handles" now point to NULL
	Packet pkt, pkt2;

  	initial begin


      // Call the new() function of this class and
      // assign the member some value
      pkt = new();
      pkt.count = 16'habcd;

      // Display the class member using the "pkt" handle
      $display ("[pkt] count = 0x%0h", pkt.count);

      // Make pkt2 handle to point to pkt and print member variable
      pkt2 = pkt;
      $display ("[pkt2] count = 0x%0h", pkt2.count);
  	end


*/

//===================================================
/*
// Define a class called "Packet" with a 32-bit variable to store address
// Initialize "addr" to 32'hfade_cafe in the new function, also called constructor
class Packet;
  bit [31:0] addr;

  function new ();
    addr = 32'hfade_cafe;
  endfunction
endclass

module tb;

  // Create a class handle called "pkt" and instantiate the class object
  initial begin
    // The class's constructor new() fn is called when the object is instantiated
    Packet pkt = new;

    // Display the class variable - Because constructor was called during
    // instantiation, this variable is expected to have 32'hfade_cafe;
    $display ("addr=0x%0h", pkt.addr);
  end
endmodule


*/

//===================================================
/*
// class constructor implicitily called 
// Define a simple class with a variable called "addr"
// Note that the new() function is not defined here
class Packet;
	bit [31:0] addr;
endclass

module tb;

  	// When the class object is instantiated, then the constructor is
  	// implicitly defined by the tool and called
	initial begin
		Packet pkt = new;
		$display ("addr=0x%0h", pkt.addr);
	end


*/
//===================================================
/* //behavoiour inherited class 
// Define a simple class and initialize the class member "data" in new() function
class baseClass;
  bit [15:0] data;

  function new ();
    data = 16'hface;
  endfunction
endclass

// Define a child class extended from the above class with more members
// The constructor new() function accepts a value as argument, and by default is 2
class subClass extends baseClass;
  bit [3:0] id;
  bit [2:0] mode = 3;

  function new (int val = 2);
    // The new() function in child class calls the new function in
    // the base class using the "super" keyword
    super.new ();

    // Assign the value obtained through the argument to the class member
    id = val;
  endfunction
endclass

module tb;
  initial begin
    // Create two handles for the child class
    subClass  sc1, sc2;

    // Instantiate the child class and display member variable values
    sc1 = new ();
    $display ("data=0x%0h id=%0d mode=%0d", sc1.data, sc1.id, sc1.mode);

    // Pass a value as argument to the new function in this case and print
    sc2 = new (4);
    $display ("data=0x%0h id=%0d mode=%0d", sc2.data, sc2.id, sc2.mode);
  end
endmodule



*/
//===================================================
/*
//when new fun is declared as static or virtual
class ABC;
  string fruit;

  // Note that the constructor is defined as "virtual" which is not allowed
  // in SystemVerilog. Class constructor cannot be "static" either
  virtual function new ();
    fruit = "Apple";
  endfunction

endclass

// Instantiate the class object and print its contents
module tb;
  	initial begin
      ABC abc = new();
      $display ("fruit = %s", abc.fruit);
    end
endmodule


*/

//===================================================
/*
class C;
endclass

class D extends C;
endclass

module tb;
   initial begin
      C c = D::new;
   end
endmodule



*/

//===================================================
/*
//super keyword 
class Packet;
	int addr;
	function display ();
		$display ("[Base] addr=0x%0h", addr);
	endfunction
endclass

class extPacket;    // "extends" keyword missing -> not a child class
	function new ();
		super.new ();
	endfunction
endclass

module tb;
	Packet p;
  	extPacket ep;

  	initial begin
      ep = new();
      p = new();
      p.display();
    end
endmodule

*/

//===================================================
/*
//Acessing base class 

class Packet;
  int addr;

  function display ();
    $display ("[Base] addr=0x%0h", addr);
  endfunction
endclass

class extPacket extends Packet;
  function display();
    super.display();                          // Call base class display method
    $display ("[Child] addr=0x%0h", addr);
  endfunction

  function new ();
    super.new ();
  endfunction
endclass

module tb;
 	Packet p;
  	extPacket ep;

  	initial begin
      ep = new();
      p = new();
      ep.display();
    end
endmodule


*/

//===================================================
/*
//inheritence
class Packet;
   int addr;

   function new (int addr);
      this.addr = addr;
   endfunction

	function display ();
		$display ("[Base] addr=0x%0h", addr);
	endfunction
endclass

// A subclass called 'ExtPacket' is derived from the base class 'Packet' using
// 'extends' keyword which makes 'EthPacket' a child of the parent class 'Packet'
// The child class inherits all variables and methods from the parent class
class ExtPacket extends Packet;

	// This is a new variable only available in child class
	int data;

   function new (int addr, data);
      super.new (addr); 	// Calls 'new' method of parent class
      this.data = data;
   endfunction

	function display ();
		$display ("[Child] addr=0x%0h data=0x%0h", addr, data);
	endfunction
endclass

module tb;
	Packet      bc; 	// bc stands for BaseClass
	ExtPacket   sc; 	// sc stands for SubClass

	initial begin
		bc = new (32'hface_cafe);
		bc.display ();

        sc = new (32'hfeed_feed, 32'h1234_5678);
		sc.display ();
	end
endmodule
*/

//===================================================
/*
//polymorphism]
module tb;
	Packet      bc; 	// bc stands for BaseClass
	ExtPacket   sc; 	// sc stands for SubClass

	initial begin
		sc = new (32'hfeed_feed, 32'h1234_5678);

		// Assign sub-class to base-class handle
		bc = sc;

		bc.display ();
		sc.display ();
	end
endmodule


*/

//===================================================
/*
//$cast 
module 
initial begin
   ExtPacket sc2;
   bc = new (32'hface_cafe);
   sc = new (32'hfeed_feed, 32'h1234_5678);
   bc = sc;

   // Dynamic cast sub class object in base class handle to sub-class type
   $cast (sc2, bc);

   sc2.display ();
   $display ("data=0x%0h", sc2.data);
end
endmodule 
*/

//===================================================
/*
//virtual method 
class Packet;
   int addr;

   function new (int addr);
      this.addr = addr;
   endfunction

   // Here the function is declared as "virtual"
   // so that a different definition can be given
   // in any child class
   virtual function void display ();
		$display ("[Base] addr=0x%0h", addr);
	endfunction
endclass

module tb;
   Packet bc;
   ExtPacket sc;

	initial begin
        sc = new (32'hfeed_feed, 32'h1234_5678);

        bc = sc;
		bc.display ();
	end



*/
/*

// Without declaring display() as virtual
class Packet;
   int addr;

   function new (int addr);
      this.addr = addr;
   endfunction

   // This is a normal function definition which
   // starts with the keyword "function"
   function void display ();
		$display ("[Base] addr=0x%0h", addr);
   endfunction
endclass

module tb;
   Packet bc;
   ExtPacket sc;

	initial begin
        sc = new (32'hfeed_feed, 32'h1234_5678);

        bc = sc;
		bc.display ();
	end
endmodule
*/

//===================================================
/*
// static variable & fun

class Packet;
	bit [15:0] 	addr;
	bit [7:0] 	data;

	function new (bit [15:0] ad, bit [7:0] d);
		addr = ad;
		data = d;
		$display ("addr=0x%0h data=0x%0h", addr, data);
	endfunction
endclass

module tb;
	initial begin
		Packet 	p1, p2, p3;
		p1 = new (16'hdead, 8'h12);
		p2 = new (16'hface, 8'hab);
		p3 = new (16'hcafe, 8'hfc);
	end
endmodule


*/
/*
class Packet;
	bit [15:0] 	addr;
	bit [7:0] 	data;
	static int 	static_ctr = 0;
		   int 	ctr = 0;

	function new (bit [15:0] ad, bit [7:0] d);
		addr = ad;
		data = d;
		static_ctr++;
		ctr++;
		$display ("static_ctr=%0d ctr=%0d addr=0x%0h data=0x%0h", static_ctr, ctr, addr, data);
	endfunction
endclass

module tb;
	initial begin
		Packet 	p1, p2, p3;
		p1 = new (16'hdead, 8'h12);
		p2 = new (16'hface, 8'hab);
		p3 = new (16'hcafe, 8'hfc);
	end
endmodule
*/
//===================================================
/*

//static 



class Packet;
	static int ctr=0;

   function new ();
      ctr++;
   endfunction

	static function get_pkt_ctr ();
		$display ("ctr=%0d", ctr);
	endfunction

endclass

module tb;
	Packet pkt [6];
	initial begin
		for (int i = 0; i < $size(pkt); i++) begin
			pkt[i] = new;
		end
		Packet::get_pkt_ctr(); 	// Static call using :: operator
		pkt[5].get_pkt_ctr(); 	// Normal call using instance
	end
endmodule



*/

//===================================================
/*

//copying objects 
class Header;
	int id;
	function new (int id);
		this.id = id;
	endfunction
	
	function showId();
		$display ("id=0x%0d", id);
	endfunction
endclass

class Packet;
	int 	addr;
	int 	data;
	Header 	hdr;
	
	function new (int addr, int data, int id);
		hdr = new (id);
		this.addr = addr;
		this.data = data;
	endfunction
	
	function display (string name);
		$display ("[%s] addr=0x%0h data=0x%0h id=%0d", name, addr, data, hdr.id);
	endfunction
endclass

module tb;
	Packet p1, p2;
	initial begin
		// Create a new pkt object called p1
		p1 = new (32'hface_cafe, 32'h1234_5678, 26);
		p1.display ("p1");
		
		// Shallow copy p1 into p2; p2 is a new object with contents in p1
		p2 = new p1;
		p2.display ("p2");
		
		// Now let's change the addr and id in p1
		p1.addr = 32'habcd_ef12;
		p1.data = 32'h5a5a_5a5a;
		p1.hdr.id = 17;
		p1.display ("p1");
		
		// Print p2 and see that hdr.id points to the hdr in p1, while
		// addr and data remain unchanged.
		p2.display ("p2");
	end
endmodule


*/

/*
class Packet;
	...
   function copy (Packet p);
      this.addr = p.addr;
      this.data = p.data;
      this.hdr.id = p.hdr.id;
   endfunction
	...
endclass

module tb;
	Packet p1, p2;
	initial begin
		p1 = new (32'hface_cafe, 32'h1234_5678, 32'h1a);
		p1.display ("p1");
		
		p2 = new (1,2,3);  // give some values
		p2.copy (p1);
		p2.display ("p2");
		
		// Now let's change the addr and id in p1
		p1.addr = 32'habcd_ef12;
		p1.data = 32'h5a5a_5a5a;
		p1.hdr.id = 32'h11;
		p1.display ("p1");
		
		// Now let's print p2 - you'll see the changes made to hdr id 
		// but not addr
		p2.display ("p2");
	end
endmodule

*/

//===================================================
/*
//paremetrized class 

// A class is parameterized by #()
// Here, we define a parameter called "size" and gives it
// a default value of 8. The "size" parameter is used to
// define the size of the "out" variable
class something #(int size = 8);
	bit [size-1:0] out;
endclass

module tb;

  // Override default value of 8 with the given values in #()
  something  #(16) sth1;                 // pass 16 as "size" to this class object
  something  #(.size (8)) sth2;          // pass 8 as "size" to this class object
  typedef something #(4) td_nibble;      // create an alias for a class with "size" = 4 as "nibble"
  td_nibble nibble;

  initial begin
    // 1. Instantiate class objects
    sth1 = new;
    sth2 = new;
  	nibble = new;

    // 2. Print size of "out" variable. $bits() system task will return
    // the number of bits in a given variable
    $display ("sth1.out   = %0d bits", $bits(sth1.out));
    $display ("sth2.out   = %0d bits", $bits(sth2.out));
    $display ("nibble.out = %0d bits", $bits(nibble.out));
  end
endmodule




*/

/*
// "T" is a parameter that is set to have a default value of "int"
// Hence "items" will be "int" by default
class stack #(type T = int);
  T item;

  function T add_a (T a);
    return item + a;
  endfunction
endclass

module tb;
	stack 			 	st; 	// st.item is by default of int type
	stack #(bit[3:0]) 	bs; 	// bs.item will become a 4-bit vector
	stack #(real) 		rs; 	// rs.item will become a real number

  	initial begin
      st = new;
      bs = new;
      rs = new;

      // Assign different values, and add 10 to these values
      // Then print the result - Note the different values printed
      // that are affected by change in data type
      st.item = -456;
      $display ("st.item = %0d", st.add_a (10));

      bs.item = 8'hA1;
      $display ("bs.item = %0d", bs.add_a (10));

      rs.item = 3.14;
      $display ("rs.item = %0.2f", rs.add_a (10));
    end
endmodule
*/

//===================================================
/*
//extern 


*/

//===================================================
/*Class definitions can become very long with a lot of lines between class and endclass. This makes it difficult to understand what all functions 
//and variables exist within the class because each function and task occupy quite a lot of lines.

class ABC;

  // Let this function be declared here and defined later
  // by "extern" qualifier
  extern function void display();

endclass

// Outside the class body, we have the implementation of the
// function declared as "extern"
function void ABC::display();

   $display ("Hello world");

endfunction

module tb;

  // Lets simply create a class object and call the display method
  initial begin
    ABC abc = new();
    abc.display();
  end
endmodule


*/

//===================================================
/*
//local 

class ABC;
  // By default, all variables are public and for this example,
  // let's create two variables - one public and the other "local"
  byte  	  public_var;
  local byte local_var;

  // This function simply prints these variable contents
  function void display();
    $display ("public_var=0x%0h, local_var=0x%0h", public_var, local_var);
  endfunction
endclass

module tb;
  initial begin

    // Create a new class object, and call display method
    ABC abc = new();
    abc.display();

    // Public variables can be accessed via the class handle
    $display ("public_var = 0x%0h", abc.public_var);

    // However, local variables cannot be accessed from outside
    $display ("local_var = 0x%0h", abc.local_var);
  end
endmodule

*/
/*
module tb;
  initial begin

    ABC abc = new();

    // This should be able to print local members of class ABC
    // because display() is a member of ABC also
    abc.display();

    // Public variables can always be accessed via the class handle
    $display ("public_var = 0x%0h", abc.public_var);
  end
endmodule
*/

/*

// Define a base class and let the variable be "local" to this class
class ABC;
  local byte local_var;
endclass

// Define another class that extends ABC and have a function that tries
// to access the local variable in ABC
class DEF extends ABC;
  function show();
    $display ("local_var = 0x%0h", local_var);
  endfunction
endclass

module tb;
  initial begin

    // Create a new object of the child class, and call the show method
    // This will give a compile time error because child classes cannot access
    // base class "local" variables and methods
    DEF def = new();
    def.show();

  end
endmodule

*/



//===================================================
/*

//abstract class 

class BaseClass;
	int data;

	function new();
		data = 32'hc0de_c0de;
	endfunction
endclass

module tb;
	BaseClass base;
	initial begin
		base = new();
		$display ("data=0x%0h", base.data);
	end
endmodule

*/


/*
virtual class BaseClass;
	int data;

	function new();
		data = 32'hc0de_c0de;
	endfunction
endclass

module tb;
	BaseClass base;
	initial begin
		base = new();
		$display ("data=0x%0h", base.data);
	end
endmodule
*/

/*
virtual class BaseClass;
	int data;

	function new();
		data = 32'hc0de_c0de;
	endfunction
endclass

class ChildClass extends BaseClass;
	function new();
		data = 32'hfade_fade;
	endfunction
endclass

module tb;
	ChildClass child;
	initial begin
		child = new();
		$display ("data=0x%0h", child.data);
	end
endmodule
*/
/* 

//pure method

virtual class BaseClass;
	int data;

	pure virtual function int getData();
endclass

class ChildClass extends BaseClass;
	virtual function int getData();
		data = 32'hcafe_cafe;
		return data;
	endfunction
endclass

module tb;
	ChildClass child;
	initial begin
		child = new();
		$display ("data = 0x%0h", child.getData());
	end
endmodule
*/

//===================================================
/*
Example for constructor with passing argument


class transaction;
  bit [31:0] data;
  int id;
  
  function new (bit [31:0] m_data);
    $display("Inside constructor");
    data = m_data;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new(10);
    $display("Value of data = %0h", tr.data);
  end
endmodule





*/
//===================================================
/*
Accessing class methods


class transaction;
  bit [31:0] data;
  int id;
  
  task update(bit [31:0] m_data, int m_id);
    data = m_data;
    id = m_id;
  endtask
  
  function print(transaction tr);
    $display("Value of data = %0h and id = %0h", tr.data, tr.id);
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new();
    tr.update(5, 9);
    tr.print(tr);
  end
endmodule





*/
//===================================================
/*
//Accessing unallocated memory

class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr1, tr2;
  initial begin
    tr1 = new();
    tr1.data = 5;
    tr1.id = 1;
    $display("Object pkt1.data = %0h, id = %0h", tr1.data, tr1.id);
    
    tr2.data = 10;
    tr2.id = 2;
    $display("Object pkt2.data = %0h, id = %0h", tr2.data, tr2.id);
  end
endmodule






*/

//===================================================
/*

//Check for null memory access

class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr1, tr2;
  initial begin
    tr1 = new();
    if(tr1 != null) begin  // string "null" is not expected
      tr1.data = 5;
      tr1.id = 1;
      $display("Object tr1.data = %0h, tr1.id = %0h", tr1.data, tr1.id);
    end
    else $display("tr1 object is not created");
    
    if(tr2 != null) begin
      tr2.data = 10;
      tr2.id = 2;
      $display("Object tr2.data = %0h, tr2.id = %0h", tr2.data, tr2.id);
    end
    else $display("tr2 object is not created");   
  end
endmodule




*/

//===================================================
/*

//Class Assignment in SystemVerilog
//Multiple handles for the same object example


class transaction;
  bit [31:0] data;
endclass

module class_example;
  transaction tr1, tr2;
  initial begin
    tr1 = new();
    tr1.data = 5;
    tr2 = tr1;
    $display("tr1.data = %0h", tr1.data);
    $display("tr2.data = %0h", tr2.data);
    
    tr2.data = 10;
    $display("tr1.data = %0h", tr1.data);
    $display("tr2.data = %0h", tr2.data);
  end
endmodule




*/

//===================================================
/*

An array of objects

class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr[5];
  initial begin
    foreach(tr[i]) begin
      tr[i] = new();
      tr[i].data = i*i;
      tr[i].id = i+1;
    end
    
    foreach(tr[i]) $display("tr[%0d].data = %0d, tr[%0d].id = %0d",i, tr[i].data, i, tr[i].id);
  end
endmodule





*/

//===================================================
/*

Dynamic Array of objects

class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr[];
  initial begin
    tr = new[5];
    foreach(tr[i]) begin
      tr[i] = new();
      tr[i].data = i*i;
      tr[i].id = i+1;
    end
    
    foreach(tr[i]) $display("tr[%0d].data = %0d, tr[%0d].id = %0d",i, tr[i].data, i, tr[i].id);
  end
endmodule





*/

//===================================================
/*

Associative Array of objects

typedef enum {TRANS, RECEIVE, REPEATER} tr_type;
class transaction;
  bit [31:0] data;
  int id;
endclass

module class_example;
  transaction tr[tr_type];
  initial begin
    tr[TRANS]    = new();
    tr[RECEIVE]  = new();
    tr[REPEATER] = new();
  
    foreach(tr[i]) begin 
      tr[i].data = i*i;
      tr[i].id = i+1;
    end
    
    foreach(tr[i]) $display("tr[%0s].data = %0d, tr[%0s].id = %0d",i.name, tr[i].data, i.name, tr[i].id);
  end
endmodule





*/

//===================================================
/*


Static properties and methods in SV classes


class transaction;
  static int s_id;
  int id;
  
  function new ();
    s_id++;
    id++;
  endfunction
endclass

module class_example;
  transaction tr[5];
  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      $display("Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
  end
endmodule



*/

//===================================================
/*

Static Methods (static functions and static tasks)


Static Methods examples

class transaction;
  static int s_id;
  int id;
  
  static function void incr_s_id(); // Static function
    s_id++;
    //id++; // illegal access
  endfunction
  
  function void incr_id(); // Non-static function
    s_id++;
    id++;
  endfunction
  
endclass

module class_example;
  transaction tr[5], tr_new;
  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      tr[i].incr_s_id();
      $display("On calling incr_s_id: Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
    tr[0].s_id = 0; // s_id value reset to 0
    foreach (tr[i]) begin 
      tr[i].incr_id();
      $display("On calling incr_id: Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
  end
endmodule



*/
/*
class transaction;
  static int s_id;
  
  static function void incr_s_id(); // Static function
    s_id++;
  endfunction
  
endclass

module class_example;
  transaction tr;
  initial begin
    transaction::incr_s_id(); // Access static function without class handle
    tr.incr_s_id(); // Access static function with class handle
    $display("After incr_id function call");
    $display("Value of s_id = %0h using tr handle", tr.s_id);
    $display("Value of s_id = %0h using scope resolution operator", transaction::s_id);
  end
endmodule
*/

//===================================================
/*

function static or task static method call

class transaction;
  static int s_id;
  int id;
  
  function static int incr_id(); // Non-static function
    int status; // Behaves as a static variable.
    status = s_id++;
    id++; // non-static member is accessible
    return status;
  endfunction
endclass

module class_example;
  transaction tr[5];
  int local_status;

  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      local_status = tr[i].incr_id();
      $display("Value of s_id = %0h, id = %0h, local_status = %0h", tr[i].s_id, tr[i].id,  local_status);
    end
  end
endmodule





*/
//===================================================
/*


this keywords in classes

class transaction;
  bit [31:0] data;
  int id;
  
  function new (bit [31:0] data, int id);
    data = data;
    id = id;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new(5, 1);
    $display("Value of data = %0h, id = %0h", tr.data, tr.id);
  end
endmodule




*/

/*

class transaction;
  bit [31:0] data;
  int id;
  
  function new (bit [31:0] data, int id);
    this.data = data;
    this.id = id;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new(5, 1);
    $display("Value of data = %0h, id = %0h", tr.data, tr.id);
  end
endmodule

*/

//===================================================
/*
Example for this keyword with static method


class transaction;
  bit [31:0] data;
  int id;
  
  static function assign_val (bit [31:0] data, int id);
    this.data = data;
    this.id = id;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new();
    tr.assign_val(5,1);
    $display("Value of data = %0h, id = %0h", tr.data, tr.id);
  end
endmodule





*/

/*

Example for this keyword with non-static method call with static variable type

class transaction;
  bit [31:0] data;
  int id;
  
  function static assign_val (bit [31:0] data, int id);
    this.data = data;
    this.id = id;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new();
    tr.assign_val(5,1);
    $display("Value of data = %0h, id = %0h", tr.data, tr.id);
  end
endmodule

*/


//===================================================
/*
Copying Techniques in SV


class error_trans;
  bit [31:0] err_data;
  bit error;
  
  function new(bit [31:0] err_data, bit error);
    this.err_data = err_data;
    this.error = error;
  endfunction
endclass

class transaction;
  bit [31:0] data;
  int id;
  error_trans err_tr;
  
  function new();
    data = 100;
    id = 1;
    err_tr = new(32'hFFFF_FFFF, 1);
  endfunction
  
  function void display();
    $display("transaction: data = %0d, id = %0d", data, id);
    $display("error_trans: err_data = %0h, error = %0d\n", err_tr.err_data, err_tr.error);
  endfunction
endclass

module shallow_copy_example;
  transaction tr1, tr2;
  
  initial begin
    tr1 = new();
    $display("Calling display method using tr1");
    tr1.display();
    
    tr2 = new tr1;
    $display("After shallow copy tr1 --> tr2");
    $display("Calling display method using tr2");
    tr2.display();
    $display("--------------------------------");
    
    tr1.data = 200;
    tr1.id = 2;
    tr1.err_tr.err_data = 32'h1234;
    tr1.err_tr.error = 0;
    
    $display("Calling display method using tr1");
    tr1.display();
    $display("Calling display method using tr2");
    tr2.display();
    
  end
endmodule





*/

//===================================================
/*

Deep copy in SystemVerilog


class error_trans;
  bit [31:0] err_data;
  bit error;
  
  function new(bit [31:0] err_data, bit error);
    this.err_data = err_data;
    this.error = error;
  endfunction
endclass

class transaction;
  bit [31:0] data;
  int id;
  error_trans err_tr;
  
  function new();
    data = 100;
    id = 1;
    err_tr = new(32'hFFFF_FFFF, 1);
  endfunction
  
  function void display();
    $display("transaction: data = %0d, id = %0d", data, id);
    $display("error_trans: err_data = %0h, error = %0d\n", err_tr.err_data, err_tr.error);
  endfunction
  
  function deep_copy(transaction tr);
    this.data = tr.data;
    this.id = tr.id;
    this.err_tr.err_data = tr.err_tr.err_data;
    this.err_tr.error = tr.err_tr.error;
  endfunction
endclass

module deep_copy_example;
  transaction tr1, tr2;
  
  initial begin
    tr1 = new();
    $display("Calling display method using tr1");
    tr1.display();
    
    tr2 = new();
    tr2.deep_copy(tr1);
    $display("After deep copy tr1 --> tr2");
    $display("Calling display method using tr2");
    tr2.display();
    $display("--------------------------------");
    
    tr1.data = 200;
    tr1.id = 2;
    tr1.err_tr.err_data = 32'h1234;
    tr1.err_tr.error = 0;
    
    $display("Calling display method using tr1");
    tr1.display();
    $display("Calling display method using tr2");
    tr2.display();
    
  end
endmodule




*/

//===================================================
/*

SystemVerilog Inheritance

class parent_trans;
  bit [31:0] data;
  
  function void disp_p();
    $display("Value of data = %0h", data);
  endfunction
endclass

class child_trans extends parent_trans;
  int id;
  
  function void disp_c();
    $display("Value of id = %0h", id);
  endfunction
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();
    c_tr.data = 5; // child class is updating property of its base class
    c_tr.id = 1;
    
    c_tr.disp_p(); // child class is accessing method of its base class
    c_tr.disp_c();
  end
endmodule





*/

//===================================================
/*
Multilevel inheritance
Example for Multilevel Inheritance​

class parent_trans;
  bit [31:0] data_p;
  
  function void disp_p();
    $display("parent_trans: Value of data = %0h", data_p);
  endfunction
endclass

class child1_trans extends parent_trans;
  bit [31:0] data_c1;
  
  function void disp_c1();
    $display("child1_trans: Value of data = %0h", data_c1);
  endfunction
endclass

class child2_trans extends parent_trans;
  bit [31:0] data_c2;
  
  function void disp_c2();
    $display("child2_trans: Value of data = %0h", data_c2);
  endfunction
endclass

class child_A_trans extends child1_trans;
  bit [31:0] data_cA;
  
  function void disp_cA();
    $display("child_A_trans: Value of data = %0h", data_cA);
  endfunction
endclass

class child_B_trans extends child_A_trans;
  bit [31:0] data_cB;
  
  function void disp_cB();
    $display("child1_2_trans: Value of data = %0h", data_cB);
  endfunction
endclass

module class_example;
  initial begin
    child_B_trans cB_tr;
    cB_tr = new();
    cB_tr.data_p = 2;
    cB_tr.data_c1 = 4;
    cB_tr.data_cA = 6;
    cB_tr.data_cB = 8;
    //cB_tr.data_c2 = 3;  // Not possible as child_B_trans is not child class of child2_trans.
    
    cB_tr.disp_p();
    cB_tr.disp_c1();
    cB_tr.disp_cA();
    cB_tr.disp_cB();
  end
endmodule







*/

//===================================================
/*
Overriding base class members

class parent_trans;
  bit [31:0] data = 100;
  int id = 1;
  
  function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data = 200;
  int id = 2;
  
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();

    c_tr.display();
  end
endmodule






*/

//===================================================
/*

Accessing class members in Inheritance

class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    
    p_tr = new();
    c_tr = new();
    
    p_tr.data = 100;
    p_tr.id = 1;

    c_tr.data = 200;
    c_tr.id = 2;
    
    p_tr.display();
    c_tr.display();
  end
endmodule





*/
//===================================================
/*

super keyword in classes


class parent_trans;
  bit [31:0] data;
  
  function void display();
     $display("Base: Value of data = %0h", data);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  
  function void display();
    $display("Child: Value of data = %0h", data);
  endfunction
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();
    
    c_tr.data = 5; // data variable in base class will have default value as 0.
    c_tr.display();
  end
endmodule




*/
/*

class parent_trans;
  bit [31:0] data;
  
  function void display();
     $display("Base: Value of data = %0h", data);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  
  function void display();
    super.data = 3;
    super.display();
    $display("Child: Value of data = %0h", data);
  endfunction
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();
    
    c_tr.data = 5;
    c_tr.display();
  end
endmodule

*/

//===================================================
/*
Usage of the super keyword in the constructor


class parent_trans;
  bit [31:0] data;
  
  function new(bit [31:0] data);
    this.data = data;
    $display("Base: Value of data = %0h", data);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  
  function new(bit [31:0] data_p, data_c);
    super.new(data_p);
    this.data = data_c;
    $display("Child: Value of data = %0h", data);
  endfunction

endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new(5, 7);
  end
endmodule

*/

//===================================================
/*

//Example without arguments in the constructor

class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    c_tr.data = 5;
    c_tr.id   = 2;
    
    p_tr = c_tr;
    
    p_tr.data = 10;
    p_tr.id   = 1;
    
    p_tr.display();
    c_tr.display();
  end
endmodule





*/

//===================================================
/*

virtual keyword in classes

class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule





*/

//===================================================
/*


Example with virtual keyword

class parent_trans;
  bit [31:0] data;
  int id;
  
  virtual function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  int id;
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    c_tr.data = 10;
    c_tr.id = 2;
    
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule

Example with virtual keyword with different signature (Difference in argument list)

class parent_trans;
  bit [31:0] data;
  int id;
  
  virtual function void display(bit [31:0] data, int id);
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display(bit [31:0] data);
    $display("Child: Value of data = %0h", data);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display(p_tr.data, p_tr.id);
  end
endmodule


Example with virtual keyword with the same signature

class parent_trans;
  bit [31:0] data;
  int id;
  
  virtual function void display(bit [31:0] data, int id);
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display(bit [31:0] data, int id);
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display(p_tr.data, p_tr.id);
  end
endmodule


SystemVerilog Abstract class


class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    p_tr = new();
    
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule

An Abstract class instantiation

virtual class parent_trans;
  bit [31:0] data;
  int id;
  
   function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    p_tr = new();
    
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule


Examples for abstract class

virtual class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    child_trans c_tr;
    c_tr = new();
    
    c_tr.data = 5;
    c_tr.id = 1;
    c_tr.display();
  end
endmodule


An abstract class with child class handle assignment

virtual class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule


An abstract class with a virtual method

virtual class parent_trans;
  bit [31:0] data;
  int id;
  
  virtual function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule

An abstract class with pure virtual methods


virtual class parent_trans;
  bit [31:0] data;
  int id;
  
  pure virtual function void display();
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule

*/

//===================================================
/*

//SystemVerilog Polymorphism

class parent;
  bit [31:0] data;
  int id;
  
  virtual function void display();
     $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_A extends parent;
  function void display();
    $display("Child_A: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_B extends parent;
  function void display();
    $display("Child_B: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_C extends parent;
  function void display();
    $display("Child_C: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent p_A, p_B, p_C;
    child_A c_A = new();
    child_B c_B = new();
    child_C c_C = new();
    
    c_A.data = 200;
    c_A.id   = 2;
    
    c_B.data = 300;
    c_B.id   = 3;
    
    c_C.data = 400;
    c_C.id   = 4;
     
    p_A = c_A;
    p_B = c_B;
    p_C = c_C;
    
    p_A.data = 100;
    p_A.id   = 1;
    
    p_A.display();
    p_B.display();
    p_C.display();
  end
endmodule





*/

//===================================================
/*
A Child class handle is assigned to the base class (base_class_handle = child_class_handle)

class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
      
    p_tr = c_tr;
    
    p_tr.data = 10;
    p_tr.id   = 1;
    
    c_tr.data = 5;
    c_tr.id   = 2;
    
    p_tr.display();
  end
endmodule


Part B: Only base class has class properties declared.

class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
   
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
        
    p_tr = c_tr;
    
    p_tr.data = 10;
    p_tr.id   = 1;
    
    c_tr.data = 5;
    c_tr.id   = 2;
    
    p_tr.display();
  end
endmodule

A base class handle is assigned to the child class (child_class_handle = base_class_handle)
class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
   
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();

    c_tr = p_tr;

    p_tr.data = 10;
    p_tr.id   = 1;
    
    c_tr.data = 5;
    c_tr.id   = 2;
    
    p_tr.display();
  end
endmodule

//==============

class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
   
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    p_tr = new();

    $cast(c_tr, p_tr);

    p_tr.data = 10;
    p_tr.id   = 1;
    
    c_tr.data = 5;
    c_tr.id   = 2;
    
    p_tr.display();
  end
endmodule

//===================

class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
   
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();

    p_tr = c_tr; // or $cast(p_tr, c_tr);
    $cast(c_tr, p_tr);

    p_tr.data = 10;
    p_tr.id   = 1;
    
    c_tr.data = 5;
    c_tr.id   = 2;
    
    c_tr.display();
  end
endmodule

*/

//===================================================
/*
Scope Resolution Operator in SV

class transaction;
  bit [31:0] data;
  static int id;
  
  static function disp(int id);
    $display("Value of id = %0h", id);
  endfunction
  
  function auto_disp(int id);
    $display("Value of id = %0h", id);
  endfunction
endclass

module class_example;
  initial begin
    transaction::id = 5;
    transaction::disp(transaction::id);
    
    //transaction::data = 2; // illegal
    //transaction::auto_disp(transaction::id); // illegal
  end
endmodule

*/

//===================================================
/*
Parameterized classes in SV

class transaction #(parameter WIDTH = 2, type D_TYPE = bit [2:0]);
  bit [WIDTH-1:0] data;
  D_TYPE id;
  
  function void display();
    $display("data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr1;
  transaction #(3,int) tr2;
  
  initial begin
    tr1 = new();
    tr2 = new();
    
    tr1.data = 7;
    tr1.id = 15;
    tr1.display();
    
    tr2.data = 7;
    tr2.id = 15;
    tr2.display();
  end
endmodule

Example for parameterized class with class data type as a parameter

class err_trans;
  bit [31:0] err_data;
  bit error;
endclass
  
class transaction #(parameter WIDTH = 32, type D_TYPE = err_trans);
  bit [WIDTH-1:0] data;
  D_TYPE err_tr;
  
  function void display();
    $display("transaction: data = %0d", data);
    $display("err_trans: err_data = %0h and error = %0d", err_tr.err_data, err_tr.error);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.err_tr = new();
    
    tr.data = 100;
    tr.err_tr.err_data = 32'hFFFF_FFFF;
    tr.err_tr.error = 1;
    
    tr.display();
  end
endmodule



*/

//=================================================
/*

Extern method in Classes
class transaction;
  bit [31:0] data;
  int id;

  extern function void display();
  extern task delay();
endclass

function void transaction::display();
  $display("data = %0d and id = %0d", data, id);
endfunction
    
task transaction::delay();
  #50;
  $display("Time = %0.0t, delayed data = %0d", $time, data);
endtask

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
   
    tr.data = 100;
    tr.id = 1;
    
    tr.display();
    tr.delay();
  end
endmodule

*/
//=================================================
/*
Data Encapsulation and Hiding in SV
class transaction;
  bit [31:0] data;
  local int id;

  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
   
    tr.data = 100;
    tr.id = 1;
    
    tr.display();
  end
endmodule

//=======

Access within the class scope

class transaction;
  bit [31:0] data;
  local int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.display();
  end
endmodule

//Class methods as a local

class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.display();
  end
endmodule

//Access within the class scope

class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
    display();
  endfunction
  
  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
  end
endmodule

//The child class access local member of the parent class

class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends transaction;
  bit [31:0] addr;
  
  task calc_addr;
    addr = data * id;
    display();  // child class is accessing local method of parent class
    $display("addr = %0d", addr);
  endtask
endclass

module class_example;
  child_trans tr;
  
  initial begin
    tr = new();
    tr.calc_addr();
  end
endmodule




*/
//=================================================
/*
//Protected access Qualifier in SV
class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  protected function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

class child_trans extends transaction;
  bit [31:0] addr;
  
  task calc_addr;
    addr = data * id;
    display();  // child class is accessing protected access method of parent class
    $display("addr = %0d", addr);
  endtask
endclass

module class_example;
  child_trans tr;
  
  initial begin
    tr = new();
    tr.calc_addr();
  end
endmodule

//Protected method access outside the class scope

class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
  endfunction
  
  protected function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.display(); // can not accessed outside class scope
  end
endmodule
*/
//=================================================
/*
//Constant class properties in SV
//Global constant Example

class transaction;
  bit [31:0] data;
  const int id = 1;
  
  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.data = 100;
    //tr.id = 2;  // Invalid const usage
    tr.display();
  end
endmodule

//Instance constants
class transaction;
  bit [31:0] data;
  const int id;
  
  function new();
    data = 100;
    id = 1; // run time assignment only once
  endfunction
  
  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.data = 200;
    //tr.id = 2; // Invalid const usage
    tr.display();
  end
endmodule

*/
//=================================================
/*
//typedef Class in SV

class transaction_A;
  bit [31:0] data;
  int id;
  transaction_B tr_B = new();
      
  function void display();
    $display("transaction_A: data = %0d and id = %0d", data, id);
    $display("transaction_B: addr = %0d", tr_B.addr);
  endfunction
endclass

class transaction_B;
  bit [31:0] addr = 200;
endclass

module class_example;
  transaction_A tr_A;
  
  initial begin
    tr_A = new();
   
    tr_A.data = 100;
    tr_A.id = 1;
    tr_A.display();
  end
endmodule

//With typedef keyword

typedef class transaction_B;

class transaction_A;
  bit [31:0] data;
  int id;
  transaction_B tr_B = new();
      
  function void display();
    $display("transaction_A: data = %0d and id = %0d", data, id);
    $display("transaction_B: addr = %0d", tr_B.addr);
  endfunction
endclass

class transaction_B;
  bit [31:0] addr = 200;
endclass

module class_example;
  transaction_A tr_A;
  
  initial begin
    tr_A = new();
   
    tr_A.data = 100;
    tr_A.id = 1;
    tr_A.display();
  end
endmodule








*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
//=================================================
/*



*/
