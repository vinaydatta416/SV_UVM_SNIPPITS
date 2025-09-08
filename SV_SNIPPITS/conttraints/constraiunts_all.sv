/*module data_type;
time a;
initial
begin
$display("default value=%b",a);
$display("type name=",$typename(a));
$display("number of bits=%0b",$bits(a));
$display("size of data type=",$size(a));
end
endmodule*/

/*module even_number();
reg [7:0]number;
initial
begin
number=0;
$display("even numbers:");
for(number=0;number<=18;
number=number+2);
begin
$display("%od", number);
end
end
endmodule*/

/*module findoddnumbers;
initial
begin
for(int number=0; number<=10; number=number+2)
begin
$display("odd number: %od", number);
end
end
endmodule*/

/*module findnaturalnumbers;
reg[7:0] current =1;
initial
begin
while(1)
begin
$display("%d is s natural number", current);
current=current+1;
end
end
endmodule*/

/*module findprimenumbers;
reg [7:0] start = 2;
reg [7:0] end  = 10;
initial
begin
for(int current =start; current<=end; current=current+1)
begin
int is_prime=1;
for(int i=2; i<current; i=i+1)
if(current % i==0)
begin
is_prime=0;
break;
end
end
if(is_prime)
begin
$display(" %d is a prime number", current);
end
end
$finish;
end
endmodule*/

/*module pi value;
real pi;
real freq;
initial
begin
pi=3.14;
freq=1e6;
$display("value of pi =%f", pi);
$display("value of pi=%0.3f", pi);
$display("value of freq=%od", freq);
end
endmodule*/

/*module logic_test(input y);
logic a,b;
assign b='b0;
assign a='b1;
initial
begin
a='b0;
end
endmodule :logic_test
module top;
logic c_out;
logic_test LT(c_out);
endmodule:top*/


/*module test;
int num1,num2,res;
initial
begin
res=num1+num2;
$display("num1=%0d,num2=%0d,result=%od", num1,num2,res);
end
endmodule*/

/*module test;
struct {bit [7:0]r,g,b; int colour;}pixel;
initial
begin
pixel.r=8'd25;
pixel.g=8'd55;
pixel.b=8'd11;
pixel.colour=32'd894;
$display("r=%d,g=%d,b=%d,colour=%d", pixel.r,pixel.g,pixel.b,pixel.colour);
end
endmodule*/

/*module test;
struct {bit [7:0] r,g,b; int colour;} pixel;
initial
begin
pixel.r=8'd25;
pixel.g=8'd55;
pixel.b=8'd11;
pixel.colour=32'd894;
$display("pixel=%p",pixel);
end
endmodule*/


/*module test;
struct {int num1,num2,result;}op;
initial
begin
op.num1=32'd30;
op.num2=32'd25;
op.result=op.num1+op.num2;
$display("data=%p", op);
if(op.result%2)
$display("result is odd");
else
$display("result is even ");
end
endmodule*/

/*module test;
typedef struct { bit[7:0]r,g,b; int colour;} pixel_st;
pixel_st samsung_pixel;
pixel_st sony_pixel;
initial
begin
samsung_pixel.r=8'd25;
samsung_pixel.g = 8'd55;
samsung_pixel.b=8'd11;
sony_pixel='{8'd38,8'd35,8'd95,8'd85};
$display("samsung_pixel=%d,sony_pixel=%d", samsung_pixel,sony_pixel);
endmodule*/

/*module test;
struct {string name;int id;int salary;} emp1,emp2;
initial
begin
emp1. name ="deepika";
emp1.id=32'd30;
emp1.salary=6;
emp2. name ="seshu";
emp2. id=32'd31;
emp2. salary=32'd127;
$display("emp1=%p,emp2=%p",emp1,emp2);
end
endmodule*/

/*module test;
struct {string s1,s2;int f1,f2,tm,p;}s,v;
initial
begin
s.s1="english";
s.s2="hindi";
v.s1="english";
v.s2="hindi";
s.f1=8'd64;
s.f2=8'd22;
v.f1=8'd28;
v.f2=8'd66;
s.tm=s.f1+s.f2;
v.tm=v.f1+v.f2;
s.p=(s.tm*100)/100;
v.p=(v.tm*100)/100;
$display("s.tm=%p,v.tm=%p",s.tm,v.tm);
$display("s.p1=%p,v.p2=%p",s.p,v.p);
end
endmodule*/

/*module test;
struct{int DT[31:0]; bit DTA;}p1,p2,p3;
initial
begin
p1.DT=32'd9;
p1.DTA=1;
p2.DT=32'd70;
p2.DTA=2;
p3.DT=32'd40;
p3.DTA=3;
$display("p1=%d,p2=%d,p3=%d",p1,p2,p3);
end
endmodule*/


/*module test;
logic [7:0]b1=8'b1101zzzz;
byte b2;
b2 = b1;
$write("b1=%b",b1);
$display("b2=5h",b2);
endmodule*/

/*module test;
typedef enum {ini,read,writ,brd,bwr} fsm_state_e;
fsm_state_e pre_state,nxt_state;
pre_state state =read;
    fsm_state_e pre_state=read;
fsm_state_e state=state.first;
initial
forever
begin
$display("%s:%d", state.name,state);
if(state ==state.last())
break;
else
state=state.next();
end
endmodule*/

/*module test;
 enum {ADD,SUB,MUL,OR,AND,XOR} OPCODE;
int num1, num2;
int result;
initial
begin
OPCODE=SUB;
num1=30;
num2=60;
if(OPCODE == ADD)
result = num1+num2;
else if(OPCODE == SUB)
result=num1-num2;
else if(OPCODE == MUL)
result = num1*num2;
else if(OPCODE == OR)
result = num1|num2;
else if(OPCODE == AND)
result = num1&num2;
else if(OPCODE == XOR)
result = num1^num2; 
$display("num1=%0d, num2=%0d, result=%0d", num1,num2,result);
end
endmodule*/

/*module test;
 enum {IP1=10, IP2=31,IP4=51,IP5=60} IP_addr;
int dir=1;
initial
begin
IP_addr=IP2;
if(dir==1)
IP_addr=IP_addr.next;
//else if(dir==0)
IP_addr=IP_addr.pre;
$display("IP_addr=%od");
end
endmodule*/

