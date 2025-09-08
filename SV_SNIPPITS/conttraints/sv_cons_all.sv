/*
EXAMPLE:
`define START_RANGE 35
`define END_RANGE 45
//parameter int p1 = 10, p2 = 20;
class seq_item # (parameter int p1 = 10, p2 = 20) ;
//class seq_item;
rand bit [7:0] value1;
 rand bit [7:0] value2;
 rand bit [7:0] value3;
 rand bit [7:0] value4;
 rand bit [7:0] value5;
 rand bit [7:0] value6;
 rand bit [7:0] value7;

 constraint value1_c {value1 inside {[10:20]};} // constant value based range
 constraint value2_c {value2 inside {40,70, 80};} // Set of values
 constraint value3_c {value3 inside {[10:20], 21, 23, [25:30], 40, 70, 80};} // Mix
 constraint value4_c {!(value4 inside {[100:200]});} // Inverted Range
 constraint value5_c {value5 inside {[value1:value2]};} // range using variable
 constraint value6_c {value6 inside {[`START_RANGE:`END_RANGE]};} // Define based
range
 constraint value7_c {value7 inside {[p1:p2]};} // parameter based range
endclass
module constraint_example;
 seq_item item;
// seq_item #(100, 200)item;
 initial begin
 item = new();

 repeat(3) begin
 item.randomize();
 $display("value1 = %0d, value2 = %0d, value3 = %0d, value4 = %0d, value5 = %0d,
value6 = %0d, value7 = %0d", item.value1, item.value2, item.value3, item.value4,
item.value5, item.value6, item.value7);
 end
 end
endmodule


*/




/*

If else in constraints
EXAMPLE:
class seq_item;
 rand bit [7:0] value;
 rand enum {LOW, HIGH} scale;
 constraint scale_c { if(scale == LOW) value < 50;
 else value >= 50;
 }
endclass
module constraint_example;
 seq_item item;

 initial begin
 item = new();

 repeat(5) begin
 item.randomize();
 $display("scale = %s, value = %0d", item.scale.name(), item.value);
 end
 end
endmodule

OUTPUT:
scale = LOW, value = 17
scale = LOW, value = 43
scale = HIGH, value = 83
scale = HIGH, value = 61
scale = HIGH, value = 194



EXAMPLE FOR THE CONDITIONAL OPERATOR
class seq_item;
 rand bit [7:0] value;
 rand enum {LOW, HIGH} scale;
 constraint scale_c { value == ((scale == LOW) ? 20: 90); }
endclass
module constraint_example;
 seq_item item;

 initial begin
 item = new();

 repeat(5) begin
 item.randomize();
 $display("scale = %s, value = %0d", item.scale.name(), item.value);
 end
 end
endmodule
OUTPUT:
scale = LOW, value = 20
scale = LOW, value = 20
scale = LOW, value = 20
scale = HIGH, value = 90
scale = LOW, value = 20
*/



/*
IMPLICATION OPERATOR IN CONSTRAINT
Syntax:
<expression> -> <constraint>
• For an implication operator in constraint, it declares the relation between
expression and constraint.
• If the LHS expression of -> holds true, the RHS constraint is considered.
class seq_item;
 rand bit [7:0] value;
 rand enum {LOW, HIGH} scale;
 constraint scale_c { (scale == LOW) -> value <50; }
endclass
module constraint_example;
 seq_item item;

 initial begin
 item = new();

 repeat(5) begin
 item.randomize();
 $display("scale = %s, value = %0d", item.scale.name(), item.value);
 end
 end
endmodule
OUTPUT:
scale = HIGH, value = 150
scale = HIGH, value = 121
scale = HIGH, value = 192
scale = HIGH, value = 104
scale = LOW, value = 33

*/


/*

DIST KEYWORD IN CONSTRAINTS
The dist keyword is helpful whenever to have weighed distribution during
randomization. The probability random value occurrence can be controlled using
the dist keyword.
As the name says, in weighted distribution weight will be specified to the values
inside the constraint block. Value with the more weight will get allocated more
often to a random variable.
There are two ways to provide weightage for values.
1. Using :/ operator
2. Using := operator
Syntax: value :/ weightage
 value := weightage
• The values and weights can be constants or variables,
• value can be single or a range
• the default weight of an unspecified value is := 1
class seq_item;
 rand bit [7:0] value1;
 rand bit [7:0] value2;
 constraint value1_c {value1 dist {3:/4, [5:8] :/ 7}; }
 constraint value2_c {value2 dist {3:=4, [5:8] := 7}; }
endclass
module constraint_example;
 seq_item item;

 initial begin
 item = new();

 repeat(5) begin
 item.randomize();
 $display("value1 (with :/) = %0d, value2 (with :=)= %0d", item.value1, item.value2);
 end
 end
endmodule





OUTPUT:
value1 (with :/) = 3, value2 (with :=)= 8
value1 (with :/) = 5, value2 (with :=)= 5
value1 (with :/) = 3, value2 (with :=)= 7
value1 (with :/) = 3, value2 (with :=)= 6
value1 (with :/) = 3, value2 (with :=)= 6

*/


/*
INHERITANCE IN CONSTRAINT
class parent;
 rand bit [5:0] value;
 constraint value_c {value > 0; value < 10;}
endclass
class child extends parent;
 constraint value_c {value inside {[10:30]};}
endclass
module constraint_inh;
 parent p;
 child c;

 initial begin
 p = new();
 c = new();
 repeat(3) begin
 p.randomize();
 $display("Parent class: value = %0d", p.value);
 end
 repeat(3) begin
 c.randomize();
 $display("Child class: value = %0d", c.value);
 end
 end
endmodule


*/

//===============================================
//===============================================



/*

TYPES OF CONSTRAINTS
 AISHWARYA S
Code 1 : constrait creation
module packet ;
class pkt;
 rand bit[0:15] data;
 rand bit[0:15] addr;

 constraint cond { addr <= 8'hA; }

 function void post_randomize();
 $display ("addr=%d data=%d",addr,data);
 endfunction

endclass
 initial begin
 pkt p1=new();
 repeat(200) begin
 p1.randomize();
 end
end
endmodule

*/


