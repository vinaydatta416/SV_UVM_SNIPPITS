//===========================================================
//  SYSTEMVERILOG RANDOMIZATION PRACTICE QUESTIONS (Q1–Q50)
//===========================================================
/*
//-----------------------------------------------------------
// Q1: Randomize a single integer
//-----------------------------------------------------------
class q1;
  rand int a;
endclass

module test_q1;
  initial begin
    q1 obj = new();
    obj.randomize();
    $display("Q1: a = %0d", obj.a);
  end
endmodule


//-----------------------------------------------------------
// Q2: Randomize with constraint range
//-----------------------------------------------------------
class q2;
  rand int num;
  constraint c_range { num inside {[10:20]}; }
endclass

module test_q2;
  initial begin
    q2 o = new();
    o.randomize();
    $display("Q2: num = %0d", o.num);
  end
endmodule


//-----------------------------------------------------------
// Q3: Random even number
//-----------------------------------------------------------
class q3;
  rand int n;
  constraint c_even { n % 2 == 0; n inside {[0:50]}; }
endclass

module test_q3;
  initial begin
    q3 o = new();
    o.randomize();
    $display("Q3: even = %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q4: Random odd number
//-----------------------------------------------------------
class q4;
  rand int n;
  constraint c_odd { n % 2 == 1; n < 100; }
endclass

module test_q4;
  initial begin
    q4 o = new();
    o.randomize();
    $display("Q4: odd = %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q5: Random 4-bit value
//-----------------------------------------------------------
class q5;
  rand bit [3:0] x;
endclass

module test_q5;
  initial begin
    q5 o = new();
    o.randomize();
    $display("Q5: x = %b", o.x);
  end
endmodule


//-----------------------------------------------------------
// Q6: Random 5 numbers in ascending order
//-----------------------------------------------------------
class q6;
  rand int arr[5];
  constraint asc { foreach (arr[i]) if(i>0) arr[i] > arr[i-1]; }
endclass

module test_q6;
  initial begin
    q6 o = new();
    o.randomize();
    $display("Q6: ascending = %p", o.arr);
  end
endmodule


//-----------------------------------------------------------
// Q7: Randomize array elements within 1–10
//-----------------------------------------------------------
class q7;
  rand int a[5];
  constraint c { foreach(a[i]) a[i] inside {[1:10]}; }
endclass

module test_q7;
  initial begin
    q7 o = new();
    o.randomize();
    $display("Q7: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q8: Random permutation of 1–5
//-----------------------------------------------------------
class q8;
  rand int arr[5];
  constraint perm { arr.sum() == 15; unique {arr}; arr inside {[1:5]}; }
endclass

module test_q8;
  initial begin
    q8 o = new();
    o.randomize();
    $display("Q8: permutation = %p", o.arr);
  end
endmodule


//-----------------------------------------------------------
// Q9: Random bit pattern of length 8
//-----------------------------------------------------------
class q9;
  rand bit [7:0] pattern;
endclass

module test_q9;
  initial begin
    q9 o = new();
    o.randomize();
    $display("Q9: pattern = %b", o.pattern);
  end
endmodule


//-----------------------------------------------------------
// Q10: Random number divisible by 5
//-----------------------------------------------------------
class q10;
  rand int n;
  constraint c { n % 5 == 0; n inside {[0:100]}; }
endclass

module test_q10;
  initial begin
    q10 o = new();
    o.randomize();
    $display("Q10: n = %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q11: Randomize without repetition (unique)
//-----------------------------------------------------------
class q11;
  rand int a[4];
  constraint c { unique {a}; a inside {[1:9]}; }
endclass

module test_q11;
  initial begin
    q11 o = new();
    o.randomize();
    $display("Q11: unique = %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q12: Random 2D array elements
//-----------------------------------------------------------
class q12;
  rand int mat[2][3];
  constraint c { foreach(mat[i,j]) mat[i][j] inside {[0:9]}; }
endclass

module test_q12;
  initial begin
    q12 o = new();
    o.randomize();
    $display("Q12: %p", o.mat);
  end
endmodule


//-----------------------------------------------------------
// Q13: Random numbers where a < b
//-----------------------------------------------------------
class q13;
  rand int a, b;
  constraint c { a < b; a >= 0; b <= 20; }
endclass

module test_q13;
  initial begin
    q13 o = new();
    o.randomize();
    $display("Q13: a=%0d, b=%0d", o.a, o.b);
  end
endmodule


//-----------------------------------------------------------
// Q14: Randomize with OR condition
//-----------------------------------------------------------
class q14;
  rand int n;
  constraint c { (n%3==0) || (n%5==0); n<30; }
endclass

module test_q14;
  initial begin
    q14 o = new();
    o.randomize();
    $display("Q14: n = %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q15: Random string (from fixed set)
//-----------------------------------------------------------
class q15;
  rand string s;
  constraint c { s inside { "red", "blue", "green" }; }
endclass

module test_q15;
  initial begin
    q15 o = new();
    o.randomize();
    $display("Q15: s = %s", o.s);
  end
endmodule


//-----------------------------------------------------------
// Q16: Random 4-bit pattern printing
//-----------------------------------------------------------
class q16;
  rand bit [3:0] pat;
endclass

module test_q16;
  initial begin
    q16 o = new();
    repeat(5) begin
      o.randomize();
      $display("Q16: pattern = %b", o.pat);
    end
  end
endmodule


//-----------------------------------------------------------
// Q17: Random number excluding specific values
//-----------------------------------------------------------
class q17;
  rand int x;
  constraint c { !(x inside {3,6,9}); x inside {[1:10]}; }
endclass

module test_q17;
  initial begin
    q17 o = new();
    o.randomize();
    $display("Q17: x = %0d", o.x);
  end
endmodule


//-----------------------------------------------------------
// Q18: Random pattern of alternating bits
//-----------------------------------------------------------
class q18;
  rand bit [7:0] p;
  constraint c { foreach(p[i]) if(i>0) p[i] != p[i-1]; }
endclass

module test_q18;
  initial begin
    q18 o = new();
    o.randomize();
    $display("Q18: alt bits = %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q19: Random array sum = fixed value
//-----------------------------------------------------------
class q19;
  rand int arr[3];
  constraint c { arr.sum() == 10; arr inside {[0:10]}; }
endclass

module test_q19;
  initial begin
    q19 o = new();
    o.randomize();
    $display("Q19: arr=%p", o.arr);
  end
endmodule


//-----------------------------------------------------------
// Q20: Random odd indices high bits
//-----------------------------------------------------------
class q20;
  rand bit [7:0] p;
  constraint c { foreach(p[i]) if(i%2==1) p[i]==1; }
endclass

module test_q20;
  initial begin
    q20 o = new();
    o.randomize();
    $display("Q20: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q21: Random even array elements only
//-----------------------------------------------------------
class q21;
  rand int a[4];
  constraint c { foreach(a[i]) a[i]%2==0; }
endclass

module test_q21;
  initial begin
    q21 o = new();
    o.randomize();
    $display("Q21: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q22: Random pair difference = 5
//-----------------------------------------------------------
class q22;
  rand int a, b;
  constraint c { a - b == 5; a < 50; }
endclass

module test_q22;
  initial begin
    q22 o = new();
    o.randomize();
    $display("Q22: a=%0d, b=%0d", o.a, o.b);
  end
endmodule


//-----------------------------------------------------------
// Q23: Random bit count = 4 ones
//-----------------------------------------------------------
class q23;
  rand bit [7:0] p;
  constraint c { $countones(p) == 4; }
endclass

module test_q23;
  initial begin
    q23 o = new();
    o.randomize();
    $display("Q23: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q24: Random unique digits (0–9)
//-----------------------------------------------------------
class q24;
  rand int d[4];
  constraint c { unique{d}; d inside {[0:9]}; }
endclass

module test_q24;
  initial begin
    q24 o = new();
    o.randomize();
    $display("Q24: %p", o.d);
  end
endmodule


//-----------------------------------------------------------
// Q25: Random array reverse relation
//-----------------------------------------------------------
class q25;
  rand int a[4];
  constraint c { a[0] > a[3]; a[1] > a[2]; }
endclass

module test_q25;
  initial begin
    q25 o = new();
    o.randomize();
    $display("Q25: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q26: Random bits with first and last = 1
//-----------------------------------------------------------
class q26;
  rand bit [7:0] b;
  constraint c { b[0]==1; b[7]==1; }
endclass

module test_q26;
  initial begin
    q26 o = new();
    o.randomize();
    $display("Q26: %b", o.b);
  end
endmodule


//-----------------------------------------------------------
// Q27: Random number power of 2
//-----------------------------------------------------------
class q27;
  rand int n;
  constraint c { n inside {1,2,4,8,16,32,64}; }
endclass

module test_q27;
  initial begin
    q27 o = new();
    o.randomize();
    $display("Q27: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q28: Random letter A–Z
//-----------------------------------------------------------
class q28;
  rand byte ch;
  constraint c { ch inside {[65:90]}; } // ASCII
endclass

module test_q28;
  initial begin
    q28 o = new();
    o.randomize();
    $display("Q28: char = %s", o.ch);
  end
endmodule


//-----------------------------------------------------------
// Q29: Randomly select color enum
//-----------------------------------------------------------
typedef enum {RED, GREEN, BLUE} color_t;
class q29;
  rand color_t c;
endclass

module test_q29;
  initial begin
    q29 o = new();
    o.randomize();
    $display("Q29: color = %s", o.c.name());
  end
endmodule


//-----------------------------------------------------------
// Q30: Random number multiple of 7
//-----------------------------------------------------------
class q30;
  rand int n;
  constraint c { n%7==0; n<100; }
endclass

module test_q30;
  initial begin
    q30 o = new();
    o.randomize();
    $display("Q30: n = %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q31: Randomize nested class variable
//-----------------------------------------------------------
class inner31;
  rand int val;
endclass

class outer31;
  rand inner31 i;
endclass

module test_q31;
  initial begin
    outer31 o = new();
    o.i = new();
    o.randomize();
    $display("Q31: val=%0d", o.i.val);
  end
endmodule


//-----------------------------------------------------------
// Q32: Randomize fixed pattern 1010???? 
//-----------------------------------------------------------
class q32;
  rand bit [7:0] p;
  constraint c { p[7:4]==4'b1010; }
endclass

module test_q32;
  initial begin
    q32 o = new();
    o.randomize();
    $display("Q32: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q33: Random with weighted distribution
//-----------------------------------------------------------
class q33;
  rand int mode;
  constraint c { mode dist {0:=1, 1:=3, 2:=6}; }
endclass

module test_q33;
  initial begin
    q33 o = new();
    o.randomize();
    $display("Q33: mode = %0d", o.mode);
  end
endmodule


//-----------------------------------------------------------
// Q34: Random XOR pattern
//-----------------------------------------------------------
class q34;
  rand bit [3:0] a, b;
  function bit [3:0] xor_out(); return a^b; endfunction
endclass

module test_q34;
  initial begin
    q34 o = new();
    o.randomize();
    $display("Q34: a=%b, b=%b, xor=%b", o.a,o.b,o.xor_out());
  end
endmodule


//-----------------------------------------------------------
// Q35: Random binary palindrome
//-----------------------------------------------------------
class q35;
  rand bit [3:0] p;
  constraint c { p[0]==p[3]; p[1]==p[2]; }
endclass

module test_q35;
  initial begin
    q35 o = new();
    o.randomize();
    $display("Q35: palindrome = %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q36: Random with conditional constraint
//-----------------------------------------------------------
class q36;
  rand int x,y;
  constraint c { if(x>10) y==0; else y==x; }
endclass

module test_q36;
  initial begin
    q36 o = new();
    o.randomize();
    $display("Q36: x=%0d, y=%0d", o.x,o.y);
  end
endmodule


//-----------------------------------------------------------
// Q37: Random sequence of bits no 3 consecutive 1s
//-----------------------------------------------------------
class q37;
  rand bit [7:0] b;
  constraint c { foreach(b[i]) if(i>=2) !(b[i] && b[i-1] && b[i-2]); }
endclass

module test_q37;
  initial begin
    q37 o = new();
    o.randomize();
    $display("Q37: %b", o.b);
  end
endmodule


//-----------------------------------------------------------
// Q38: Random pair where product < 20
//-----------------------------------------------------------
class q38;
  rand int a,b;
  constraint c { a*b < 20; a>0; b>0; }
endclass

module test_q38;
  initial begin
    q38 o = new();
    o.randomize();
    $display("Q38: a=%0d, b=%0d", o.a,o.b);
  end
endmodule


//-----------------------------------------------------------
// Q39: Random string of digits (3 chars)
//-----------------------------------------------------------
class q39;
  rand byte s[3];
  constraint c { foreach(s[i]) s[i] inside {[48:57]}; }
endclass

module test_q39;
  initial begin
    q39 o = new();
    o.randomize();
    $display("Q39: str=%s", {o.s});
  end
endmodule


//-----------------------------------------------------------
// Q40: Random array reversed sorted
//-----------------------------------------------------------
class q40;
  rand int a[4];
  constraint c { foreach(a[i]) if(i>0) a[i] < a[i-1]; }
endclass

module test_q40;
  initial begin
    q40 o = new();
    o.randomize();
    $display("Q40: desc=%p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q41: Randomize time delay between 5–15ns
//-----------------------------------------------------------
class q41;
  rand time t;
  constraint c { t inside {[5:15]}; }
endclass

module test_q41;
  initial begin
    q41 o = new();
    o.randomize();
    #o.t;
    $display("Q41: Delay %0t ns done", o.t);
  end
endmodule


//-----------------------------------------------------------
// Q42: Random choose prime numbers (2–19)
//-----------------------------------------------------------
class q42;
  rand int n;
  constraint c { n inside {2,3,5,7,11,13,17,19}; }
endclass

module test_q42;
  initial begin
    q42 o = new();
    o.randomize();
    $display("Q42: prime = %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q43: Random select weekday
//-----------------------------------------------------------
typedef enum {MON,TUE,WED,THU,FRI,SAT,SUN} day_t;
class q43;
  rand day_t d;
endclass

module test_q43;
  initial begin
    q43 o = new();
    o.randomize();
    $display("Q43: Day = %s", o.d.name());
  end
endmodule


//-----------------------------------------------------------
// Q44: Random pattern with Hamming weight = 3
//-----------------------------------------------------------
class q44;
  rand bit [5:0] p;
  constraint c { $countones(p)==3; }
endclass

module test_q44;
  initial begin
    q44 o = new();
    o.randomize();
    $display("Q44: %b", o.p);
  end
endmodule


// SystemVerilog Randomization Examples for Interview/Written Test
// Q1–Q50, small classes with rand variables and constraints
// Each class has its own module for standalone testing

//===========================================
// Q1: Randomize a single integer
class q1;
  rand int a;
endclass

module test_q1;
  initial begin
    q1 obj = new();
    obj.randomize();
    $display("Q1: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q2: Random number 0..100
class q2;
  rand int a;
  constraint c { a >= 0 && a <= 100; }
endclass

module test_q2;
  initial begin
    q2 obj = new();
    obj.randomize();
    $display("Q2: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q3: Random odd number 1..99
class q3;
  rand int a;
  constraint c { a inside {[1:99]}; a % 2 == 1; }
endclass

module test_q3;
  initial begin
    q3 obj = new();
    obj.randomize();
    $display("Q3: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q4: Random even number 0..50
class q4;
  rand int a;
  constraint c { a inside {[0:50]}; a % 2 == 0; }
endclass

module test_q4;
  initial begin
    q4 obj = new();
    obj.randomize();
    $display("Q4: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q5: Random 4-bit number
class q5;
  rand bit [3:0] a;
endclass

module test_q5;
  initial begin
    q5 obj = new();
    obj.randomize();
    $display("Q5: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q6: Random 8-bit number, multiple of 3
class q6;
  rand bit [7:0] a;
  constraint c { a % 3 == 0; }
endclass

module test_q6;
  initial begin
    q6 obj = new();
    obj.randomize();
    $display("Q6: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q7: Random 8-bit number, divisible by 5 and <= 50
class q7;
  rand bit [7:0] a;
  constraint c { a % 5 == 0; a <= 50; }
endclass

module test_q7;
  initial begin
    q7 obj = new();
    obj.randomize();
    $display("Q7: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q8: Random 3-bit number between 2 and 5
class q8;
  rand bit [2:0] a;
  constraint c { a inside {[2:5]}; }
endclass

module test_q8;
  initial begin
    q8 obj = new();
    obj.randomize();
    $display("Q8: a = %0d", obj.a);
  end
endmodule

//===========================================
// Q9: Random 8-bit palindrome (upper nibble = lower nibble)
class q9;
  rand bit [7:0] a;
  constraint c { a[7:4] == a[3:0]; }
endclass

module test_q9;
  initial begin
    q9 obj = new();
    obj.randomize();
    $display("Q9: a = 0x%0h", obj.a);
  end
endmodule

//===========================================
// Q10: Random 16-bit number with MSB=1
class q10;
  rand bit [15:0] a;
  constraint c { a[15] == 1; }
endclass

module test_q10;
  initial begin
    q10 obj = new();
    obj.randomize();
    $display("Q10: a = 0x%0h", obj.a);
  end
endmodule



//==============================


//-----------------------------------------------------------
// Q45: Random power of two bit pattern
//-----------------------------------------------------------
class q45;
  rand bit [7:0] p;
  constraint c { $countones(p)==1; }
endclass

module test_q45;
  initial begin
    q45 o = new();
    o.randomize();
    $display("Q45: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q46: Random number divisible by 3 but not by 2
//-----------------------------------------------------------
class q46;
  rand int n;
  constraint c { (n % 3 == 0) && (n % 2 != 0); n inside {[1:50]}; }
endclass

module test_q46;
  initial begin
    q46 o = new();
    o.randomize();
    $display("Q46: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q47: Random 3-digit number with unique digits
//-----------------------------------------------------------
class q47;
  rand int digits[3];
  constraint c { unique {digits}; foreach(digits[i]) digits[i] inside {[0:9]}; }
endclass

module test_q47;
  initial begin
    q47 o = new();
    o.randomize();
    $display("Q47: digits=%p", o.digits);
  end
endmodule


//-----------------------------------------------------------
// Q48: Random pattern with MSB=1
//-----------------------------------------------------------
class q48;
  rand bit [7:0] p;
  constraint c { p[7] == 1; }
endclass

module test_q48;
  initial begin
    q48 o = new();
    o.randomize();
    $display("Q48: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q49: Random number between 10–100
//-----------------------------------------------------------
class q49;
  rand int n;
  constraint c { n inside {[10:100]}; }
endclass

module test_q49;
  initial begin
    q49 o = new();
    o.randomize();
    $display("Q49: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q50: Random pattern with alternating bits
//-----------------------------------------------------------
class q50;
  rand bit [7:0] p;
  constraint c { foreach(p[i]) if(i>0) p[i] != p[i-1]; }
endclass

module test_q50;
  initial begin
    q50 o = new();
    o.randomize();
    $display("Q50: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q51: Random 2D array values
//-----------------------------------------------------------
class q51;
  rand int mat[2][2];
  constraint c { foreach(mat[i,j]) mat[i][j] inside {[0:9]}; }
endclass

module test_q51;
  initial begin
    q51 o = new();
    o.randomize();
    $display("Q51: %p", o.mat);
  end
endmodule


//-----------------------------------------------------------
// Q52: Random number multiple of 4
//-----------------------------------------------------------
class q52;
  rand int n;
  constraint c { n % 4 == 0; n<50; }
endclass

module test_q52;
  initial begin
    q52 o = new();
    o.randomize();
    $display("Q52: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q53: Random array sum = 15
//-----------------------------------------------------------
class q53;
  rand int a[3];
  constraint c { a.sum() == 15; a inside {[0:10]}; }
endclass

module test_q53;
  initial begin
    q53 o = new();
    o.randomize();
    $display("Q53: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q54: Random bit with exactly 2 ones
//-----------------------------------------------------------
class q54;
  rand bit [3:0] b;
  constraint c { $countones(b) == 2; }
endclass

module test_q54;
  initial begin
    q54 o = new();
    o.randomize();
    $display("Q54: %b", o.b);
  end
endmodule


//-----------------------------------------------------------
// Q55: Random pair where sum = 20
//-----------------------------------------------------------
class q55;
  rand int a, b;
  constraint c { a + b == 20; a inside {[0:20]}; b inside {[0:20]}; }
endclass

module test_q55;
  initial begin
    q55 o = new();
    o.randomize();
    $display("Q55: a=%0d, b=%0d", o.a, o.b);
  end
endmodule


//-----------------------------------------------------------
// Q56: Random pattern first 3 bits = 101
//-----------------------------------------------------------
class q56;
  rand bit [7:0] p;
  constraint c { p[7:5] == 3'b101; }
endclass

module test_q56;
  initial begin
    q56 o = new();
    o.randomize();
    $display("Q56: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q57: Random array values < 5
//-----------------------------------------------------------
class q57;
  rand int arr[4];
  constraint c { foreach(arr[i]) arr[i] < 5; }
endclass

module test_q57;
  initial begin
    q57 o = new();
    o.randomize();
    $display("Q57: %p", o.arr);
  end
endmodule


//-----------------------------------------------------------
// Q58: Random number > 50
//-----------------------------------------------------------
class q58;
  rand int n;
  constraint c { n>50; n<100; }
endclass

module test_q58;
  initial begin
    q58 o = new();
    o.randomize();
    $display("Q58: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q59: Random odd number in array
//-----------------------------------------------------------
class q59;
  rand int a[4];
  constraint c { foreach(a[i]) a[i]%2==1; }
endclass

module test_q59;
  initial begin
    q59 o = new();
    o.randomize();
    $display("Q59: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q60: Random 8-bit pattern with LSB=1
//-----------------------------------------------------------
class q60;
  rand bit [7:0] p;
  constraint c { p[0] == 1; }
endclass

module test_q60;
  initial begin
    q60 o = new();
    o.randomize();
    $display("Q60: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q61: Random 3-bit value inside range
//-----------------------------------------------------------
class q61;
  rand bit [2:0] n;
  constraint c { n inside {[3:5]}; }
endclass

module test_q61;
  initial begin
    q61 o = new();
    o.randomize();
    $display("Q61: %b", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q62: Random array elements unique 1–4
//-----------------------------------------------------------
class q62;
  rand int arr[4];
  constraint c { unique{arr}; arr inside {[1:4]}; }
endclass

module test_q62;
  initial begin
    q62 o = new();
    o.randomize();
    $display("Q62: %p", o.arr);
  end
endmodule


//-----------------------------------------------------------
// Q63: Random number divisible by 2 or 3
//-----------------------------------------------------------
class q63;
  rand int n;
  constraint c { (n%2==0)||(n%3==0); n<20; }
endclass

module test_q63;
  initial begin
    q63 o = new();
    o.randomize();
    $display("Q63: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q64: Random number in decreasing order array
//-----------------------------------------------------------
class q64;
  rand int arr[3];
  constraint c { arr[0] > arr[1]; arr[1] > arr[2]; arr inside {[1:10]}; }
endclass

module test_q64;
  initial begin
    q64 o = new();
    o.randomize();
    $display("Q64: %p", o.arr);
  end
endmodule


//-----------------------------------------------------------
// Q65: Random bit pattern palindrome 4-bit
//-----------------------------------------------------------
class q65;
  rand bit [3:0] p;
  constraint c { p[0]==p[3]; p[1]==p[2]; }
endclass

module test_q65;
  initial begin
    q65 o = new();
    o.randomize();
    $display("Q65: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q66: Random array sum even
//-----------------------------------------------------------
class q66;
  rand int a[3];
  constraint c { a.sum()%2==0; a inside {[0:10]}; }
endclass

module test_q66;
  initial begin
    q66 o = new();
    o.randomize();
    $display("Q66: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q67: Random number less than another
//-----------------------------------------------------------
class q67;
  rand int a,b;
  constraint c { a < b; a inside {[0:10]}; b inside {[5:15]}; }
endclass

module test_q67;
  initial begin
    q67 o = new();
    o.randomize();
    $display("Q67: a=%0d, b=%0d", o.a,o.b);
  end
endmodule


//-----------------------------------------------------------
// Q68: Random pattern with exactly 3 ones
//-----------------------------------------------------------
class q68;
  rand bit [4:0] p;
  constraint c { $countones(p) == 3; }
endclass

module test_q68;
  initial begin
    q68 o = new();
    o.randomize();
    $display("Q68: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q69: Random number divisible by 4 and <20
//-----------------------------------------------------------
class q69;
  rand int n;
  constraint c { (n%4==0)&&(n<20); }
endclass

module test_q69;
  initial begin
    q69 o = new();
    o.randomize();
    $display("Q69: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q70: Random array with first element =0
//-----------------------------------------------------------
class q70;
  rand int a[4];
  constraint c { a[0]==0; a[1] inside {[1:10]}; a[2] inside {[1:10]}; a[3] inside {[1:10]}; }
endclass

module test_q70;
  initial begin
    q70 o = new();
    o.randomize();
    $display("Q70: %p", o.a);
  end
endmodule


//====================================


//-----------------------------------------------------------
// Q71: Random 4-bit number divisible by 3
//-----------------------------------------------------------
class q71;
  rand bit [3:0] n;
  constraint c { n % 3 == 0; }
endclass

module test_q71;
  initial begin
    q71 o = new();
    o.randomize();
    $display("Q71: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q72: Random array with max element = 10
//-----------------------------------------------------------
class q72;
  rand int a[4];
  constraint c { foreach(a[i]) a[i] <= 10; }
endclass

module test_q72;
  initial begin
    q72 o = new();
    o.randomize();
    $display("Q72: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q73: Random number ending with 5
//-----------------------------------------------------------
class q73;
  rand int n;
  constraint c { n % 10 == 5; n inside {[5:95]}; }
endclass

module test_q73;
  initial begin
    q73 o = new();
    o.randomize();
    $display("Q73: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q74: Random bit array with odd bits set
//-----------------------------------------------------------
class q74;
  rand bit [7:0] b;
  constraint c { b[1]==1; b[3]==1; b[5]==1; b[7]==1; }
endclass

module test_q74;
  initial begin
    q74 o = new();
    o.randomize();
    $display("Q74: %b", o.b);
  end
endmodule


//-----------------------------------------------------------
// Q75: Random 2D array sum < 10
//-----------------------------------------------------------
class q75;
  rand int mat[2][2];
  constraint c { int sum=0; foreach(mat[i,j]) sum+=mat[i][j]; sum<10; }
endclass

module test_q75;
  initial begin
    q75 o = new();
    o.randomize();
    $display("Q75: %p", o.mat);
  end
endmodule


//-----------------------------------------------------------
// Q76: Random 3-bit number with MSB=1
//-----------------------------------------------------------
class q76;
  rand bit [2:0] n;
  constraint c { n[2] == 1; }
endclass

module test_q76;
  initial begin
    q76 o = new();
    o.randomize();
    $display("Q76: %b", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q77: Random number multiple of 6
//-----------------------------------------------------------
class q77;
  rand int n;
  constraint c { n % 6 == 0; n < 60; }
endclass

module test_q77;
  initial begin
    q77 o = new();
    o.randomize();
    $display("Q77: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q78: Random array with sum = 12
//-----------------------------------------------------------
class q78;
  rand int a[3];
  constraint c { a.sum() == 12; a inside {[0:10]}; }
endclass

module test_q78;
  initial begin
    q78 o = new();
    o.randomize();
    $display("Q78: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q79: Random 5-bit number with exactly 2 ones
//-----------------------------------------------------------
class q79;
  rand bit [4:0] b;
  constraint c { $countones(b) == 2; }
endclass

module test_q79;
  initial begin
    q79 o = new();
    o.randomize();
    $display("Q79: %b", o.b);
  end
endmodule


//-----------------------------------------------------------
// Q80: Random pair where a > b
//-----------------------------------------------------------
class q80;
  rand int a, b;
  constraint c { a > b; a inside {[0:10]}; b inside {[0:10]}; }
endclass

module test_q80;
  initial begin
    q80 o = new();
    o.randomize();
    $display("Q80: a=%0d, b=%0d", o.a, o.b);
  end
endmodule


//-----------------------------------------------------------
// Q81: Random 8-bit pattern with LSB=0
//-----------------------------------------------------------
class q81;
  rand bit [7:0] p;
  constraint c { p[0] == 0; }
endclass

module test_q81;
  initial begin
    q81 o = new();
    o.randomize();
    $display("Q81: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q82: Random 2D array values < 5
//-----------------------------------------------------------
class q82;
  rand int mat[2][3];
  constraint c { foreach(mat[i,j]) mat[i][j] < 5; }
endclass

module test_q82;
  initial begin
    q82 o = new();
    o.randomize();
    $display("Q82: %p", o.mat);
  end
endmodule


//-----------------------------------------------------------
// Q83: Random 3-digit number with digits sum = 10
//-----------------------------------------------------------
class q83;
  rand int d[3];
  constraint c { d.sum() == 10; foreach(d[i]) d[i] inside {[0:9]}; }
endclass

module test_q83;
  initial begin
    q83 o = new();
    o.randomize();
    $display("Q83: digits=%p", o.d);
  end
endmodule


//-----------------------------------------------------------
// Q84: Random 4-bit pattern divisible by 2 but not 4
//-----------------------------------------------------------
class q84;
  rand bit [3:0] p;
  constraint c { p%2==0 && p%4!=0; }
endclass

module test_q84;
  initial begin
    q84 o = new();
    o.randomize();
    $display("Q84: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q85: Random number with first digit = 1
//-----------------------------------------------------------
class q85;
  rand int n;
  constraint c { n inside {[10:19]}; }
endclass

module test_q85;
  initial begin
    q85 o = new();
    o.randomize();
    $display("Q85: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q86: Random array with min element =0
//-----------------------------------------------------------
class q86;
  rand int a[4];
  constraint c { a[0]==0; foreach(a[i]) a[i] inside {[0:10]}; }
endclass

module test_q86;
  initial begin
    q86 o = new();
    o.randomize();
    $display("Q86: %p", o.a);
  end
endmodule


//-----------------------------------------------------------
// Q87: Random number divisible by 9
//-----------------------------------------------------------
class q87;
  rand int n;
  constraint c { n % 9 == 0; n < 100; }
endclass

module test_q87;
  initial begin
    q87 o = new();
    o.randomize();
    $display("Q87: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q88: Random 3-bit number with exactly 2 ones
//-----------------------------------------------------------
class q88;
  rand bit [2:0] n;
  constraint c { $countones(n)==2; }
endclass

module test_q88;
  initial begin
    q88 o = new();
    o.randomize();
    $display("Q88: %b", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q89: Random 4-bit number with alternating bits
//-----------------------------------------------------------
class q89;
  rand bit [3:0] n;
  constraint c { n[3]!=n[2] && n[2]!=n[1] && n[1]!=n[0]; }
endclass

module test_q89;
  initial begin
    q89 o = new();
    o.randomize();
    $display("Q89: %b", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q90: Random number between 50–100 divisible by 5
//-----------------------------------------------------------
class q90;
  rand int n;
  constraint c { n inside {[50:100]} && n%5==0; }
endclass

module test_q90;
  initial begin
    q90 o = new();
    o.randomize();
    $display("Q90: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q91: Random 2D array sum even
//-----------------------------------------------------------
class q91;
  rand int mat[2][2];
  constraint c { int sum=0; foreach(mat[i,j]) sum+=mat[i][j]; sum%2==0; }
endclass

module test_q91;
  initial begin
    q91 o = new();
    o.randomize();
    $display("Q91: %p", o.mat);
  end
endmodule


//-----------------------------------------------------------
// Q92: Random 4-bit pattern with MSB=LSB
//-----------------------------------------------------------
class q92;
  rand bit [3:0] p;
  constraint c { p[3]==p[0]; }
endclass

module test_q92;
  initial begin
    q92 o = new();
    o.randomize();
    $display("Q92: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q93: Random number divisible by 2 or 7
//-----------------------------------------------------------
class q93;
  rand int n;
  constraint c { (n%2==0)||(n%7==0); n<50; }
endclass

module test_q93;
  initial begin
    q93 o = new();
    o.randomize();
    $display("Q93: %0d", o.n);
  end
endmodule


//-----------------------------------------------------------
// Q94: Random 5-bit number with exactly 3 zeros
//-----------------------------------------------------------
class q94;
  rand bit [4:0] p;
  constraint c { $countones(p) == 2; } // 3 zeros
endclass

module test_q94;
  initial begin
    q94 o = new();
    o.randomize();
    $display("Q94: %b", o.p);
  end
endmodule


//-----------------------------------------------------------
// Q95: Random array values strictly increasing
//-----------------------------------------------------------
class q95;
  rand int a[4];
  constraint c { foreach(a[i]) if(i>0) a[i] > a[i-1]; a inside {[0:20]}; }
endclass

module test_q95;
  initial begin
    q95 o = new();
    o.randomize();
    $display("Q95: %p", o.a);
  end
endmodule


//================================

//-----------------------------------------------------------
// Q96: Random 3-bit number odd
//-----------------------------------------------------------
class q96;
  rand bit [2:0] n;
  constraint c { n % 2 == 1; }
endclass

module test_q96;
  initial begin
    q96 o = new();
    o.randomize();
    $display("Q96: %b", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q97: Random 4-bit number divisible by 3
//-----------------------------------------------------------
class q97;
  rand bit [3:0] n;
  constraint c { n % 3 == 0; }
endclass

module test_q97;
  initial begin
    q97 o = new();
    o.randomize();
    $display("Q97: %b", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q98: Random array elements sum=10
//-----------------------------------------------------------
class q98;
  rand int a[3];
  constraint c { a.sum() == 10; a inside {[0:10]}; }
endclass

module test_q98;
  initial begin
    q98 o = new();
    o.randomize();
    $display("Q98: %p", o.a);
  end
endmodule

//-----------------------------------------------------------
// Q99: Random 8-bit pattern first 4 bits = 1010
//-----------------------------------------------------------
class q99;
  rand bit [7:0] p;
  constraint c { p[7:4] == 4'b1010; }
endclass

module test_q99;
  initial begin
    q99 o = new();
    o.randomize();
    $display("Q99: %b", o.p);
  end
endmodule

//-----------------------------------------------------------
// Q100: Random array values even
//-----------------------------------------------------------
class q100;
  rand int a[4];
  constraint c { foreach(a[i]) a[i]%2==0; }
endclass

module test_q100;
  initial begin
    q100 o = new();
    o.randomize();
    $display("Q100: %p", o.a);
  end
endmodule

//-----------------------------------------------------------
// Q101: Random 3-bit number >3
//-----------------------------------------------------------
class q101;
  rand bit [2:0] n;
  constraint c { n > 3; }
endclass

module test_q101;
  initial begin
    q101 o = new();
    o.randomize();
    $display("Q101: %b", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q102: Random 2D array all <5
//-----------------------------------------------------------
class q102;
  rand int mat[2][2];
  constraint c { foreach(mat[i,j]) mat[i][j]<5; }
endclass

module test_q102;
  initial begin
    q102 o = new();
    o.randomize();
    $display("Q102: %p", o.mat);
  end
endmodule

//-----------------------------------------------------------
// Q103: Random 4-bit pattern alternating bits
//-----------------------------------------------------------
class q103;
  rand bit [3:0] p;
  constraint c { p[3]!=p[2] && p[2]!=p[1] && p[1]!=p[0]; }
endclass

module test_q103;
  initial begin
    q103 o = new();
    o.randomize();
    $display("Q103: %b", o.p);
  end
endmodule

//-----------------------------------------------------------
// Q104: Random number multiple of 5
//-----------------------------------------------------------
class q104;
  rand int n;
  constraint c { n%5==0; n<50; }
endclass

module test_q104;
  initial begin
    q104 o = new();
    o.randomize();
    $display("Q104: %0d", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q105: Random array first element=0
//-----------------------------------------------------------
class q105;
  rand int a[4];
  constraint c { a[0]==0; foreach(a[i]) a[i] inside {[0:10]}; }
endclass

module test_q105;
  initial begin
    q105 o = new();
    o.randomize();
    $display("Q105: %p", o.a);
  end
endmodule

//-----------------------------------------------------------
// Q106: Random number <20 divisible by 2
//-----------------------------------------------------------
class q106;
  rand int n;
  constraint c { n<20 && n%2==0; }
endclass

module test_q106;
  initial begin
    q106 o = new();
    o.randomize();
    $display("Q106: %0d", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q107: Random 3-bit pattern exactly 2 ones
//-----------------------------------------------------------
class q107;
  rand bit [2:0] p;
  constraint c { $countones(p)==2; }
endclass

module test_q107;
  initial begin
    q107 o = new();
    o.randomize();
    $display("Q107: %b", o.p);
  end
endmodule

//-----------------------------------------------------------
// Q108: Random 4-bit number odd
//-----------------------------------------------------------
class q108;
  rand bit [3:0] n;
  constraint c { n%2==1; }
endclass

module test_q108;
  initial begin
    q108 o = new();
    o.randomize();
    $display("Q108: %b", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q109: Random array increasing
//-----------------------------------------------------------
class q109;
  rand int a[3];
  constraint c { foreach(a[i]) if(i>0) a[i]>a[i-1]; a inside {[0:10]}; }
endclass

module test_q109;
  initial begin
    q109 o = new();
    o.randomize();
    $display("Q109: %p", o.a);
  end
endmodule

//-----------------------------------------------------------
// Q110: Random 5-bit number with LSB=1
//-----------------------------------------------------------
class q110;
  rand bit [4:0] p;
  constraint c { p[0]==1; }
endclass

module test_q110;
  initial begin
    q110 o = new();
    o.randomize();
    $display("Q110: %b", o.p);
  end
endmodule

//-----------------------------------------------------------
// Q111: Random number divisible by 7
//-----------------------------------------------------------
class q111;
  rand int n;
  constraint c { n%7==0; n<50; }
endclass

module test_q111;
  initial begin
    q111 o = new();
    o.randomize();
    $display("Q111: %0d", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q112: Random 3-element array sum even
//-----------------------------------------------------------
class q112;
  rand int a[3];
  constraint c { a.sum()%2==0; a inside {[0:10]}; }
endclass

module test_q112;
  initial begin
    q112 o = new();
    o.randomize();
    $display("Q112: %p", o.a);
  end
endmodule

//-----------------------------------------------------------
// Q113: Random number 2nd digit=5
//-----------------------------------------------------------
class q113;
  rand int n;
  constraint c { n inside {[50:59]}; }
endclass

module test_q113;
  initial begin
    q113 o = new();
    o.randomize();
    $display("Q113: %0d", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q114: Random 2D array all even
//-----------------------------------------------------------
class q114;
  rand int mat[2][2];
  constraint c { foreach(mat[i,j]) mat[i,j]%2==0; }
endclass

module test_q114;
  initial begin
    q114 o = new();
    o.randomize();
    $display("Q114: %p", o.mat);
  end
endmodule

//-----------------------------------------------------------
// Q115: Random 4-bit number divisible by 2 but not 4
//-----------------------------------------------------------
class q115;
  rand bit [3:0] n;
  constraint c { n%2==0 && n%4!=0; }
endclass

module test_q115;
  initial begin
    q115 o = new();
    o.randomize();
    $display("Q115: %b", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q116: Random 3-bit number less than 5
//-----------------------------------------------------------
class q116;
  rand bit [2:0] n;
  constraint c { n<5; }
endclass

module test_q116;
  initial begin
    q116 o = new();
    o.randomize();
    $display("Q116: %b", o.n);
  end
endmodule

//-----------------------------------------------------------
// Q117: Random 4-bit pattern exactly 2 ones
//-----------------------------------------------------------
class q117;
  rand bit [3:0] p;
  constraint c { $countones(p)==2; }
endclass

module test_q117;
  initial begin
    q117 o = new();
    o.randomize();
    $display("Q117: %b", o.p);
  end
endmodule

//-----------------------------------------------------------
// Q118: Random array sum <15
//-----------------------------------------------------------
class q118;
  rand int a[3];
  constraint c { a.sum()<15; a inside {[0:10]}; }
endclass

module test_q118;
  initial begin
    q118 o = new();
    o.randomize();
    $display("Q118: %p", o.a);
  end
endmodule

//-----------------------------------------------------------
// Q119: Random 5-bit pattern MSB=1
//-----------------------------------------------------------
class q119;
  rand bit [4:0] p;
  constraint c { p[4]==1; }
endclass

module test_q119;
  initial begin
    q119 o = new();
    o.randomize();
    $display("Q119: %b", o.p);
  end
endmodule

//-----------------------------------------------------------
// Q120: Random 2D array sum <10
//-----------------------------------------------------------
class q120;
  rand int mat[2][2];
  constraint c { int sum=0; foreach(mat[i,j]) sum+=mat[i,j]; sum<10; }
endclass

module test_q120;
  initial begin
    q120 o = new();
    o.randomize();
    $display("Q120: %p", o.mat);
  end
endmodule

*/