/*module test;
typedef enum {init,read,write,brd,bwr} fsm_state_e;
fsm_state_e state;
int c;
initial
begin
state=read;
c=state;
state=1;
state=fsm_state_e'(5);
$cast(state,5);
if($cast(state,5))
$display("CASTING IS SCCESSFULL");
else
$display("CASTING IS FAILED");
end
endmodule*/

/*module test;
int i_num;
real r_num;
i_num = '(10.0-0.1);
r_num=rea1'(42);
endmodule*/

/*module test;
 enum {ADD,SUB,MUL,OR,AND,XOR} OPCODE;
int num1,num2;
int res;
initial
begin
num1=30;
num2=60;
begin
case(OPCODE)
ADD:res=num1+num2;
SUB:res=num1-num2;
MUL:res=num1*num2;
OR:res=num1||num2;
AND:res=num1&&num2;
XOR:res=num1^num2;
endcase
$display("result=%0d",res);
end
end
endmodule*/


/*module test;
typedef enum {ADD,SUB,MUL,OR,AND,XOR} opcode_dt;

struct {int num1,num2; int result; opcode_dt opcode;} op1;
initial
begin
op1.opcode=ADD;
op1.num1=50;
op1.num2=20;
if(op1.opcode ==ADD)
op1.result=op1.num1+op1.num2;
else if(op1.opcode==SUB)
op1.result=op1.num1-op1.num2;
else if(op1.opcode==MUL)
op1.result=op1.num1*op1.num2;
else if(op1.opcode==OR)
op1.result=op1.num1|op1.num2;
else if(op1.opcode==AND)
op1.result=op1.num1&op1.num2;
else if(op1.opcode==XOR)
op1.result=op1.num1^op1.num2;
$display("opcode=%s",op1.opcode);
$display("num1=%0d",op1.num1);
$display("num2=%0d",op1.num2);
$display("result=%0d",op1.result);
end
endmodule*/


/*module test;
typedef enum {ADD,SUB,MUL,OR,AND,XOR} opcode_dt;
struct {int num1,num2; int res; opcode_dt opcode;} op1;
initial
begin
op1.opcode=SUB;
op1.num1=50;
op1.num2=20;
begin
case(op1.opcode)
ADD:op1.res=op1.num1+op1.num2;
SUB:op1.res=op1.num1-op1.num2;
MUL:op1.res=op1.num1*op1.num2;
OR:op1.res=op1.num1|op1.num2;
AND:op1.res=op1.num1&op1.num2;
XOR:op1.res=op1.num1^op1.num2;
endcase
$display("result=%0d",op1.res);
$display("num1=%0d",op1.num1);
$display("num2=%0d",op1.num2);
$display("opcode=%s",op1.opcode);
end
end
endmodule*/



/*module test;
typedef enum {init,read,write,brd,bwr} fsm_state_e;
fsm_state_e pre_state, nxt_state;
fsm_state_e state = state.first;
initial
forever
begin
$display("%s:%d", state.name,state);
if(state==state.prev())
break;
state=state.next();
end
endmodule*/


/*module test;
string str;
initial
begin
str="MAVEN_SILICON";
str=str.tolower();
$display("character in 5th position is %s", str.getc(5));
str.putc(5,"-");
$display("%s", str.substr(6,str.len-1));
str={str,".com"};
str={{3{"w"}},".",str};
disp($sformatf("https://%s",str));
end

task disp(string s);
$display("at time t=%0t,%s", $time,s);
endtask
endmodule*/



/*package pkg;
int no_of_trans;
function void display(string s);
$display($time,"%s,n=%0d",s,no_of_trans);
endfunction
endpackage

module A;
import pkg ::*;
initial
begin
#1;
no_of_trans=10;
#1;
display("FROM MODULE A");
end
endmodule

module B;
import pkg ::*;
initial
begin
#4;
no_of_trans=20;
display("FROM MODULE B");
end
endmodule*/


/*package pkg1;
int no_of_trans=10;
endpackage

package pkg2;
int no_of_trans=30;
int value;
endpackage

module mem;
import pkg1::*;
import pkg2::*;
initial
begin
$display("MEM MODULE :n=%0d",pkg1::no_of_trans);
end
endmodule

module cpu;
import pkg1::*;
import pkg2::*;
initial
begin
$display("CPU MODULE :n=%0d",pkg2::no_of_trans);
end
endmodule*/


/*module test;


bit[31:0]var1=32'h12345678;
bit[1:0][15:0]var2=32'h12345678;
bit[3:0][7:0]var3=32'h12345678;
bit[1:0][3:0][3:0]var4=32'h12345678;
initial
begin
$display("var1=%h",var1);
$display("var[8]=%h",var1[8]);
$display("var2[1]=%h",var2[1]);
$display("var2[1][2]=%h",var2[1][2]);
$display("var3[1][2]=%h",var3[1][2]);
$display("var3[1]=%h",var3[1]);
$display("var4[1][2]=%h",var4[1]);
end
endmodule*/




/*module test;
int a;
real b;
real x;
initial
begin
a=12;
b=17;
x=a/b;
$display("number is %.2f",x);
end
endmodule*/



/*package pkg1;
int no_of_trans;
endpackage
package pkg2;
int no_of_trans;
endpackage

module A;
import pkg1::*;
import pkg2::*;
initial
begin
no_of_trans=30;
$display(" MODULE A")
end
endmodule

module B;
import pkg1::*;
import okg2::*;
initial
begin
no_of_trans=40;
$display(" MODULE B");
end
endmodule*/




/*module test;
string str,str1;
initial
begin
str="deepika";
$display("character in 5th position is %s", str.getc(5));
str.putc(5,"-");
$display("%s", str.substr(6,str.len-1));
str={str,".com"};
str1={{3{"w"}},".",str};
disp($sformatf("https://%s",str));
end
task disp(string s);
$display("at time t=%0t,%s",$time,s);
endtask
endmodule*/


/*package ram_pkg;
int number_of_transactions=1;
'include "ram_trans.sv"
'include "ram_gen.sv"
'include "ram_write_bfm.sv"
'include "ram_read_mon.sv"
'include "ram_model1.sv"
endpackage*/


/*module test;
bit [3:0][7:0] bytes [0:2];
initial
begin
bytes[0] = 32'd255;
//bytes[0][3]=8'd12;
//bytes[0][1][6]=1'b1;
$display("%h",bytes[0]);
end
endmodule*/


/*module test;
logic [31:0] msrc[5],mdst[5];
initial
begin
for(int i=0; i<$size(msrc); i++)
msrc[i]=i;
foreach(mdst[j])
mdst[j] = msrc[j]* 4;
end
endmodule*/


