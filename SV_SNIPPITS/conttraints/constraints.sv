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



////=======================================
//
//
//Code 1 : constrait creation
//module packet ;
//class pkt;
// rand bit[0:15] data;
// rand bit[0:15] addr;
//
// constraint cond { addr <= 8'hA; }
//
// function void post_randomize();
// $display ("addr=%d data=%d",addr,data);
// endfunction
//
//endclass
// initial begin
// pkt p1=new();
// repeat(200) begin
// p1.randomize();
// end
//end
//endmodule
// AISHWARYA S
// 
// //=======================================
//
//
//Code 2 : creating multiple constraint
//module cons ;
// class packet;
//
// rand bit [0:7] min,max,typ;
// rand bit [0:7] value ;
//
// constraint con { min > 5 ; max < 100 ; typ > 50 ; typ < 100; value ==
//5;} // can create multiple constraint
//
// function void post_randomize();
// $display ("min=%d max=%d typ=%d, value =%d",
//min,max,typ,value);
// endfunction
//
// endclass
//
//
// initial begin
// packet p1=new();
//
// for (int i=0; i<=10;i++) begin
// p1.randomize();
// end
// end
//endmodule
// AISHWARYA S
// 
// //=======================================
//
//
//Code 3: inside & inverted operator ( gives the range of value for
//the variable )
//module cons;
// class packet;
// rand bit [0:3] data,addr;
//
// constraint cond { data inside {[7:15 ]};}
//
// constraint call { !(addr inside {[ 7:15]});}
//
// function void post_randomize();
// $display("data=%d addr=%d",data,addr);
// endfunction
//endclass
//
// initial begin
// packet p1 = new();
// repeat(100) begin
// p1.randomize();
// end
// end
//Endmodule
// AISHWARYA S
// 
// //=======================================
//
//
//Code 4 : Weighted distribution
//module weight ;
// class cube;
// rand bit [0:2] value ,index ;
//
// constraint cond { value dist {1 :=1 , 2:=2 , [3:6]:=10, 7:=1 } ;}
// constraint con { index dist {1 :/1 , 2:/2 , [3:6]:/10, 7:=1 } ;}
//
// endclass
//
// initial begin
//cube c1 = new();
// repeat(50) begin
// c1.randomize();
// $display ("value=%d index=%d ",c1.value,c1.index);
// end
// end
//Endmodule
// AISHWARYA S
// 
// //=======================================
//
//
//Code 5 : extern method
//class pkt;
//
// randc bit[0:4] addr;
// constraint data;
//
//endclass
//
//constraint pkt::data { addr >=7;}
//module value;
// initial begin
// pkt p1=new();
// repeat (5) begin
// p1.randomize();
// $display("addr=%d",p1.addr);
// end
// end
//Endmodule
//AISHWARYA S
//
////=======================================
//
//Code 6: Implicit constraint
//module implicit ;
// class pkt;
// rand bit [0:2] len,value ;
//
// constraint data { (len == 2) -> (value > 5) ; }
// constraint data1 {len dist {2:=60 , 3:=10 , 4:=20 , 5:=20};}
//
// endclass
//
// pkt p1;
// initial begin
// p1=new();
// repeat(100) begin-
// p1.randomize();
// $display("len=%d value=%d",p1.len,p1.value);
// end
// end
//endmodule
//
//AISHWARYA S
//
////=======================================
//
//Code 7 : If else constraint
//module cons;
// class pkt;
// rand bit[0:7] value;
// rand bit[0:2] mode;
//
// constraint number {
// if (value %2 == 0) {
// mode == 1;
// }
// else {
// mode == 0;
// }
// }
//Endclass
// pkt p1;
//initial begin
// p1=new();
// repeat(50) begin
// p1.randomize();
// $display("value=%d mode=%d",p1.value,p1.mode);
// end
//end
//endmodule
//
//
//AISHWARYA S
//
////=======================================
//
//Code 8: static constraint
//module value ;
// class pkg;
// randc bit [0:4] a;
//
// constraint max { a >= 5; }
// static constraint min { a <= 10; }
// endclass
//
// pkg p1,p2;
// initial begin
// p1 = new();
// p2=new();
// p1.min.constraint_mode(0);
// repeat (10) begin
// p1.randomize();
// p2.randomize();
// $display ("a=%d a1=%d",p1.a,p2.a);
// end
// end
//endmodule
//
//AISHWARYA S
////=======================================
//
//Code 9: inline constraint
//module inline;
// class pkg;
// rand bit[0:7] a;
//
// constraint in { a > 5 ; a < 20 ; }
// endclass
//
// pkg p1;
// initial begin
// p1=new();
// repeat (5) begin
// p1.randomize() with { a > 10 ;};
// $display ("a=%d",p1.a);
// end
// end
//endmodule
//AISHWARYA S
//
////=======================================
//
//Code 10 : soft constraint
//module soft_con;
// class pkg;
// rand bit [0:7] value ;
//
// constraint addr { soft value == 5 ;}
// Endclass
// pkg p1;
// initial begin
// p1= new();
// repeat(20) begin
// p1.randomize() with { value == 6 ; };
// $display("value=%d",p1.value);
// end
// end
//endmodule
//AISHWARYA S
//
////=======================================
//
//Code 11 : array constraints
//module arr;
// class abc;
// rand bit [3:0] arr1 [5]; // static
// rand bit [3:0] darr []; // dynamic
// rand bit [3:0] qarr [$]; // queue
//
// constraint size { qarr.size() == 6 ; }
// constraint value { foreach (arr1[i])
// arr1[i] == i*2 ;
//
// foreach ( darr [i])
// darr[i] == i+1;
//
// foreach (qarr[i])
// qarr[i] == i*3;
// }
//
// function new ();
// darr = new[5];
// endfunction
//
// endclass
//
// abc a1;
// initial begin
// a1=new();
// a1.randomize();
// $display ("array=%p \n dynamic=%p \n queue=%p",a1.arr1,
//a1.darr, a1.qarr);
// end
// endmodule
//AISHWARYA S
//
////=======================================
//
//Code 12: constraint inheritence
//module inher;
// class pkt1;
// rand bit[0:3] addr;
// constraint range { addr < 4; }
// endclass
//
// class pk2 extends pkt1;
// constraint range {addr > 4;}
// endclass
//
// pkt1 p1;
// pk2 p2;
//
// initial begin
// p1=new();
// p2=new();
//
// repeat (5) begin
// p1.randomize();
// $display ("addr1=%d",p1.addr);
// end
//
// $display ("-------------------------");
//
// repeat (5) begin
// p2.randomize();
// $display ("addr2=%d", p2.addr);
// end
// end
//endmodule
//AISHWARYA S
//
//
////====================================
//
//
//1) Pattern 1221221221221….
//class rakesh ;
// rand int data [9:0];
// constraint cons {foreach (data[i])
// if(i%3==1 || i%3==2)
// data[i] == 2;
// else
// data[i] == 1;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// pkt.randomize();
// $display("data=%p",pkt.data);
// end
//endmodule
////--------------output---------------
//// # KERNEL: data='{1, 2, 2, 1, 2, 2, 1, 2, 2, 1}
////------------------------------
//
////=======================================
//
//Q2. Write a constraint for sorting elements in a dynamic array using constraints.
//class rakesh ;
// rand int data [];
// rand int temp,i,j;
// constraint cons {data.size() == 10;
// foreach (data[i])
// data[i] inside {[1:100]};}
// function void post_randomize();
// $display(" before sorting is %p",data);
// foreach (data[i])
// begin
// for(j=i+1; j < $size(data) ; j++)
// begin
// if(data[i] > data[j])
// begin
// //data[i] = data[i] + data[j];
// //data[j] = data[i] - data[j];
// //data[i] = data[i] - data[j];
// temp = data[i];
//Rakesh Myakala
// data[i]=data[j];
// data[j]=temp;
// end
// end
// end
// endfunction
//
//
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// pkt.randomize();
// $display("after sorting data=%p",pkt.data);
// end
//endmodule
//
////=======================================
//
////--------------output---------------
//# KERNEL: before sorting is '{40, 75, 43, 37, 51, 95, 34, 42, 9, 6}
//# KERNEL: after sorting data='{6, 9, 34, 37, 40, 42, 43, 51, 75, 95}
////------------------------------
//Q3. Write a constraint to print unique elements in a 2D array without using the "unique"
//keyword
//class rakesh ;
// rand bit[4:0] a [5][3];
// constraint cons {foreach (a[i])
// foreach (a[i][j])
// foreach (a[n])
// foreach (a[n][m])
// if (i != n && j != m)
// a[i][j] != a[n][m];
// }
//
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// pkt.randomize();
// $display("unique data=%p",pkt.a);
// end
//Rakesh Myakala
//endmodule
//
////=======================================
//
//
////--------------output---------------
//# KERNEL: unique data='{'{18, 2, 31}, '{11, 17, 13}, '{7, 1, 0}, '{26, 6, 4}, '{11,
//8, 0}}
////------------------------------
//Q4. Write a constraint for payload generation, where the size is between 11 and 22, and
//each
//value is 2 greater than the previous.
//class rakesh ;
// rand int a[];
// constraint cons {a.size() inside {[11:22]};
// foreach (a[i])
// if(i > 0)
// a[i] == a[i-1]+2 ;
// }
// constraint conss {foreach (a[i])
// a[i] inside {[1:100]};}
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// pkt.randomize();
// $display("payload data=%p",pkt.a);
// end
//endmodule
//
////=======================================
//
////--------------output---------------
//# KERNEL: payload data='{59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87,
//89, 91, 93, 95, 97}
////------------------------------
//
////=======================================
//
//Q5. Write a code to simulate cyclic randomization behavior without using the "randc"
//keyword.
//class rakesh;
// rand bit [2:0] a;
// int que[$];
// constraint cons {!(a inside {que});}
// function void post_randomize();
//Rakesh Myakala
// que.push_back(a);
// if(que.size == 2**$size(a))
// //if(que.size==8)
// begin
// que={};
// end
// endfunction
//endclass
//
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(8)begin
// pkt.randomize();
// $display("data=%d",pkt.a);
// end
//end
//endmodule
//
////--------------output---------------
//# KERNEL: data=4
//# KERNEL: data=2
//# KERNEL: data=7
//# KERNEL: data=0
//# KERNEL: data=1
//# KERNEL: data=5
//# KERNEL: data=6
//# KERNEL: data=3
////------------------------------
//
////=======================================
//
//Q6. Write a constraint such that a 4-bit variable is not the same as the last five
//occurrences.
//class rakesh;
// rand bit [3:0] a;
// int que[$];
// constraint cons {!(a inside {que});}
// function void post_randomize();
// que.push_front(a);
// if(que.size() ==6)
// que.pop_back();
// endfunction
//endclass
//
//module ram();
//Rakesh Myakala
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(8)begin
// pkt.randomize();
// $display("data=%d",pkt.a);
// end
//end
//endmodule
//
////--------------output---------------
//# KERNEL: data=12
//# KERNEL: data=10
//# KERNEL: data=15
//# KERNEL: data= 8
//# KERNEL: data=14
//# KERNEL: data= 7
//# KERNEL: data= 5
//# KERNEL: data=11
////------------------------------
//
////=======================================
//
//
//Q7. Write a constraint for two random variables such that one variable does not match
//the
//other, and five bits are toggled.
//
//class rakesh ;
// rand bit [9:0] var_1;
// rand bit [9:0] var_2;
// constraint cons {
// var_1 != var_2;
// $countones(var_1) == 5;
// $countones(var_2) == 5;
// }
// constraint toggle {foreach (var_1[i])
// if(i>0 && var_1[i]==1)
// var_1[i] != var_1[i-1];
// foreach (var_2[j])
// if(j>0 && var_2[j]==1)
// var_2[j] != var_2[j-1];}
//
//
//
//endclass
//module ram();
//Rakesh Myakala
// rakesh pkt;
// initial begin
// pkt=new;
// repeat(4)begin
// pkt.randomize();
// $display("(var1)%b != (var2)%b",pkt.var_1,pkt.var_2);
// end
//end
//Endmodule
////—----------------output—-----
//# KERNEL: (var1)1010101010 != (var2)0101010101
//# KERNEL: (var1)0101010101 != (var2)1001010101
//# KERNEL: (var1)1010100101 != (var2)0101010101
//# KERNEL: (var1)0101010101 != (var2)1010101010
////—------------------------------------
//
////=======================================
//
//Q8. Write a constraint such that the sum of any three consecutive elements in an array is
//even.
//class rakesh;
// rand bit [7:0] even [10] ;
// constraint cons {foreach (even[i])
// if(i<=10)
// ((even[i]+even[i+1]+even[i+2]) % 2)== 0 ;
//
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new;
// repeat(4)begin
// pkt.randomize();
// $display("even = %p",pkt.even);
// end
//end
//endmodule
//
//
////—----------output—----------
//# KERNEL: even = '{92, 128, 124, 76, 174, 126, 74, 204, 128, 90}
//# KERNEL: even = '{22, 128, 200, 138, 254, 242, 178, 222, 196, 244}
//# KERNEL: even = '{18, 178, 246, 248, 52, 98, 80, 160, 222, 248}
//# KERNEL: even = '{96, 144, 144, 44, 102, 138, 10, 140, 132, 188}
////—--------------------------
//Rakesh Myakala
//
////=======================================
//
//
//Q9. Write a constraint for a variable such that the number of ones depends on the value
//of
//another variable.
//class rakesh ;
// rand bit [7:0]a;
// rand int num_ones;
// constraint cons {num_ones inside {[0:7]};}
// constraint cons_1 {$countones(a) == num_ones;}
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("a=%b,number_of ones=%0d",pkt.a,pkt.num_ones);
// end
//end
//endmodule
////—-------------output—---------------
//# KERNEL: a=10000000,number_of ones=1
//# KERNEL: a=01111100,number_of ones=5
//# KERNEL: a=01011101,number_of ones=5
//# KERNEL: a=01001010,number_of ones=3
//# KERNEL: a=00000001,number_of ones=1
////—-----------------------------
//
////=======================================
//
//Q10. Write a constraint on a 16-bit random vector to generate alternating pairs of 0's and 1's.
//class rakesh ;
// rand bit [16:0] data;
// constraint ones {$countones(data) == 9;}
// constraint cons {foreach(data[i])
// if(data[i]>0 && data[i] == 1)
// data[i] != data[i-1];
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("data=%b",pkt.data);
//Rakesh Myakala
// end
//end
//Endmodule
////—---------output—------------
//# KERNEL: data=10101010101010101
//# KERNEL: data=10101010101010101
//# KERNEL: data=10101010101010101
//# KERNEL: data=10101010101010101
//# KERNEL: data=10101010101010101
////—---------------------------------------
//
////=======================================
//
//Q11. Write a constraint to randomly generate unique prime numbers in an array between
//1
//and 200, with 7 in the number.
//class rakesh ;
// rand int a;
// constraint cons {a inside {[1:200]} && prime(a) == 1 && has_digit(a) == 1;}
// function int prime (int num);
// int i;
// if (num < 2) return 0;
// if(num == 2) return 1;
// for (i=3;i<=num/2;i++)begin
// if(num % i ==0)
// return 0;
// end
// return 1;
// endfunction
// function int has_digit (int num);
// int temp;
// temp =num;
// while (temp != 0)begin
// if(temp % 10 == 7)
// return 1;
// temp = temp / 10;
// end
// return 0;
// endfunction
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// if(pkt.randomize())
// $display("prime_num with 7 =%d",pkt.a);
// else
// $display("randomization failed not a prime number = %d",pkt.a);
// end
//Rakesh Myakala
//end
//endmodule
////-------------------------output--------------------------
// # KERNEL: prime_num with 7 = 47
//# KERNEL: randomization failed not a prime number = 140
//# KERNEL: randomization failed not a prime number = 98
//# KERNEL: randomization failed not a prime number = 149
//# KERNEL: randomization failed not a prime number = 82
////----------------------------------------------------------
//
////=======================================
//
//Q12. Write a constraint to generate a 32-bit number with exactly one bit high using
//$onehot().
// class rakesh ;
// rand bit [31:0] data;
// constraint cons {$onehot(data);}
// endclass
// module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("dat%b",pkt.data);
// end
//end
//endmodule
////—----------output—----------
//# KERNEL: dat00000001000000000000000000000000
//# KERNEL: dat00000000000010000000000000000000
//# KERNEL: dat00000000000000000000000000000010
//# KERNEL: dat00000000000000000001000000000000
//# KERNEL: dat00000000000000010000000000000000
////—---------------------------------------
//
////=======================================
//
//14. Write a constraint for a variable where the range 0–100 is 70% and 101–255 is 30%.
//class rakesh;
// rand bit [7:0] data;
// constraint cons {data dist {[0:100]:=70,[101:255]:=30};}
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("data=%p",pkt.data);
//
// end
//end
//Endmodule
//Rakesh Myakala
////—-----------output—---------------
//# KERNEL: data=248
//# KERNEL: data=249
//# KERNEL: data=49
//# KERNEL: data=44
//# KERNEL: data=33
////—---------------------------
//
////=======================================
//
//Q15. Write a constraint so that the elements in two queues are different.
//class rakesh;
// rand int a [$];
// rand int b [$];
// constraint cons {a.size inside {[1:20]};
// b.size inside {[1:20]};
// }
// constraint cons_a {foreach(a[i]) a[i] inside {[1:100]};
// foreach (b[i]) b [i] inside {[1:100]};
// foreach(b[i]) !(b[i] inside {a});
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("a=%p,b=%p",pkt.a,pkt.b);
// end
//end
//Endmodule
//
////=======================================
//
////—-----------output—-----------
//# KERNEL: a='{98, 96, 19, 98, 85, 19, 75, 11},b='{65, 1, 2, 1, 64, 93, 100, 31, 58,
//99, 89, 50, 100, 52, 99, 33, 45, 100, 84}
//# KERNEL: a='{16, 30, 4, 100, 73, 98, 99, 31, 73, 99, 47, 70},b='{29, 32, 39, 77, 1}
//# KERNEL: a='{100, 12, 43, 50, 77, 74, 85},b='{6, 68, 32, 44, 99, 98, 72, 75, 40, 54,
//98, 97, 5, 36}
//# KERNEL: a='{79, 16, 71, 46, 56, 40, 69, 84, 98, 4, 28, 92, 66, 47, 11, 48},b='{26,
//29, 37}
//# KERNEL: a='{39, 46, 12, 53, 22, 97, 50, 48, 17},b='{38, 87, 99, 78, 14}
////—------------------------------------
//Q16. Write a code to check whether the randomized number is an Armstrong number.
//class rakesh;
// rand int arm;
// constraint cons {arm inside {370,345,456,407,455,544};}
// function void post_randomize();
// int sum,temp,r;
// temp = arm;
// for(int i=0;i<3;i++)begin
// r = arm % 10;
// sum = (r ** 3)+sum;
// arm = arm / 10;
//Rakesh Myakala
// end
// if(temp == sum)
// $display("armstrong number = %d",temp);
// else
// $display("not a armstrong number = %d",temp);
// endfunction
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// end
//end
//Endmodule
//
////=======================================
//
////—------------output—------------
//# KERNEL: not a armstrong number = 544
//# KERNEL: not a armstrong number = 455
//# KERNEL: not a armstrong number = 456
//# KERNEL: armstrong number = 370
//# KERNEL: armstrong number = 407
////—--------------------------------------
//
////=======================================
//
//Q17. Write a constraint to generate the Fibonacci sequence.
//class rakesh;
// rand int fibo [10];
// constraint cons {foreach (fibo[i])
// if(i==0)
// fibo[i] == 0;
// else if (i == 1)
// fibo[i] == 1;
// else
// fibo[i] == fibo[i-1] + fibo[i-2];
// }
//endclass
//
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("fibonaccic sequence = %p",pkt.fibo);
// end
//end
//endmodule
//
////=======================================
//
//
////—------------output—-------------
//# KERNEL: fibonaccic sequence = '{0, 1, 1, 2, 3, 5, 8, 13, 21, 34}
//—------------------------------------
//Rakesh Myakala
//Q18. Write a constraint to check whether the randomized number is a palindrome.
//class rakesh ;
// rand int poli;
// constraint cons {poli inside {454,343,678,756,777};}
// function void post_randomize();
// int r,sum,temp;
// temp = poli;
// for (int i=0; i<3; i++)begin
// r = poli % 10;
// sum = (sum *10) + r;
// poli = poli / 10;
// end
// if(temp == sum)
// $display("its a polidrome = %d",temp);
// else
// $display("its not a polidrome = %d",temp);
// endfunction
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// end
//end
//endmodule
//
////—-------------------------------
//# KERNEL: its a polidrome = 454
//# KERNEL: its a polidrome = 343
//# KERNEL: its not a polidrome = 756
//# KERNEL: its not a polidrome = 678
//# KERNEL: its not a polidrome = 756
////—-----------------------------
//
////=======================================
//
//Q19. Write a constraint for a 2D dynamic array to print consecutive elements.
//class rakesh;
// rand int data[2:0] [6];
// constraint cons {foreach(data[i])
// foreach (data[i][j])
// data[i][j] == i+j;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
//Rakesh Myakala
// $display("data=%p",pkt.data);
// end
//end
//endmodule
////—-------------------------------
//# KERNEL: data='{'{2, 3, 4, 5, 6, 7}, '{1, 2, 3, 4, 5, 6}, '{0, 1, 2, 3, 4, 5}}
////—--------------------
//
////=======================================
//
//Q20. Write a code to generate unique elements in an array without using the "unique"
//keyword or constraints.
//class rakesh;
// rand int data [10];
// constraint cons {foreach (data[i]) data[i] inside {[1:100]};
// foreach (data[i])
// foreach (data[j])
// if(i!=j)
// data[i] != data[j];
// }
//
//endclass
//
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(3)begin
// pkt.randomize();
// $display("data=%p",pkt.data);
// end
//end
//endmodule
// //—--------------------------------------
//# KERNEL: data='{96, 44, 100, 2, 45, 98, 99, 87, 21, 36}
//# KERNEL: data='{41, 98, 16, 72, 19, 64, 3, 61, 15, 87}
//# KERNEL: data='{83, 3, 48, 43, 67, 8, 61, 75, 72, 71}
////—---------------------------------------------------
//
////=======================================
//
//
//Q21. Write a constraint demonstrating the use of the "solve before" constraint
//class rakesh;
// rand bit [7:0] data;
// rand bit en;
// constraint cons {solve en before data;
// if(en==1) data inside {[1:100]};
// else if (en==0) data inside {[101:255]};
// }
//endclass
//module ram();
// rakesh pkt;
//Rakesh Myakala
// initial begin
// pkt=new();
// repeat(3)begin
// pkt.randomize();
// $display("en=%d,data=%d",pkt.en,pkt.data);
// end
//end
//endmodule
////—---------------------------------------
//# KERNEL: en=0,data=254
//# KERNEL: en=1,data= 50
//# KERNEL: en=1,data= 21
//# KERNEL: en=1,data= 71
//# KERNEL: en=1,data= 36
////—-------------------------
////=======================================
//
//Q22. Write a constraint to generate a 10-bit variable with alternating values (e.g.,
//1010101010).
//class rakesh;
// rand bit [9:0] data;
// constraint cons {$countones(data)==5;
// foreach(data[i])
// if(i>0 && data[i]==1)
// data[i] != data[i-1];
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("data=%b",pkt.data);
// end
//end
//endmodule
////—------------------output—---------------------
//# KERNEL: data=1010101010
//# KERNEL: data=1001010101
//# KERNEL: data=1001010101
//# KERNEL: data=1010101001
//# KERNEL: data=1010101010
////—---------------------------
//
////=======================================
//
//Q23. Write a constraint to generate even numbers between 10 to 30 using a fixed-size
//array,
//dynamic array, and queue.
//class rakesh;
// rand int dynamic [];
// rand int fixed [10];
//Rakesh Myakala
// rand int que [$];
// constraint cons_dyan {dynamic.size() == 10;
// que.size() == 10;
// foreach(dynamic[i]) dynamic[i] inside {[10:30]} && dynamic[i] %2==0;
// foreach(fixed[i]) fixed[i] inside {[10:30]} && fixed[i] %2 ==0;
// foreach(que[i]) que[i] inside {[10:30]} && que[i] %2 ==0;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("dynamic=%p,fixed=%p,que=%p",pkt.dynamic,pkt.fixed,pkt.que);
// end
//end
//endmodule
//
////—---------------------------output—---------
//# KERNEL: dynamic='{16, 26, 20, 10, 22, 20, 28, 30, 16, 22},fixed='{20, 14, 10, 12,
//12, 24, 22, 26, 10, 12},que='{16, 24, 30, 20, 24, 10, 22, 28, 10, 30}
////—---------------------------
//
////=======================================
//
//
//Q24. Write a constraint such that the array size is between 5 to 10, and the values are in
//ascending order.
//class rakesh;
// rand int ascending_order [];
// constraint cons {ascending_order.size() inside {[5:10]};
// foreach(ascending_order[i]) ascending_order[i] inside {[1:100]};}
// constraint cons_1 {foreach(ascending_order[i])
// if(i>0)
// ascending_order[i] > ascending_order[i-1];
// }
//endclass
//
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(3)begin
// pkt.randomize();
// $display("ascending_order=%p",pkt.ascending_order);
// end
//end
//endmodule
////—---------output—-----------
//# KERNEL: ascending_order='{1, 13, 15, 17, 19, 75, 77, 87, 90, 92}
//# KERNEL: ascending_order='{62, 69, 78, 82, 95}
//# KERNEL: ascending_order='{2, 3, 28, 60, 75}
////—------------------------
//Rakesh Myakala
//
////=======================================
//
//
//Q25. Write a constraint to randomly generate 10 unique numbers between 99 and 100.
//class rakesh ;
// rand int a;
// real b;
// constraint cons {a inside {[990:1000]};
// unique {a};
// }
// function void post_randomize();
// b=a/10.0;
// $display("real = %f",b);
// endfunction
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// end
//end
//endmodule
////—---------------output—----------------
//# KERNEL: real = 99.200000
//# KERNEL: real = 99.500000
//# KERNEL: real = 99.800000
//# KERNEL: real = 99.500000
//# KERNEL: real = 99.400000
////—------------------------------------------
//
////=======================================
//
//Q26. Write a constraint to generate consecutive and non-consecutive elements in a fixedsize
//
//class rakesh;
// rand int con[10];
// rand int non_con[10];
// constraint cons{foreach (con[i])
// con[i] == i+1;
// }
// constraint non_cons {foreach(non_con[i])
// non_con[i] == i+i;}
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("con = %p",pkt.con);
// $display("non_con = %p",pkt.non_con);
//Rakesh Myakala
// end
//end
//endmodule
////—-------------------------------------output—----------
//# KERNEL: con = '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
//# KERNEL: non_con = '{0, 2, 4, 6, 8, 10, 12, 14, 16, 18}
////—-------------------------------------
//
////=======================================
//
// Q27. Write a constraint to generate a variable with 0–31 bits as 1 and 32–61 bits as 0.
//class rakesh ;
// rand bit [61:0] data;
// constraint cons {foreach (data[i])
// if (i<=31)
// data[i]==1;
// else
// data[i] == 0;
// }
// endclass
//
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("data=%b",pkt.data);
// end
//end
//endmodule
////—--------------------------------------output—------------
//# KERNEL: data=00000000000000000000000000000011111111111111111111111111111111
////—--------------------------------------------------------
//
////=======================================
//
//Q28. Write a constraint to generate prime numbers between the range of 1 to 100.
//class rakesh;
// rand int a ;
// constraint cons {a inside {[1:100]};
// prime(a) == 1;
// }
// function int prime (int pr);
// int i;
// if(pr<2) return 0;
// if(pr==2) return 1;
// for(int i=3;i<= pr/2;i++)begin
// if(pr%i == 0)
// return 0;
// end
// return 1;
// endfunction
//endclass
//module ram();
//Rakesh Myakala
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(10)begin
// if(pkt.randomize())
// $display("prime num=%d",pkt.a);
// else
// $display("randomization failure %d is not a prime number",pkt.a);
// end
//end
//endmodule
////—-----------------output—---------------
//# KERNEL: prime num= 43
//# KERNEL: prime num= 37
//# RCKERNEL: Warning: RC_0024 testbench.sv(389): Randomization failed. The condition of
//randomize call cannot be satisfied.
//# RCKERNEL: Info: RC_0103 testbench.sv(389): ... the following condition cannot be
//met: (1==(pkt.prime(pkt.a)=0))
//# RCKERNEL: Info: RC_1007 testbench.sv(367): ... see class 'rakesh' declaration.
//# KERNEL: randomization failure 42 is not a prime number
//# RCKERNEL: Warning: RC_0024 testbench.sv(389): Randomization failed. The condition of
//randomize call cannot be satisfied.
//# RCKERNEL: Info: RC_0103 testbench.sv(389): ... the following condition cannot be
//met: (1==(pkt.prime(pkt.a)=0))
//# RCKERNEL: Info: RC_1007 testbench.sv(367): ... see class 'rakesh' declaration.
//# KERNEL: randomization failure 50 is not a prime number
//# KERNEL: prime num= 37
//# KERNEL: prime num= 41
//# KERNEL: prime num= 41
//# KERNEL: prime num= 73
//# KERNEL: prime num= 31
////—----------------------------------------
//
////=======================================
//
//
//Q30. Write a constraint to generate an array with unique values and multiples of 3
//
//class rakesh ;
// rand bit [7:0] data;
// constraint cons {unique{data};
// data %3 == 0;
// }
// endclass
//
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("data=%d",pkt.data);
// end
//end
//endmodule
//Rakesh Myakala
////—--------------------------------output—---------------
//# KERNEL: data=120
//# KERNEL: data= 90
//# KERNEL: data=243
//# KERNEL: data=156
//# KERNEL: data= 48
////—---------------------------------------------------
//
////=======================================
//
//
//Q31. Write a constraint on a two-dimensional array to generate even numbers in the first
//4
//locations and odd numbers in the next 4 locations.
//class rakesh;
// rand int a [2][4];
// constraint cons_1 {foreach (a[i])
// foreach (a[i][j])
// a[i][j] inside {[1:100]};
// }
// constraint cons {foreach (a[i])
// foreach (a[i][j])
// if(i==0)
// a[i][j] %2==0;
// else
// a[i][j] %2==1;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(2)begin
// pkt.randomize();
// $display("data=%p",pkt.a);
// end
//end
//endmodule
////—----------------------------output—---------
//# KERNEL: data='{'{48, 26, 58, 38}, '{23, 39, 95, 11}}
//# KERNEL: data='{'{40, 44, 4, 10}, '{15, 75, 13, 37}}
////—-------------------------------------------
//
////=======================================
//
//Q32. Write a program to randomize a 32-bit variable but only randomize the 12th bit.
//class rakesh;
// rand bit [31:0] data;
// constraint cons {foreach(data[i])
// if(i==12)
// data[i] inside {[1:0]};
//else
// data[i] == 0;
// }
//Rakesh Myakala
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(10)begin
// pkt.randomize();
// $display("data=%b",pkt.data);
// end
//end
//endmodule
////—--output—----------------------
//# KERNEL: data=00000000000000000000000000000000
//# KERNEL: data=00000000000000000000000000000000
//# KERNEL: data=00000000000000000000000000000000
//# KERNEL: data=00000000000000000000000000000000
//# KERNEL: data=00000000000000000001000000000000
//# KERNEL: data=00000000000000000001000000000000
//# KERNEL: data=00000000000000000001000000000000
//# KERNEL: data=00000000000000000000000000000000
//# KERNEL: data=00000000000000000000000000000000
//# KERNEL: data=00000000000000000001000000000000
////—--------------------------
//
////=======================================
//
//Q33. Write a constraint such that even locations contain odd numbers and odd locations
//contain even numbers.
//class rakesh;
// rand int a [15];
// constraint cons{foreach (a[i])
// a[i] inside {[1:100]};
// foreach(a[i])
// if(i%2==0)
// a[i] %2==1;
// else
// a[i] % 2==0;}
// endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("data=%p",pkt.a);
// end
//end
//endmodule
////—-------output—-------------
//# KERNEL: data='{97, 94, 81, 30, 73, 60, 95, 36, 41, 44, 91, 18, 15, 68, 61}
////—-------------------------
//Rakesh Myakala
//
////=======================================
//
//Q34. Write a constraint to generate the factorial of the first 5 even and odd numbers.
// class rakesh;
// rand int a[5]; // First 5 odd numbers
// rand int b[5]; // First 5 even numbers
// int fact_a[5]; // Factorials of a[]
// int fact_b[5]; // Factorials of b[]
// // Constraint for generating first 5 odd and even numbers
// constraint cons {
// foreach (a[i]) a[i] == (i * 2) + 1; // 1, 3, 5, 7, 9
// foreach (b[i]) b[i] == (i + 1) * 2; // 2, 4, 6, 8, 10
// }
// // Post-randomize: Compute factorials
// function void post_randomize();
// foreach (fact_a[i]) fact_a[i] = compute_factorial(a[i]);
// foreach (fact_b[i]) fact_b[i] = compute_factorial(b[i]);
// endfunction
// // Factorial function
// function int compute_factorial(int n);
// int result = 1;
// for (int i = 2; i <= n; i++)
// result = result* i;
// return result;
// endfunction
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt = new();
// if (pkt.randomize()) begin
// $display("Odd numbers (a[]) = %p", pkt.a);
// $display("Factorials of a[] = %p", pkt.fact_a);
// $display("Even numbers (b[]) = %p", pkt.b);
// $display("Factorials of b[] = %p", pkt.fact_b);
// end else begin
// $display("Randomization failed.");
// end
// end
//endmodule
////----------------------output----------------------------//
//# KERNEL: Odd numbers (a[]) = '{1, 3, 5, 7, 9}
//# KERNEL: Factorials of a[] = '{1, 6, 120, 5040, 362880}
//# KERNEL: Even numbers (b[]) = '{2, 4, 6, 8, 10}
//# KERNEL: Factorials of b[] = '{2, 24, 720, 40320, 3628800}
////------------------------------------------------------------//
//Rakesh Myakala
//
////=======================================
//
//Q35. Write a constraint for a 32-bit random variable to have 12 number of 1's nonconsecutively.
//class rakesh;
// rand bit [31:0] a;
// constraint cons {$countones(a)==12;}
// constraint cons_1 {foreach (a[i])
// if(i>0 && a[i] == 1)
// a[i] != a[i-1];
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("data=%b",pkt.a);
// $display("count ones = %p",$countones(pkt.a));
// end
//end
//endmodule
////—---------------------output—---------------
//# KERNEL: data=10001010100101010010001010101000
//# KERNEL: count ones = 12
//# KERNEL: data=10100010101000010100101010001001
//# KERNEL: count ones = 12
//# KERNEL: data=10010001010001001001010101010010
//# KERNEL: count ones = 12
//# KERNEL: data=00100100101010101010100010100001
//# KERNEL: count ones = 12
//# KERNEL: data=10100101001010100100101001000010
//# KERNEL: count ones = 12
////—-------------------------------------------
//
////=======================================
//
//Q37. Write a constraint to generate random values 25, 27, 30, 36, 40, 45 without using
//"set membership
//class rakesh;
// rand int a;
// constraint cons { a>24 ; a<46;
// (a%5==0) || (a%9==0); a!=35 ;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(6)begin
// pkt.randomize();
// $display("data=%d",pkt.a);
//Rakesh Myakala
// end
//end
//endmodule
////—------------output—------------------
//# KERNEL: data= 40
//# KERNEL: data= 27
//# KERNEL: data= 36
//# KERNEL: data= 30
//# KERNEL: data= 36
//# KERNEL: data= 27
////—----------------------------------
//
////=======================================
//
//Q38. Write a constraint to generate the pattern 0102030405.
//class rakesh;
// rand int a [10];
// constraint cons {foreach(a[i])
// if(i%2==0)
// a[i]==0;
// else
// a[i] == (i+2)/2;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("data=%p",pkt.a);
// end
//end
//endmodule
////—------------------output—------------------
//# KERNEL: data='{0, 1, 0, 2, 0, 3, 0, 4, 0, 5}
////—------------------------------------------
//
////=======================================
//
//Q39. Write a code to generate a random number between 1.35 and 2.57
//class rakesh;
// rand int a;
// real b;
// constraint cons {a inside {[1350:2570]};}
// function void post_randomize();
// b=a/1000.0;
// $display("b=%0f",b);
// endfunction
//endclass
//module ram();
// rakesh pkt;
// initial begin
//Rakesh Myakala
// pkt=new();
// repeat(10)begin
// pkt.randomize();
// end
//end
//endmodule
////—--------------output—-------------------
//# KERNEL: b=2.552000
//# KERNEL: b=2.547000
//# KERNEL: b=2.533000
//# KERNEL: b=2.104000
//# KERNEL: b=1.869000
//# KERNEL: b=2.130000
//# KERNEL: b=2.181000
//# KERNEL: b=1.759000
//# KERNEL: b=1.67300
////—-----------------------------------------
//
////=======================================
//
//Q40. Write a constraint to generate the pattern 1122334455.
//
//class rakesh;
// rand int a [10];
// constraint cons {foreach(a[i])
// a[i] == (i+2)/2;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("a=P",pkt.a);
// end
//end
//endmodule
////—---------------------output—------------
//# KERNEL: a=P'{1, 1, 2, 2, 3, 3, 4, 4, 5, 5}
////—----------------------------------------------
//
////=======================================
//
//Q41. Write a constraint to generate the pattern 5 -10 15 -20 25 -30.
//class rakesh;
// rand int a [];
// constraint connn {a.size==8;}
// constraint cons {foreach(a[i])
// if(i%2==0)
// a[i] == 5+(i*5) ;
// else
// a[i] == -5*(i+1);
// }
//endclass
//Rakesh Myakala
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("a=%P",pkt.a);
// end
//end
//endmodule
//
////=======================================
//
//Q42. Write a constraint to generate the pattern 9 19 29 39 49 59 69 79.
//class rakesh ;
// rand int a[10];
// constraint cons {foreach(a[i])
// a[i] == (i*10) + 9;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("a=%P",pkt.a);
// end
//end
//endmodule
////—------------------output—------------
//# KERNEL: a='{9, 19, 29, 39, 49, 59, 69, 79, 89, 99}
////—-----------------------------
//
////=======================================
//
//
//Q43. Write a constraint to generate the pattern 1234554321.
//class rakesh;
// rand int a[10];
// constraint cons {foreach (a[i])
// if(i<5)
// a[i] == i+1;
// else
// a[i] == a[9-i];
// }
// function void post_randomize();
// $display("a=%P",a);
// endfunction
//endclass
//
// module ram();
// rakesh pkt;
// initial begin
//Rakesh Myakala
// pkt=new();
// repeat(1)begin
// pkt.randomize();
//
// end
//end
//endmodule
////—--------------output—------------------
//# KERNEL: a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1}
////—------------------------------------
//
//
////=======================================
//
//Q44. Write a constraint to generate the pattern 0101010101.
// class rakesh;
// rand int a[10];
// constraint cons {foreach (a[i])
// if(i%2==0)
// a[i] == 0;
// else
// a[i] == 1;
// }
// function void post_randomize();
// $display("a=%P",a);
// endfunction
//endclass
//
// module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
//
// end
//end
//endmodule
////—--------------------output—--------------
//# KERNEL: a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1}
////—---------------------------------------
//
////=======================================
//
//Q45. Write a constraint to generate a 64-bit number where only the lower and upper 8 bits
//are /random and the rest are zeros.
//class rakesh ;
// rand bit [63:0] data;
// constraint cons {foreach (data[i])
// if (i <=7)
// data[i] inside {[1:0]};
// else if (i >= 55)
// data[i] inside {[1:0]};
// else
// data[i] == 0;
// }
//Rakesh Myakala
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(5)begin
// pkt.randomize();
// $display("data=%b",pkt.data);
// end
//end
//endmodule
// //—-----------------output—-----------------
//# KERNEL: data=1100000010000000000000000000000000000000000000000000000000101110
//# KERNEL: data=1001000100000000000000000000000000000000000000000000000011000000
//# KERNEL: data=1110111000000000000000000000000000000000000000000000000000111110
//# KERNEL: data=1110111100000000000000000000000000000000000000000000000000100110
//# KERNEL: data=0100011100000000000000000000000000000000000000000000000011010111
////—----------------------------------
//
////=======================================
//
//Q47. Write a constraint for a dynamic array where every element is a multiple of its index
//(starting from index 1).
//class rakesh ;
// rand int a [];
// constraint cons {a.size() == 10;
// foreach (a[i])
// a[i] inside {[1:100]};}
// constraint conss {foreach (a[i])
// if(i>=1)
// a[i] % i ==0;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(1)begin
// pkt.randomize();
// $display("a=%P",pkt.a);
// end
//end
//endmodule
////—--------output—-------------
//# KERNEL: a='{40, 75, 58, 15, 56, 35, 36, 42, 40, 18}
////—----------------------------
//======================================================