//=========================================

//=========================================


//========================================
/*


class constraint_2;
	rand bit[2:0] da[];
	constraint da_size{da.size == 10;
			foreach(da[i])
				da[i] == (i+2)/2;
			}
endclass

constraint_2 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da:%p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_7;
	rand int da[];

	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i == 0)
				da[i] == 2;
			else if(i == 1)
				da[i] ==3;
			else if(i/2 == 0)
				da[i] == da[i-2] + 3;
			else if(i/2 != 0)
				da[i] == da[i-2] + 3;
			}
endclass

constraint_7 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_3;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i<5)
				da[i] == da.size - (i+(i+1));
			else
				da[i] == 18 - (i*2);}
endclass

constraint_3 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_6;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i] == 1;
			else
				da[i] == 0;}

endclass

constraint_6 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*
 

class constraint_8;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i<5)
				da[i] == i + 1;
			else
				da[i] == 10 - i;
			}
endclass

constraint_8 c1;
	
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*

class constraint_9;
	rand int da[];
	constraint c1{da.size == 15;}
	constraint c2{foreach(da[i])
			if(i<2)
				da[i] == 0;
			else if(i == 2)
				da[i] == 1;
			else
				da[i] == da[i-3] + da[i-2] + da[i-1];
			}
endclass

constraint_9 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*


class constraint_10;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] == (i * 10) + 9;
			}
endclass

constraint_10 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule




*/