/*module test;
int mda[3][3]='{'{0,1,2},
'{3,4,5},'{6,7,8}};
initial
begin
foreach(mda[i,j])
$display("mda[%0d][%0d]=%0d",i,j,mda[i][j]);
end
endmodule*/


/*module test;
bit [31:0] msrc[5]={0,1,2,3,4},
mdst[5]={5,4,3,2,1};
initial
begin
if(msrc==mdst)
$display("msrc is equal to mdst");
else 
$display("msrc is not equal to mdst");
mdst[0:3]=msrc[0:3];
if(msrc[1:4]==mdst[1:4])
$display("msrc is equal to mdst");
else 
$display("msrc is not equal to mdst");
end
endmodule*/


/*module test;
int da1[],da2[];
initial
begin
da1=new[10];
foreach(da1[i])
da1[i]=i;
da2=da1;
da1=new[30](da1);
da1=new[100];
da2.delete();
end
endmodule*/


/*module test;
int qm1[$]={1,3,4,5,6};
int qm2[$]={2,3};
int k=2;
initial
begin
qm1.delete(1);
qm1.push_front(7);
qm2.push_back();
foreach(qm1[i])
$display(qm1[i]);
qm2.delete();
end
endmodule*/




/*module test;
int amem [int];
initial
begin
amem[2]=1;
amem[100]=5;
amem[5]=60;
amem[200]=89;
if(amem.exists(5))
$display("entry exists in mem, whose value is %d", amem[5]);
else
$display("no entry");
$display("number of entries in array is %0d", amem.num);
end
endmodule*/





/*module test;
int cnt,sa;
int da[]={10,1,8,3,5,5};

cnt = da.sum with (item>7);
sa = da.sum with (item==5);

int da[]={10,1,7,3,4,4};
da.reverse();
da.sort();
da.rsort();
da.shuffle();

endmodule*/

/*module tb;
bit [3:0] [7:0] stack [2][4];
bit stack;
initial
begin
foreach(stack[i])
foreach (stack[i][j])
begin
stack[i][j]=$random;
$display("stack[%0d][%0d]=0*%0h",i,j,stack[i][j]);
end
$display("stack =%p",stacK);
$display("stack[0][0[2] =0*%0h",stack[0][0][2]);
end
endmodule*/


/*module test;
int num1[],num2[];
int result[$];
initial
begin
num1=new[10];
num2=new[10];
foreach(num1[i])
begin
num1[i]=$urandom%50;
num2[i]=$urandom%20;
result.push_back(num1[i]+num2[i]);
end
$display("num1=",num1);
$display("num2=",num2);
$display("result=",result);
end
endmodule*/



/*module test;
enum {ADD,SUB,MUL,OR,AND,XOR}opcode;

int num1[],num2[];
int result[$];
initial
begin
opcode=SUB;
num1=new[10];
num2=new[10];
foreach(num1[i])
begin
num1[i]={$urandom}%50;
num2[i]=$urandom%20;
if(opcode==ADD)
result.push_back(num1[i]+num2[i]);
else if(opcode==SUB)
result.push_back(num1[i]-num2[i]);
else if(opcode==MUL)
result.push_back(num1[i]*num2[i]);
else if(opcode==OR)
result.push_back(num1[i]|num2[i]);
else if(opcode==XOR)
result.push_back(num1[i]^num2[i]);
end
$display(opcode.name);
$display("num1=",num1);
$display("num2=",num2);
$display("result=",result);
end
endmodule*/



/*module test;
int array[*];
bit[3;0]a=5;
int b=100;
string s="abc";
initial
begin]array[a]=100;
array[b]=1000;
array[s]=56;
end
endmodule*/


/*module test;
string a1[string];
string idx;
initial
begin 
a1={"APPLE:red","GRAPES:green","MANGO:yellow"};
$display("array=%p",a1);
$display("total entries is=%d",a1.num());
if(a1.exists("avacado"))
$display("yes it is");
if(a1.first(idx))
$display("first elsement of a1[%s]=%s",idx,a1[idx]);
if(a1.last(idx))
$display("last element of a1[%s]=%s",idx,a1[idx]);
idx="MANGO";
if(a1.next(idx))
$display("next element ofa1[%s]=%s",idx,a1[idx]);
if(a1.prev(idx))
$display("previous element of a1[%s]=%s",idx,a1[idx]);
end
endmodule*/



/*module test;
int ar[*];
int a=5;
bit[3:0]b=15;
string s="abc";
initial
begin
ar[a]=10;
ar[b]=67;
ar["abc"]=89;
$display(ar["abc"]);
foreach(ar[i]);
$display(ar[i]);
end
endmodule*/




/*module test;
bit[1:0] [3:0] pkd_da[]=new[3]({'h77,'h65,'h64});
initial
begin
$display("pkd_da=%p",pkd_da);
$display("pkd_da[%0d]=%0h",1,pkd_da[1]);
$display("pkd_da[%0d][%0d]=%0d",1,0,pkd_da[1][0]);
$display("pkd_da[%0d][%0d][%0d]=%0d",1,0,3,pkd_da[1][0][3]);
end
endmodule*/


/*module test;
int mem1[];
int mem2[]=new[6];
int mem3[]=new[4]({67,33,82,33});
initial
begin
$display("default size of initialised dynamic array mem1=%0d",$size(mem1));
mem1=new[5];
mem1={12,34,56,67,34};
$display("content of mem1%p",mem1);
foreach(mem2[i])
$display("mem2=%0p",mem2);
for (int i=0; i<$size(mem3); i++)
mem1=mem2;
$display("mem1 after copying mem2 %p", mem1);
mem2=new[20];
$display("mem2 after setting size to 20 %p", mem2);
mem1=new[25](mem1);
$display("mem1 after setting size to 25 and presenting the previous data %p",mem1);
$display("size of mem1 by using method size()=%0d", mem1.size());
mem1=new[mem1.size()*2](mem1);
$display("size of dynamic array mem1 after douling the size =%0d", mem1.size());
 mem1.delete();
$display("size of dynamic array mem1 after detecting =%0d", mem1.size());
end
endmodule*/


/*module test;
logic [31:0] array1[8],array2[7:0],array3[0:7];
initial
begin
foreach(array1[i])
array1[i]=i;
$display("%h",array1[0]);
foreach(array2[j])
array2[j]=j;
foreach(array3[k])
array3[k]=k;
end
endmodule*/