//Q48. Write a constraint for generating a Gray code sequence of 5 bits.
//class rakesh ;
//Rakesh Myakala
// rand bit [4:0] gray [];
// constraint cons {gray.size == 32;}
// constraint conss {foreach (gray[i])
// if (i> 0)
// $countones(gray[i] ^ gray[i-1]) ==1;
// }
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt = new();
//// if (pkt.randomize()) begin
//// $display("Gray Code Sequence:");
// foreach(pkt.gray[i])
// $display("gray[%0d] = %05b", i, pkt.gray[i]);
// end else
// $display("Randomization failed!");
// end
//endmodule
////—---------------output—-----------------\
// KERNEL: gray[0] = 11110
//# KERNEL: gray[1] = 10110
//# KERNEL: gray[2] = 11110
//# KERNEL: gray[3] = 11111
//# KERNEL: gray[4] = 11101
//# KERNEL: gray[5] = 11111
//# KERNEL: gray[6] = 11101
//# KERNEL: gray[7] = 10101
//# KERNEL: gray[8] = 00101
//# KERNEL: gray[9] = 00001
//# KERNEL: gray[10] = 00011
//# KERNEL: gray[11] = 00111
//# KERNEL: gray[12] = 00101
//# KERNEL: gray[13] = 00100
//# KERNEL: gray[14] = 00101
//# KERNEL: gray[15] = 10101
//# KERNEL: gray[16] = 10111
//# KERNEL: gray[17] = 10011
//# KERNEL: gray[18] = 10010
//# KERNEL: gray[19] = 11010
//# KERNEL: gray[20] = 10010
//# KERNEL: gray[21] = 10000
//# KERNEL: gray[22] = 10010
//# KERNEL: gray[23] = 11010
//# KERNEL: gray[24] = 11110
//# KERNEL: gray[25] = 11111
//# KERNEL: gray[26] = 10111
//# KERNEL: gray[27] = 00111
//# KERNEL: gray[28] = 00011
//# KERNEL: gray[29] = 10011
//# KERNEL: gray[30] = 10001
//# KERNEL: gray[31] = 10000
////—--------------------------------------
//Rakesh Myakala