//========================================
/*


class constraint_1;
	rand bit[4:0]a;
	constraint a_range{a % 2 == 1; a inside {[10:30]};}
endclass

constraint_1 c1;

module test;
	initial
		begin
			repeat(5)
				begin
					c1 = new();
					assert(c1.randomize());
					$display("a=%d",c1.a);
				end
		end
endmodule 



*/

//========================================
/*



class constraint_4;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] == i/2;}

endclass

constraint_4 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_5;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] == i%2;}

endclass

constraint_5 c1;

module test();
	initial
		begin
			c1 = new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_13;
	rand int da[];
	constraint c1{da.size == 12;}
	constraint c2{foreach(da[i])
			da[i] == ((i%3) + 1); }
endclass

constraint_13 c1;

module test();
	initial
		begin
			c1=new();
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*


class constraint_14;
	rand int da[];
	constraint c1{da.size == 12;}
	constraint c2{foreach(da[i])
			if(i % 3 == 0)
				da[i] == 1;
			else
				da[i] == 0; }
endclass

constraint_14 c1;

module test();
	initial 
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_15;
	rand int da[];
	constraint c1{da.size == 15;}
	constraint c2{foreach(da[i])
			if(i % 3 == 2)
				da[i] == i / 3 + 1;
			else
				da[i] == 0; }
endclass

constraint_15 c1;

module test();
	initial
		begin
			c1=new();
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_16;
	rand int da[];
	constraint c1{da.size == 15;}
	constraint c2{foreach(da[i])
			if(i%4==0 || i%4==3)
				da[i] == 1;
			else 
				da[i] == 2; }
endclass

constraint_16 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*



class constraint_12;
	rand int da[];
	constraint c1{da.size == 12;}
	constraint c2{foreach(da[i])
			if(i==0)
				da[i] == 0;
			else if(i==1)
				da[i] == 1;
			else
				da[i] == da[i-2] + da[i-1]; }
endclass

constraint_12 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*


class constraint_19;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i] == 5 * (i+1);
			else
				da[i] == -5 * (i+1); }

endclass


constraint_19 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end		
		
endmodule



*/