/*module test;
int da[],da1[];
initial
begin
da=new[2*10];
foreach(da[i])
da[i]=i;
$display("da=%p",da);
end
endmodule*/




/*module test;
int mem2d[][2];
int mem3d[][2];
int mem_DA[][];
initial
begin
mem2d=new[5];
foreach(mem2d[i,j])
mem2d[i][j]=j;
$display("mem1=%p",mem2d);
$display("2D matrix display using foreach loop");
foreach(mem2d[i,j])
$display("mem[%0d][%0d]=%0d",i,j,mem2d[i][j]);
$display("2D matrix display using for loop");
for(int i=0;i<5; i++)
for(int j=0; j<2; j++)
$display("mem[%0d[%0d]=%0d",i,j,mem2d[i][j]);
$display("2D matrix display in matrix form");
foreach (mem2d[i])
begin
foreach(mem2d[,j])
$write("%0d",mem2d[i][j]);
$display;
end
mem3d=new[3];
$display("3D matrix");
foreach(mem3d[i,j,k])
begin
mem3d[i][j][k]=$urandom%40;
$display("mem3d[%0d][%0d][%0d]=%0d",i,j,k,mem3d[i][j][k]);
end
mem_DA=new[5];
foreach(mem_DA[i])
mem_DA[i]=new[3];
$display("2D matrix display using 2 dynamic dimentions");
foreach(mem_DA[i,j])
begin
mem_DA[i][j]=$random%40;
$display("mem_DA[%0d][%0d]=%0d",i,j,mem_DA[i][j]);
end
end
endmodule*/



/*module test;
int q1[$];
int q2[$]={12,34,56,78,67};
int q4[$:128];
int result [];
int k,q_size;
initial
begin
$display("size of un-intialised unbounded queue=%0d",q1.size());
$display("size of un-initialised bounded queue=%0d",q3.size());
$display("size of intialised bounded queue=%0d",q2.size());
$display("push front mechanism in q1");
for(int i=0;i<6; i++)
begin
q1.push_front(i+10);
$display(q1)
end
$display("push back mechanism in q3");
for(int i=0; i<4; i++)
begin
q3.push_back(i+10);
$display(q3)
end
$display("display of using %%p");
$display("content of queue1=%p",q1);
$display("content of queue2=%p",q2);
$display("content of queue3=%p",q30;
$display("size of q1=%0d,q2=%0d,q3=%0d",q1.size,$size(q2),$size(q3));
k=1;
q1.insert(q1.size,q2[k]);
$display('content of q1 after inserting q2[%0d]=%0p",k,q1);
k=2;
q1={q1,q2[k]};
$display("content of q1 after inserting q2[%0d]=%p',k,q1);
$display("popping queue using foreach loop");
result=new[q1.size()];
foreach {q1[i])
begin
result[i]=q1.pop_front;
$display("q1 after popping q1[%0d]=%p",new imax=%0d",i,q1,q1.size());
$display("result =%p",result);
end
$display(poppin*/



/*module top;
int i_num1;
int r_num2;
initial
begin
i_num1=int '(10.0-1.0);
$display("the integer value is:%0d",i_num1);
r_num2=int'(5/3);
$display("the integer value is:%0d",r_num2);
end
endmodule*/













//ASSIGNMENT 1 ANSWERS



/*module test;
int da[]={10,2,3,4,7,6,8};
initial
begin
da.sort();
$display("sorting of array:");
end
endmodule*/

/*module test();
typedef enum bit[2:0] {ENUM_VAL0, ENUM_VAL1,ENUM_VAL2, ENUM_VAL3} my_enum_t;
initial
begin
my_enum_t my_enum_var=ENUM_VAL3;
$display("current enum value:%0s", my_enum_var.name());
my_enum_var=my_enum_var.next();
$display("next enum value:%0s", my_enum_var.name());
end
endmodule*/


/*module test;
int k, q[$] ='{1,2,3,4,5,6};
initial
begin
foreach(q[i])
begin
k=q.pop_back();
$display("%d",k);
end
$display("%p",q);
end
endmodule :test*/


/*module test;
int k, q[$]='{1,2,3,4,5,6};
initial
begin
for(int i=0; i<7; i++)
begin

k=q.pop_back();
$display("%0d",k);
end
$display("%0p",q);
end
endmodule*/


/*module test;
int packet[5]={1,2,3,4,5};
int result;
result=packet.sum with (int'(item%2==0));
$display("result=%0d");
result=packet.product with (int'(item%2==0)?item:1));
$display("result=%0d");
endmodule*/




/*module test;
int q1[$]='{0,1,5,6,7,8};
int q2[$]='{2,3,4};
initial
begin
q1={q1,q2};
//q1={q1[0:1],q2[2:$]};
$display("%p",q1);
end
endmodule*/













/*module test();
int a=5,b=7;
int sum,double;
function int summation(input[3:0]x,input[3:0]y,output[5:0]z);
summation=x+y;
z=2*summation;
endfunction
function void display();
$display("sum is%0d and doubled value is %0d",sum,double);
endfunction
initial
begin
sum=summation(a,b,double);
display();
end
endmodule*/


/*module test;
function integer mult(int a,int b);
if((a==0)||(b==0))
begin
$display("dont multiply with zero");
return 'hx;
$display("attempt made for multiplaying with zero is failed");
end
else
mult=a*b;
endfunction
task print_status(int errors);
if((errors==0))
begin
$display("no errors have been reported");
return;
$display("the number of errors is %0d",errors);
end
endtask
endmodule*/


/*module test;
int da[];
initial
begin
da=new[50];
foreach(da[i])
da[i]={$random}%50;
$dsiplay("da=%p",da);
da=da.find with (item>30);
$display("find item greater then : %0d", da);
end
endmodule*/




/*module test;
initial
begin
int da[]={1,5,3,4,5,6,7};
for(int i=0; i<$size(da); i++)
begin
for(int j=i+1; j<$size(da); j++)
begin
da[i]=da[i]+da[j];
da[j]=da[i]-da[j];
da[i]=da[i]-da[j];
$display("queue=%0d",da[i]);
end
$display("da[i]=%d",da[i]);
$display("%p",da);
end
end
endmodule*/

/*module test;
task double(int a,string s);
#5;
$display($time,"s=%s a=%d", s,a);
endtask
initial
fork
begin
double(5,"FROM THREAD 1:");
end
begin
double(4,"FROM THREAD 2:");
end
join
endmodule*/