//======================================================

//Q49. Write a constraint such that all elements in an array are powers of 2 and sorted in
//descending order.
//
//class rakesh;
// rand int a[10];
//
// constraint cons {foreach (a[i])
// $onehot(a[i]);
// foreach (a[i])
// a[i] inside {[1:1000]};
// unique{a};
// }
// constraint conss {foreach (a[i])
// if (i>0)
// a[i] <= a[i-1];}
//endclass
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(2)begin
// pkt.randomize();
// $display("a=%P",pkt.a);
// end
//end
//endmodule
////—------------------------output—------------------
//# KERNEL: a='{512, 256, 128, 64, 32, 16, 8, 4, 2, 1}
//# KERNEL: a='{512, 256, 128, 64, 32, 16, 8, 4, 2, 1}
////—------------------------------------------------------
//Q50. Write a constraint for a 32-bit variable such that the number of trailing zeros is
//between
//5 and 10.
//class rakesh ;
// rand bit [31:0] data;
// constraint cons {foreach (data[i])
// if(i>5 && i<10)
// data[i] inside {[1:0]};
// else
// data[i] == 0;
// }
//endclass
//
//module ram();
// rakesh pkt;
// initial begin
// pkt=new();
// repeat(10)begin
// pkt.randomize();
//Rakesh Myakala
// $display("a=%b",pkt.data);
// end
//end
//endmodule
////—---------------------output—------------------------
//# KERNEL: a=00000000000000000000001110000000
//# KERNEL: a=00000000000000000000000000000000
//# KERNEL: a=00000000000000000000001110000000
//# KERNEL: a=00000000000000000000000110000000
//# KERNEL: a=00000000000000000000000111000000
//# KERNEL: a=00000000000000000000001111000000
//# KERNEL: a=00000000000000000000000101000000
//# KERNEL: a=00000000000000000000000110000000
//# KERNEL: a=00000000000000000000000000000000
//# KERNEL: a=00000000000000000000001101000000
////—----------------------------------------------------------
////====================================
//
//
//
// Constraint interview Ques Solutions :
//1. Can we use for and foreach loop in constraints?
//The foreach construct is used as both a looping construct in procedural
//code and as an iterative constraint that gets unrolled until simultaneous
//constraints.
//Constraints are not procedural statements - they are a set of simultaneous
//equations.
//SV does not allow the for construct in a constrain, but you can think of
//foreach as a special case of the for construct.
//2. Write a constraint to generate unique random values without using
//randc and uniques constraint, also without pre/post randomization
//methods.
//class sample;
// rand bit [3:0] array[];
//
// constraint array_c {
// array.size() == 10;
// foreach (array[i]) {
// foreach (array[j]) {
// if(i != j)
// array[i] != array[j] ;
// }
// }
// }
// endclass
// module top;
// sample s=new();
//
// initial begin
// repeat (5) begin
// assert(s.randomize());
// $display("s=%p",s);
// end
// end
//endmodule
//3. Write a constraint to create a pattern : 1234554321
//class abc;
// rand bit[2:0] arr[];
// constraint a_constr {
// arr.size() == 10;
// foreach(arr[i]) {
// arr[0] == 1;
// if(i>0 && i<5) arr[i] == arr[i-1]+1'b1;
// if (i>5) arr[i] == arr[i-1]-1'b1;
//
// }
// }
//
// endclass: abc
//
//======================================================
// module tb;
// abc abc_inst;
//
// initial begin
// abc_inst = new();
// abc_inst.randomize();
// $display("arr == %0p", arr);
// end
// endmodule
//4. Write the constraint for array with size 5 to 10 and even
// positions with even values in the array.
//class packet;
//rand bit [7:0] a[];
//constraint a_value {a.size() inside {[5:10]};
// foreach (a[i])
// if (i%2==0)
// a[i]%2 ==0;
//
//}
//endclass
//module tb();
//packet p=new();
//initial begin
// p.randomize();
// $display("value of a=%0p",p.a);
//end
//endmodule

//======================================================

//5. Write the constraint for array whose size is between 5 to 10
//and desending order , also with ascending order.
// class packet;
// rand bit [7:0] a[];
// constraint a_value {a.size() inside {[5:10]};
// foreach(a[i])
// if(i>0)
// a[i] > a[i-1]; ////for ascending order
// a[i] < a[i-1]; ////for descending order
// }
// endclass
// module tb();
// packet p;
// initial begin
//p=new();
//p.randomize();
//$display("value of a=%0p",p.a);
//end
//endmodule

//======================================================

//6. Write a constraint for 16-bit variable such that no two
//consecutive/continuous ones should be generated.
// class packet;
// rand bit [15:0] a;
// constraint a_value {
// foreach (a[i])
// if(i>0)
// a[i]!=a[i-1];
// }
// endclass
//module tb();
//packet p;
//initial begin
//p=new();
//repeat(10)
//begin
//p.randomize();
//$display("value of a=%0b",p.a);
//end
//end
//endmodule

//======================================================

//7. Constraint to generate the pattern 0102030405.
//class packet;
//rand bit [7:0] a[10];
//constraint a_value {
//foreach (a[i])
//if (i%2==0)
//a[i]==0;
//else a[i]==(i+1)/2;
//}
//endclass
//module tb();
//packet p=new();
//initial begin
//p.randomize();
//$display("value of a=%0p",p.a);
//end
//endmodule
//8. Write a constraint for 4-bit dynamic array. The size of the
//array should be in between 15 to 20. There should be even
//number in odd locations and odd number in even locations.
//class packet;
//rand bit [3:0] a[];
//constraint a_value {
//a.size inside {[15:20]};
//foreach(a[i]) {
//i%2==1 -> a[i]%2==0;
//i%2==0 -> a[i]%2==1;
//}
//}
//endclass
//module tb();
//packet p=new();
//initial begin
//p.randomize();
//$display("value of a=%0p",p.a);
//end
//endmodule
//
//
////=================================
//
//
// Constraint interview Ques Solutions :
//1. Can we use for and foreach loop in constraints?
//The foreach construct is used as both a looping construct in procedural
//code and as an iterative constraint that gets unrolled until simultaneous
//constraints.
//Constraints are not procedural statements - they are a set of simultaneous
//equations.
//SV does not allow the for construct in a constrain, but you can think of
//foreach as a special case of the for construct.
//2. Write a constraint to generate unique random values without using
//randc and uniques constraint, also without pre/post randomization
//methods.
//class sample;
// rand bit [3:0] array[];
//
// constraint array_c {
// array.size() == 10;
// foreach (array[i]) {
// foreach (array[j]) {
// if(i != j)
// array[i] != array[j] ;
// }
// }
// }
// endclass
// module top;
// sample s=new();
//
// initial begin
// repeat (5) begin
// assert(s.randomize());
// $display("s=%p",s);
// end
// end
//endmodule
//3. Write a constraint to create a pattern : 1234554321
//class abc;
// rand bit[2:0] arr[];
// constraint a_constr {
// arr.size() == 10;
// foreach(arr[i]) {
// arr[0] == 1;
// if(i>0 && i<5) arr[i] == arr[i-1]+1'b1;
// if (i>5) arr[i] == arr[i-1]-1'b1;
//
// }
// }
//
// endclass: abc
//
//======================================================
//
// module tb;
// abc abc_inst;
//
// initial begin
// abc_inst = new();
// abc_inst.randomize();
// $display("arr == %0p", arr);
// end
// endmodule
//4. Write the constraint for array with size 5 to 10 and even
// positions with even values in the array.
//class packet;
//rand bit [7:0] a[];
//constraint a_value {a.size() inside {[5:10]};
// foreach (a[i])
// if (i%2==0)
// a[i]%2 ==0;
//
//}
//endclass
//module tb();
//packet p=new();
//initial begin
// p.randomize();
// $display("value of a=%0p",p.a);
//end
//endmodule