//========================================
/*

class constraint_17;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i] == 0;
			else
				da[i] inside {[1:9]}; }
endclass

constraint_17 c1;

module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



class constraint_11;
	rand bit [3:0] da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i%2 == 0)
				da[i]%2 == 1;
			else if(i%2 == 1)
				da[i]%2 == 0; }
endclass

constraint_11 c1;

module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule 


*/

//========================================
/*


class constraint_18;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i == 0)
				da[i] == 0;
			else
				da[i] == da[i-1] + 5; }
endclass

constraint_18 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*

class constraint_20;
	rand int fixed[15];
	rand int da[];
	rand int queue[$];
	constraint c1{da.size == 15;
			queue.size == 15;}
	constraint c2{foreach(fixed[i])
			fixed[i] inside {[15:60]} && fixed[i]%2==0;}

	constraint c3{foreach(da[i])
			da[i] inside {[15:60]} && da[i]%2==0;}
	constraint c4{foreach(queue[i])
			queue[i] inside {[15:60]} && queue[i]%2==0;} 
endclass

constraint_20 c1;

module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("fixed: %p, da: %p, queue: %p",c1.fixed,c1.da,c1.queue);
		end
endmodule





*/

//========================================
/*



class constraint_27;
	rand int da[];
	constraint c1{da.size == 6;}
	constraint c2{foreach(da[i])
			da[i] inside {[1:9]};}
	constraint c3{unique {da};}	
	constraint c4{(da.sum() % 3) == 0;}
endclass
constraint_27 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule


*/