/*

 AISHWARYA S
Code 2 : creating multiple constraint
module cons ;
 class packet;

 rand bit [0:7] min,max,typ;
 rand bit [0:7] value ;

 constraint con { min > 5 ; max < 100 ; typ > 50 ; typ < 100; value ==
5;} // can create multiple constraint

 function void post_randomize();
 $display ("min=%d max=%d typ=%d, value =%d",
min,max,typ,value);
 endfunction

 endclass


 initial begin
 packet p1=new();

 for (int i=0; i<=10;i++) begin
 p1.randomize();
 end
 end
endmodule
 AISHWARYA S
 
 */
 
 
 /*
 
Code 3: inside & inverted operator ( gives the range of value for
the variable )
module cons;
 class packet;
 rand bit [0:3] data,addr;

 constraint cond { data inside {[7:15 ]};}

 constraint call { !(addr inside {[ 7:15]});}

 function void post_randomize();
 $display("data=%d addr=%d",data,addr);
 endfunction
endclass

 initial begin
 packet p1 = new();
 repeat(100) begin
 p1.randomize();
 end
 end
Endmodule
*/


/*

 AISHWARYA S
Code 4 : Weighted distribution
module weight ;
 class cube;
 rand bit [0:2] value ,index ;

 constraint cond { value dist {1 :=1 , 2:=2 , [3:6]:=10, 7:=1 } ;}
 constraint con { index dist {1 :/1 , 2:/2 , [3:6]:/10, 7:=1 } ;}

 endclass

 initial begin
cube c1 = new();
 repeat(50) begin
 c1.randomize();
 $display ("value=%d index=%d ",c1.value,c1.index);
 end
 end
Endmodule

*/


/*

 AISHWARYA S
Code 5 : extern method
class pkt;

 randc bit[0:4] addr;
 constraint data;

endclass

constraint pkt::data { addr >=7;}
module value;
 initial begin
 pkt p1=new();
 repeat (5) begin
 p1.randomize();
 $display("addr=%d",p1.addr);
 end
 end
Endmodule
AISHWARYA S
Code 6: Implicit constraint
module implicit ;
 class pkt;
 rand bit [0:2] len,value ;

 constraint data { (len == 2) -> (value > 5) ; }
 constraint data1 {len dist {2:=60 , 3:=10 , 4:=20 , 5:=20};}

 endclass

 pkt p1;
 initial begin
 p1=new();
 repeat(100) begin-
 p1.randomize();
 $display("len=%d value=%d",p1.len,p1.value);
 end
 end
endmodule

*/

/*

AISHWARYA S
Code 7 : If else constraint
module cons;
 class pkt;
 rand bit[0:7] value;
 rand bit[0:2] mode;

 constraint number {
 if (value %2 == 0) {
 mode == 1;
 }
 else {
 mode == 0;
 }
 }
Endclass
 pkt p1;
initial begin
 p1=new();
 repeat(50) begin
 p1.randomize();
 $display("value=%d mode=%d",p1.value,p1.mode);
 end
end
endmodule

*/


/*
AISHWARYA S

Code 8: static constraint
module value ;
 class pkg;
 randc bit [0:4] a;

 constraint max { a >= 5; }
 static constraint min { a <= 10; }
 endclass

 pkg p1,p2;
 initial begin
 p1 = new();
 p2=new();
 p1.min.constraint_mode(0);
 repeat (10) begin
 p1.randomize();
 p2.randomize();
 $display ("a=%d a1=%d",p1.a,p2.a);
 end
 end
endmodule
*/


/*

AISHWARYA S
Code 9: inline constraint
module inline;
 class pkg;
 rand bit[0:7] a;

 constraint in { a > 5 ; a < 20 ; }
 endclass

 pkg p1;
 initial begin
 p1=new();
 repeat (5) begin
 p1.randomize() with { a > 10 ;};
 $display ("a=%d",p1.a);
 end
 end
endmodule

*/


/*

AISHWARYA S
Code 10 : soft constraint
module soft_con;
 class pkg;
 rand bit [0:7] value ;

 constraint addr { soft value == 5 ;}
 Endclass
 pkg p1;
 initial begin
 p1= new();
 repeat(20) begin
 p1.randomize() with { value == 6 ; };
 $display("value=%d",p1.value);
 end
 end
endmodule

*/


/*

AISHWARYA S
Code 11 : array constraints
module arr;
 class abc;
 rand bit [3:0] arr1 [5]; // static
 rand bit [3:0] darr []; // dynamic
 rand bit [3:0] qarr [$]; // queue

 constraint size { qarr.size() == 6 ; }
 constraint value { foreach (arr1[i])
 arr1[i] == i*2 ;

 foreach ( darr [i])
 darr[i] == i+1;

 foreach (qarr[i])
 qarr[i] == i*3;
 }

 function new ();
 darr = new[5];
 endfunction

 endclass

 abc a1;
 initial begin
 a1=new();
 a1.randomize();
 $display ("array=%p \n dynamic=%p \n queue=%p",a1.arr1,
a1.darr, a1.qarr);
 end
 endmodule
 
 */


/*

AISHWARYA S
Code 12: constraint inheritence
module inher;
 class pkt1;
 rand bit[0:3] addr;
 constraint range { addr < 4; }
 endclass

 class pk2 extends pkt1;
 constraint range {addr > 4;}
 endclass

 pkt1 p1;
 pk2 p2;

 initial begin
 p1=new();
 p2=new();

 repeat (5) begin
 p1.randomize();
 $display ("addr1=%d",p1.addr);
 end

 $display ("-------------------------");

 repeat (5) begin
 p2.randomize();
 $display ("addr2=%d", p2.addr);
 end
 end
endmodule


//==============================================

//==============================================

/*
CCOONNSSTTRRIIAANNTTSSS R I S A I T H U M U
l a k s h m i s r i s a i t h u m u 6 6 @ g m a i l . c o m
1) There is an 8 bit vector (bit [7:0] data_in) which takes some random variable value. Write a constraint
in such a way that every time it is randomized, total number of bits toggled in data_in vector.
should be 5 with respect to previous value of data_in.
class cnst;
 rand bit [7:0]data_in;
 rand bit [7:0]prv_data;

 function void pre_randomize();
 prv_data=data_in;
 endfunction


 constraint c1{data_in!=prv_data;}
 constraint c2{$countones(data_in^prv_data)==5;}


 function void display();
 $display("data_in=%0b and prv_dat=%0b",data_in,prv_data);
 endfunction

endclass
module tb;
 cnst ct;
 initial begin
 ct=new();
 ct.randomize();
 ct.display();
 end
endmodule

*/