//======================================================

//5. Write the constraint for array whose size is between 5 to 10
//and desending order , also with ascending order.
// class packet;
// rand bit [7:0] a[];
// constraint a_value {a.size() inside {[5:10]};
// foreach(a[i])
// if(i>0)
// a[i] > a[i-1]; ////for ascending order
// a[i] < a[i-1]; ////for descending order
// }
// endclass
// module tb();
// packet p;
// initial begin
//p=new();
//p.randomize();
//$display("value of a=%0p",p.a);
//end
//endmodule
//6. Write a constraint for 16-bit variable such that no two
//consecutive/continuous ones should be generated.
// class packet;
// rand bit [15:0] a;
// constraint a_value {
// foreach (a[i])
// if(i>0)
// a[i]!=a[i-1];
// }
// endclass
//module tb();
//packet p;
//initial begin
//p=new();
//repeat(10)
//begin
//p.randomize();
//$display("value of a=%0b",p.a);
//end
//end
//endmodule

//======================================================

//7. Constraint to generate the pattern 0102030405.
//class packet;
//rand bit [7:0] a[10];
//constraint a_value {
//foreach (a[i])
//if (i%2==0)
//a[i]==0;
//else a[i]==(i+1)/2;
//}
//endclass
//module tb();
//packet p=new();
//initial begin
//p.randomize();
//$display("value of a=%0p",p.a);
//end
//endmodule

//======================================================

//8. Write a constraint for 4-bit dynamic array. The size of the
//array should be in between 15 to 20. There should be even
//number in odd locations and odd number in even locations.
//class packet;
//rand bit [3:0] a[];
//constraint a_value {
//a.size inside {[15:20]};
//foreach(a[i]) {
//i%2==1 -> a[i]%2==0;
//i%2==0 -> a[i]%2==1;
//}
//}
//endclass
//module tb();
//packet p=new();
//initial begin
//p.randomize();
//$display("value of a=%0p",p.a);
//end
//endmodule

////================================
//
//SYSTEMVERILOG
//ADVANCED INTERVIEW
//QUESTIONS HANDBOOK
//Code-Focused Questions with Complete
//Solutions for VLSI & Verification Engineers
//50+ advanced interview-ready
//questions
//Ideal for VLSI Enthusiasts,
//Freshers, Experienced VLSI
//Engineers & VLSI job interviews
//Q1. Write a constraint where a 4-bit variable should
//never take the values between 4 to 9.
//class Test;
//rand bit [3:0] data;
//constraint c1 {
//!(data inside {[4:9]});
//}
//endclass
//module tb;
//Test t = new();
//initial begin
//repeat(10) begin
//void'(t.randomize());
//$display("data = %0d"
//, t.data);
//end
//end
//endmodule
//Q2. Constrain an array of 5 integers such that sum
//should be 50 and each element should be unique.
//class Test;
//rand int arr[5];
//constraint c_sum {
//foreach (arr[i]) arr[i] inside {[1:20]};
//arr.sum() == 50;
//unique {arr};
//}
//endclass
//module tb;
//Test t = new();
//initial begin
//if (t.randomize())
//$display("
//arr = %p"
//, t.arr);
//else
//$display("Randomization failed!");
//end
//endmodule

//======================================================
//Q3. Write constraints for a packet class with length
//between 64 to 1500, and the payload size equal to
//length - 20.
//class Packet;
//rand int length;
//rand int payload;
//constraint c_range {
//length inside {[64:1500]};
//payload == length - 20;
//}
//endclass
//module tb;
//Packet p = new();
//initial begin
//if (p.randomize())
//$display("Length = %0d, Payload = %0d"
//,
//p.length, p.payload);
//end
//endmodule
//
//
//
////========================
//
//SYSTEMVERILOG
//ADVANCED INTERVIEW
//QUESTIONS HANDBOOK
//Code-Focused Questions with Complete
//Solutions for VLSI & Verification Engineers
//50+ advanced interview-ready
//questions
//Ideal for VLSI Enthusiasts,
//Freshers, Experienced VLSI
//Engineers & VLSI job interviews
//Q1. Write a constraint where a 4-bit variable should
//never take the values between 4 to 9.
//class Test;
//rand bit [3:0] data;
//constraint c1 {
//!(data inside {[4:9]});
//}
//endclass
//module tb;
//Test t = new();
//initial begin
//repeat(10) begin
//void'(t.randomize());
//$display("data = %0d"
//, t.data);
//end
//end
//endmodule

//======================================================

//Q2. Constrain an array of 5 integers such that sum
//should be 50 and each element should be unique.
//class Test;
//rand int arr[5];
//constraint c_sum {
//foreach (arr[i]) arr[i] inside {[1:20]};
//arr.sum() == 50;
//unique {arr};
//}
//endclass
//module tb;
//Test t = new();
//initial begin
//if (t.randomize())
//$display("
//arr = %p"
//, t.arr);
//else
//$display("Randomization failed!");
//end
//endmodule

//======================================================

//Q3. Write constraints for a packet class with length
//between 64 to 1500, and the payload size equal to
//length - 20.
//class Packet;
//rand int length;
//rand int payload;
//constraint c_range {
//length inside {[64:1500]};
//payload == length - 20;
//}
//endclass
//module tb;
//Packet p = new();
//initial begin
//if (p.randomize())
//$display("Length = %0d, Payload = %0d"
//,
//p.length, p.payload);
//end
//endmodule
////=====================================4
//
//TYPES OF CONSTRAINTS
// AISHWARYA S
//Code 1 : constrait creation
//module packet ;
//class pkt;
// rand bit[0:15] data;
// rand bit[0:15] addr;
//
// constraint cond { addr <= 8'hA; }
//
// function void post_randomize();
// $display ("addr=%d data=%d",addr,data);
// endfunction
//
//endclass
// initial begin
// pkt p1=new();
// repeat(200) begin
// p1.randomize();
// end
//end
//endmodule
// AISHWARYA S
//Code 2 : creating multiple constraint
//module cons ;
// class packet;
//
// rand bit [0:7] min,max,typ;
// rand bit [0:7] value ;
//
// constraint con { min > 5 ; max < 100 ; typ > 50 ; typ < 100; value ==
//5;} // can create multiple constraint
//
// function void post_randomize();
// $display ("min=%d max=%d typ=%d, value =%d",
//min,max,typ,value);
// endfunction
//
// endclass
//
//
// initial begin
// packet p1=new();
//
// for (int i=0; i<=10;i++) begin
// p1.randomize();
// end
// end
//endmodule
// AISHWARYA S

//======================================================

//Code 3: inside & inverted operator ( gives the range of value for
//the variable )
//module cons;
// class packet;
// rand bit [0:3] data,addr;
//
// constraint cond { data inside {[7:15 ]};}
//
// constraint call { !(addr inside {[ 7:15]});}
//
// function void post_randomize();
// $display("data=%d addr=%d",data,addr);
// endfunction
//endclass
//
// initial begin
// packet p1 = new();
// repeat(100) begin
// p1.randomize();
// end
// end
//Endmodule
// AISHWARYA S

//======================================================
//Code 4 : Weighted distribution
//module weight ;
// class cube;
// rand bit [0:2] value ,index ;
//
// constraint cond { value dist {1 :=1 , 2:=2 , [3:6]:=10, 7:=1 } ;}
// constraint con { index dist {1 :/1 , 2:/2 , [3:6]:/10, 7:=1 } ;}
//
// endclass
//
// initial begin
//cube c1 = new();
// repeat(50) begin
// c1.randomize();
// $display ("value=%d index=%d ",c1.value,c1.index);
// end
// end
//Endmodule
// AISHWARYA S

//======================================================
//Code 5 : extern method
//class pkt;
//
// randc bit[0:4] addr;
// constraint data;
//
//endclass
//
//constraint pkt::data { addr >=7;}
//module value;
// initial begin
// pkt p1=new();
// repeat (5) begin
// p1.randomize();
// $display("addr=%d",p1.addr);
// end
// end
//Endmodule
//AISHWARYA S

//======================================================

//Code 6: Implicit constraint
//module implicit ;
// class pkt;
// rand bit [0:2] len,value ;
//
// constraint data { (len == 2) -> (value > 5) ; }
// constraint data1 {len dist {2:=60 , 3:=10 , 4:=20 , 5:=20};}
//
// endclass
//
// pkt p1;
// initial begin
// p1=new();
// repeat(100) begin-
// p1.randomize();
// $display("len=%d value=%d",p1.len,p1.value);
// end
// end
//endmodule
//
//AISHWARYA S
//======================================================
//Code 7 : If else constraint
//module cons;
// class pkt;
// rand bit[0:7] value;
// rand bit[0:2] mode;
//
// constraint number {
// if (value %2 == 0) {
// mode == 1;
// }
// else {
// mode == 0;
// }
// }
//Endclass
// pkt p1;
//initial begin
// p1=new();
// repeat(50) begin
// p1.randomize();
// $display("value=%d mode=%d",p1.value,p1.mode);
// end
//end
//endmodule
//
//
//AISHWARYA S
////======================================================

//Code 8: static constraint
//module value ;
// class pkg;
// randc bit [0:4] a;
//
// constraint max { a >= 5; }
// static constraint min { a <= 10; }
// endclass
//
// pkg p1,p2;
// initial begin
// p1 = new();
// p2=new();
// p1.min.constraint_mode(0);
// repeat (10) begin
// p1.randomize();
// p2.randomize();
// $display ("a=%d a1=%d",p1.a,p2.a);
// end
// end
//endmodule
//
//======================================================
//Code 9: inline constraint
//module inline;
// class pkg;
// rand bit[0:7] a;
//
// constraint in { a > 5 ; a < 20 ; }
// endclass
//
// pkg p1;
// initial begin
// p1=new();
// repeat (5) begin
// p1.randomize() with { a > 10 ;};
// $display ("a=%d",p1.a);
// end
// end
//endmodule
//AISHWARYA S
//Code 10 : soft constraint
//module soft_con;
// class pkg;
// rand bit [0:7] value ;
//
// constraint addr { soft value == 5 ;}
// Endclass
// pkg p1;
// initial begin
// p1= new();
// repeat(20) begin
// p1.randomize() with { value == 6 ; };
// $display("value=%d",p1.value);
// end
// end
//endmodule
//AISHWARYA S

//======================================================

//Code 11 : array constraints
//module arr;
// class abc;
// rand bit [3:0] arr1 [5]; // static
// rand bit [3:0] darr []; // dynamic
// rand bit [3:0] qarr [$]; // queue
//
// constraint size { qarr.size() == 6 ; }
// constraint value { foreach (arr1[i])
// arr1[i] == i*2 ;
//
// foreach ( darr [i])
// darr[i] == i+1;
//
// foreach (qarr[i])
// qarr[i] == i*3;
// }
//
// function new ();
// darr = new[5];
// endfunction
//
// endclass
//
// abc a1;
// initial begin
// a1=new();
// a1.randomize();
// $display ("array=%p \n dynamic=%p \n queue=%p",a1.arr1,
//a1.darr, a1.qarr);
// end
// endmodule
//AISHWARYA S

//======================================================

//Code 12: constraint inheritence
//module inher;
// class pkt1;
// rand bit[0:3] addr;
// constraint range { addr < 4; }
// endclass
//
// class pk2 extends pkt1;
// constraint range {addr > 4;}
// endclass
//
// pkt1 p1;
// pk2 p2;
//
// initial begin
// p1=new();
// p2=new();
//
// repeat (5) begin
// p1.randomize();
// $display ("addr1=%d",p1.addr);
// end
//
// $display ("-------------------------");
//
// repeat (5) begin
// p2.randomize();
// $display ("addr2=%d", p2.addr);
// end
// end
//endmodule
//AISHWARYA S






