//========================================
/*


class constraint_26;
	rand int da[];
	rand int a;
	constraint c1{da.size == 6;}
	constraint c2{a inside {[20:30]};}
	constraint c3{foreach(da[i])
			if(i==0)
				da[i] == a;
			else
				da[i] == da[i-1] - 3; }
endclass
constraint_26 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*


class constraint_28;
	rand int count;
	constraint c1{(count%3 == 0) && (count%5 == 0) && (count%2 != 0);}
	constraint c2{count inside {[30:150]};}
endclass
constraint_28 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("count=%d",c1.count);
				end
		end
endmodule



*/

//========================================
/*



class constraint_29;
	rand int da[];
	constraint c1{da.size == 10;}

	//method 1
	/*constraint c2{foreach(da[i])
			if(i==0)
				da[i] == 1;
			else if(i==9)
				da[i] == 1;
			else
				da[i] == 0; }
	*/
	
	//method 2
	/* 
    constraint c2{foreach(da[i])
			if(i%9 == 0)
				da[i] == 1;
			else 
				da[i] == 0; }
endclass
constraint_29 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule 


*/

//========================================
/*


class constraint_21;
	int prime_num[$];
	rand int da[];
	constraint c1{da.size == 100;}
	constraint c2{foreach(da[i])
			da[i] == prime_fun(i); }

	function int prime_fun(input int i);
		if(i>1 && (! ((i%2 == 0 && i!=2) || (i%3==0 && i!=3) || (i%5==0 && i!=5) || (i%7==0 && i!=7))))
			return i;
		else
			return 0;
	endfunction

	function void post_randomize();
		foreach(da[i])
			begin
				if(da[i] != 0)
					begin
						prime_num.push_back(da[i]);
					end
			end
	endfunction		
endclass
constraint_21 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*




class constraint_22;
	rand int a[];
	rand int b[];
	
	constraint c1{a.size == 10; b.size == 10;}
	
	constraint c2{foreach(a[i])
			a[i] inside {[1:50]};
		      foreach(b[i])
			b[i] inside {[1:50]};}

	constraint ascending_order{foreach(a[i])
					if(i>0)
						a[i] > a[i-1]; }
	
	constraint descending_oredr{foreach(b[i])
					if(i>0)
						b[i] < b[i-1]; }

endclass
constraint_22 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("ASCENDING ORDER: %p",c1.a);
			$display("DESCENDING ORDER: %p",c1.b);
		end
endmodule


*/

