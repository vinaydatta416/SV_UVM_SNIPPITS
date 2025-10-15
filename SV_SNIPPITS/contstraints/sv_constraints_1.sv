//=========================================================
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







*///=========================================================
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







*///=========================================================
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





*///=========================================================
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




*///=========================================================
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






*///=========================================================
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
//=========================================================
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








*///=========================================================
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



*///=========================================================
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







*///=========================================================
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






*///=========================================================
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








*///=========================================================
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
//=========================================================
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







*///=========================================================
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







*///=========================================================
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





*///=========================================================
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






*///=========================================================
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



*///=========================================================
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
//=========================================================
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





*///=========================================================
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




*///=========================================================
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






*///=========================================================
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






*///=========================================================
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






*///=========================================================
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
//=========================================================
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





*///=========================================================
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







*///=========================================================
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






*///=========================================================
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







*///=========================================================
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





*///=========================================================
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






*/*///=========================================================
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






*///=========================================================
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







*/*///=========================================================
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








*///=========================================================
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







*/*///=========================================================
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






*///=========================================================
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




*/*///=========================================================
/*








*///=========================================================
/*








*/*///=========================================================
/*








*///=========================================================
/*








*/*///=========================================================
/*








*///=========================================================
/*








*/