//Topic 1: Randomization and Constraints
//Q1. How do you generate a random variable between 10 and 50,
//restricted to even values only?
//Answer: You can use SystemVerilog constraints inside a class with the ‘rand‘ keyword.
//Here is the solution:
//class even_rand;
//rand bit [7:0] val;
//constraint even_c {
//val inside {[10:50]};
//val % 2 == 0;
//}
//endclass
//module tb;
//even_rand obj = new();
//initial begin
//repeat(5) begin
//void’(obj.randomize());
//$display("Even Value = %0d", obj.val);
//end
//end
//endmodule
//Explanation:
//• ‘rand‘ declares the variable as randomizable.
//• The ‘inside‘ operator constrains the range.
//• ‘
//Q2. How can you generate a unique array of 5 elements between
//1 and 20?
//Answer:
//class unique_array;
//rand bit [4:0] arr[5];
//constraint c_range { foreach (arr[i]) arr[i] inside {[1:20]}; }
//constraint c_unique { unique {arr}; }
//endclass
//module tb;
//unique_array u = new();
//initial begin
//if (u.randomize())
//$display("Unique Array = %p", u.arr);
//end
//endmodule
//Explanation:
//• ‘unique‘ keyword ensures all elements are different.
//• ‘foreach‘ applies the range constraint to each element.
//Q3. How to constrain a variable to only odd numbers from 5 to
//15 but exclude consecutive odd values?
//Answer:
//class my_rand;
//rand bit [3:0] a;
//constraint c1 {
//a inside {[5:15]};
//a % 2 == 1;
//!(a == 7 || a == 9 || a == 11 || a == 13); // no consecutive odds
//}
//endclass
//module tb;
//my_rand obj = new();
//initial begin
//repeat(10) begin
//void’(obj.randomize());
//$display("a = %0d", obj.a);
//end
//end
//endmodule
//Explanation: The constraint excludes specific consecutive values to comply with the
//rule. This is a common interview challenge to test your understanding of exclusion logic
//in constraints.
//Q4. Constrain two variables such that one is twice the other and
//their sum is less than 50.
//Answer:
//class rel_constraint;
//rand bit [7:0] a, b;
//constraint twice {
//a == 2 * b;
//a + b < 50;
//}
//endclass
//module tb;
//rel_constraint obj = new();
//initial begin
//repeat (5) begin
//void’(obj.randomize());
//$display("a=%0d, b=%0d, sum=%0d", obj.a, obj.b, obj.a + obj.b);
//end
//end
//endmodule
//Explanation: This type of relation constraint is crucial in protocol-level modeling
//when fields are mathematically dependent.
//Q5. How do you write a constraint for sorting a 4-element array
//in ascending order?
//Answer:
//class sort_array;
//rand bit [7:0] arr[4];
//constraint c_sorted {
//arr[0] <= arr[1];
//arr[1] <= arr[2];
//arr[2] <= arr[3];
//}
//endclass
//module tb;
//sort_array s = new();
//initial begin
//if (s.randomize())
//$display("Sorted Array = %p", s.arr);
//end
//endmodule
//Explanation: Constraints are applied pairwise to enforce the sorting order. This is
//often used in test scenarios to ensure stimulus validity.
//Q6. Generate a queue of size 5 containing even numbers only.
//Answer:
//class even_q;
//rand bit [7:0] q[$];
//constraint c1 {
//q.size() == 5;
//foreach (q[i]) q[i] % 2 == 0;
//}
//endclass
//module tb;
//even_q obj = new();
//initial begin
//if (obj.randomize())
//$display("Even Queue: %p", obj.q);
//end
//endmodule
//Explanation: Queues are dynamic arrays. The ‘foreach‘ loop ensures that each
//element satisfies the modulus constraint.
//Q7. Randomize a 2D array in SystemVerilog such that each row
//is sorted.
//Answer:
//class array2D;
//rand bit [7:0] arr[3][4];
//constraint row_sorted {
//foreach (arr[i]) {
//foreach (arr[i,j]) if (j < 3)
//arr[i][j] <= arr[i][j+1];
//}
//}
//endclass
//module tb;
//array2D obj = new();
//initial begin
//if (obj.randomize())
//$display("2D Array = %p", obj.arr);
//end
//endmodule
//Explanation: Nested ‘foreach‘ constraints can be used to control the properties of
//multidimensional arrays. This ensures logical or protocol-based ordering.
//Q8. Write a constraint such that the sum of array elements
//equals 100.
//Answer:
//class array_sum;
//rand bit [7:0] arr[5];
//constraint sum_c {
//arr.sum() == 100;
//}
//endclass
//module tb;
//array_sum obj = new();
//initial begin
//repeat (5) begin
//void’(obj.randomize());
//$display("Array = %p, Sum = %0d", obj.arr, obj.arr.sum());
//end
//end
//endmodule
//Explanation: ‘.sum()‘ is a built-in method used to calculate the total value of all
//elements in an array. This is especially useful for checksum generation and protocol
//timing scenarios.
//Q9. Write a constraint such that each queue element is double
//the previous one.
//Answer:
//class exp_queue;
//rand bit [7:0] q[5];
//constraint exp {
//q[0] == 1;
//foreach(q[i]) if (i > 0) q[i] == 2 * q[i-1];
//}
//endclass
//module tb;
//exp_queue obj = new();
//initial begin
//if (obj.randomize())
//$display("Exponential Queue: %p", obj.q);
//end
//endmodule
//Explanation: This models geometric progressions useful in timing burst patterns or
//protocol test sequences.
//Q10. Generate a queue from 0 to 9 with all unique values.
//Answer:
//class unique_q;
//rand bit [3:0] q[$];
//constraint c1 {
//q.size() == 10;
//foreach (q[i], q[j]) i != j -> q[i] != q[j];
//foreach (q[i]) q[i] inside {[0:9]};
//}
//endclass
//module tb;
//unique_q obj = new();
//initial begin
//if (obj.randomize())
//$display("Unique Queue: %p", obj.q);
//end
//endmodule
//Explanation: Constraints are used to ensure range and uniqueness, commonly used
//in generating randomized IDs or token sets.
//Q11. Write a constraint to ensure sum of two variables is always
//even.
//Answer:
//class sum_even;
//rand bit [3:0] a, b;
//constraint even_sum { (a + b) % 2 == 0; }
//endclass
//module tb;
//sum_even obj = new();
//initial begin
//repeat (5) begin
//void’(obj.randomize());
//$display("a=%0d, b=%0d, sum=%0d", obj.a, obj.b, obj.a + obj.b);
//end
//end
//endmodule
//Explanation: Simple mathematical relations are a staple of DV testbench modeling.
//You’ll often see parity or checksum conditions represented like this.
//Q12. Create a constraint where one variable is always less than
//another, both in a given range.
//Answer:
//class less_than;
//rand bit [7:0] a, b;
//constraint limits { a inside {[10:50]}; b inside {[20:60]}; }
//constraint order { a < b; }
//endclass
//module tb;
//less_than obj = new();
//initial begin
//repeat (5) begin
//void’(obj.randomize());
//$display("a = %0d, b = %0d", obj.a, obj.b);
//end
//end
//endmodule
//Explanation: This is commonly used in timer delay settings or validation ranges
//where a dependent relationship exists.
//Q13. How do you create a simple covergroup that captures a
//4-bit data value into two bins: 0–7 (low) and 8–15 (high)?
//Answer:
//class transaction;
//rand bit [3:0] data;
//covergroup cg;
//option.per_instance = 1;
//DATA: coverpoint data {
//bins low = {[0:7]};
//bins high = {[8:15]};
//}
//endgroup
//function new();
//cg = new();
//endfunction
//function void sample_data();
//cg.sample();
//endfunction
//endclass
//module tb;
//transaction t = new();
//initial begin
//repeat(10) begin
//void’(t.randomize());
//t.sample_data();
//$display("Data = %0d", t.data);
//end
//end
//endmodule
//Explanation: Functional coverage uses covergroups and coverpoints to measure how
//thoroughly a stimulus space is exercised.
//Q14. Create a covergroup to track transitions from IDLE to
//ACTIVE to DONE.
//Answer:
//typedef enum {IDLE, ACTIVE, DONE} state_t;
//state_t state;
//covergroup cg @(posedge clk);
//coverpoint state {
//bins full_path = (IDLE => ACTIVE => DONE);
//}
//endgroup
//Explanation: Transition bins are extremely useful in verifying protocol sequences
//and FSM transitions.
//Q15. How do you sample a covergroup inside a class for protocol
//coverage?
//Answer:
//class bus_tx;
//rand bit [3:0] burst_len;
//covergroup burst_cg;
//coverpoint burst_len {
//bins single = {1};
//bins short = {[2:4]};
//bins long = {[5:15]};
//}
//endgroup
//function new();
//burst_cg = new();
//endfunction
//endclass
//module tb;
//bus_tx tx = new();
//initial begin
//repeat (10) begin
//void’(tx.randomize());
//tx.burst_cg.sample();
//$display("Burst Length = %0d", tx.burst_len);
//end
//end
//endmodule
//Explanation: This models burst length patterns, commonly required in protocollevel coverage models such as AXI or AHB.
//Q16. How do you model cross coverage between two coverpoints
//in SystemVerilog?
//Answer:
//class cross_cov;
//rand bit [3:0] addr;
//rand bit [1:0] mode;
//covergroup cg;
//ADDR: coverpoint addr {
//bins low = {[0:7]};
//bins high = {[8:15]};
//}
//MODE: coverpoint mode {
//bins rw = {0, 1};
//bins burst = {2, 3};
//}
//ADDR_MODE: cross ADDR, MODE;
//endgroup
//function new();
//cg = new();
//endfunction
//endclass
//Explanation: Cross coverage helps ensure that all combinations of two signals are
//exercised, which is vital in protocol verification.
//Q17. What is ‘option.perinstance‘andwhyisitimportant?
//Answer:
//‘option.per instance = 1;‘ enables each instance of a class to have its own copy of the
//coverage data. Without it, all instances share a single covergroup result.
//Use-case Example:
//covergroup cg;
//option.per_instance = 1;
//coverpoint opcode;
//endgroup
//When to Use:
//• In class-based models
//• When collecting coverage from multiple environments or testcases
//Q18. How do you ignore specific bins in a coverpoint?
//Answer:
//Use the ‘ignore bins‘ construct.
//covergroup cg;
//coverpoint opcode {
//bins valid = {[0:15]};
//ignore_bins reserved = {6, 7};
//}
//endgroup
//Explanation: Ignored bins are excluded from coverage goals and are often used to
//filter out illegal or unused values.
//Q19. How do you create automatic sampling on an event in a
//covergroup?
//Answer:
//covergroup auto_cg @(posedge clk);
//coverpoint state;
//endgroup
//Explanation: This allows coverage to be sampled automatically on clock edges or
//signal transitions, removing the need to call ‘.sample()‘ manually.
//Q20. Write a constraint to randomize values divisible by 3 and
//in range 30 to 90.
//Answer:
//class div_by_3;
//rand bit [7:0] val;
//constraint c1 {
//val inside {[30:90]};
//val % 3 == 0;
//}
//endclass
//module tb;
//div_by_3 obj = new();
//initial begin
//repeat (10) begin
//void’(obj.randomize());
//$display("Value divisible by 3: %0d", obj.val);
//end
//end
//endmodule
//Explanation: The modulus operator is used to check divisibility. Combined with
//the ‘inside‘ operator, this restricts values to a specific range and multiple.
//Q21. Generate a 3-element array such that the sum is even and
//elements are between 1 and 10.
//Answer:
//class sum_even_array;
//rand bit [3:0] arr[3];
//constraint range_c { foreach(arr[i]) arr[i] inside {[1:10]}; }
//constraint even_sum_c { arr.sum() % 2 == 0; }
//endclass
//module tb;
//sum_even_array obj = new();
//initial begin
//repeat (5) begin
//void’(obj.randomize());
//$display("Array = %p, Sum = %0d", obj.arr, obj.arr.sum());
//end
//end
//endmodule
//Explanation: The ‘.sum()‘ method calculates the array sum, and ‘
//Q22. Constrain a variable to avoid a set of specific values.
//Answer:
//class avoid_vals;
//rand bit [7:0] val;
//constraint c1 {
//!(val inside {13, 27, 55});
//val inside {[10:60]};
//}
//endclass
//module tb;
//avoid_vals obj = new();
//initial begin
//repeat (5) begin
//void’(obj.randomize());
//$display("Value = %0d", obj.val);
//end
//end
//endmodule
//Explanation: Use ‘!inside‘ to exclude specific illegal values. Common in testbench
//scenarios where illegal or reserved values must be skipped.
//Q31. What are the types of coverage in SystemVerilog?
//Answer: SystemVerilog provides three main types of coverage:
//• Code Coverage: Measures which parts of the code were executed (e.g., line,
//toggle, FSM).
//• Functional Coverage: Measures whether all required functionality has been
//tested using coverage points.
//• Assertions Coverage: Tracks whether assertions were triggered and whether
//pass/fail scenarios were covered.
//Q32. What is functional coverage and why is it important?
//Answer: Functional coverage is a user-defined metric that checks whether specific functional scenarios have been exercised during simulation. It is important because:
//• It validates whether the design is tested thoroughly.
//• It helps identify missing corner cases.
//• It is used in coverage-driven verification.
//Q33. What are covergroups in SystemVerilog?
//Answer: A covergroup is a construct used to define functional coverage points. It
//includes:
//• coverpoints: Variables or expressions to be monitored.
//• cross coverage: Combination of two or more coverpoints.
//Example:
//covergroup cg;
//coverpoint op;
//coverpoint a;
//cross op, a;
//endgroup
//Q34. Explain the difference between coverpoint and cross coverage.
//Answer:
//• Coverpoint: Tracks the value distribution of a single variable.
//• Cross Coverage: Measures combinations of values from two or more coverpoints
//to verify interaction between variables.
//Q35. What is the significance of bins in coverage?
//Answer: Bins group values into ranges or specific values for coverage tracking.
//• Implicit bins: Created automatically.
//• Explicit bins: User-defined for precise control.
//Example:
//coverpoint val {
//bins low = {[0:3]};
//bins mid = {[4:7]};
//bins high = {[8:15]};
//}
//Q36. What are coverage options in SystemVerilog?
//Answer: Coverage options control how coverage data is collected or reported. Examples
//include:
//• option.per instance – Collects coverage per object instance.
//• option.weight – Assigns weight to influence total coverage score.
//• option.comment – Provides documentation.
//• option.name – Customizes instance name in reports.
//Q37. How to disable a coverpoint or covergroup dynamically?
//Answer: You can disable a coverpoint or covergroup by:
//• Setting cg.option.weight = 0; to ignore it in coverage.
//• Not calling the sample() method when coverage is not required.
//Q38. What is the use of sample() method in covergroups?
//Answer: The sample() method captures current values of the coverpoints. It must be
//called explicitly if the covergroup is not declared with an @ event. Example:
//cg_inst.sample();
//Q39. How do you use illegal bins and ignore bins?
//Answer:
//• illegal bins – Flags undesired or invalid values.
//• ignore bins – Skips values in coverage calculation.
//Example:
//coverpoint mode {
//bins valid = {[0:3]};
//ignore_bins skip = {[4:5]};
//illegal_bins err = {[6:7]};
//}
//Q40. How can cross coverage be customized?
//Answer: Cross coverage can be customized using:
//• bins – To define valid combinations.
//• ignore bins or illegal bins – To skip or flag combinations.
//• intersect and with – To filter combinations with expressions.
//Example:
//cross a, b {
//ignore_bins ignore_ab = binsof(a) intersect {1} && binsof(b) intersect {3};
//}
//Q41. What is transition coverage in SystemVerilog?
//Answer: Transition coverage tracks sequences of values a variable goes through. It helps
//ensure that legal state transitions occur. Syntax Example:
//coverpoint state {
//bins s_trans[] = (S0 => S1 => S2);
//}
//Q42. How do you use wildcard bins in transition coverage?
//Answer: Wildcards allow flexibility in defining transitions without exact values. Example:
//bins wild[] = (1 => [*] => 3);
//This matches a transition from 1 to 3 with any number of intermediate states.
//Q43. What is the difference between bins and bins[] in transitions?
//Answer:
//• bins name = (a => b); defines a single transition.
//• bins name[] = (a => b => c); creates a series of bins to capture each possible
//transition in the chain.
//Q44. How can you collect coverage conditionally?
//Answer: You can use iff clauses to conditionally enable coverage sampling. Example:
//coverpoint addr iff (enable == 1);
//This means addr will be sampled only if enable is 1.
//Q45. How do you use coverage callbacks for advanced customization?
//Answer: SystemVerilog does not directly support callbacks, but you can simulate similar
//behavior using class-based infrastructure and override sample() with custom logic before
//calling the actual sample.
//Q46. What is covergroup with construct and how is it used?
//Answer: with allows filtering or constraints on bins and cross coverage. Example:
//cross a, b {
//bins cross_ab = binsof(a) intersect {1,2} &&
//binsof(b) with (item < 5);
//}
//Q47. How do you merge coverage from multiple simulations?
//Answer: Most simulators allow merging of multiple coverage databases using commands
//like:
//• vcover merge (ModelSim/Questa)
//• urg -merge (VCS)
//This helps accumulate coverage over multiple test runs.
//Q48. How to exclude certain bins or values from coverage reports?
//Answer: Use ignore bins to exclude values from affecting coverage percentage. Example:
//ignore_bins idle_ignore = {[0:1]};
//Q49. What are coverage directives and how are they used?
//Answer: Directives are tool-specific pragmas used to control code coverage metrics.
//Examples:
//• // coverage off – Turns off coverage for a block.
//• // coverage on – Resumes coverage.
//Q50. Can covergroups be parameterized or templated?
//Answer: No, SystemVerilog does not support parameterized covergroups directly. However, you can achieve similar behavior by using arguments in the constructor to initialize
//different configurations. Example:
//class cov;
//covergroup cg(int limit);
//coverpoint val {
//bins range[] = {[0:limit]};
//}
//endgroup
//endclass
//Q51. What is coverage-driven verification (CDV)?
//Answer: CDV is a methodology where stimulus generation and verification effort are
//guided by coverage metrics. The aim is to maximize coverage efficiently, reducing redundant tests and improving quality.
//Q52. How is functional coverage integrated with UVM?
//Answer: In UVM, functional coverage is typically integrated using covergroups defined
//in sequence items, monitors, or scoreboards. The uvm subscriber and analysis port
//mechanism is commonly used to trigger coverage sampling.
//Q53. What is the purpose of using uvm coverage classes in UVM?
//Answer: These classes help organize and encapsulate covergroups. They improve modularity and promote reuse by associating covergroups with the UVM testbench architecture.
//Q54. How do you sample covergroups in UVM monitor or subscriber?
//Answer: You call the sample() method after extracting or observing data. Example:
//function void write(my_transaction tr);
//cov_inst.cp_inst.sample();
//endfunction
//Q55. Can coverpoints be triggered manually or automatically?
//Answer: Coverpoints are always triggered manually using the sample() method. Unlike
//code coverage, functional coverage does not trigger automatically.
//Q56. What are automatic bins and when are they useful?
//Answer: Automatic bins are generated implicitly when a coverpoint range is specified
//without user-defined bins. They’re useful for quickly covering wide ranges during early
//verification. Example:
//coverpoint addr; // automatic bins based on type width
//Q57. How do you measure cross coverage between signals from
//different interfaces?
//Answer: You can create a central covergroup that includes coverpoints from both interfaces or pass values from both interfaces to a transaction class and cover them there.
//Q58. What is the difference between ignore bins and illegal bins?
//Answer:
//• ignore bins excludes values from coverage without raising any errors.
//• illegal bins raises a runtime error if those values are encountered, and they count
//as test failures.
//Q59. How can you reduce simulation time while still collecting
//meaningful coverage?
//Answer:
//• Use targeted constraints to hit specific coverage goals.
//• Use ignore bins to skip irrelevant cases.
//• Prioritize corner cases using weighted randomization.
//Q60. How do you interpret functional coverage reports?
//Answer: Coverage reports list:
//• Covergroups and coverpoints with hit counts.
//• Percentage covered.
//• Missing bins and transitions.
//Analyzing this helps guide regression planning and identify unverified behavior.
//Q61. What is an assertion in SystemVerilog and why is it used?
//Answer: An assertion in SystemVerilog is a construct used to validate the behavior
//of a design by checking for expected conditions at runtime. Assertions help catch design
//bugs early by ensuring that certain conditions hold true during simulation. They improve
//design reliability and simplify debugging by localizing violations of intended behavior.
//Q62. What are the two types of assertions in SystemVerilog? Explain
//each.
//Answer: SystemVerilog supports two main types of assertions:
//• Immediate Assertions: These are evaluated immediately when the statement is
//executed. They are typically used in procedural code like initial or always blocks.
//• Concurrent Assertions: These evaluate properties over time and are used to
//monitor behavior across clock cycles. They are written using temporal expressions.
//Q63. What are the primary methods used with concurrent assertions?
//Answer: Concurrent assertions use the following keywords/methods:
//• assert property: Checks if a property holds.
//• assume property: Used in formal verification; assumes the property holds.
//• cover property: Used to ensure that a property occurs during simulation for
//functional coverage.
//Q64. What is the significance of the “disable iff” construct in assertions?
//Answer: The disable iff clause is used in concurrent assertions to disable or ignore
//the evaluation of the assertion when a certain condition is true. It’s typically used to
//avoid false failures during reset or when specific invalid conditions are present.
//assert property (@(posedge clk) disable iff (reset) (req |=> ack));
//In this example, the assertion is not evaluated when reset is high.
//Q65. What are the benefits of using assertions in a verification environment?
//Answer: Assertions provide several benefits:
//• Early detection of design bugs.
//• Better documentation of design intent.
//• Reduced debugging time.
//• Enhanced readability and maintainability.
//• Enables formal verification and simulation coverage tracking.
//Q66. Write a concurrent assertion to check that whenever ‘req‘ goes high,
//‘ack‘ should go high in the next cycle.
//Answer:
//property req_ack;
//@(posedge clk) req |=> ack;
//endproperty
//assert property (req_ack);
//This assertion checks that if ‘req‘ is high on one clock cycle, ‘ack‘ must be high on the
//next clock cycle.
//Q67. How do you assert that a signal ‘data valid‘ remains high for 3
//consecutive clock cycles once it becomes high?
//Answer:
//property data_valid_stable;
//@(posedge clk) data_valid |=> data_valid [*2];
//endproperty
//assert property (data_valid_stable);
//The repetition operator ‘[*2]‘ checks that ‘data valid‘ remains high for 2 more cycles after
//the initial high (total of 3).
//Q68. Write an assertion to ensure that a signal ‘write‘ is not active during
//reset.
//Answer:
//property no_write_on_reset;
//@(posedge clk) disable iff (reset) !write;
//endproperty
//assert property (no_write_on_reset);
//The assertion ensures that ‘write‘ is not asserted when reset is active.
//Q69. How can you use the ‘cover property‘ to check that a transaction of
//‘start ¿ done‘ happens at least once during simulation?
//Answer:
//property start_done_transaction;
//@(posedge clk) start |=> done;
//endproperty
//cover property (start_done_transaction);
//The ‘cover property‘ is used for functional coverage to ensure the ‘start -¿ done‘ scenario
//occurs during simulation.
//Q70. Write an assertion that checks a burst transfer of 4 cycles starting
//from ‘burst start‘ with ‘data valid‘ high in all cycles.
//Answer:
//property burst_transfer;
//@(posedge clk) burst_start |=> data_valid [*4];
//endproperty
//assert property (burst_transfer);
//This checks that after ‘burst start‘, ‘data valid‘ remains high for 4 consecutive cycles,
//indicating a proper burst transfer.
//Q76. Explain how the ‘disable iff‘ clause works in assertions and provide
//an example.
//Answer:
//The ‘disable iff‘ clause disables the assertion when its condition is true, effectively
//masking the assertion temporarily.
//Example:
//property p;
//@(posedge clk) disable iff (reset) (a |=> b);
//endproperty
//assert property (p);
//Here, the assertion is disabled (ignored) whenever ‘reset‘ is high.
//Q77. What is the difference between immediate and concurrent assertions?
//Provide examples.
//Answer:
//- Immediate assertions execute instantly at the point in procedural code. - Concurrent assertions run continuously alongside simulation time, checking temporal properties.
//Examples:
//Immediate assertion:
//always @(posedge clk) begin
//assert (a == b) else $error("Mismatch");
//end
//Concurrent assertion:
//property p;
//@(posedge clk) a |=> b;
//endproperty
//assert property (p);
//Q78. How can you parameterize assertions in SystemVerilog? Provide a
//simple example.
//Answer:
//Assertions can be parameterized using ‘parameter‘ to make them reusable with different conditions.
//Example:
//parameter int WIDTH = 8;
//property p #(parameter int W = WIDTH);
//@(posedge clk) (data == W) |=> (valid == 1);
//endproperty
//assert property (p#(16));
//Q79. Describe the use of ‘cover property‘ in assertions. How is it different
//from ‘assert property‘?
//Answer:
//- ‘assert property‘ checks that a property holds true; simulation reports failure on
//violation. - ‘cover property‘ tracks if a property ever becomes true during simulation,
//useful for coverage analysis.
//Example:
//cover property (@(posedge clk) a ##1 b);
//This records coverage when ‘a‘ is followed by ‘b‘ after 1 cycle.
//Q80. What is a temporal implication (‘—=¿‘) in SVA, and how does it
//differ from logical implication (‘-¿‘)?
//Answer:
//- Temporal implication (‘—=¿‘) means ”if antecedent sequence happens now, then
//consequent sequence must happen starting next clock cycle.” - Logical implication (‘-¿‘)
//is a combinational operator without timing semantics.
//Example:
//property p;
//@(posedge clk) (a ##1 b) |=> (c ##1 d);
//endproperty
//Here, if ‘a 1 b‘ occurs, then ‘c 1 d‘ must follow in the subsequent cycles.
//Logical implication example:
//assert (a -> b); // immediate logic check
//No timing is involved in logical implication.
//Q81: What is Object-Oriented Programming (OOP) in SystemVerilog?
//Answer:
//OOP in SystemVerilog is a programming paradigm that uses objects and classes to model
//real-world entities and concepts. It supports encapsulation, inheritance, and polymorphism to improve code reuse, modularity, and maintainability in verification environments.
//Q82: What are the main features of OOP in SystemVerilog?
//Answer:
//The main features are:
//- Encapsulation: Bundling data and methods in classes.
//- Inheritance: Deriving new classes from existing ones to reuse and extend functionality.
//- Polymorphism: Ability to call methods of derived classes through base class handles
//(dynamic dispatch).
//- Abstraction: Hiding implementation details behind interfaces and classes.
//Q83: What is a class in SystemVerilog? How do you define it?
//Answer:
//A class is a blueprint for creating objects containing data (variables) and behavior (methods). It is defined using the class keyword.
//Example:
//class Packet;
//int data;
//function void display();
//$display("Data = %0d", data);
//endfunction
//endclass
//Q84: How do you create an object from a class in SystemVerilog?
//Answer:
//You create an object using the new operator on a class handle.
//Example:
//Packet pkt;
//pkt = new();
//pkt.data = 10;
//pkt.display();
//Q85: What is a constructor in SystemVerilog classes?
//Answer:
//A constructor is a special function named new that initializes the object at creation. It
//can take arguments to set initial values.
//Example:
//class Packet;
//int data;
//function new(int d);
//data = d;
//endfunction
//endclass
//Q86: What is inheritance in SystemVerilog? How is it implemented?
//Answer:
//Inheritance allows a class (derived class) to acquire properties and methods of another
//class (base class). Implemented using the extends keyword.
//Example:
//class BaseClass;
//function void show();
//$display("Base class");
//endfunction
//endclass
//class DerivedClass extends BaseClass;
//function void show();
//$display("Derived class");
//endfunction
//endclass
//Q87: What is polymorphism in SystemVerilog?
//Answer:
//Polymorphism allows methods to behave differently depending on the object’s actual
//derived type, even if accessed through a base class handle. Achieved using virtual methods
//and dynamic dispatch.
//Q88: How do you declare and use virtual methods?
//Answer:
//Declare a method with the virtual keyword in the base class. Derived classes override
//it. When called via a base class handle, the derived version executes at runtime.
//Example:
//class BaseClass;
//virtual function void display();
//$display("Base");
//endfunction
//endclass
//class DerivedClass extends BaseClass;
//function void display();
//$display("Derived");
//endfunction
//endclass
//BaseClass obj;
//obj = new DerivedClass();
//obj.display(); // Prints "Derived"
//Q89: What are class handles and how do they differ from variables?
//Answer:
//Class handles are pointers/references to objects. Variables hold actual data. Class handles allow dynamic memory allocation, sharing, and polymorphism.
//Q90: How is memory managed in SystemVerilog OOP?
//Answer:
//Objects are created dynamically using new. The simulator automatically garbage collects
//unreferenced objects, but explicit delete can be used to free objects sooner.
