//========================================
/*



class constraint_30;
	rand bit [7:0] a;
	constraint c2{(a%4==0) && (a%8!=0);}
endclass
constraint_30 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize() with {a>100 && a<200;});
					$display("a: %d",c1.a);
				end
		end
endmodule


*/

//========================================
/*


class constraint_23;
	rand int arr[5][6];
	int i;
	
	constraint c1{foreach(arr[i])
			foreach(arr[i][j])
				arr[i][j] inside {[1:100]};}
	
	constraint c2{foreach(arr[i])
			foreach(arr[i][j])
				arr[i][5] == arr[i][0] + arr[i][1] + arr[i][2] + arr[i][3] + arr[i][4];

			}

endclass
constraint_23 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("arr: %p",c1.arr);
		end
endmodule



*/

//========================================
/*



class constraint_24;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{(da.sum() % 5) == 0;}
endclass
constraint_24 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule 
	


*/

//========================================
/*



class constraint_25;
	rand int da[];
	constraint c1{da.size == 6;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:10]};}
	constraint c3{da.sum() == 30;}
endclass
constraint_25 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



*/

//========================================
/*


class constraint_31;
	rand int da[];
	constraint c1{da.size==10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:5]};}
	constraint c3{foreach(da[i])
				if(i<9 && da[i] == 0)
					da[i+1] == 1;}
endclass
constraint_31 c1;
module test();
	initial
		begin
			repeat(10)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule
				



*/

//========================================
/*



class constraint_32;
	rand int da[];
	constraint c1{da.size == 8;}
	constraint c2{foreach(da[i])
			da[i] inside {[1:5]};}
	constraint c3{foreach(da[i])
			da[i] == da[da.size() - 1 - i]; }
endclass
constraint_32 c1;
module test();
	initial
		begin
			repeat(10)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule


*/

//========================================
/*


class constraint_33;
	rand bit[4:0]hour;
	rand bit[5:0]minute;
	rand bit[5:0]second;
	constraint c1{hour inside {[0:23]};}
	constraint c2{minute inside {[0:59]};}
	constraint c3{second inside {[0:59]};}
endclass
constraint_33 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("%d:%d:%d",c1.hour,c1.minute,c1.second);
				end
		end
endmodule



*/

//========================================
/*



class constraint_34;
	rand int date,month,year;
	constraint c1{month inside {[1:12]};}
	constraint c2{ if(month inside {1,3,5,7,8,10,12})
				date inside {[1:32]};
			else if(month == 2)
				{if((year%4 == 0 && year%100 != 0) || (year % 400 == 0))
					date inside {[1:30]};
				 else
					date inside {[1:28]}; }
			else 
				date inside {[1:30]}; }
	constraint c3{year inside {[1000:3000]};}
endclass
constraint_34 c1;
module test();
	initial 
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("%d:%d:%d",c1.date,c1.month,c1.year);
				end
		end
endmodule


*/

//========================================
/*




class constraint_35;
	rand bit [7:0]y;
	constraint c1{$countones(y) == 1;}
endclass
constraint_35 c1;
module test();
	initial
		begin
			repeat(8)
				begin
					c1=new;
					assert(c1.randomize());
					$display("y=%b",c1.y);
				end
		end
endmodule

*/

//========================================

/*



class constraint_36;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:50]};}
	constraint c3{foreach(da[i])
			if(i>0)
				da[i] > da[i-1]; }
endclass
constraint_36 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule

*/

//========================================

/*


class constraint_37;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{foreach(da[i])
			if(i>0)
				da[i] != da[i-1]; }
endclass
constraint_37 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule

*/

//========================================
/*



class constraint_38;
	rand int number[];
	constraint c1{number.size == 10;}
	constraint c2{number[0] != 0;}
	constraint c3{foreach(number[i])
			number[i] inside {[0:9]};}

	function void print();
		$display("+91-%d%d%d%d%d%d%d%d%d%d",number[0],number[1],number[2],number[3],number[4],number[5],number[6],number[7],number[8],number[9]);
	endfunction
endclass
constraint_38 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					c1.print();
				end
		end
endmodule


*/

//========================================
/*


class constraint_39;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{(da[0] + da[2] + da[4] + da[6] + da[8]) == (da[1] + da[3] + da[5] + da[7] + da[9]);}  
endclass
constraint_39 c1;
module test();
	initial
		begin
			repeat(5) 
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



class constraint_40;
	rand int da[];
	constraint c1{da.size == 4;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:9]};}
	constraint c3{da.sum() == 10;}
endclass
constraint_40 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end	
endmodule


*/

//========================================
/*
 


class constraint_41;
	rand bit[4:0]a;
	constraint c1{a<20;}
	constraint c2{a%4 == 0;}
endclass
constraint_41 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a=%d",c1.a);
				end
		end
endmodule



*/

//========================================
/*



class constraint_42;
	rand bit[3:0] da[];
	constraint c1{da.size == 5;}
	constraint c2{foreach(da[i])
			da[i] == 5 - i;}
endclass
constraint_42 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule


*/

//========================================
/*

class constraint_43;
	rand bit[7:0] da[];
	constraint c1{da.size == 5;}
	constraint c2{foreach(da[i])
			da[i] == (i+1)**2;}
endclass
constraint_43 c1;
module test();
	initial
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule




*/

//========================================
/*


class constraint_44;
	rand int da[];
	constraint c1{da.size == 5;}
	constraint c3{foreach(da[i])
			da[i] == 2**(i+3);}
endclass
constraint_44 c1;
module test();
	initial	
		begin
			c1=new;
			assert(c1.randomize());
			$display("da: %p",c1.da);
		end
endmodule



*/

//========================================
/*



class constraint_45;
	rand bit[7:0]a;
	constraint c1{a%3==0;}
	constraint c2{$countones(a) == 0 || $countones(a) == 2 || $countones(a) == 4 || $countones(a) == 4 || $countones(a) == 6 || $countones(a) == 8;}
endclass
constraint_45 c1;
module test();
	initial
		begin
			repeat(5)
			begin
				c1=new;
				assert(c1.randomize());
				$display("a: %b",c1.a);
			end
		end
endmodule


*/

//========================================
/*




class constraint_46;
	rand bit[4:0]a;
	constraint c1{a inside {[0:31]};}
	constraint c2{(a%4 == 0) && (a%6 != 0);}
	constraint c3{unique {a};}
endclass
constraint_46 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a: %d",c1.a);
				end
		end
endmodule

*/

//========================================
/*



class constraint_47;
	rand int a;
	constraint c1{a inside {[1:50]};}
	constraint c2{a%2 !=0 && a%3!=0 && a%5!=0;}
endclass
constraint_47 c1;
module test;
	initial 
		begin
			repeat(10)
				begin
					c1=new;
					assert(c1.randomize());
					$display("a: %d",c1.a);
				end
		end
endmodule


*/

//========================================
/*



class constraint_48;
	rand int da[];
	constraint c1{da.size == 6;}
	constraint c2{foreach(da[i])
			da[i] inside {[10:20]};}
	constraint c3{da.sum() == 100;}
endclass
constraint_48 c1;
module test();
	initial
		begin
			repeat(3)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule


*/

//========================================
/*


class constraint_49;
	rand int da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			da[i] inside {[0:20]};}
	constraint c3{da.sum()%2 == 0;}
endclass
constraint_49 c1;
module test();
	initial 
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule



*/