/*module test;
task automatic double(int a,string s);
#5;
a=a*2;
$display($time, " s=%s a=%d", s,a);
endtask
initial
fork
begin
double(5, " FROM THREAD 1:");
end
begin
#2;
double(4," FROM THREAD 2:");
end
join
endmodule*/




/*module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(2,3,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(2,4,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/





/*module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(ref int a,ref int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   ini
   
   *//
   
   
   
///////////////////////////////////////////Assinment1111111111111\\\\\\\\\\\\\\\\\\\\\


/*module test;
int da[]={10,2,3,4,7,6,8};
initial
begin
da.sort();
$display("sorting of array:");
end
endmodule*/

/*module test();
typedef enum bit[2:0] {ENUM_VAL0, ENUM_VAL1,ENUM_VAL2, ENUM_VAL3} my_enum_t;
initial
begin
my_enum_t my_enum_var=ENUM_VAL3;
$display("current enum value:%0s", my_enum_var.name());
my_enum_var=my_enum_var.next();
$display("next enum value:%0s", my_enum_var.name());
end
endmodule*/


/*module test;
int k, q[$] ='{1,2,3,4,5,6};
initial
begin
foreach(q[i])
begin
k=q.pop_back();
$display("%d",k);
end
$display("%p",q);
end
endmodule :test*/


/*module test;
int k, q[$]='{1,2,3,4,5,6};
initial
begin
for(int i=0; i<7; i++)
begin

k=q.pop_back();
$display("%0d",k);
end
$display("%0p",q);
end
enmodule




/*module test;
int q1[$]='{0,1,5,6,7,8};
int q2[$]='{2,3,4};
initial
begin
q1={q1,q2};
//q1={q1[0:1],q2[2:$]};
$display("%p",q1);
end
endmodule*/


/*module top;
int i_num1;
int r_num2;
initial
begin
i_num1=int '(10.0-1.0);
$display("the integer value is:%0d",i_num1);
r_num2=int'(5/3);
$display("the integer value is:%0d",r_num2);
end
endmodule*/






///////////////////////////////////////////////ASSIGNMENT 222\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
/*module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(2,3,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(2,4,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/





/*module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(ref int a,ref int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       //mult(2,3,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       //mult(2,4,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/






/*module test;
 int d,result;
  int a=2,b=3;
  
   function  mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/



/*
module test;
 int d,result;
  int a=2,b=3;
  
   task automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endtask
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/




/*
module test;
 int d,result;
  int a=2,b=3;
  
   task automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
        $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endtask
 
   initial
     fork 
      begin
       #1;
       mult(2,3,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(2,4,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/




/*class pass_by_ref;
  int refr=2;
  int val=2;

   function automatic int check_refer(ref int r);
                  $display("pass by ref");
                  $display("initial value of refr=%d",r);
                  r++;
                  $display("after incrementing %d",r);
  endfunction
  function int check_value(int v);
                  $display("pass by value");
                  $display("initial value of value=%d",v);
                  v++;
                  $display("after incrementing %d",v);
   endfunction
endclass

pass_by_ref h1;
module test;
 initial
  begin
   h1=new();
   h1.check_refer(h1.refr);
   h1.check_value(h1.val);
   $display("inside memory");
   $display("%d",h1.refr);
   $display("%d",h1.val);
   end
endmodule*/





module test;
 task dummy_task(input int x,string str);
   fork
     begin
       #x;
     end
     begin
       #10;
     end
    join_any
    disable fork;
    $display("%s:%t",str,$time);
    endtask
   initial
    fork
      begin
        #2;
        dummy_task(5,"call_1");
       end
       begin
        #1;
        dummy_task(15,"call_2");
       end
     join
  endmodule