//constraint_practice.sv Page 1
////----------------------------1.Basic constraint-------------------------------
//class trans;
// rand bit[7:0] data;
//
// constraint data_range {data inside {[10:100]};}
// constraint data_cond {data % 2 == 0;}
//
// function void post_randomize();
// $display("data = %0d", data);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// repeat(10) begin
// tr.randomize();
// end
// end
//
//endmodule
////--------------------------2.patterns_in_constraints--------------------------
////
////===> i. 01010101
////-----------------------------------------------------------------------------
//class trans;
// rand bit[7:0] array[];
//
// constraint array_size {array.size == 10;}
// constraint array_condn {foreach(array[i])
// if(i % 2 == 0)
// array[i] == 0;
// else
// array[i] == 1;
// }
//
// function void post_randomize();
// $display("array = %0p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> ii. 001100110011
////--------------------------------------------------------------------------
//class trans;
// rand bit[7:0] array[];
//
// constraint array_size {array.size == 20;}
// constraint array_condn {foreach(array[i])
// if((i % 4 == 0) || (i % 4 == 1))
// array[i] == 0;
// else
//constraint_practice.sv Page 2
// array[i] == 1;
// }
//
// function void post_randomize();
// $display("array = %0p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> iii. 000111000111000111
////------------------------------------------------------------------------
//class trans;
// rand bit[7:0] array[];
//
// constraint array_size {array.size == 21;}
// constraint array_condn {foreach(array[i])
// if((i % 6 == 0) || (i % 6 == 1) || (i % 6 == 2))
// array[i] == 0;
// else
// array[i] == 1;
// }
//
// function void post_randomize();
// $display("array = %0p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> iv. 0102030405
////------------------------------------------------------------------------------------
//-------
//class trans;
// rand bit[7:0] array[];
//
// constraint array_size {array.size == 21;}
// constraint array_condn {foreach(array[i])
// if(i % 2 == 0)
// array[i] == 0;
// else
// array[i] == (i+1)/2;
// }
//
// function void post_randomize();
// $display("array = %0p", array);
// endfunction
//endclass
//constraint_practice.sv Page 3
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> v. 02040608010
////-----------------------------------------------------------
//class trans;
// rand bit[7:0] array[];
//
// constraint array_size {array.size == 21;}
// constraint array_condn {foreach(array[i])
// if(i % 2 == 0)
// array[i] == 0;
// else
// array[i] == (i+1);
// }
//
// function void post_randomize();
// $display("array = %0p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> vi. 0103050709
////------------------------------------------------------------
//class trans;
// rand bit[7:0] array[];
//
// constraint array_size {array.size == 21;}
// constraint array_condn {foreach(array[i])
// if(i % 2 == 0)
// array[i] == 0;
// else
// array[i] == i;
// }
//
// function void post_randomize();
// $display("array = %0p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> vii. -5 10 -15 20 -25 30
////------------------------------------------------------------
//constraint_practice.sv Page 4
//class trans;
// rand int array[];
//
// constraint array_size {array.size == 20;}
// constraint array_condn {foreach(array[i])
// if(i % 2 == 0)
// array[i] == (-5) * (i+1);
// else
// array[i] == (i+1) * 5;
// }
//
// function void post_randomize();
// $display("array = %p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> viii. 9 19 29 39 49 59 69 79
////------------------------------------------------------------------------------
//class trans;
// rand int array[];
//
// constraint array_size {array.size == 10;}
// constraint array_condn {foreach(array[i])
// if(i < 5)
// array[i] == i + 1;
// else
// array[i] == 10 - i;
// }
//
// function void post_randomize();
// $display("array = %p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> ix. 1122334455
////----------------------------------------------------------------------
//class trans;
// rand int array[];
//
// constraint array_size {array.size == 20;}
// constraint array_condn {foreach(array[i])
// array[i] == (i+2)/2;
// }
//
//constraint_practice.sv Page 5
// function void post_randomize();
// $display("array = %p", array);
// endfunction
//endclass
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////===> x. 122112211221
////----------------------------------------------------------------------------
//class trans;
// rand bit[31:0] data[];
//
// constraint data_s {
// data.size == 12;
// }
//
// constraint data_c {
// foreach(data[i])
// if((i%4 == 0) || (i%4 == 3))
// data[i] == 1;
// else
// data[i] == 2;
// }
//
//
// function void post_randomize();
// $display("data ---> %0p", data);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// tr.randomize();
// end
//endmodule
////------------------------------------------------------------------------------------
//--------------------------
////------>Q3. Write a code to generate random number between 1.35 and 2.57?
////----------------------------------------------------------------------------------
//class trans;
// rand int data;
// real num;
//
// constraint data_size {data inside {[135:257]};}
//
// function void post_randomize();
// num = data / 100.0;
// $display("num = %0f", num);
// endfunction
//constraint_practice.sv Page 6
//
//endclass
//module tb;
// trans tr;
//
// initial begin:
// tr = new();
// repeat(10) begin
// tr.randomize();
// end
// end
//
//endmodule
////---------------------->Q4. Write a constraint to generate a random even number betwe
//en 50 and 100?
////------------------------------------------------------------------------------------
//--------------
//class trans;
// rand int data[];
//
// constraint data_size {data.size == 20;}
// constraint data_condn {foreach(data[i]) {
// data[i] inside {[50:100]};
// data[i] % 2 == 0;
// }
// }
//
// function void post_randomize();
// $display("data = %0p", data);
// endfunction
//
//endclass
//module tb;
// trans tr;
//
// initial begin
// tr = new();
// repeat(10) begin
// tr.randomize();
// end
// end
//
//endmodule
////---------------------->Q5. Write a constraint to generate a random even & odd number
// between 20 and 100?
////------------------------------------------------------------------------------------
//-------------------
//class trans;
// rand int even[];
// rand int odd[];
//
// constraint arr_size {even.size == 20;
// odd.size == 20;}
//
// constraint arr_range {
// foreach(even[i])
//constraint_practice.sv Page 7
// even[i] inside {[20:100]};
// foreach(odd[i])
// odd[i] inside {[20:100]};
// }
//
// constraint arr_condn {
// foreach(even[i])
// even[i] % 2 == 0;
// foreach(odd[i])
// odd[i] % 2 == 1;
// }
//
// function void post_randomize();
// $display("even = %0p", even);
// $display("odd = %0p", odd);
// endfunction
//
//endclass
//module tb;
// trans tr;
//
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule
////-------------->Q6. Write a constraint such that even locations contains odd numbers
//and odd locations contains even numbers ?
////------------------------------------------------------------------------------------
//-------------------------------------------
//class trans;
// rand bit[7:0] data[];
//
// constraint data_size {
// data.size == 20;
// }
//
// constraint data_cond {
// foreach(data[i])
// if(i % 2 == 0)
// data[i] % 2 == 1;
// else
// data[i] % 2 == 0;
// }
//
// function void post_randomize();
// foreach(data[i])
// $display("data --> %0d : %0d", i, data[i]);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
//constraint_practice.sv Page 8
// tr.randomize();
// end
//endmodule
////----->Q7.Write a for a 32 bit rand variable such that it should have 16 number of 1'
//s non consecutively.
////------------------------------------------------------------------------------------
//----------------------
//class trans;
// rand bit[31:0] data;
//
// constraint data_c {
// $countones(data) == 16;
// }
//
// constraint data_s {
// foreach(data[i])
// if(i > 0 && data[i] == 1)
// data[i] != data[i-1];
// }
//
// function void post_randomize();
// $display("data = %0b", data);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// tr.randomize();
// end
//endmodule
////----->Q8. Write a constraint to genarate FACTORIAL of first 10 numbers ?
////------------------------------------------------------------------------------------
//----------------------
//class trans;
// rand bit[31:0] data[];
//
// constraint data_s {
// data.size == 10;
// }
//
// function int fact(int i);
// if(i <= 1)
// fact = 1;
// else
// fact = i * fact(i - 1);
// endfunction
//
// constraint data_c {
// foreach(data[j])
// data[j] == fact(j);
// }
//
//
// function void post_randomize();
// foreach(data[k])
// $display("data ---> %0d : %0d", k, data[k]);
//constraint_practice.sv Page 9
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// tr.randomize();
// end
//endmodule
////----->Q9. Write a constraint to genarate FACTORIAL of first 5 even numbers ?
////------------------------------------------------------------------------------------
//----------------------
//class trans;
// rand bit[31:0] data[];
//
// constraint data_s {
// data.size == 5;
// }
//
// function int fact(int i);
// if(i <= 1)
// fact = 1;
// else
// fact = i * fact(i - 1);
// endfunction
//
// constraint data_c {
// foreach(data[j])
// data[j] == fact(j * 2);
// }
//
//
// function void post_randomize();
// foreach(data[k])
// $display("data ---> %0d : %0d", k*2, data[k]);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// tr.randomize();
// end
//endmodule
////----->Q10. Write a constraint to genarate FACTORIAL of first 5 odd numbers ?
////------------------------------------------------------------------------------------
//----------------------
//class trans;
// rand bit[31:0] data[];
//
// constraint data_s {
// data.size == 5;
// }
//constraint_practice.sv Page 10
//
// function int fact(int i);
// if(i <= 1)
// fact = 1;
// else
// fact = i * fact(i - 1);
// endfunction
//
// constraint data_c {
// foreach(data[j])
// data[j] == fact((j*2)+1);
// }
//
//
// function void post_randomize();
// foreach(data[k])
// $display("data ---> %0d : %0d", (k*2)+1, data[k]);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// tr.randomize();
// end
//endmodule
////----->Q11. Write a SystemVerilog program to randomize a 32-bit variable, but only ra
//ndomize the 20th bit?.
////------------------------------------------------------------------------------------
//----------------------
//class trans;
// rand bit[31:0] num;
//
// constraint data_c {
// foreach(num[i])
// if(i == 19)
// num[i] inside {[0:1]};
// else
// num[i] == 0;
// }
//
// function void post_randomize();
// $display("num = %b", num);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// repeat(20) begin
// tr.randomize();
// end
// end
//endmodule
//constraint_practice.sv Page 11
////----->Q11..Write a constraint such that sum of any three consecutive elements in an
//array should be an even number ?
////------------------------------------------------------------------------------------
//--------------------------------
//class trans;
// rand bit[31:0] data[];
//
// constraint data_s {
// data.size == 12;
// }
//
// constraint dat_range {
// foreach(data[i])
// data[i] inside {[50:100]};
// }
//
// constraint data_c {
// foreach(data[i])
// if(i > 1)
// (data[i] + data[i-1] + data[i-2]) % 2 == 0;
// }
//
//
// function void post_randomize();
// foreach(data[i])
// $display("data ---> %0d : %0d", i, data[i]);
// endfunction
//
//endclass
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// tr.randomize();
// end
//endmodule
////--->Q12. Write a constraint on a 16 bit num to generate alternate pairs of 0's and 1
//'s (Ex:0011.. or 1100) ?
////------------------------------------------------------------------------------------
//--------------------------------------
//class trans;
// rand bit[15:0] data;
//
// constraint data_c {
// foreach(data[i])
// if(i < 15)
// if(i % 2 == 0)
// data[i + 1] == data[i];
// else
// data[i] != data[i+1];
// }
//
//
// function void post_randomize();
// $display("data ---> %0b", data);
// endfunction
//
//endclass
//constraint_practice.sv Page 12
//module tb;
// trans tr;
// initial
// begin
// tr = new();
// tr.randomize();
// end
//endmodule
////---> Q13. Star pattern Quetions:
////------------------------------------------------------------------------------------
//----------
//// Qi. 1
//// 11
//// 111
//// 1111
//// 11111
//// 111111
//// 1111111
//// 11111111
//// 111111111
//// 1111111111
//class trans;
//// rand bit a;
// rand bit[31:0] a[];
//
// constraint a_size{
// a.size == 10;
// }
//
// constraint a_c {
// foreach(a[i])
// a[i] == 2**(i+1) -1; ////1 11 111 1111 11111 111111 1111111
// }
//
// function void post_randomize();
// foreach(a[i])
// $display("%0b", a[i]);
// endfunction : post_randomize
//
//// function void post_randomize();
//// for(int i = 0; i < 10; i++) begin
//// for(int j = 0; j <= i; j++) begin
//// a = 1;
//// $write("%0p", a);
//// end
//// $display("");
//// end
//// endfunction : post_randomize
//
//endclass : trans
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule : tb
//constraint_practice.sv Page 13
////------------------------------------------------------------------------------------
//---
////---> Qii. 1
//// 12
//// 123
//// 1234
//// 12345
//// 123456
//// 1234567
//// 12345678
//// 123456789
//class trans;
// rand bit[31:0] a;
//
// constraint a_range {a inside {[0:9]};}
//
// function void post_randomize();
// for(int i = 0; i < 10; i++) begin
// for(int j = 0; j < i; j++) begin
// a = j+1;
// $write("%0d", a);
// end
// $display("");
// end
// endfunction : post_randomize
//
//endclass : trans
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule : tb
////--------------------------------------------------------------------------------
////---> Qiii. 1 2 3 4 5 6 7 8 9 10
//// 1 2 3 4 5 6 7 8 9
//// 1 2 3 4 5 6 7 8
//// 1 2 3 4 5 6 7
//// 1 2 3 4 5 6
//// 1 2 3 4 5
//// 1 2 3 4
//// 1 2 3
//// 1 2
//// 1
//class trans;
// rand bit[31:0] a;
//
// constraint a_range {a inside {[0:10]};}
//
// function void post_randomize();
// for(int i = 10; i > 0; i--) begin
// for(int j = 0; j < i; j++) begin
// a = j+1;
// $write("%0d ", a);
// end
//constraint_practice.sv Page 14
// $display("");
// end
// endfunction : post_randomize
//
//endclass : trans
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule : tb
////---> Q14. write a constraint to Generate a asscending order :
////------------------------------------------------------------------------------------
//-------
//class trans;
// rand bit[31:0] a[];
//
// constraint a_size {
// a.size == 10;
// }
//
// constraint a_range {
// foreach(a[i])
// a[i] inside {[0:100]};
// }
//
// constraint a_con {
// foreach(a[i])
// if(i > 0)
// a[i] > a[i-1];
// // a[i] < a[i-1];
// }
//
// function void post_randomize();
// $display("a = %0p", a);
// endfunction : post_randomize
//
//endclass : trans
//
//module tb;
// trans tr;
// initial begin
// tr = new();
// tr.randomize();
// end
//
//endmodule : tb
//
//
//
//Code
//Examples
//Constraints
//1. Randomize the below variable such as
//class randvar;
//rand bit [7:0] var1, var2, var3, var4;
//endclass
//i) Randomize all variable.
//// Define a class called randvar that has four random variables of 8 bits
//each
//class randvar;
// rand bit [7:0] var1, var2, var3, var4;
//endclass
//// Define a module called rand_methods
//module rand_methods;
// initial begin
// // Create an object of the randvar class called pkt
// randvar pkt;
// // Allocate memory for the pkt object
// pkt = new();
//
// // Call the randomize method to assign random values to the variables
//in pkt
// pkt.randomize();
//
// // Display the randomly generated values of the variables in pkt
//using the $display function
// $display("\t VAR1 = %0d \t VAR2 = %0d \t VAR3 = %0d \t VAR4 = %0d ",
//pkt.var1, pkt.var2, pkt.var3, pkt.var4);
// end
//endmodule
//ii) Randomize only var2.
//// Define a class called randvar that has four random variables of 8 bits
//each
//class randvar;
// rand bit [7:0] var1, var2, var3, var4;
//endclass
//// Define a module called rand_methods
//module rand_methods;
// initial begin
// // Create an object of the randvar class called pkt
// randvar pkt;
// // Allocate memory for the pkt object
// pkt = new();
//
// // Set the rand_mode for var1, var3, and var4 to 0 (sequential)
// pkt.var1.rand_mode(0);
// pkt.var3.rand_mode(0);
// pkt.var4.rand_mode(0);
//
// // Call the randomize method to assign random values to the variables
//in pkt
// pkt.randomize();
//
// // Display the randomly generated values of the variables in pkt
//using the $display function
// $display("\t VAR1 = %0d \t VAR2 = %0d \t VAR3 = %0d \t VAR4 = %0d ",
//pkt.var1, pkt.var2, pkt.var3, pkt.var4);
//
// // Display the rand_mode values for each variable in pkt using the
//$display function
// $display("\t var1.rand_mode() = %0d \t var2.rand_mode() = %0d \t
//var3.rand_mode() = %0d \t var4.rand_mode()= %0d ", pkt.var1.rand_mode(),
//pkt.var2.rand_mode(), pkt.var3.rand_mode(), pkt.var4.rand_mode());
// end
//endmodule
//iii) Randomize var1, var4.
//// Define a new class called 'randvar'
//class randvar;
//// Declare four random variables of 8-bit width
//rand bit [7:0] var1, var2, var3, var4;
//endclass
//// Define a new module called 'rand_methods'
//module rand_methods;
//initial
//begin
//// Create an object of type 'randvar'
//randvar pkt;
//pkt = new();
//// Set the random mode of 'var2' and 'var3' to 0 (uniform distribution)
//pkt.var2.rand_mode(0);
//pkt.var3.rand_mode(0);
//
//// Call the 'randomize' method to generate random values for 'pkt' object
//pkt.randomize();
//// Print the values of 'var1', 'var2', 'var3', and 'var4'
//$display("\t VAR1 = %0d \t VAR2 = %0d \t VAR3 = %0d \t VAR4 = %0d
//",pkt.var1,pkt.var2, pkt.var3,pkt.var4);
//
//// Print the random mode of 'var1', 'var2', 'var3', and 'var4'
//$display("\t var1.rand_mode() = %0d \t var2.rand_mode() = %0d \t
//var3.rand_mode()= %0d \t var4.rand_mode()= %0d
//",pkt.var1.rand_mode(),pkt.var2.rand_mode(), pkt.var3.rand_mode(),
//pkt.var4.rand_mode());
//end
//endmodule
//iv) Randomize var1, var3, var4.
//// Define a class named randvar
//class randvar;
//rand bit [7:0] var1, var2, var3, var4;
//endclass
//// Define a module named rand_methods
//module rand_methods;
//// Define an initial block that executes only once at the beginning of
//simulation
//initial
//begin
//// Create an instance of randvar class named "pkt"
//randvar pkt;
//// Initialize pkt using the new operator
//pkt = new();
//// Set the randomization mode of pkt.var2 to 0
//pkt.var2.rand_mode(0);
//// Call randomize method to randomize the values of pkt's variables
//pkt.randomize();
//// Display the values of pkt's variables using $display function
//$display("\t VAR1 = %0d \t VAR2 = %0d \t VAR3 = %0d \t VAR4 = %0d
//",pkt.var1,pkt.var2, pkt.var3,pkt.var4);
//// Display the randomization mode of pkt's variables using $display function
//$display("\t var1.rand_mode() = %0d \t var2.rand_mode() = %0d \t
//var3.rand_mode() = %0d \t var4.rand_mode()=
//%0d",pkt.var1.rand_mode(),pkt.var2.rand_mode(), pkt.var3.rand_mode(),
//pkt.var4.rand_mode());
//end
//endmodule
//2. There are two constraints applied to same variable ‘A’. one will
//generate the value within the range of [25:50] and another expression
//say variable value should be greater than 40. What should be the value
//generated, and what is the reason?
//class packet;
// rand bit [8:0] val;
//
// constraint c1_range { val inside {[25:50]}; }
// constraint c2 { val > 40;}
// endclass
// module constr_inside;
// initial
// begin
// packet pkt;
//pkt = new();
//
//repeat(3)
// begin
// pkt.randomize();
//
// $display("\t VALUE = %0d",pkt.val);
//
// end
// end
// endmodule
//If there are two constraints applied to the same variable 'A', one generating a value within the
//range of [25:50] and another stating that the variable value should be greater than 40, the value
//generated for variable 'A' will be between 40 and 50.
//This is because the second constraint that 'A' should be greater than 40 already restricts the range
//of 'A' to [40:50]. Therefore, the first constraint, which generates a value in the range of [25:50],
//will only apply to the overlapping range of [40:50], resulting in the final value of 'A' being between
//40 and 50.
//It is important to note that constraints should be designed carefully to avoid conflicts and to
//ensure that they work together to generate valid and meaningful results.
//3. What is wrong with the below code? What is the correct process to
//write the constraint?
//Class const;
//rand bit [7:0] low, mid, high;
//constraint Const_1 {low <mid<high;}
//end class
//In the given code, the constraint body is {low <mid<high;}, which checks if low is less than mid
//and mid is less than high. This constraint specifies a valid order of the variables, but it does not
//restrict the range of the variables.
//To restrict the range of the variables, you need to define a range constraint. The correct way to
//define the constraint would be:
//class const;
// rand bit [7:0] low, mid, high;
// constraint Const_1 {
// low inside {[0:50]};
// mid inside {[25:75]};
// high inside {[50:100]};
// }
//endclass
//4. Write a single constraint to generate random values for bit [8:0]
//variable in the below range, 1-34, 127, 129-156, 192-202,257-260.
//class packet;
// rand bit [8:0] val; // declare random variable val as a 9-bit wide bitvector
//
// constraint c1_range { val inside {[1:34], 127, [129:156], [192:202],
//[257:260]}; } // define constraint c1_range on val
//
//endclass
//module constr_inside;
// initial
// begin
// packet pkt; // instantiate packet object pkt
// pkt = new(); // allocate memory for pkt
//
// repeat(10) // repeat the following block 10 times
// begin
// pkt.randomize(); // call the randomize method on pkt to generate a
//random value for val
//
// $display("\t VALUE = %0d",pkt.val); // print the resulting value of val
// end
// end
//endmodule
//5. Write a constraint without an inside function to generate random
//values within the range of 34 to 43?
//class packet;
// rand bit [8:0] val; // Declare a random variable "val" of 9 bits
//
// constraint c1_range { val > 34; } // Define a constraint that "val" must
//be greater than 34
// constraint c2_range { val < 43; } // Define a constraint that "val" must
//be less than 43
//
//endclass
//module constr_inside;
// initial begin
// packet pkt; // Create an instance of "packet" class called "pkt"
// pkt = new(); // Initialize "pkt"
//
// repeat (10) begin // Generate and display 10 random values of "val"
// pkt.randomize(); // Use the "randomize()" method to generate a random
//value for "val" that satisfies the constraints
//
// $display("\t VALUE = %0d", pkt.val); // Display the value of "val"
// end
// end
//endmodule
//6. Write a constraint to generate a random value for a var1 [7:0] within
//50 and var2 [7:0] with the non-repeated value in every randomization?
//class packet;
// rand bit [7:0] var1; // Define a random 8-bit variable called var1
// rand bit [7:0] var2; // Define a random 8-bit variable called var2
//
// constraint c1_range { var1 inside {[0:50]}; } // Define a constraint on
//var1
// constraint c2_range { unique {var2}; } // Define a constraint on var2
//
//endclass
//module constr_inside;
// initial
// begin
// packet pkt; // Create an instance of the packet class called pkt
// pkt = new(); // Initialize pkt object
//
// repeat(10)
// begin
// pkt.randomize(); // Call the randomize method on the pkt object
// $display("\t VAR1 = %0d \t VAR2 = %0d",pkt.var1,pkt.var2); // Display
//the values of var1 and var2 after randomization
// end
// end
//endmodule
//7. Without using randomization method or rand keyword(modifiers),
//generate an array of unique values.
//module test;
//
// // Declare an array "a" of 10 unsigned integers
// int unsigned a[10];
//
// initial begin
// // Use the "foreach" loop to initialize each element of the array
// foreach (a[i])
// begin
// a[i] = i*i; // Set the value of each element to the square of its
//index
// end
//
// // Shuffle the array using the "shuffle" method
// a.shuffle();
//
// // Display the contents of the array using the "$display" statement
// $display("a = %p",a);
// end
//
//endmodule
//8. Generate unique elements in an array without using the keyword
//unique.
//// Define a class "packet"
//class packet;
// rand bit [5:0] array[]; // Define a dynamic array of random bits with size
//unknown initially
// randc int c; // Define a random cyclic integer "c"
// // Define a constraint "size_array" that restricts the size of the array to
//be between 4 and 20
// // and sets the size to be equal to the value of "c"
// constraint size_array {c inside {[4:20]}; array.size == c;}
// // Define a constraint "elements" that restricts each element of the array
//to be between 0 and 64
// constraint elements {foreach (array[i]) array[i] inside {[0:64]};}
// // Define a constraint "abc" that restricts each element of the array to be
//unique
// constraint abc {foreach(array[i]) foreach(array[j]) if (i!=j)
//array[i]!=array[j];}
//endclass: packet
//// Define a module "foreach_constraint"
//module foreach_constraint;
// packet pkt = new(); // Create an instance of "packet" named "pkt"
// initial
// begin
// repeat (15)
// begin
// assert(pkt.randomize()); // Randomize the values of the packet's
//variables according to their constraints
// $display("\nThe size of the array is %0d",pkt.array.size());
// $display("Elements of the array = %0p",pkt.array);
// end
// end
//endmodule
//9. Write a constraint to generate 0, 1, x and z randomly.
//// Define a packet class with two random logic variables a and b
//class packet;
// rand logic a;
// rand logic b;
//
// // Define a post_randomize function to assign value to b and modify a's
//value based on b's value after randomize
// function void post_randomize();
// b = $urandom_range(0,1); // Assign a random value to b
// if (b)
// a = a ? 'x : 'z; // If b is true (1), then assign 'x or 'z to a based
//on its original value
// endfunction
//endclass
//// Define a test module to create an instance of packet and print its value
//of a
//module test;
// initial begin
// packet pkt = new; // Create a new instance of packet
// repeat (10) begin
// pkt.randomize(); // Randomize the values of a and b
// $display(pkt.a); // Print the value of a after randomization
// end
// end
//endmodule
//10. Write a constraint to generate multiples of power 2.
//// Define a class to represent an address and its corresponding power of 2
//class addr2power;
// rand bit[7:0] addr;
// randc bit[2:0] add2; // the corresponding power of 2
// constraint ADDR { addr == 2**add2; } // ensure that addr is equal to 2
//raised to the power of add2
//endclass
//module test;
// initial begin
// addr2power addr_pow; // create an instance of addr2power
// addr_pow = new(); // initialize the instance
//
// repeat(10) begin
// addr_pow.randomize(); // randomly generate values for addr and add2
//
// // Display the resulting address (2 raised to the power of add2)
// $display("%0d", addr_pow.addr);
// end
// end
//endmodule
//11. Having 32-bit of variable, only single bit high values need to be
//accessed. Write a constraint for that.
//// Define a class named "abc"
//class abc;
// rand bit [31:0] var1; // Declare a random variable var1 of 32-bit size
// rand bit [31:0] c1; // Declare a random variable c1 of 32-bit size
//
// // Define a constraint named "c2" that ensures c1 has only one bit set to 1
// constraint c2{ $countones(c1)==1;}
//
//endclass
//// Define a module named "bb"
//module bb();
//
// abc ab_h; // Instantiate an object of class "abc" named "ab_h"
// initial begin
// ab_h = new(); // Allocate memory for the object
// repeat(10) begin
// ab_h.randomize(); // Generate random values for var1 and c1 using
//constraints
// $display("values are %0d %b",ab_h.c1,ab_h.c1); // Display the values
//of c1 in decimal and binary format
// end
// end
//
//endmodule
//12. Write a constraint with array size 5 to 10 values & the array values
//should be in ascending order/descending order.
//// Define the class "packet"
//class packet;
// rand bit [7:0] b[]; // Declare a dynamic array named "b"
//
// // Define a constraint named "abc1"
// constraint abc1 {
// b.size() inside {[5:10]}; // Ensure that the size of array "b" is between
//5 and 10
// }
//
// // Define a constraint named "odd_even_2"
// constraint odd_even_2 {
// foreach(b[i]) // Iterate through each element in "b"
// if (i % 2 == 0) // If the index "i" is even
// b[i] % 2 != 0; // Ensure that the element at "b[i]" is odd
// else // If the index "i" is odd
// b[i] % 2 == 0; // Ensure that the element at "b[i]" is even
// }
//endclass
//// Define a module named "test"
//module test;
// packet v; // Instantiate an object of class "packet" named "v"
// initial begin
// v = new; // Allocate memory for the object "v"
// repeat (10) begin
// v.randomize(); // Randomize the object "v"
// $display("%p",v.b); // Display the randomized elements of array "b" in
//object "v"
// end
// end
//endmodule
//13. Write a constraint to generate a pattern 0102030405.
//// Define a class named packet
//class packet;
//
// rand int a[]; // Declare a dynamic array named 'a' of integers
//
// // Define a constraint named 'c1' that restricts the size of array 'a' to
//be within [4:20]
// constraint c1 { a.size() inside {[4:20]};}
//
// // Define a constraint named 'c2' that restricts the even-indexed elements
//of 'a' to be 0
// // and odd-indexed elements to be equal to (i+1)/2
// constraint c2 {
// foreach (a[i])
// {
// if(i % 2 == 0)
// {
// a[i] == 0 ; // If the index 'i' is even, then the element should be 0
// }
// else
// {
// a[i] == (i + 1 )/2 ; // If the index 'i' is odd, then the element
//should be (i+1)/2
// }
// }
// }
//endclass
//
//
//// Define a module named 'test'
//module test;
//
// initial begin
// packet pkt = new; // Instantiate an object of 'packet' class named 'pkt'
// pkt.randomize(); // Randomize the 'a' array of the 'pkt' object
// $display("a = %p", pkt.a); // Print the values of 'a' array of the 'pkt'
//object
// end
//
//endmodule
//15. Constraint to generate unique numbers between 99 to 100.
//// Define a packet class
//class packet;
// randc int a; // Random integer with constant weight
// real b; // Real number
// // Define a constraint that restricts the value of a within the range of
//[990, 1000]
// constraint c1 {a inside {[990:1000]};}
//
// // Define a post_randomize function to calculate b value based on a
// function void post_randomize();
// b = a / 10.0; // Set b value based on the calculated value of a
// endfunction
//
//endclass
//// Define a test module
//module test;
//
// // Generate random packets and display their a and b values
// initial begin
// packet pkt = new; // Create an instance of the packet class
// repeat(10) begin // Repeat the process for 10 times
// pkt.randomize(); // Randomize the packet instance
// $display("a=%d, b=%f", pkt.a, pkt.b); // Display the values of a and b
// end
// end
//
//endmodule
//16. Write a constraint - divisible by 5.
//class packet;
// bit [8:0] a = 27;
//
// // Define a task named "check"
// task check();
// // Check if a is divisible by 5
// if (a % 5 == 0) begin
// $display("The given number is divisible by 5");
// return; // Exit the task
// end
//
// $display("The given number is NOT divisible by 5");
// endtask // end of task definition
//endclass // end of class definition
//module top;
// packet pkt;
// initial begin
// pkt = new(); // Create an instance of the packet class
// pkt.check(); // Call the check task of the packet instance
// end
//endmodule // end of module definition
//17. Derive odd numbers within the range of 10 to 30 using SV constraint.
//class packet;
// rand bit[7:0] b[]; // dynamic array
//
// constraint abc1 { b.size() inside {[1:10]}; } // constrain array size
//between 1 and 10
// constraint odd { // constrain each element to be odd and between 10 and 30
// foreach (b[i]) {
// b[i] inside {[10:30]};
// b[i] % 2 != 0;
// }
// }
//endclass
//module test;
// packet v;
// initial begin
// v = new();
// repeat(10) begin
// v.randomize();
// $display("%p", v.b);
// end
// end
//endmodule
//18. Write a constraint to generate prime numbers between the range of
//1 to 100.
//class prime_numbers;
// rand bit [31:0] i;
//
// // Define the range of i to be from 1 to 100
// constraint a1 { i inside {[1:100]}; }
//
// // Define constraints to generate prime numbers
// constraint c {
// i != 1;
//
// // If i equals 2, then it is prime
// if (i == 2) {
// i == 2;
// } else {
// // If i is not 2, then check if it is divisible by 2
// i % 2 != 0;
// }
//
// // If i equals 3, then it is prime
// if (i == 3) {
// i == 3;
// } else {
// // If i is not 3, then check if it is divisible by 3
// i % 3 != 0;
// }
//
// // If i equals 5, then it is prime
// if (i == 5) {
// i == 5;
// } else {
// // If i is not 5, then check if it is divisible by 5
// i % 5 != 0;
// }
//
// // If i equals 7, then it is prime
// if (i == 7) {
// i == 7;
// } else {
// // If i is not 7, then check if it is divisible by 7
// i % 7 != 0;
// }
// }
//endclass
//module top;
// prime_numbers prime;
// initial begin
// prime = new();
// repeat (20) begin
// prime.randomize();
// $display("the prime: %d", prime.i);
// end
// end
//endmodule
//19. What is circular dependency and how to avoid this problem?
//Circular dependency is a situation in SystemVerilog where two or more
//modules or entities depend on each other, directly or indirectly, causing
//an infinite loop or an undefined behavior during simulation.
//For example, consider two modules: module A and module B, where
//module A requires module B and module B requires module A. This
//creates a circular dependency, as each module depends on the other to
//execute successfully.
//To avoid circular dependency in SystemVerilog, you can use a technique
//called "forward declaration." This involves declaring the modules or
//entities before they are defined, allowing the compiler to know about
//the module or entity before its full definition is provided.
//20. How can we generate the factorial of the first 5 even numbers using
//constraints in SystemVerilog?
//// Define the class to generate the factorial of the first 5 even numbers
//class factt;
//rand int num[]; // Declare dynamic array of random integers
//constraint size {num.size == 5;} // Limit the size of the array to 5
//constraint fact_num {
//foreach (num[i])
//num[i] == fact((i + 1) * 2); // Generate the factorial of each even number
////num[i] == fact(((i + 1) * 2) - 1); // Alternatively, generate the factorial
//of each odd number
//}
//// Function to calculate the factorial of a number recursively
//function int fact(int j);
//if (j == 0)
//fact = 1;
//else
//fact = j * fact(j - 1);
//endfunction
//endclass
//// Test the class by generating random factorials of even numbers
//module factorial;
//factt f = new(); // Instantiate the class
//initial
//begin
//assert(f.randomize); // Randomize the values of the class constraints
//$display("%p", f.num); // Display the generated factorials of even numbers
//end
//endmodule
//21. How can you generate a random number within a specified range
//using SystemVerilog? Write a code that generates a random number
//between 1.35 to 2.57 using SystemVerilog.
//// Define a module named "tb"
//module tb;
//// Define a class named "real_num"
//class real_num;
// rand int r_num[]; // Declare a dynamic array of random integers
// real num[10]; // Declare an array of real numbers
//
// constraint size1 { r_num.size == 10; } // Set the size of dynamic array
// constraint real_num {
// // Set the constraint to limit the range of random integers
// foreach (r_num[i]) r_num[i] inside {[1350:2570]};
// }
// // Define a function to calculate real numbers from random integers
// function void post_randomize();
// foreach (num[i]) // Loop through each real number
// begin
// num[i] = r_num[i] / 1000.0; // Calculate the real number from random
//integer
// $display("Number = %f", num[i]); // Display the real number
// end
// endfunction
//endclass
//// Create an instance of the "real_num" class
//real_num rn = new();
//// Define the initial block to randomize the values of the class
//initial begin
// rn.randomize(); // Randomize the values of the class
//end
//// End of module
//endmodule
//22. What is the constraint to generate the pattern 9 7 5 3 1 8 6 4 2 0 ?
//class packet;
// rand int a[]; // dynamic array to hold the numbers
// constraint size { a.size() == 10; } // constrain the size of array to 10
// constraint pattern { // constrain the pattern of numbers
// foreach (a[i]) {
// if (i < 5) // first five numbers
// a[i] == 10 - ((i * 2) + 1); // 9, 7, 5, 3, 1
// else // last five numbers
// a[i] == 18 - (i * 2); // 8, 6, 4, 2, 0
// }
// }
//endclass
//module tb;
// initial begin
// packet pkt = new(); // create an instance of packet class
// assert(pkt.randomize()); // randomize the packet
// $display("OUTPUT = %p", pkt.a); // print the generated pattern
// end
//endmodule
//23. Write a constraint sunch that array size between 5 to 10 values of the
//array are in asscending order ?
//Write a constraint sunch that array size between 5 to 10 values of the
//array are in descending order ?
//// Define a class to generate a set of even numbers
//module even();
//class eve;
//rand bit[6:0] a[]; // Declare an array of random bit values
//// Specify a constraint to set the size of the array between 5 to 10
//constraint a1 { a.size inside {[5:10]};}
//// Specify a constraint to ensure that the values in the array are in
//ascending order
//constraint a3 {foreach(a[i])
// if (i>0)
// a[i]>a[i-1];}
//endclass
//initial
//begin
//eve p1=new; // Create an instance of the class
// repeat(5)
// begin
// assert(p1.randomize()); // Randomize the values in the array using
//constraints
//
// // Display the generated even numbers with their indices
// foreach(p1.a[i])
// $display( " [%0d] %0d " ,i , p1.a[i]);
//
// // Display the sum of the generated even numbers
// $display(" %p %0d ", p1,p1.a.sum());
//end
//end
//endmodule
//24. Can you provide a code example of how to use constraints to access
//a single bit of a 16-bit variable? For instance, how can you generate 16-
//bit numbers with only a single bit set, such as 4, 8, or 16, using
//constraints?
//// Defining a class called 'abc'
//class abc;
//rand bit [31:0] var1; // Declaring a 32-bit variable called 'var1'
//rand bit [31:0] c1; // Declaring a 32-bit variable called 'c1'
//// Defining constraints to generate values for 'c1'
//// First view - Uncomment this constraint to generate values for 'c1' using
//left shift operation
////constraint C11{c1==1<<var1;}
//// Second view - Uncomment this constraint to generate values for 'c1' as a
//onehot variable
////constraint c2{ $onehot(c1)==1;}
//// Third view - Uncomment this constraint to generate values for 'c1' as a
//variable with only one '1' bit
//constraint c2{ $countones(c1)==1;}
//// Fourth view - Uncomment this constraint to generate values for 'c1' as a
//power of 2
////constraint c2 {(c1 & (c1-1)) == 0; c1 !=0; }
//endclass
//// Defining a module called 'bb'
//module bb();
//abc ab_h; // Creating an instance of the 'abc' class called 'ab_h'
//initial begin
//repeat(10) begin
//ab_h = new(); // Creating a new instance of 'abc' class each time
//ab_h.randomize(); // Randomizing the values of the variables in 'abc' class
//instance
//$display("values are %0d %b", ab_h.c1, ab_h.c1); // Displaying the generated
//values of 'c1' in binary format
//end
//end
//endmodule
//25. Write a constraint to generate a variable with 0-31 bits should be 1,
//32-61 bits should be 0.
//// Defining a class "packet" to generate a 62-bit random number with
//constraints
//class packet;
//rand bit [61:0] num;
//// Defining a constraint named "abc" to set the first 32 bits to 1 and the
//next 30 bits to 0
//constraint abc {
//foreach(num[i])
//if(i>=0&&i<32)
//num[i]==1'b1;
//else if(i>31&&i<62)
//num[i]==1'b0;
//}
//// Defining a function named "post_randomize" to display the value of the
//random number generated
//function void post_randomize();
//$display("num= %d %b",num, num);
//endfunction
//endclass
//// Defining a module named "test" to instantiate the "packet" class and
//generate a random number
//module test;
//packet v;
//initial begin
//v=new;
//v.randomize();
//end
//endmodule
//26. How to generate a sequence of 10 random single-bit values that
//alternate between 0 and 1 like 101010101010?
////Defining a class called "packet"
//class packet;
//rand bit a;
//static bit b = 0;
//// Defining a constraint called "abc" to ensure that the random bit toggles
//between 0 and 1
//constraint abc { a != b; }
//// Defining a function called "post_randomize" to print the value of "a" and
//update the value of "b"
//function void post_randomize();
//$display("a=%d, b=%d", a, b);
//b = a;
//endfunction
//endclass
//// Defining a module called "test"
//module test;
//packet v;
//// Generating 10 random values using "repeat" loop
//initial begin
//v = new;
//repeat (10) begin
//v.randomize();
//end
//end
//endmodule
//27. Write a SystemVerilog program to randomize a 32-bit variable, but
//only randomize the 12th bit.
//// Define a class named "packet"
//class packet;
//randc bit[31:0] a; // Declare a 32-bit random variable named "a"
//// Define a constraint named "abc" to randomize only the 12th bit of "a"
//constraint abc {
//foreach (a[i]) {
//if (i == 12)
//a[i] inside {0, 1}; // Randomize the 12th bit of "a" to either 0 or 1
//else
//a[i] == 0; // Set all other bits of "a" to 0
//}
//}
//// Define a function to display the randomized value of "a"
//function void post_randomize();
//$display("a= %b", a);
//endfunction
//endclass
//// Define a module named "test"
//module test;
//packet v; // Instantiate an object of "packet" class named "v"
//// Define an initial block to randomize "a" for 10 times and display the
//values
//initial begin
//v = new(); // Allocate memory for object "v"
//repeat (10) begin
//v.randomize(); // Randomize "a" using the constraint "abc"
//$display("a= %d a=%b", v.a, v.a);
//end
//end
//endmodule
//28. How can you define a constraint in SystemVerilog to ensure that even
//locations in a random array contain odd numbers, and odd locations
//contain even numbers?
//// Define a class with a random array of 4-bit values
//class a;
// rand bit[3:0] k[];
//
// // Define a constraint on the size of the array
// constraint b {k.size() inside {[4:20]};}
//
// // Define a constraint to ensure even locations contain odd numbers,
// // and odd locations contain even numbers
// constraint c {
// foreach (k[i]) {
// if (i % 2 == 0) // even location
// k[i] % 2 == 1; // odd number
// else if (i % 2 == 1) // odd location
// k[i] % 2 == 0; // even number
// }
// }
//endclass
//module test;
// initial begin
// a a1 = new();
// repeat (5) begin
// assert(a1.randomize());
// foreach (a1.k[i])
// $display(" the value of locations even and odd %0d %0d", i, a1.k[i]);
// $display("%p", a1.k);
// end
// end
//endmodule