/*

2) Write a constraint randomize the variables which result odd or even numbers.
class evenAndodd;
 rand int unsigned value;
 rand int unsigned data;

 constraint valu_data{value inside {[10:200]};data inside {[25:120]};}
 constraint valu_even{value%2==0;}
 constraint data_odd{data%2!=0;}

 function void display();
 $display("The value=%0d,data=%0d",value,data);
 endfunction

endclass
module tb;
 evenAndodd ev_od;
 initial begin
 ev_od=new();
 repeat(3)begin
 ev_od.randomize();
 ev_od.display();
 end
 end
endmodule

*/


/*

3) Write a constraint to generate even or odd numbers with in the range of 1022-1063 without using
modulus or divide operator.
class eveOrodd;
 rand int unsigned num;


 constraint c1{num inside {[1022:1063]};}


 function void post_randomize();
 if(num&1)
 $display("The odd num is %0d",num);
 else
 $display("The even num is %0d",num);

 endfunction


endclass
module tb;
 eveOrodd evod;
 initial begin
 evod = new();
 repeat(5)begin
 evod.randomize();
 end
 end
endmodule

*/


/*

4) Define following constraints for a 4-bit dynamic array.
The size of the array should be in between 15 to 20.
There should be even numbers in odd location and odd numbers in even locations
class eve2odd2even;
 rand bit[3:0]arr[];

 constraint arr_size{arr.size() inside {[15:20]};}
 constraint arr_od_ev{
 foreach(arr[i])
 if(i%2==0)
 arr[i]%2!=0;
 else
 arr[i]%2==0;
 }


 function void display();
 $display("The array elements are:");
 foreach(arr[i])begin
 $display("arr[%0b]=%0d",i,arr[i]);
 end
 $display("The array is %0p",arr);
 endfunction


endclass
module tb;
 eve2odd2even eveodd;
 initial begin
 eveodd = new();
 eveodd.randomize();
 eveodd.display();
 end
endmodule

*/


/*

5) Write a System Verilog Constraint for generating factorial of numbers
class factOfnum;

 rand int unsigned num;
 rand int unsigned value;

// constraint num_value{num inside {[10:20],11,[22:34]};}

 constraint num_val{num inside {[1:20]};}

 constraint valu{value==fun(num);};

 function automatic int fun(int num);
 //fact=1;
 if(num==0)
 return 1;
 return num*fun(num-1);//recursion
 endfunction

 function void post_randomize();
 $display("the factorial of given num=%0d is value=%0d",num,value);
 endfunction
endclass
module tb;
 factOfnum f1;
 initial begin
 f1=new();
 f1.randomize();
 end
endmodule
*/


/*

6) Write a constraint to print a pattern as fallow 0011001100110011
sol)
class seq_detpat;
 rand bit pat[15:0];

 constraint cntr{
 foreach(pat[i])
 if(i%4==0 || i%4==1)
 pat[i]==1;
 else
 pat[i]==0;
 }


 function void display();
 $display("The pattern as per the given is:");
 foreach(pat[i])begin
 $write("%0b ",pat[i]);
 end
 endfunction
endclass
module tb;
 seq_detpat det;
 initial begin
 det = new();
 det.randomize();
 det.display();
 end
Endmodule*/


/*

7) Write a constraint to print a pattern as fallow 001002003004
sol)
class patrinc;
 rand int pat[12];

 constraint c1{
 foreach(pat[i])
 if(i%3==2)
 pat[i]==(i/3)+1;
 else
 pat[i]==0;
 }

 function void display();
 $display("The required pattern is as per given:");
 foreach(pat[i])begin
 $write("%0d",pat[i]);
 end
 endfunction
endclass
module tb;
 patrinc patr;
 initial begin
 patr = new();
 patr.randomize();
 patr.display();
 end
endmodule

*/


/*

8) Write a constraint to Randomly Generate 4kb aligned address
sol)
class cnstr;
 rand int unsigned addr;

 constraint c1_addr{addr%4096==0;}

 function void display();
 $display("The addr = %0d",addr);
 endfunction

endclass
module tb;
 cnstr cn;
 initial begin
 cn = new();
 cn.randomize();
 cn.display();
 end
endmodule

*/


/*

9) Generate random ones and zeros using queue with size 15 and remove 1s in that output becomes ?
Ans)
class qu1rem;
 rand bit que[$];
 constraint que_size{que.size == 15;}
 constraint que_val{
 foreach(que[i])
 que[i] inside {[0:1]};
 }

 function void post_randomize();
 $display("The initialy que is:%0p ",que);
 $write("The output after remove ones in queue is:");
 foreach(que[i])begin
 if(que[i]==1)
 continue;
 else
 $write("%0b ",que[i]);
 end
 endfunction
endclass
module tb;
 qu1rem rem;
 initial begin
 rem=new();
 rem.randomize();
 end
endmodule

*/


/*

10) Write the constraint to print the following pattern
 ex: 5 0 0 0
 5 5 0 0
 5 5 5 0
 5 5 5 5
Ans)
class pat5s;
 rand int pat[][];
 constraint pat_size{
 pat.size inside {[5:10]};
 foreach(pat[i])
 pat[i].size==pat.size;
 }

 constraint pat_vl{
 foreach(pat[i,j])
 if(i<j)
 pat[i][j]==0;
 else
 pat[i][j]==5;
 }

 function void post_randomize();
 foreach(pat[i])begin
 foreach(pat[j])begin
 $write("%0d ",pat[i][j]);
 end
 $display();
 end
 endfunction

endclass
module tb;
 pat5s pt;
 initial begin
 pt=new();
 pt.randomize();
 end
endmodule

*/


/*

11) Write a constraint to generate an address where 9bits are always set to 1,and sequences of 111 or 000
should of 111 or 000 should not occur in a 16bit address.
Ans)
class trans;
 rand bit [15:0] addr;

 constraint cnt_ones{$countones(addr)==9;}
 constraint not_in{
 foreach(addr[i])
 if(i<14){
 {addr[i],addr[i+1],addr[i+2]}!=3'b000;
 {addr[i],addr[i+1],addr[i+2]}!=3'b111;
 }
 }

 function void display();
 $display("The addr is: %0p",addr);
 $display("Count the no of ones in the addr:%0d",$countones(addr));
 $display("The bits in the addr:");
 foreach(addr[i])begin
 $write("%0b ",addr[i]);
 end
 endfunction


endclass
module tbl;
 trans tr;
 initial begin
 repeat(5)begin
 tr=new();
 tr.randomize();
 tr.display();
 end
 end
endmodule

*/


/*
12) Write a constraint to generate random real values form 3.5 to 5.5?
Ans:
class relcnst;
 randc int rel_val;
 real val;

 constraint rl_val{rel_val inside {[35:55]};}

 function void post_randomize();
 val=rel_val/10.0;
 $display("The real value is: %0f",val);
 endfunction

endclass
module tb;
 relcnst rct;
 initial begin
 rct = new();
 repeat(5)begin
 rct.randomize();
 end
 end
Endmodule

*/