`



/*
module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(2,3,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(2,4,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/




/*
module test;
 int d,result;
  int a=2,b=3;
  
   function automatic mult(ref int a,ref int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       //mult(2,3,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       //mult(2,4,d);
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/



/*
module test;
 int d,result;
  int a=2,b=3;
  
   function  mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endfunction
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule
*/



/*module test;
 int d,result;
  int a=2,b=3;
  
   task automatic mult(input int a,input int b,output int c);
       c=(a*b)+2;
       a++;
       $display("inside function");
       $display("$time =%d,a=%d,b=%d,c=%d",$time,a,b,c);
   endtask
 
   initial
     fork 
      begin
       #1;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
      begin
       #2;
       mult(a,b,d);
       $display("//////");
       $display("$time =%d,a=%d,b=%d,d=%d",$time,a,b,d);
      end
   join
endmodule*/



/*module test;
int ma=20;
function void pass_by_value(int fa);
fa=fa*2;
$display("inside the function pass_by_value fa=%d", fa);
endfunction : pass_by_value

function automatic void pass_by_ref(ref int fa);
fa=fa*2;
$display(" inside the function pass_by_ref fa=%d",fa);
endfunction:pass_by_ref

initial
begin
pass_by_value(ma);
$display("after calling the function pass_by_value ma=%d", ma);
pass_by_ref(ma);
$display("after calling the function pass_by_ref ma=%d", ma);
end
endmodule:test*/

 
 
 // Define a class 'packet' to hold random variables and constraints
class packet;
  
  // Declare random integer arrays for generating specific patterns
  rand int p[20], q[20], r[20];
  
  // Constraint for pattern 000100010001...
  // Every group of 4 bits: first 3 bits are 0, and the 4th bit is 1
  constraint c1 { 
    foreach (p[i]) 
      if (i % 4 < 3) 
        p[i] == 0; 
      else 
        p[i] == 1;
  }
  
  // Constraint for pattern 001100110011...
  // Every group of 4 bits: first 2 bits are 0, and the next 2 bits are 1
  constraint c2 { 
    foreach (q[i]) 
      if (i % 4 < 2) 
        q[i] == 0; 
      else 
        q[i] == 1;
  }
  
  // Constraint for pattern 112211221122...
  // Every group of 4 bits: first 2 bits are 1, and the next 2 bits are 2
  constraint c3 { 
    foreach (r[i]) 
      if (i % 4 < 2) 
        r[i] == 1; 
      else 
        r[i] == 2;
  }
  
  // Declare another random integer array for generating incremental patterns
  rand int a[20];
  
  // Constraint for pattern 00112233...
  // Every two consecutive elements are the same and increment every 2 indices
  constraint c4 { 
    foreach (a[i]) 
      a[i] == i / 2; 
  }
  
endclass

// Define the testbench module
module tb;
  initial begin
    // Create an object of the 'packet' class
    packet pk = new();
    
    // Randomize the object to generate values satisfying the constraints
    pk.randomize();
    
    // Display the generated patterns
    $display("===== Pattern 000100010001: %p", pk.p);
    $display("===== Pattern 001100110011: %p", pk.q);
    $display("===== Pattern 112211221122: %p", pk.r);
    $display("===== Pattern 00112233: %p", pk.a);
  end
endmodule


///* ---even-----
clas




s Packet;

  rand bit[7:0] payload[]; //dynamic array

  constraint packet_cnstr {
     payload.size inside {[2:5]};
     payload.sum == 100;
     foreach (payload[kk])
        payload[kk] inside {[1:100]}; // non-negative integers
  }

endclass
module test;
initial
begin
   repeat (5) begin // generate 5 packets
        Packet p1;
        p1 = new();
	end
        if (p1.randomize()) begin
           $write("payload has %0d elements: ", p1.payload.size);
           for (int ii=0; ii < p1.payload.size; ii++)
              $write("%2d ", p1.payload[ii]);
           $display;
        end else begin
           $display("randomization failed");
        end
end
endmodule
/*
initial
begin
a3=new;
begin
for(int i=0;i<)
assert(a3.randomize());
$display("the value %p",a3);
end
endmodule
*/
/---------------odd--------------/
/*
class b1;
rand int a[];
constraint a1{a.size==(10);}
constraint a2{foreach (a[i])
                        if(i%2==1)
                                a[i]==i;}
endclass
b1 a3;
module test;
initial
begin
a3=new;
assert(a3.randomize());
$display("the value %p",a3.a);
end
endmodule
*/
/*----------------natural no and twice odd no---------
class b1;
rand int a[];
constraint a1{a.size==(10);}
constraint a2{foreach (a[i])
                        if(i%2==0)
                            a[i]==i; // a[i]==i; // a[i]==i+1;
			else if(i%2==1)
				a[i]==i+1;}
endclass
b1 a3;
module test;
initial
begin
a3=new;
assert(a3.randomize());
$display("the value %p",a3.a);
end
endmodule

*/



/*class b1;
rand bit[7:0] a[];
constraint a1{a.size==(10);}
constraint a2{foreach (a[i])
                        if(i%2==0)
                                a[i]==i;}
endclass
b1 a3;
module test;
initial
begin
a3=new;
assert(a3.randomize());
$display("the value %d",a3);
end
endmodule*/

/*
class PhoneNumber;
  rand bit [2:0] area_code;
  rand bit [2:0] first_part;
  rand bit [3:0] second_part;

  constraint valid_area_code {
    area_code inside {[2:9]};
  }

  constraint valid_first_part {
    first_part inside {[0:9]};
  }

  constraint valid_second_part {
    second_part inside {[0:9]};
  }

  function void print();
    $display("Phone Number: (%0d) %0d-%0d", area_code, first_part, second_part);
  endfunction
endclass

module test;
initial
repeat(10)
begin
    PhoneNumber num;
    num = new;
    num.randomize();
num.print();
end
endmodule
*/






/*
                                                                                                                                                                                                                                                                                                                                             ss PhoneNumber;
  rand bit  [3:0]  area_code;
   rand bit [3:0]  number;

  //constraint valid_area_code {
  //  area_code inside {[2:9]};}
constraint valid_area_code {
   area_code <=9;}

 //constraint valid_number{
   //    number inside{[9:0]};}
 constraint valid_number{number<=9;}

 function void print();
    
          endfunction
endclass
PhoneNumber num=new;

module test;
initial
 repeat(10)
begin
         
    //num = new;
    num.randomize();
   $display("phone number : %d  ",num);
  $display("area code : %d", num); 
num.print();
end
endmodule
*/
/*
class PhoneNumber;
  rand bit  [2:0]  area_code;
   rand bit [3:0]  number;

  //constraint valid_area_code {
  //  area_code inside {[2:9]};}
constraint valid_area_code {
   area_code <=9;}

 //constraint valid_number{
   //    number inside{[9:0]};}
 constraint valid_number{number<=9;}

 function void print();
    
          endfunction
endclass
PhoneNumber num=new;

module test;
initial
 repeat(10)
begin 
    num.randomize();
   $display("phone number : %d",num.number);
   $display("area code : %d", num.area_code); 
num.print();
end
endmodule 
*/



class count_trans;
      
   rand bit [3:0] data_in;
   rand bit mode;
   rand bit reset;
   rand bit load;
   
   bit [3:0] data_out;
 
   static int trans_id;
  
   constraint VALID_RESET { reset dist{1:=30,0:=70};}
   constraint VALID_LOAD { load dist{1:=60, 0:=50};}
   constraint VALID_MODE  {mode dist{1:=60, 0:=50};}
   constraint VALID_DATA { data_in inside{[0:9]};}

   function void post_randomize();
      trans_id++;
      this.display("\tRANDOMIZED DATA");
   endfunction: post_randomize

   virtual function void display(input string message);
      $display("=============================================================");
      $display("%s",message);
      if(message=="\tRANDOMIZED DATA")
         begin
            $display("\t_");
            $display("\tTransaction No. %d",trans_id);
            $display("\t_");
         end
      $display("\tReset=%d",reset);
      $display("\tMode=%d, load=%d",mode,load);
      $display("\tData_in=%d",data_in);
      $display("\tData_out= %d",data_out);
      $display("=============================================================");
   endfunction: display

endclass: count_trans



















class count_drv;

   virtual count_if.WR_DRV_MP wr_drv_if;
 
   count_trans data2duv;
 
   mailbox #(count_trans) gen2wr;  

   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                mailbox #(count_trans) gen2wr);
      this.wr_drv_if = wr_drv_if;
      this.gen2wr    = gen2wr;
   endfunction: new

   virtual task drive();
      @(wr_drv_if.wr_drv_cb);
      wr_drv_if.wr_drv_cb.reset <= data2duv.reset;
      wr_drv_if.wr_drv_cb.mode <= data2duv.mode;
      wr_drv_if.wr_drv_cb.load <= data2duv.load;

      wr_drv_if.wr_drv_cb.data_in    <= data2duv.data_in;
     
   endtask: drive
  
   virtual task start();

      fork
         forever
            begin
               gen2wr.get(data2duv);
               drive();
            end
      join_none
   endtask: start

endclass


















class count_gen;

    count_trans gen_trans;

    count_trans data2send;

    mailbox #(count_trans) gen2wr;
 
    function new(mailbox #(count_trans) gen2wr);
      this.gen_trans = new;
      this.gen2wr = gen2wr;
   endfunction: new

   virtual task start();
       
      fork
         begin
            for(int i=0; i<number_of_transactions; i++)
               begin       
                  assert(gen_trans.randomize()); 
                  data2send = new gen_trans;
                  gen2wr.put(data2send);
               end
         end
      join_none
   endtask: start

endclass: count_gen
























interface count_if(input bit clock);

bit reset;
bit load;
bit mode;
bit [3:0]data_in;
bit [3:0]data_out;


	//clocking block for duv
	/*clocking duv_cb@(posedge clock);
		default input #1 output #1;
		input reset;
		input load;
		input mode;
		input [3:0]data_in;
		output [3:0]data_out;
	endclocking:duv_cb*/


	//clocking block for write driver
	clocking wr_drv_cb@(posedge clock);
		default input #1 output #1;
		output reset;
		output load;
		output mode;
		output data_in;
	endclocking:wr_drv_cb


	//clocking block for read monitor
	clocking rd_mon_cb@(posedge clock);
		default input #1 output #1;
		input data_out;
	endclocking:rd_mon_cb

	
	//clocking block for write monitor
	clocking wr_mon_cb@(posedge clock);
		default input #1 output #1;
		input reset;
		input load;
		input mode;
		input data_in;
		//input data_out;
	endclocking:wr_mon_cb

	//modport for DUV
	//modport DUV(clocking duv_cb);
	//modport for write driver
	modport WR_DRV_MP(clocking wr_drv_cb);
	//modport for write monitor
	modport WR_MON_MP(clocking wr_mon_cb);
	//modport for read monitor
	modport RD_MON_MP(clocking rd_mon_cb);

endinterface
















class count_model;
   
   count_trans wrmon_data;
   count_trans rdmon_data;

   logic [3:0] ref_data=0;
 
   mailbox #(count_trans) wr2rm;
   mailbox #(count_trans) rm2sb;

   function new(mailbox #(count_trans) wr2rm,
                mailbox #(count_trans) rm2sb);
      this.wr2rm = wr2rm;
      this.rm2sb = rm2sb;
      this.rdmon_data=new;
   endfunction: new
   
   virtual task store(count_trans wrmon_data);
      begin
		if(wrmon_data.reset)
			ref_data <=0;
		else if(wrmon_data.load)
			ref_data <=wrmon_data.data_in;
		else begin
			case(wrmon_data.mode)
			
				0:begin
					if(ref_data==0)
						ref_data<=9;
					else
						ref_data <=ref_data--;
				end
				1:begin
					if(ref_data >= 9)
						ref_data<=0;
					else
						ref_data <=ref_data++;
				end
			endcase
		end
	end
   endtask: store
  
   virtual task start();
          fork 
            begin
                  forever 
                     begin
                        wr2rm.get(wrmon_data);
                        store(wrmon_data);
			wrmon_data.data_out=ref_data;
			rm2sb.put(wrmon_data);
                    end
               end
      join_none
   endtask: start

endclass

























class count_rd_mon;

   virtual count_if.RD_MON_MP rd_mon_if;

   count_trans rddata, data2sb;

   mailbox #(count_trans) mon2sb;
   
   function new(virtual count_if.RD_MON_MP rd_mon_if,
                mailbox #(count_trans) mon2sb);
      this.rd_mon_if = rd_mon_if;
      this.mon2sb    = mon2sb;
      this.rddata    = new;
   endfunction: new


   virtual task monitor();
      @(rd_mon_if.rd_mon_cb);
      begin
         rddata.data_out = rd_mon_if.rd_mon_cb.data_out;
         rddata.display("DATA FROM READ MONITOR");    
      end
   endtask: monitor
   
   virtual task start();
      fork
         forever
            begin
               monitor(); 
               data2sb = new rddata;
               mon2sb.put(data2sb);
            end
      join_none
   endtask: start

end


endclass




















class count_sb;
   
   event DONE; 

   int data_verified = 0;
  
   count_trans rm_data;  
   count_trans rcvd_data;
   count_trans cov_data;

   mailbox #(count_trans) rm2sb;     
   mailbox #(count_trans) rdmon2sb;      
     covergroup count_coverage;
      option.per_instance=1;     

      RESET : coverpoint cov_data.reset;

      LOAD : coverpoint cov_data.load;
/*{
			bins a={[0:1]};}
*/
      MODE : coverpoint cov_data.mode;
      DATA : coverpoint cov_data.data_in{
	  	     bins ZERO     = {0};
                     bins HIGH      = {[1:4]};
 		     bins HIGH2     = {[5:8]};
                     bins MAX      = {9};
					}   
      LOADXDATA: cross LOAD,DATA;
      MODExLOADxDATA: cross MODE,LOAD,DATA; 
      
   endgroup : count_coverage

   function new(mailbox #(count_trans) rm2sb,
                mailbox #(count_trans) rdmon2sb);
      this.rm2sb    = rm2sb;
      this.rdmon2sb = rdmon2sb;
      count_coverage  = new;    
   endfunction: new
  
   virtual task start();
         fork
         while(1)
            begin
               rm2sb.get(rm_data);
               //rm_data_count++;
               rdmon2sb.get(rcvd_data);   
               //mon_data_count++;    
               check(rcvd_data);
            end
      join_none
   endtask: start

   virtual task check(count_trans rc_data);

      if(rc_data.data_out == rm_data.data_out) 
      	    $display("COUNT MATCHS");
            
      else
	$display("COUNT DOSE NOT MATCH");
       
       cov_data = new rm_data;
       count_coverage.sample();

       data_verified++;
            
      if(data_verified >= (number_of_transactions+2))
        begin             
             ->DONE;
          end
    endtask: check

   virtual function void report();
      $display(" ------------------------ SCOREBOARD REPORT ----------------------- \n ");
      $display(" Data Verified \n",data_verified);
      $display(" ------------------------------------------------------------------ \n ");
   endfunction: report
    
endclass
















class count_trans;
      
   rand bit [3:0] data_in;
   rand bit mode;
   rand bit reset;
   rand bit load;
   
   bit [3:0] data_out;
 
   static int trans_id;
  
   constraint VALID_RESET { reset dist{1:=30,0:=70};}
   constraint VALID_LOAD { load dist{1:=60, 0:=50};}
   constraint VALID_MODE  {mode dist{1:=60, 0:=50};}
   constraint VALID_DATA { data_in inside{[0:9]};}

   function void post_randomize();
      trans_id++;
      this.display("\tRANDOMIZED DATA");
   endfunction: post_randomize

   virtual function void display(input string message);
      $display("=============================================================");
      $display("%s",message);
      if(message=="\tRANDOMIZED DATA")
         begin
            $display("\t_");
            $display("\tTransaction No. %d",trans_id);
            $display("\t_");
         end
      $display("\tReset=%d",reset);
      $display("\tMode=%d, load=%d",mode,load);
      $display("\tData_in=%d",data_in);
      $display("\tData_out= %d",data_out);
      $display("=============================================================");
   endfunction: display

end

endclass











class count_wr_mon;

   virtual count_if.WR_MON_MP wr_mon_if;

   count_trans wrdata;
   count_trans data2rm;

   mailbox #(count_trans) mon2rm;
  
   function new(virtual count_if.WR_MON_MP wr_mon_if,
                mailbox #(count_trans) mon2rm);
      this.wr_mon_if = wr_mon_if;
      this.mon2rm    = mon2rm;
      this.wrdata    = new;
   endfunction: new


   virtual task monitor();
      @(wr_mon_if.wr_mon_cb);
      begin
         wrdata.reset = wr_mon_if.wr_mon_cb.reset;
         wrdata.mode  =  wr_mon_if.wr_mon_cb.mode;
         wrdata.load = wr_mon_if.wr_mon_cb.load;
	 wrdata.data_in = wr_mon_if.wr_mon_cb.data_in;
	 //wrdata.data_out = wr_mon_if.wr_mon_cb.data_out;
         wrdata.display("DATA FROM WRITE MONITOR");
      
      end
   endtask: monitor
             
   virtual task start();

      fork
         forever
            begin
               monitor();   
               data2rm = new wrdata;
               mon2rm.put(data2rm);
            end
      join_none
   endtask: start

endclass










package count_pkg;

   int number_of_transactions = 1;
 
	`include "count_trans.sv"
	`include "count_gen.sv"
	`include "count_drv.sv"
	`include "count_wr_mon.sv"
	`include "count_rd_mon.sv"
	`include "count_model.sv"
	`include "count_sb.sv"
	`include "count_env.sv"
	`include "test.sv" 