//========================================
/*



class constraint_50;
	rand bit[7:0] da[];
	constraint c1{da.size == 10;}
	constraint c2{foreach(da[i])
			if(i==0 || i==da.size-1)
				da[i]%2 == 0;
			else
				da[i] inside {[1:10]};}
endclass
constraint_50 c1;
module test();
	initial
		begin
			repeat(5)
				begin
					c1=new;
					assert(c1.randomize());
					$display("da: %p",c1.da);
				end
		end
endmodule

*/


//========================================

//========================================



//======================================================
/*
// QUE: Write a constraint to avoid generating the same 4-bit value as any of the last 5 occurrences.

class demo;
  randc bit [3:0] a;
  bit [3:0] prev[$];

  constraint my_c {foreach (prev[i]) a != prev[i];}

  function void post_randomize();
    prev.push_back(a);
    if (prev.size() > 5) prev.delete(0);
  endfunction
endclass : demo

module test7;
  demo d1;

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule

*/


//======================================================
/*

// QUE: Write a constraint to generate a 32-bit number where exactly one bit is high.

class demo;

  rand bit [31:0] a;

  constraint my_c {$countones(a) == 1;}

endclass : demo

demo d1;

module test6 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end

endmodule
*/
//======================================================
/*



// QUE: Write a constraint to generate a sequence where even numbers appear in odd positions.

class demo;

  rand bit [7:0] a;

  int index = 0;

  constraint my_c {
    if ((index % 2) == 1)
    (a % 2) == 0;
    else
    if ((index % 2) == 0) (a % 2) == 1;
  }

  function void post_randomize();
    index++;
  endfunction


endclass : demo

demo d1;

module test8;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d \t index = %0d", d1.a, d1.index - 1);
    end
  end

endmodule


*/

//======================================================
/*


// QUE: Write a constraint to generate unique divisible of 3.

class demo;

  randc bit [7:0] a;

  constraint my_c {(a % 3) == 0;}

endclass : demo

demo d1;

module test9 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule



*/
//======================================================
/*

// QUE: Write a constraint to ensure that the sum of three consecutive numbers is even.

class demo;

  rand bit [7:0] a[];

  constraint my_c {a.size inside {[5 : 10]};}

  constraint my2_c {foreach (a[i]) if (i < a.size - 2) ((a[i] + a[i+1] + a[i+2]) % 2) == 0;}

endclass : demo


demo d1;

module test10;

  initial begin
    d1 = new();

    assert (d1.randomize());
    $display("a = %p", d1.a);

  end


endmodule
*/


//======================================================
/*
// QUE: Write a constraint where a variable's range of 0-100 has 10% probability and 101-255 has 30% probability.


class demo;

  rand bit [8:0] a;

  constraint my_c {
    a dist {
      [  0 : 100] :/ 1,  // 10 % prob = 1/10
      [101 : 255] :/ 3,  // 30 % prob = 3/10
      [256 : 511] :/ 6  // 60 % prob = 6/10
    };
  }

endclass : demo

demo d1;

module test11;
  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule






*/
//======================================================
/*

// QUE: Write a constraint to generate values in increasing order in between
// 1 to 500 and difference between current and previous values should be in
// between 1 to 10

class demo;

  rand int a;

  int prev;

  constraint my1_c {a > prev;}

  constraint my2_c {(a - prev) inside {[1 : 10]};}

  constraint my3_c {a inside {[1 : 500]};}


  function void post_randomize();
    prev = a;
  endfunction

endclass : demo

demo d1;

module test12;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule




*/


//======================================================
/*

// QUE: Write a constraint for a 2D array with specific constraints.

class demo;

  rand int array[][];  // Depth x width

  constraint my_c {array.size == 16;}

  constraint my2_c {foreach (array[i]) array[i].size == 5;}

  constraint my3_c {
    foreach (array[i, j])
    array[i][j] inside {[1 : 10]};
  }

endclass : demo

demo d1;

module test13;
  initial begin
    d1 = new();
    assert (d1.randomize());
    foreach (d1.array[i]) begin
      $display("array = %p", d1.array[i]);
    end
    $display("depth = %0d", d1.array.size);
    $display("width = %0d", d1.array[0].size);
  end
endmodule





*/
//======================================================
/*
// QUE: Write a constraint where the number of 1's in one variable depends on another variable.

class demo;

  rand bit [2:0] num;
  rand bit [7:0] a;

  constraint my_c {$countones(a) == num;}

endclass : demo

demo d1;

module test14;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b \t no_of_ones = %0d", d1.a, d1.num);
    end
  end

endmodule





*/



//======================================================
/*

// QUE: Write a constraint to ensure that two queues contain different elements.

class demo;

  rand bit [3:0] q1[$];
  rand bit [3:0] q2[$];

  constraint my1_c {
    q1.size == q2.size;
    q1.size inside {[1 : 10]};
  }

  constraint my2_c {foreach (q1[i]) foreach (q2[j]) q1[i] != q2[j];}

endclass : demo

demo d1;

module test15;

  initial begin
    d1 = new();
    assert (d1.randomize());
    $display("queue1 = %p", d1.q1);
    $display("queue2 = %p", d1.q2);
  end

endmodule




*/
//======================================================
/*


// QUE: Write a constraint to generate the pattern 01010101.

class demo;

  rand bit a;
  int index;

  constraint my_c {
    if ((index % 2) == 1)
    a == 1'b1;
    else
    a == 1'b0;
  }

  function void post_randomize();
    index++;
  endfunction


endclass : demo

demo d1;

module test16;

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $write("%b ", d1.a);
    end

  end

endmodule



*/


//======================================================
/*

// QUE: Write a constraint to generate the sequence 0102030405.

class demo;

  rand int a;
  int index;
  int inx;

  constraint my_c {
    if ((index % 2) == 0)
    a == 0;
    else
    a == inx;
  }

  function void post_randomize();
    index++;
    if ((index % 2) == 1) begin
      inx++;
    end
  endfunction

endclass : demo


demo d1;

module test17 ();

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule




*/
//======================================================
/*


// QUE: Write a constraint to generate a 10-bit variable with alternating numbers.

class demo;

  rand bit [9:0] a;

  bit [9:0] prev;

  constraint my_c {foreach (a[i]) if (i < $size(a) - 1) a[i] != a[i+1];}

  constraint my1_c {a != prev;}

  function void post_randomize();
    prev = a;
  endfunction

endclass : demo

demo d1;

module test18 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end

endmodule



*/


//======================================================
/*

//  QUE: Write a constraint to generate the sequence 1122334455.

class demo;

  rand int a;
  int index;

  constraint my_c {a == (index + 2) / 2;}

  function void post_randomize();
    index++;
  endfunction


endclass : demo

demo d1;

module test19;
  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule




*/
//======================================================
/*

// QUE: Write a constraint to generate the palindrome-like sequence 1234554321.

class demo;

  rand int a;
  int prev;
  int index = 1;

  constraint my_c {
    if (index <= 5) {
      a == prev + 1;
    } else
    if (index == 6)
    a == prev;
    else {
      a == prev - 1;
    }
  }

  function void post_randomize();
    prev = a;
    index++;
    if (index > 10) begin
      index = 2;
    end
  endfunction



endclass : demo

demo d1;

module test20;
  initial begin
    d1 = new();
    repeat (20) begin
      assert (d1.randomize());
      $display("a = %0d \t index = %0d", d1.a, d1.index - 1);
    end
  end
endmodule

// constraint c_palindrome {
//     // Limit to 4 digits (1000-9999)
//     num inside {[1000:9999]};
//     // First digit equals last digit
//     (num / 1000) == (num % 10);
//     // Second digit equals second-to-last digit
//     ((num / 100) % 10) == ((num / 10) % 10);
//   }
// endclass






*/
//======================================================
/*

// QUE: Write a constraint to generate the alternating positive-negative sequence: 5, -10, 15, -20, 25, -30.

class demo;

  rand int a;
  int index = 1;

  constraint my_c {
    if ((index % 2) == 1)
    a == (index * 5);
    else
    a == -(index * 5);

  }

  function void post_randomize();
    index++;
  endfunction

endclass : demo

demo d1;

module test21;

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end


endmodule




*/
//======================================================
/*
// QUE: Write a constraint to generate the sequence 9, 19, 29, 39, 49, 59, 69, 79.

class demo;

  rand int a;
  int prev = 9;

  constraint my_c {a == prev;}

  function void post_randomize();
    prev = a + 10;
  endfunction

endclass : demo

demo d1;

module test22;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end

  end

endmodule





*/
//======================================================
/*


// QUE: Write a constraint to generate consecutive and non-consecutive numbers in a fixed array.

class demo;

  rand bit [3:0] a[10];
  rand bit mode;

  constraint my_c {
    if (mode) {
      foreach (a[i]) if (i < $size(a) - 1) (a[i] - a[i+1]) == 1;
    } else {
      foreach (a[i]) if (i < $size(a) - 1) (a[i] - a[i+1]) != 0;
    }
  }



endclass : demo

demo d1;

module test23;

  initial begin
    d1 = new();
    assert (d1.randomize() with {mode == 1;});
    $display("consecutive     a = %p", d1.a);
    assert (d1.randomize() with {mode == 0;});
    $display("non-consecutive a = %p", d1.a);
  end

endmodule



*/
//======================================================
/*
// QUE: Write a  constraint to generate consecutive elements in a 2D array.

class demo;

  rand int a[][];

  constraint my1_c {a.size == 16;}

  constraint my2_c {foreach (a[i]) a[i].size == 5;}

  constraint my3_c {
    foreach (a[i, j])
    a[i][j] inside {[1 : 9]};
  }

  constraint my4_c {
    foreach (a[i])
    foreach (a[i][j]) if ((i < a.size - 1) && (j < a[0].size - 1)) (a[i][j] - a[i][j+1]) == 1;
  }

  constraint my5_c {
    foreach (a[i, j]) if ((i < a.size - 1) && (j < a[0].size - 1)) a[i][j] - a[i+1][j] == 1;
  }

endclass : demo

demo d1;

module test24;
  initial begin
    d1 = new();
    assert (d1.randomize());
    foreach (d1.a[i]) begin
      $display("a = %p", d1.a[i]);
    end
    $display("depth = %0d", d1.a.size);
    $display("width  = %0d", d1.a[0].size);
  end
endmodule





*/