/*

13) Write a constraint to generate the following pattern 00112233......?
Ans)
class cnstrval;
 rand int pat[];
 constraint c_size{pat.size inside {[10:20]};}
 constraint c_Val{
 foreach(pat[i])
 if(i%2==0)
 pat[i]==i/2;
 else
 pat[i]==i/2;

 }

 function void post_randomize();
 foreach(pat[i])begin
 $write("%0d ",pat[i]);
 end
 $display();
 endfunction

endclass
module tb;
 cnstrval c1;
 initial begin
 c1 = new();
 repeat(5)begin
 c1.randomize();
 end
 end
endmodule

*/


/*

14) Write a constraint for the following conditions?
 mem size should be 300-250
 value should be 0-4
 1-4 not repeat consecutive
 0 can be repeat consecutive
//0/1/2/3/4 should come more than 40 times.
Ans)
class cnstra;
 rand int mem[];
 constraint mem_size{mem.size inside {[300:350]};}
 constraint mem_val{
 foreach(mem[i])
 mem[i] inside {[0:4]};
 }
 constraint mem_va{
 foreach(mem[i])
 mem[i] dist {[0:4]:=40};
 }
 constraint mem_val2{
 foreach(mem[i])
 if(i<mem.size-1){
 if(mem[i]==1)
 mem[i+1]!=1;
 else if(mem[i]==4)
 mem[i+1]!=4;
 else
 mem[i+1]!=mem[i];
 }
 }

 function void post_randomize();
 foreach(mem[i])begin
 $write("%0d ",mem[i]);
 end
 endfunction

endclass
module tb;
 cnstra cnt;
 initial begin
 cnt = new();
 cnt.randomize();
 end
endmodule

*/


/*

15) Write a constraint on a 2 dimensional array(int array1[2][4]) for generating an even number in the
first 4 locations and an odd number in the next 4 locations. Also the even number should be in multiple of
4 and odd number should be multiple of 3.
Ans)
class transc;
 rand int arr[2][4];
 constraint ar_va{
 foreach(arr[i,j])
 arr[i][j] inside {[10:200]};}
 constraint arr_val{
 foreach(arr[i,j])
 if(i==0)
 arr[i][j]%2==0 && arr[i][j]%4==0;
 else
 arr[i][j]%2==1 && arr[i][j]%3==0;
 }


 function void post_randomize();
 foreach(arr[i])begin
 foreach(arr[j])begin
 $write("%0d ",arr[i][j]);
 end
 $display();
 end
 endfunction

endclass
module tb;
 transc tr;
 initial begin
 tr = new();
 tr.randomize();
 end
endmodule

*/


/*

16) Array Constraint Write a constraint for an array of numbers such that the size of array ranges from 6
to 15 elements, and even index locations should have odd numbers and odd index locations should have
even numbers, numbers range between 16 to 127?
Ans)
class cnstr;

 rand int arr[];

 constraint c1{
 arr.size() inside {[6:15]};
 foreach(arr[i])
 arr[i] inside {[16:127]};
 }

 constraint c2{
 foreach(arr[i])
 if(i%2==0)
 arr[i]%2!=0;
 else
 arr[i]%2==0;
 }


 function void post_randomize();
 $display("The size of the array is %0d",$size(arr));
 $display("The array items:");
 foreach(arr[i])begin
 $write("%0d ",arr[i]);
 end
 $display();
 endfunction


endclass
module tb;
 cnstr cn;
 initial begin
 cn = new();
 repeat(5)begin
 $display("------------------------");
 cn.randomize();
 end
 end
endmodule

*/


/*
17) Write a constraint without inside construct to generate value with in the range of 34 to 43?
Ans)
class cntsrval;
 rand int val;

 constraint c1{
 val>=34;val<=43;
 }

 function void post_randomize();
 $display("value is %0d",val);
 endfunction

endclass
module tb;
 cntsrval cnt;
 initial begin
 cnt = new();
 repeat(5)begin
 cnt.randomize();
 end
 end
endmodule

*/


/*

18) Randomize the below variable such as
class randvar;
 rand bit [7:0] var1,var2,var2,var3,var4;
endclass
a.Randomize all varible.
b.randomize only var2.
c.randomize var1,var4.
d.randomize var1,var3,var4.
Ans)
class base_cls;
 rand bit [7:0] var1,var2,var3,var4;

 function void display();
 $display("The values of var1=%0d,var2=%0d,var3=%0d,var4=%0d",var1,var2,var3,var4);
 endfunction

endclass
module tb;
 base_cls b;
 initial begin
 b = new();
 b.randomize();
 b.display();
 b.var1.rand_mode(0);b.var3.rand_mode(0);b.var4.rand_mode(0);
 b.randomize();
 b.display();
 b.var1.rand_mode(1);b.var4.rand_mode(1);b.var2.rand_mode(0);
 b.randomize();
 b.display();
 b.var3.rand_mode(1);
 b.randomize();
 b.display();
 end
endmodule


*/


/*


19) There are two constraints applied to the same variable 'A'.One will generate the value within the
range of [25:50] and another expression says variable value should be greater than 40.
ans)
class cnstr_s;
 rand int unsigned a;

 constraint c1{a inside {[25:50]};}
 constraint c2{a>40;}

 function void display();
 $display("The values of a=%0d",a);
 endfunction


endclass
module tb;
 cnstr_s ct;
 initial begin
 ct = new();
 repeat(10)begin
 ct.randomize();
 ct.display();
 end
 end
endmodule

*/


/*


20) Write a single constraint to generate random values for bit [8:0] variable in the below range
 1-34,127,129-156,192-202,257-260
Ans)
class transac;
 rand bit[8:0] data;

 constraint c1{data inside {[1:34],127,[129:156],[192:202],[257:260]};}

 function void display();
 $display("The value of data=%0d",data);
 endfunction

endclass
module cnstr_tb;
 transac tr;
 initial begin
 tr = new();
 repeat(5)begin
 tr.randomize();
 tr.display();
 end
 end
endmodule
*/


/*


21) Write a constraint to generate a random even number between 50 and 100.
ans)
class gen_even_range;
 rand int unsigned value;

 constraint c1_val{value inside {[50:100]};
 value %2==0;}

 function void display();
 $display("The even number for given range is %0d",value);
 endfunction

endclass
module tb;
 gen_even_range ev_nu;
 initial begin
 ev_nu = new();
 repeat(5)begin
 ev_nu.randomize();
 ev_nu.display();
 end
 end
endmodule



*/