endpackage



















`include "test.sv"
module top();  
  
   import count_pkg::*;  
   parameter cycle = 10;
  
   reg clock;

   count_if DUV_IF(clock);

   count_base_test base_test_h;
   
   count_test_extnd1 ext_test_h1;

   count_test_extnd2 ext_test_h2;

  
   count COUNTER (.clock(clock),.reset(DUV_IF.reset),.load(DUV_IF.load),.mode(DUV_IF.mode),.data_in(DUV_IF.data_in),.data_out(DUV_IF.data_out)); 

   initial
      begin
         clock = 1'b0;
         forever #(cycle/2) clock = ~clock;
      end
   
   initial
      begin
	 
	`ifdef VCS
         $fsdbDumpvars(0, top);
        `endif

	//Create the objects for different testcases and pass the interface instances as arguments
         //Call the virtual task build and virtual task run       
         if($test$plusargs("TEST1"))
            begin
               base_test_h = new(DUV_IF, DUV_IF, DUV_IF);
               number_of_transactions = 500;
               base_test_h.build();
               base_test_h.run();
               $finish;
            end

         if($test$plusargs("TEST2"))
            begin
               ext_test_h1 = new(DUV_IF, DUV_IF, DUV_IF);
               number_of_transactions = 1000;
               ext_test_h1.build();
               ext_test_h1.run(); 
               $finish;
            end
	if($test$plusargs("TEST3"))
            begin
               ext_test_h2 = new(DUV_IF, DUV_IF, DUV_IF);
               number_of_transactions = 100;
               ext_test_h2.build();
               ext_test_h2.run(); 
               $finish;
            end


      end
endmodule



















//import count_pkg::*;
class count_trans_extnd1 extends count_trans; 
	constraint valid_data {data_in inside{[0:2]};}
	constraint valid_reset{reset inside{0,1} ;}
	constraint valid_mode{mode inside{0,1} ;}
	constraint valid_load{load ==1 ;}

endclass 









class count_trans_extnd2 extends count_trans; 
	constraint valid_data1 {data_in inside{0,1};}
	constraint valid_reset1{reset==1 ;}
	constraint valid_mode1{mode==1 ;}
	constraint valid_load1{load==1 ;}

endclass 

class count_base_test; 
   virtual count_if.WR_DRV_MP wr_drv_if; 
   virtual count_if.RD_MON_MP rd_mon_if; 
   virtual count_if.WR_MON_MP wr_mon_if;
   
   count_env env_h;
     
   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                virtual count_if.WR_MON_MP wr_mon_if,
                virtual count_if.RD_MON_MP rd_mon_if);
      this.wr_drv_if = wr_drv_if;
      this.wr_mon_if = wr_mon_if;
      this.rd_mon_if = rd_mon_if;
      
      env_h = new(wr_drv_if,wr_mon_if,rd_mon_if);
   endfunction: new

   virtual task build();
      env_h.build();
   endtask: build
   
   virtual task run();              
      env_h.run();
   endtask: run   
   
endclass: count_base_test









class count_test_extnd1 extends count_base_test;
      
   count_trans_extnd1 data_h1;
   
   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                virtual count_if.WR_MON_MP wr_mon_if,
                virtual count_if.RD_MON_MP rd_mon_if);
      super.new(wr_drv_if,wr_mon_if,rd_mon_if);      
   endfunction: new

   virtual task build();
      super.build();
   endtask: build
   
   virtual task run();  
      data_h1 = new();
      env_h.count_gen_h.gen_trans = data_h1;
      super.run();
   endtask: run      
   
endclass: count_test_extnd1

class count_test_extnd2 extends count_base_test;
      
   count_trans_extnd2 data_h2;
   
   function new(virtual count_if.WR_DRV_MP wr_drv_if,
                virtual count_if.WR_MON_MP wr_mon_if,
                virtual count_if.RD_MON_MP rd_mon_if);
      super.new(wr_drv_if,wr_mon_if,rd_mon_if);      
   endfunction: new

   virtual task build();
      super.build();
   endtask: build
   
   virtual task run();  
      data_h2 = new();
      env_h.count_gen_h.gen_trans = data_h2;
      super.run();
   endtask: run      
   
endclass