//======================================================
/*

// QUE: Write a constraint to generate even numbers between 10 and 30.

class demo;

  randc int a;

  constraint my_c {
    a inside {[10 : 30]};
    (a % 2) == 0;
  }

endclass

demo d1;

module test25;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end

  end

endmodule





*/
//======================================================
/*

// QUE: Write a constraint to generate the factorial of a given number.

class demo;

  function int fact(int a);

    int temp = 1;

    for (int i = 1; i <= a; i++) begin
      temp = temp * i;
    end

    return temp;

  endfunction


endclass : demo

demo d1;

module test26;

  int t;

  initial begin

    d1 = new();

    t  = 5;

    $display("factorial of t = %0d", d1.fact(t));

  end

endmodule




*/


//======================================================
/*
// QUE: Write a constraint to generate the Fibonacci series.


class demo;

  rand int a[];

  constraint my_c {
    a.size inside {[5 : 11]};

    foreach (a[i])
    if (i == 0)
    a[i] == 0;
    else
    if (i == 1)
    a[i] == 1;
    else
    a[i] == a[i-1] + a[i-2];

  }


endclass : demo

demo d1;

module test27;

  initial begin
    d1 = new();
    assert (d1.randomize());
    $display("Fibonacci: %p", d1.a);
  end
endmodule






*/
//======================================================
/*

// QUE: Write a constraint to generate palindrome numbers.

class demo;

  rand int a;
  int prev;
  int index = 1;

  constraint my_c {
    if (index <= 5) {
      a == prev + 1;
    } else
    if (index == 6)
    a == prev;
    else {
      a == prev - 1;
    }
  }

  function void post_randomize();
    prev = a;
    index++;
    if (index > 10) begin
      index = 2;
    end
  endfunction



endclass : demo

demo d1;

module test28;
  initial begin
    d1 = new();
    repeat (20) begin
      assert (d1.randomize());
      $display("a = %0d \t index = %0d", d1.a, d1.index - 1);
    end
  end
endmodule





*/
//======================================================
/*

// QUE: Write a constraint to generate random even numbers between 50 and 100.

class demo;

  randc int a;

  constraint my_c {
    a inside {[50 : 100]};
    (a % 2) == 0;
  }

endclass

demo d1;

module test29;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end

  end

endmodule







*/
//======================================================
/*

// QUE: Write a constraint to generate unique numbers without using the unique keyword.

class demo;

  randc bit [3:0] a;

endclass : demo

demo d1;

module test30;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule




*/
//======================================================
/*



// QUE: Write a constraint to print the pattern 1122112211.

class demo;

  rand int a;
  int index;

  constraint my_c {
    if (((index % 4) == 0) || ((index % 4) == 1))
    a == 1;
    else
    a == 2;
  }

  function void post_randomize();
    index++;
  endfunction

endclass

demo d1;

module test31;
  initial begin
    d1 = new();
    repeat (20) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule


*/
//======================================================
/*

// QUE: Write a constraint to generate alternating pairs of 0 and 1.

class demo;

  rand bit a;
  bit prev;

  constraint my_c {a != prev;}

  function void post_randomize();
    prev = a;
    $write("%b ", a);
  endfunction

endclass : demo


demo d1;

module test32;

  initial begin

    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
    end

  end


endmodule




*/

//======================================================
/*



//TODO:Write a code snippet to randomize only the 12th bit of a variable.

class temp;
    rand bit a;
    bit [15:0] b;
  
    function void post_randomize();
        b[12]=a;  
    endfunction
endclass
temp t1;
module test33; 
    initial begin
        t1 = new();
        repeat(10) begin
            assert(t1.randomize());
            $display("a: %b",t1.a);
        		$display("b: %b",t1.b);
				end
    end
endmodule


*/

//======================================================
/*

//TODO:Write a code to generate random number is an Armstrong number. abc=a^3 + b^3 + c^3
class temp;
    rand int array[];
    int num_digits=4;
    constraint my_c{array.size==num_digits;}
    constraint my1_c{foreach(array[i])
                    array[i] inside {[1:9]};}
    // constraint my2_c{array[0]**3+array[1]**3+array[2]**3 == array[2]*100 + array[1]*10 + array[0]*1;}
     constraint armstrong_c {
        let sum = 0;
        foreach(array[i]) {
            sum += array[i] ** num_digits;
        }
        
        let number = 0;
        foreach(array[i]) {
            number = number * 10 + array[i];
        }
        
        sum == number;
    }
    

endclass
temp t1;
module test34;
    initial begin
        t1=new;
        repeat(5)
        begin
            assert(t1.randomize());
            $display("array %p",t1.array);
            //  $display("array %0d",t1.array[2]*100 + array[1]*10 + array[0]*1);
        end
    end
endmodule






*/

//======================================================
/*
//TODO:Write a constraint to generate unique numbers between 99 and 100.
class temp;
    rand int a;
    real b;
    constraint my_c{a inside {[9900:10000]};}
    function void post_randomize();
            b = (a/100.00);
    endfunction
endclass
temp t1;
module test35;
initial begin
    t1=new;
    repeat(5)
    begin
        assert(t1.randomize());
        $display("b = %0.2f",t1.b);
    end
end
endmodule





*/

//======================================================
/*


// TODO:Write a code to generate a random floating-point number between 1.35 and 2.57.
class temp;
rand int a;
real b;

constraint c1 {a inside{[135:257]};}

function void post_randomize();
    b = (a/100.0);
    $display("b = %0.2f",b);
endfunction

endclass
 temp t_h;
 module test36;
    initial begin
        t_h=new();
        repeat(5)
        begin
        assert(t_h.randomize());
            end
    end
 endmodule



*/
//======================================================
/*
//TODO:Write a constraint for sorting elements in a dynamic array.
class temp;
    rand int a[];
    constraint my_c{a.size inside{[5:10]};}
    constraint my_c1{foreach(a[i])
                        if(i<a.size-1)
                            a[i]<a[i+1];}
    constraint my_c2{foreach(a[i])
                    a[i] inside {[1:99]};}
endclass
temp t1;
module test37;
initial begin
    t1 = new;
    repeat(5)
    begin
        assert(t1.randomize());
        $display("a %p",t1.a);
    end
end
endmodule





*/
//=======================================================
/*

// QUE: Write a constraint for a 32-bit variable such that exactly 12 non-consecutive 1's are generated.

class demo;

  rand bit [31 : 0] a;

  constraint my1_c {$countones(a) == 12;}

  constraint my2_c {

    foreach (a[i]) {
      if (i < $size(a) - 1) {if (a[i]) a[i] != a[i+1];}
    }

  }

endclass : demo

demo d1;

module test1 ();

  initial begin
    d1 = new();

    repeat (5) begin

      assert (d1.randomize());

      $display("a = %b", d1.a);

    end

  end

endmodule





*/
//======================================================

//======================================================
/*
// QUE: How can you generate Gray code sequences using SystemVerilog?

class demo;

  rand bit [3:0] bin;
  bit [3:0] gray;

  function void post_randomize();

    gray[3] = bin[3];

    for (int i = $size(bin) - 1; i > 0; i--) begin
      gray[i-1] = bin[i] ^ bin[i-1];
    end

    // gray[2] = bin[3] ^ bin[2];
    // gray[1] = bin[2] ^ bin[1];
    // gray[0] = bin[1] ^ bin[0];

    $display("bin  = %b", bin);
    $display("gray = %b\n", gray);

  endfunction

endclass : demo

demo d1;

module test2 ();

  initial begin

    d1 = new();

    repeat (5) begin
      assert (d1.randomize());
    end

  end

endmodule





*/
//=======================================================
/*

// QUE: Write a constraint to generate specific values: 25, 27, 30, 36, 40, 45.

class demo;

  randc int a;

  constraint my_c {
    a > 24;
    a < 46;
    ((a % 5) == 0) || ((a % 9) == 0);
    a != 35;
  }

endclass : demo

demo d1;

module test3;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule




*/
//======================================================


//======================================================
/*


//  QUE: Create a 62-bit variable constraint such that bits 0-31 are 1 and the remaining bits are 0.

class demo;

  rand bit [61:0] a;

  constraint my_c {
    a[31:0] == '1;
    a[61:32] == '0;
  }

endclass : demo

demo d1;

module test4;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end


endmodule



*/
//=======================================================
/*

// QUE: Write a constraint for a 16-bit variable such that no two consecutive 1's are generated.

class demo;

  rand bit [15:0] a;

  constraint my_c {foreach (a[i]) if (i < $size(a) - 1) if (a[i]) a[i] != a[i+1];}

endclass : demo

demo d1;

module test5 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end

endmodule



*/
//======================================================