/*


22) Write a constraint for 32-bit rand variable such that it should have 12
number of 1's non consecutively.
Ans)
class conseq_ones;
 rand bit [31:0] data;

 constraint c1{$countones(data)==12;}
 function void display();
 $display("The data=%b",data);
 endfunction
endclass
module tb;
 conseq_ones cone;
 initial begin
 cone = new();
 repeat(5)begin
 cone.randomize();
 cone.display();
 end
 end
endmodule



*/


/*


23) Write a constraint to generate below pattern
 9 19 29 39 49 59 69 79
Ans)
class val_cnstr;
 rand int val[];

 constraint val_size{ val.size==10;
 foreach(val[i])
 val[i]==(i*10)+9;
 }


 function void display();
 $display("Pattern:");
 foreach(val[i])begin
 $write("%0d ",val[i]);
 end
 $display();
 endfunction

endclass
module tb;
 val_cnstr cn;
 initial begin
 cn = new();
 cn.randomize();
 cn.display();
 end
endmodule


*/


/*


24) Having 32 bit of variable, only single bit high values need to be accessed.
write a constraint for that.
Ans)
class sig_bit;
 rand bit [31:0] data;

 constraint val{$countones(data)==1;}

 function void display();
 $display("data=%b",data);
 endfunction

endclass
module tb;
 sig_bit sig;
 initial begin
 sig = new();
 repeat(5)begin
 sig.randomize();
 sig.display();
 end
 end
endmodule

//2 2 2 3 3
 0 1 2 3 4
 


*/


/*


25) Generate unique elements in an array without using unique keyword?
Ans)
class unique_elemarr;

 rand int arr[];

 constraint arr_size{
 arr.size inside {[2:10]};
 }
 constraint ar_val{
 foreach(arr[i])
 arr[i] inside {[1:8]};
 }


 function void post_randomize();
 $display("The initial array values is %0p",arr);
 $display("Unique elements array is; ");
 for(int i=0;i<$size(arr);i++)begin
 int j;
 for(j=0;j<i;j++)begin
 if(arr[i]==arr[j])
 break;
 end
 if(i==j)
 $write(" %0d",arr[i]);
 end
 $display();

 endfunction

endclass
module tb;
 unique_elemarr una;
 initial begin
 una = new();
 repeat(3)begin
 una.randomize();
 end
 end
endmodule


*/


/*


26) What is the constraint to generate the pattern 9 7 5 3 1 8 6 4 2 0 ?
Ans)
class patern;

 rand int pat[$];

 function void post_randomize();
 for(int i=0;i<10;i++)begin
 if(i%2==0)
 pat.push_front(i);
 end
 for(int i=0;i<10;i++)begin
 if(i%2!=0)
 pat.push_front(i);
 end
 endfunction

 function void display();
 $display("The pat is %0p",pat);
 endfunction

endclass
module tb;
 patern pat;
 initial begin
 pat = new();
 pat.randomize();
 pat.display();
 end
endmodule


*/


/*


27) Write a constraint to generate a random value for var1[7:0] with in 50 and var2[7:0] with the nonrepeated value in every randomization?
Ans)
class trasn;
 rand bit [7:0] var1;
 rand bit [7:0] var2;


 constraint c1{var1 inside {[0:50]};
 }
 constraint c2{unique{var2};}


 function void display();
 $display("The values of var1=%0d and var2=%0d",var1,var2);
 endfunction


endclass
module test;
 trasn tra;
 initial begin
 tra = new();
 repeat(10)begin
 tra.randomize();
 tra.display();
 end
 end

endmodule


*/


/*


28) What is the constraint to generate the pattern 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 1 0 2 0 3 0 4 0 5 0
Ans)
class cntsr_ex;

 rand bit [3:0] pat[];

 constraint arr_siz{pat.size == 30;}

 constraint pat_val{
 foreach(pat[i]){
 if(i%2==0)
 pat[i]==0;
 else if(i==1 || i==19)
 pat[i]==1;
 else
 pat[i]==pat[i-2]+1;
 }

 }

 function void display();
 foreach(pat[i])
 begin
 $write("%0d ",pat[i]);
 end
 endfunction


endclass
module test_tb;
 cntsr_ex ct;
 initial begin
 ct = new();
 assert(ct.randomize()) begin
 $info("Randomization passed");
 ct.display();
 end
 else
 $error("Randomization failed");
 end

endmodule


*/


/*


29) Write a code random generate 10 real numbers between 1.356 to 2.683.
sol)
class flo_val;

 rand int val;
 real res;
 constraint c1_val{val inside {[1356:2683]};}

 function void post_randomize();
 res=val/1000.0;
 $write(" %0f",res);
 endfunction

endclass
module test_cons;
 flo_val fv;
 initial begin
 fv = new();
 repeat(10)begin
 fv.randomize();
 end
 end
endmodule


*/


/*


30) Write a constraint to generate the below pattern in an array.
 a) 0 2 1 3 4 6 5 7 8
 b) 0 1 0 2 0 3 0 4 0 5
Sol)
a)
class pat_ex;

 rand int pat[];

 constraint pat_val{
 pat.size() == 9;
 foreach(pat[i]){
 if(i==1 || i==5)
 pat[i]==i+1;
 else if(i==2 || i==6)
 pat[i]==i-1;
 else
 pat[i]==i;
 }
 }

 function void display();
 $display("The required pattern is %0p",pat);
 endfunction

endclass
module test_tb;

 pat_ex pe;
 initial begin
 pe = new();
 pe.randomize();
 pe.display();
 end
endmodule
b)
class cons_pat;
 rand int pat[];

 constraint pat_val{
 pat.size() == 10;

 foreach(pat[i])
 if(i%2==0)
 pat[i]==0;
 else
 pat[i]==(i/2)+1;
 }

 function void display();
 $display("The required pattern is %0p",pat);
 endfunction

endclass
module test_tb;
 cons_pat cp;
 initial begin
 cp = new();
 cp.randomize();
 cp.display();
 end
endmodule



*/


/*


31) Write a constraint with array size 5 to 10 & array values
should be in ascending order/descending order.
Sol)
class ass_des_arry;

 rand int arr[];

 constraint arr_size{arr.size inside {[5:10]};}

 constraint arr_val{
 foreach(arr[i])
 arr[i] inside {[0:20]};}


 function void post_randomize();
 int temp;
 for(int i=0;i<$size(arr);i++)begin
 for(int j=i+1;j<$size(arr);j++)begin
 if(arr[i]>arr[j])
 begin
 temp=arr[i];
 arr[i]=arr[j];
 arr[j]=temp;
 end
 end
 end
 $display("Ascending order array is %0p",arr);
 $display("Descending order array is:");
 for(int i=$size(arr)-1;i>=0;i--)begin
 $write("%0d ",arr[i]);
 end


 endfunction


endclass
module test_cnstr;
 ass_des_arry ad;
 initial begin
 ad = new();
 ad.randomize();
 end
 endmodule


*/


/*


32) How to generate a sequence of 10 random single bit values that alternate
between 0 and 1 like 1010101010?
Ans)
class exam_const;
 rand bit data;
 int val[$];

 function void post_randomize();
 for(int i=0;i<10;i++)begin
 if(i%2==0)begin
 data=1;
 val.push_back(data);
 end
 else
 begin
 data=0;
 val.push_back(data);
 end
 end

 $display("%0p",val);
 endfunction

endclass
module test_cnst;
 exam_const ec;
 initial begin
 ec = new();
 ec.randomize();
 end
endmodule


*/


/*


33) Write a constraint to generate prime numbers between the range of 1 to 100?
Ans)
class prime_cnst;

 rand int num;
 int cnt;

 function void post_randomize();

 for(int i=1;i<=100;i++)begin
 cnt=0;
 for(int j=1;j<=i;j++)begin
 if(i%j==0)
 cnt++;

 end
 if(cnt==2) begin
 num=i;
 $write("%0d ",num);
 end

 end


 endfunction

endclass
module test;

 prime_cnst pc;
 initial begin
 pc = new();
 pc.randomize();
 end
endmodule


*/


/*


34 )
class stim;
 const bit [31:0] CONGEST_ADDR = 42;
 typedef enum {READ, WRITE, CONTROL}stim_e;
 rand stim_e kind;
 rand bit [31:0] len,src,dst;
 rand bit congestion_test;

 constraint c_stim{
 len<1000;
 len>0;
 if(congestion_test){
 dst inside {[CONGEST_ADDR-10:CONGEST_ADDR+10]};
 src == CONGEST_ADDR;
 }
 else
 src inside {0,[2:10],[100:107]};

 }

 function void display();
 $display("CONGEST_ADDR: %0d",CONGEST_ADDR);
 $display("kind: %p",kind);
 $display("value of len=%0d src=%0d dst=%0d",len,src,dst);
 $display("value of congestion_test=%b",congestion_test);

 endfunction



endclass
module test_stim;
 stim t1;
 initial begin
 t1 = new();
 t1.randomize();
 t1.display();
 end

endmodule


*/


/*


35) Write a constraint every 3rd index in an array should be divisible by 2
ex 2, 5, 8 index the number should be divisible by 2.

class constr_ex;

 rand int arr[];

 constraint arr_c{
 arr.size inside {[3:10]};
 foreach(arr[i])
 arr[i] inside {[2:20]};
 foreach(arr[i])
 if(i==2)
 arr[i]%2==0;
 }


 function void post_randomize();

 $display("The array is %0p",arr);
 endfunction



endclass
module test;
 constr_ex ce;
 initial begin
 ce = new();
 ce.randomize();
 end

endmodule


*/


/*


36) Write a constraint of size 10 first five should be increment order and next five
should be decrement order and all the elements should be divisible by 5?
class ass_des_cnst;
 rand int arr[];

 constraint arr_c{
 arr.size ==10;
 foreach(arr[i])
 arr[i] inside {[5:50]};
 foreach(arr[i])
 arr[i]%5==0;
 unique{arr};
 }


 function void post_randomize();
 int temp;
 int qu[$];
 $display("The initial array is %0p",arr);
 for(int i=0;i<$size(arr);i++)begin
 for(int j=i+1;j<$size(arr);j++)begin
 if(arr[i]>arr[j])begin
 temp=arr[i];
 arr[i]=arr[j];
 arr[j]=temp;
 end
 end
 end
 //arr.sort();
 for(int i=0;i<5;i++)begin
 qu.push_back(arr[i]);
 end
 for(int i=$size(arr)-1;i>=5;i--)begin
 qu.push_back(arr[i]);
 end
 $display("%0p",qu);
 endfunction
endclass
module test_tb;
 ass_des_cnst ac;
 initial begin
 ac = new();
 ac.randomize();
 end
endmodule


*/


/*


37) Write a constraint to demonstrate solve before constraint.
ans)
class ex_consr;
 rand bit a;
 rand bit [3:0] b;

 constraint sol{(a==1) -> (b==10);
 solve a before b;
 }
 function void display();
 $display("The values of a=%0d and b=%0d",a,b);
 endfunction

endclass
module test;
 ex_consr exc;
 initial begin
 exc = new();
 repeat(5)begin
 exc.randomize();
 exc.display();
 end
 end
endmodule


*/


/*


38) Write a constraint to display the Fibonacci sequence.
ans)
class fab_ser;
 rand int fab[];

 constraint fab_s{ fab.size inside {[10:20]};}

 constraint fab_v{
 foreach(fab[i])
 if(i==0)
 fab[i]==0;
 else if(i==1)
 fab[i]==1;
 else
 fab[i]==fab[i-1]+fab[i-2];

 }


 function void post_randomize();
 $display("The Fabonoic series %0p",fab);
 endfunction


endclass
module test_sr;
 fab_ser fs;
 initial begin
 fs = new();
 fs.randomize();
 end

endmodule


*/


/*


39) Write a code to check whether the randomized number is an armstrong
number or not.
Ans)
class arm_num;

 randc int num;

 constraint num_c{num inside {[1000:1999]};}

 function void post_randomize();
 int temp,rem,sum;
 temp = num;
 for(int i=0;i<4;i++)
 begin
 rem=num%10;
 sum=(rem**4)+sum;
 num=num/10;
 end

 if(temp==sum)
 $display("Randomized num is Armstrong number:%0d",temp);
 else
 $display("Randomized num is Not a Armstrong numbe:%0d",temp);

 endfunction


endclass
module test_arm;
 arm_num an;
 initial begin
 an = new();
 repeat(50)begin
 an.randomize();
 end

 end

endmodule


*/


/*


40) Write a constraint for 2D dynamic to print n x n matrix(Square Matrix).
Ans)
class matnn;
 rand int mat[][];
 rand int n;

 constraint n_val{n inside {[3:10]};}
 constraint mat_c{
 mat.size == n;
 foreach(mat[i])
 mat[i].size==mat.size;

 foreach(mat[i,j])
 mat[i][j] inside {[1:9]};
 }

 function void post_randomize();
 foreach(mat[i])begin
 $display(" %0p",mat[i]);
 end
 endfunction

endclass
module test;
 matnn mn;
 initial begin
 mn=new();
 repeat(5)begin
 mn.randomize();
 end
 end
endmodule



*/


/*


41) Write a constraint to generate 1221122112211.....
Ans)
class patrn;
 rand int pat[];

 constraint pat_c{
 pat.size inside {[10:20]};
 foreach(pat[i])
 if(i%4==0 || i%4==3)
 pat[i]==1;
 else
 pat[i]==2;}


 function void post_randomize();
 $display("Pattern is:");
 foreach(pat[i])begin
 $write(" %0d",pat[i]);
 end
 endfunction


endclass
module test_pat;
 patrn pt;
 initial begin
 pt = new();
 pt.randomize();
 end
endmodule


*/


/*


42) Write a constraint for 2D dynamic array to print consecutive elements.
Ans)
class cons_2mat;
 rand int mat[][];
 constraint mat_c{
 mat.size inside {[5:20]};
 foreach(mat[i])
 mat[i].size ==5;
 foreach(mat[i,j])
 mat[i][j]==i+j;
 }

 function void post_randomize();
 $display("The matrz is:");
 foreach(mat[i])begin
 foreach(mat[j])begin
 $write(" %0d",mat[i][j]);
 end
 $display();
 end

 endfunction

endclass
module test_mat;
 cons_2mat cm;
 initial begin
 cm = new();
 cm.randomize();
 end

endmodule



*/

/*


SYSTEMVERILOG CONSTRAINTS EXAMPLES
SystemVerilog Constraint 'inside':
The inside keyword in System Verilog allows to check if a given value lies within the range
specified using the inside phrase. This can also be used inside if and other conditional
statements in addition to being used as a constraint.
Example:
class trans;
 rand bit [7:0] wdata;
 rand bit [3:0] waddr;
 rand int value;

 //To specify range of values
 constraint data_val{wdata inside {[2:30]};}
 //To specify set of values
 constraint addr_val{waddr inside {0,1,2,3,4,5};}
 //combination of set and range of values
 constraint val{value inside {10,20,[30:50],60};}
 function void display();
 $display("The values of addr=%b and data=%b,value=%0d",waddr,wdata,value);
 endfunction
endclass



*/


/*



module test_tb;
 trans tr;
 initial begin
 tr = new();
 repeat(5)begin
 tr.randomize();
 tr.display();
 end
 end
endmodule
Output:
The values of addr=0100 and data=00001000,value=34
The values of addr=0101 and data=00001001,value=50
The values of addr=0010 and data=00010011,value=45
The values of addr=0101 and data=00011000,value=42
The values of addr=0001 and data=00001000,value=36
Inverted inside:
The opposite of what the inside operator does can be achieved by placing a not
symbol ! before it. This is applicable for both constraints and conditional statements.
The following example is the same as we saw before except that its constraint has
been tweaked to reflect an inverted inside statement.
Example:
class trans;
 rand bit [3:0] addr;

 constraint addr_val{!(addr inside {[0:10]});}

 function void display();
 $display("The value of addr=%0d",addr);
 endfunction

endclass
module test_tb;
 trans tr;
 initial begin
 tr = new();
 repeat(5)begin
 tr.randomize();
 tr.display();
 end
 end
endmodule
Output:
The value of addr=14
The value of addr=11
The value of addr=12
The value of addr=13
The value of addr=14


*/


/*


Weighted distributions:
Example1:
class packet;
 rand bit [2:0] addr;

The dist operator allows you to create weighted distributions so that some values
are chosen more often than others.
The := operator specifies that the weight is the same for every specified value in
the range while the :/ operator specifies that the weight is to be equally divided
between all the values.
 constraint addr_val{addr dist {0:=20,[1:5]:=50,6:=40,7:=10};}//distribution

 function void display();
 $display("The addr value is addr=%b",addr);
 endfunction

endclass
module test_tb;
 packet pkt;
 initial begin
 pkt = new();
 repeat(10)begin
 pkt.randomize();
 pkt.display();
 end
 end
endmodule
Output:
The addr value is addr=2
The addr value is addr=2
The addr value is addr=4
The addr value is addr=4
The addr value is addr=2
The addr value is addr=1
The addr value is addr=5
The addr value is addr=2
The addr value is addr=4
The addr value is addr=2

*/


/*


Example2:
class packet;

 rand bit [3:0] data;

 constraint val{data dist {10:/2,12:/5,15:/2,5:/1};}

 function void print();
 $display("Data=%0d",data);
 endfunction

endclass
module test_tb;
 packet pkt;
 initial begin
 pkt = new();
 repeat(10)begin
 pkt.randomize();
 pkt.print();
 end
 end
endmodule
Output:
The value of Data=12
The value of Data=5
The value of Data=10
The value of Data=15
The value of Data=10
The value of Data=5
The value of Data=15
The value of Data=15
The value of Data=10
The value of Data=12

*/


/*


Bidirectional constraints:
Constraint blocks are not executed from top to bottom like procedural code, but are
all active at the same time.
Example:
class trans;
 rand bit [3:0] addr;
 rand bit [7:0] data;

 constraint addr_val1{addr>10;}
 constraint addr_val2{addr<=15;}

 constraint data_val1{data inside {[10:20]};}
 constraint data_val2{data<15;}

 function void display();
 $display("The values of addr=%0d and data=%0d",addr,data);
 endfunction
endclass
module test_tb;
 trans tr;
 initial begin
 tr = new();
 repeat(5)begin
 tr.randomize();
 tr.display();
 end
 end
endmodule
Output:
The values of addr=12 and data=10
The values of addr=12 and data=13
The values of addr=14 and data=12
The values of addr=14 and data=11
The values of addr=12 and data=14

*/


/*


Implication Constraint:
Example:
class imp_cnstr;
 rand bit [1:0] mode;
 rand bit [3:0] data;
 constraint c_val{mode == 2 -> data<10;}
 function void display();
 $display("The values of mode=%0d and data=%0d",mode,data);
An implication operator -> can be used in a constraint expression to show
conditional relationship between two variables.
If the expression on the LHS of -> operator is true, then the constraint expression
on the RHS will be satisfied. If the LHS is not true, then RHS constraint expression
is not considered.
 endfunction

endclass
module test_tb;
 imp_cnstr ct;
 initial begin
 ct = new();
 repeat(10)begin
 ct.randomize();
 ct.display();
 end
 end
endmodule
Output:
The values of mode=3 and data=10
The values of mode=3 and data=4
The values of mode=0 and data=8
The values of mode=1 and data=4
The values of mode=2 and data=4
The values of mode=3 and data=6
The values of mode=0 and data=1
The values of mode=2 and data=7
The values of mode=1 and data=0
The values of mode=2 and data=9
if-else Constraint:
The if-else constraint provides an option to specify the else part of a conditional expression.
If the conditional expression is true, then all of the constraints specified in the the first
constraint set shall be satisfied. Otherwise, all of the constraints in the optional else part will
be satisfied.
Example:
class packet;
 rand bit [1:0] mode;
 rand bit [7:0] wr_data;

 constraint val{
 if(mode==2)
 wr_data inside {[0:10]};
 else
 wr_data inside {[11:20]};
 }

 function void display();
 $display("The values of mode=%0d --> wr_data=%0d",mode,wr_data);
 endfunction

endclass
module test_tb;
 packet pkt;
 initial begin
 pkt = new();
 repeat(5)begin
 pkt.randomize();
 pkt.display();
 end
 end
endmodule
Output:
The values of mode=3 --> wr_data=17
The values of mode=0 --> wr_data=15
The values of mode=0 --> wr_data=12
The values of mode=2 --> wr_data=8
The values of mode=2 --> wr_data=1
foreach Constraint:
SystemVerilog provides the support to use foreachloop inside a constraint so that arrays can
be constrained. The foreach construct iterates over the elements of an array and its
argument is an identifier that represents a single entity in the array.
Example:
class packet;
 rand int arr1[];
 rand int arr2[10];

 constraint arr1_size{arr1.size inside {[5:10]};}
 constraint arr1_vals{
 foreach(arr1[i])
 arr1[i] inside {[10:20]};
 }

 constraint arr2_val{
 foreach(arr2[i])
 arr2[i] inside {[30:40]};
 }

 function void display();
 $display("------------------------");
 $display("The arr1=%0p",arr1);
 $display("The arr2=%0p",arr2);
 endfunction

endclass
module test;
 packet pkt;
 initial begin
 pkt = new();
 repeat(3)begin
 pkt.randomize();
 pkt.display();
 end
 end
endmodule
Output:
------------------------
The arr1='{11, 10, 11, 15, 10, 11}
The arr2='{40, 32, 38, 30, 31, 40, 31, 36, 36, 30}
------------------------
The arr1='{19, 17, 20, 18, 20, 14}
The arr2='{30, 40, 38, 31, 35, 36, 39, 33, 30, 31}
------------------------
The arr1='{15, 18, 15, 20, 14, 18, 16, 12}
The arr2='{37, 38, 35, 35, 39, 33, 33, 33, 30, 36}
Unique Constraint:
A unique constraint is useful to generate unique values of variables and elements in array
(Fixed array, Dynamic array, associative array, and queue).
Example:
class trans;
 rand bit [2:0] data;
 rand int arr[5];

 constraint arr_val{unique{arr};
 foreach(arr[i])
 arr[i] inside {[0:10]};

 }
 constraint c1_val{unique{data};}

 function void display();
 $display("The values of data=%0d",data);
 $display("The arr is %0p",arr);
 endfunction

endclass
module test_tb;
 trans tr;
 initial begin
 tr = new();
 repeat(5)begin
 tr.randomize();
 tr.display();
 end
 end
endmodule
Output:
The values of data=5
The arr is '{7, 8, 6, 1, 9}
The values of data=6
The arr is '{9, 4, 7, 0, 2}
The values of data=1
The arr is '{10, 3, 6, 9, 2}
The values of data=2
The arr is '{1, 7, 9, 2, 10}
The values of data=4
The arr is '{1, 7, 4, 10, 5}
Inline Constraint:
Example:
class packet;
 rand bit [2:0] addr;
 rand bit [7:0] data;

 constraint addr_val{addr<6;}
 constraint data_val{data inside {[0:20]};}

Consider that a class already has well written constraints and there is a need to
randomize the class variables with a set of different constraints decided by the user.
By using the with construct, users can declare in-line constraints at the point where the
randomize() method is called.
These additional constraints will be considered along with the object's original
constraints by the solver.
 function void display();
 $display("The values of addr=%0d and data=%0d",addr,data);
 endfunction

endclass
module test_tb;
 packet pkt;
 initial begin
 pkt = new();
 repeat(5)begin
 pkt.randomize with {addr>3; data inside {[5:10]};};
 pkt.display();
 end
 end
endmodule
Output:
The values of addr=4 and data=5
The values of addr=4 and data=9
The values of addr=5 and data=5
The values of addr=5 and data=7
The values of addr=4 and data=10
Soft Constraint:
The normal constraints are called hard constraints because it is mandatory for the
solver to always satisfy them. If the solver fails to find a solution, then the
randomization will fail.
However, a constraint declared as soft gives the solver some flexibility that the
constraint need to be satisfied if there are other contradicting constraints - either
hard or a soft constraint with higher priority.
Example:(Without soft keyword)
class packet;
rand bit[3:0] addr;
rand bit [7:0] data;
constraint addr_val{addr<10;}
constraint data_val{data inside {[0:10]};}
function void display();
$display("The values of addr=%0d and data=%0d",addr,data);
endfunction
endclass
module test_tb;
packet pkt;
initial begin
pkt = new();
repeat(5)begin
pkt.randomize() with {addr>10; data inside {[11:20]};};
pkt.display();
end
Soft constraints are used to specify default valus and distributions for random
variables.
end
endmodule
Output:
Error-[CNST-CIF] Constraints inconsistency failure
Constraints are inconsistent and cannot be solved.
Please check the inconsistent constraints being printed above and rewrite
them.
Example:(With soft keyword)
class packet;
rand bit[3:0] addr;
rand bit[7:0] data;
constraint addr_val{soft addr<10;}
constraint data_val{soft data inside {[0:10]};}
function void display();
$display("The addr=%0d and data=%0d",addr,data);
endfunction
endclass
module test_tb;
packet pkt;
initial begin
pkt = new();
repeat(5)begin
pkt.randomize() with {addr>10;data inside {[11:20]};};
pkt.display();
end
end
endmodule
Output:
The addr=14 and data=14
The addr=11 and data=17
The addr=12 and data=11
The addr=13 and data=13
The addr=14 and data=20











*/







































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































