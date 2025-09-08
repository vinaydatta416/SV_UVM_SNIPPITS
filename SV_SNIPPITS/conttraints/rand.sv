`timescale 1ns/1ps

`define RUN_SNIPPET 1  // Change this value to run a different snippet

`ifdef RUN_SNIPPET == 1
// Snippet 1: Simple Range Constraint
class Packet1;
  randc int addr;

  // Constraint: addr must be between 10 and 50.
  constraint addr_range { addr inside {[10:50]}; }

  // Display the randomized value of 'addr'
  function void display();
    $display("Packet1: addr = %0d", addr);
  endfunction
endclass

module test1;
  initial begin
    Packet1 pkt = new();
    // Repeat randomization and display 5 times
    for (int i = 0; i < 5; i++) begin
      if (pkt.randomize()) begin
        pkt.display();
      end else begin
        $display("Randomization failed.");
      end
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 2
// Snippet 2: Fixed Value Constraint
class Packet2;
  rand int data;
  // Constraint: data must equal 32'hABCD1234.
  constraint fixed_data { data == 32'hABCD1234; }

  function void display();
    $display("Snippet 2: data = %0h", data);
  endfunction
endclass

module test2;
  initial begin
    Packet2 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 3
// Snippet 3: Valid Bit Constraint
class Packet3;
  rand bit valid;
  // Constraint: valid must be 1.
  constraint valid_bit { valid == 1; }

  function void display();
    $display("Snippet 3: valid = %0b", valid);
  endfunction
endclass

module test3;
  initial begin
    Packet3 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 4
// Snippet 4: Exclusion Constraint
class Packet4;
  rand int addr;
  // Constraint: addr must not equal 20.
  constraint exclude_value { addr != 20; }

  function void display();
    $display("Snippet 4: addr = %0d", addr);
  endfunction
endclass

module test4;
  initial begin
    Packet4 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 5
// Snippet 5: Multiple Ranges Constraint
class Packet5;
  rand int addr;
  // Constraint: addr must be in the range 10-20 or 40-50.
  constraint multiple_ranges { addr inside {[10:20], [40:50]}; }

  function void display();
    $display("Snippet 5: addr = %0d", addr);
  endfunction
endclass

module test5;
  initial begin
    Packet5 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 6
// Snippet 6: Implication Constraint
class Packet6;
  rand bit valid;
  rand int addr;
  // Constraint: if valid is 1, then addr must be in range 100 to 200.
  constraint implication_example { valid -> addr inside {[100:200]}; }

  function void display();
    $display("Snippet 6: valid = %0b, addr = %0d", valid, addr);
  endfunction
endclass

module test6;
  initial begin
    Packet6 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 7
// Snippet 7: Relationship Constraint
class Packet7;
  rand int addr;
  rand int data;
  // Constraint: addr must be greater than data.
  constraint addr_greater_than_data { addr > data; }

  function void display();
    $display("Snippet 7: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test7;
  initial begin
    Packet7 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 8
// Snippet 8: Conditional Constraint
class Packet8;
  rand int addr;
  rand int data;
  // Constraint: if addr equals 10, then data must be greater than 100.
  constraint conditional_constraint {
    if (addr == 10)
      data > 100;
  }

  function void display();
    $display("Snippet 8: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test8;
  initial begin
    Packet8 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 9
// Snippet 9: Arithmetic Expression Constraint
class Packet9;
  rand int addr;
  rand int data;
  // Constraint: data must equal (addr * 2) + 5.
  constraint arithmetic_constraint { data == (addr * 2 + 5); }

  function void display();
    $display("Snippet 9: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test9;
  initial begin
    Packet9 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 10
// Snippet 10: If-Else Constraint
class Packet10;
  rand int addr;
  rand int data;
  // Constraint: if addr < 50 then data < 100; else data > 100.
  constraint if_else_constraint {
    if (addr < 50)
      data < 100;
    else
      data > 100;
  }

  function void display();
    $display("Snippet 10: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test10;
  initial begin
    Packet10 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 11
// Snippet 11: Ternary Operator in Constraint
class Packet11;
  rand int addr;
  rand int data;
  // Constraint: if addr < 50 then data = addr + 10; else data = addr - 10.
  constraint ternary_constraint { data == (addr < 50 ? addr + 10 : addr - 10); }

  function void display();
    $display("Snippet 11: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test11;
  initial begin
    Packet11 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 12
// Snippet 12: Weighted Distribution Constraint
class Packet12;
  rand int addr;
  // Constraint: addr has weighted probability: 70% for 10-20 and 30% for 40-50.
  constraint weighted_range {
    addr dist { [10:20] := 70, [40:50] := 30 };
  }

  function void display();
    $display("Snippet 12: addr = %0d", addr);
  endfunction
endclass

module test12;
  initial begin
    Packet12 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 13
// Snippet 13: Multiple Field Constraint
class Packet13;
  rand int addr;
  rand int data;
  // Constraint: addr + data must equal 100.
  constraint multiple_field_constraint { addr + data == 100; }

  function void display();
    $display("Snippet 13: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test13;
  initial begin
    Packet13 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 14
// Snippet 14: Local Variable in Constraint
class Packet14;
  rand int addr;
  rand int data;
  // Constraint: using a local variable to make data double of addr.
  constraint local_variable_constraint {
    int temp;
    temp = addr * 2;
    data == temp;
  }

  function void display();
    $display("Snippet 14: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test14;
  initial begin
    Packet14 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 15
// Snippet 15: Array Constraint
class Packet15;
  rand int array[5];
  // Constraint: each element of the array must be between 0 and 10.
  constraint array_constraint {
    foreach (array[i]) array[i] inside {[0:10]};
  }

  function void display();
    $display("Snippet 15: array = %p", array);
  endfunction
endclass

module test15;
  initial begin
    Packet15 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 16
// Snippet 16: Dynamic Array Constraint
class Packet16;
  rand int dyn_array[];
  // Constraint: the dynamic array must have exactly 3 elements and each between 5 and 15.
  constraint dynamic_array_constraint {
    dyn_array.size() == 3;
    foreach (dyn_array[i]) dyn_array[i] inside {[5:15]};
  }

  function void display();
    $display("Snippet 16: dyn_array = %p", dyn_array);
  endfunction
endclass

module test16;
  initial begin
    Packet16 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 17
// Snippet 17: Foreach Loop Constraint
class Packet17;
  rand int data_array[4];
  // Constraint: each element must be an even number between 0 and 50.
  constraint foreach_constraint {
    foreach (data_array[i])
      data_array[i] inside {[0:2:50]};
  }

  function void display();
    $display("Snippet 17: data_array = %p", data_array);
  endfunction
endclass

module test17;
  initial begin
    Packet17 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 18
// Snippet 18: Interdependent Field Constraint
class Packet18;
  rand int addr;
  rand int data;
  // Constraint: addr + data must be less than 150.
  constraint interdependent_constraint { addr + data < 150; }

  function void display();
    $display("Snippet 18: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test18;
  initial begin
    Packet18 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 19
// Snippet 19: Soft Constraint Example
class Packet19;
  rand int addr;
  // Soft constraint: Prefer addr to be between 30 and 40 (overridable if needed).
  soft constraint soft_addr { addr inside {[30:40]}; }

  function void display();
    $display("Snippet 19: addr = %0d", addr);
  endfunction
endclass

module test19;
  initial begin
    Packet19 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 20
// Snippet 20: Combined Constraints with Multiple Conditions
class Packet20;
  rand int addr;
  rand int data;
  rand bit valid;
  // Constraint: addr between 0 and 100.
  constraint addr_range { addr inside {[0:100]}; }
  // Constraint: if valid then data must be even.
  constraint valid_data { if (valid) data % 2 == 0; }
  // Constraint: addr + data must be at least 50.
  constraint sum_constraint { addr + data >= 50; }

  function void display();
    $display("Snippet 20: addr = %0d, data = %0d, valid = %0b", addr, data, valid);
  endfunction
endclass

module test20;
  initial begin
    Packet20 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 21
// Snippet 21: Array with Alternating Values
class packet;
  rand int a[];
  constraint size { a.size() == 10; }
  constraint c1 {
    foreach (a[i])
      if (i % 2 == 0)
        a[i] == 0;
      else
        a[i] == 1;
  }

  function void display();
    $display("a=%0p", a);
  endfunction
endclass

module tb;
  packet pkt;
  initial begin
    pkt = new();
    repeat (20) begin
      pkt.randomize();
      pkt.display();
    end
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 22
// Snippet 22: Define the class outside the module
class t;
    rand bit [5:0] data;
    randc bit [3:0] data1;
endclass

module test;
    // Create an instance of class t
    t tr_h = new();

    initial begin
        int success;
        success = tr_h.randomize();
        $display("data: %0d, data1: %0d \n", tr_h.data, tr_h.data1);
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 23
// Snippet 23: Class with post_randomize function
class tr;
    rand bit [5:0] data;
    rand bit [2:0] ch;

    function void post_randomize;
        $display("data is %d", data);
        $display("channel is %d", ch);
    endfunction
endclass

module test;
    initial begin
        int success;
        tr tr_h = new();
        success = tr_h.randomize();
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 24
// Snippet 24: Class with constraints
class tr1;
    rand bit [2:0] data;
    randc bit [2:0] data1;

    // Constraint for 'data'
    constraint oversize_data { data <= 3'd5; }

    // Constraint for 'data1'
    constraint undersize_data1 { data1 <= 3'd5; }
endclass

module test;
    tr1 tr_h1 = new(); // Correct instance creation

    initial begin
        int success;
        for (int i = 0; i < 5; i++) begin
            success = tr_h1.randomize();
            $display("data tr1 is %d \n", tr_h1.data);
            $display("data1 tr1 is %d \n ", tr_h1.data1);
        end
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 25
// Snippet 25: Class with rand_mode
class t;
    rand bit [15:0] data;
    constraint undersize { data <= 5'd8; }
endclass

module test;
    initial begin
        // Declare instance inside the initial block (automatic variable)
        t tr_h = new();

        // Set randomization mode to 0 (disabled) and attempt randomization
        tr_h.rand_mode(0);
        if (tr_h.randomize())
            $display("Rand mode 0: data = %0d", tr_h.data);
        else
            $display("Rand mode 0: randomize() failed");

        // Set randomization mode to 1 (enabled) and attempt randomization
        tr_h.rand_mode(1);
        if (tr_h.randomize())
            $display("Rand mode 1: data = %0d", tr_h.data);
        else
            $display("Rand mode 1: randomize() failed");
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 26
// Snippet 26: Class with named constraint
class t;
    rand bit [5:0] data;
    constraint my_constraint { data <= 5'd8; }
endclass

module test;
    initial begin
        t tr_h = new();

        // Default randomization using the original constraint
        if (tr_h.randomize())
            $display("Default randomization: data = %0d", tr_h.data);
        else
            $display("Default randomization failed");

        // Disable the named constraint 'my_constraint'
        tr_h.my_constraint.constraint_mode(0);
        // Randomize with an override constraint: data must be greater than 5'd10
        if (tr_h.randomize() with { data > 5'd10; })
            $display("Overridden randomization: data = %0d", tr_h.data);
        else
            $display("Overridden randomization failed");

        // Re-enable the named constraint 'my_constraint'
        tr_h.my_constraint.constraint_mode(1);
        if (tr_h.randomize())
            $display("Re-enabled default randomization: data = %0d", tr_h.data);
        else
            $display("Re-enabled randomization failed");
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 27
// Snippet 27: Class with set membership constraint
class t;
    randc bit [5:0] data;
    constraint my_constraint { data inside {1, 3, 4, [10:20]}; }
endclass

t tr_h1 = new();

module test;
    initial begin
        int success;
        for (int i = 0; i < 20; i++) begin
            success = tr_h1.randomize();
            $display("data tr1 is %d \n", tr_h1.data);
        end
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 28
// Snippet 28: Class with distribution constraint
class t;
    randc bit [5:0] data;
    constraint my_constraint {
        data dist { 1 := 5, 2 := 3, 3 := 5 };
    }
endclass

t tr_h1 = new();

module test;
    initial begin
        int success;
        for (int i = 0; i < 20; i++) begin
            success = tr_h1.randomize();
            $display("data tr1 is %d \n", tr_h1.data);
        end
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 29
// Snippet 29: Class with conditional constraint
class t;
    rand int vl;
    bit mode;
    constraint tag {
        mode == 1'b1 -> (vl < 9);
        mode == 1'b0 -> (vl < 128);
    }
endclass

t tr_h = new();

module test;
    initial begin
        int success;
        tr_h.mode = 1'b1;  // Setting mode to 1'b1
        success = tr_h.randomize();
        $display("Tag is %d", tr_h.vl);
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 30
// Snippet 30: Class with named constraint
class t;
    rand bit [3:0] addr;

    // Named constraint to enable/disable later
    constraint valid_addr { addr > 8; }
endclass

module test;
    initial begin
        t t1_h, t2_h;
        t1_h = new();
        t2_h = new();

        assert(t1_h.randomize());  // Fixed method name

        t2_h.constraint_mode(0);  // Disabling all constraints

        assert(t1_h.randomize());  // Fixed method name
        assert(t2_h.randomize());  // Fixed method name
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 31
// Snippet 31: Class with named constraint and multiple instances
class t;
    rand bit [3:0] addr;

    // Named constraint for later use
    constraint valid_addr { addr > 8; }
endclass

module test;
    initial begin
        // Declare variables at the beginning of the block.
        t t1_h, t2_h;
        integer i;

        // Create objects.
        t1_h = new();
        t2_h = new();

        // Randomize t1_h (constraint enabled) 5 times.
        for (i = 0; i < 5; i = i + 1) begin
            if (t1_h.randomize()) begin
                $display("Iteration %0d: t1_h randomization successful, addr = %0d", i, t1_h.addr);
            end else begin
                $display("Iteration %0d: t1_h randomization failed!", i);
            end
        end

        // Disable constraints on t2_h.
        t2_h.constraint_mode(0);

        // Randomize t2_h (constraint disabled) 5 times.
        for (i = 0; i < 5; i = i + 1) begin
            if (t2_h.randomize()) begin
                $display("Iteration %0d: t2_h randomization successful, addr = %0d", i, t2_h.addr);
            end else begin
                $display("Iteration %0d: t2_h randomization failed!", i);
            end
        end

        $finish;
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 32
// Snippet 32: Class with inline constraint
class inline_class;
    rand bit [4:0] x, y, z;
    constraint c { z == x + y; }  // Corrected constraint
endclass

module test;
    inline_class in_h = new; // Fixed class name

    initial begin
        if (!in_h.randomize() with { x < y; })  // Proper constraint block
            $display("Randomization failed");
        else
            $display("Randomized values: x=%0d, y=%0d, z=%0d", in_h.x, in_h.y, in_h.z);
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 33
// Snippet 33: Class with external constraint
class data;
    rand bit [2:0] addr;
    // Declare an out-of-line constraint named valid_addr.
    constraint valid_addr;
endclass

// Correct the keyword spelling and add the semicolon after the constraint body.
constraint data::valid_addr { addr < 10; }

module test;
    initial begin
        data pkt = new();
        repeat (5) begin
            // The with-constraint is applied correctly here.
            assert(pkt.randomize() with { addr < 5; })
            else $error("Randomization failed");
            // Use pkt.addr (not pkt.data) to display the address.
            $display("\tdata = %0d", pkt.addr);
        end
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 34
// Snippet 34: Largest of 3 numbers
class largest;
    rand int a, b, c;
    constraint range { a inside {[1:100]}; b inside {[1:100]}; c inside {[1:100]}; }

    function int largest();
        int max;
        max = (a > b) ? a : b;
        max = (max > c) ? max : c;
        return max;
    endfunction
endclass

module test;
    initial begin
        largest obj = new();
        if (obj.randomize())
            $display("Largest = %0d among %0d, %0d, %0d", obj.largest(), obj.a, obj.b, obj.c);
        else
            $display("Randomization failed");
    end
endmodule
`endif

`ifdef RUN_SNIPPET == 35
module test;
  bit [3:0] [7:0] bytes[0:2];
  initial begin
    bytes[0] = 32'd255;
    $display("%h", bytes[0]);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 36
module test;
  logic [31:0] msrc[5], mdst[5];
  initial begin
    for (int i = 0; i < $size(msrc); i++)
      msrc[i] = i;
    foreach (mdst[j])
      mdst[j] = msrc[j] * 4;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 37
module data_type;
  time a;
  initial begin
    $display("default value=%b", a);
    $display("type name=%s", $typename(a));
    $display("number of bits=%0b", $bits(a));
    $display("size of data type=%0d", $size(a));
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 38
module even_number;
  reg [7:0] number;
  initial begin
    number = 0;
    $display("even numbers:");
    for (number = 0; number <= 18; number = number + 2) begin
      $display("%0d", number);
    end
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 39
module findoddnumbers;
  initial begin
    for (int number = 0; number <= 10; number = number + 2) begin
      $display("odd number: %0d", number);
    end
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 40
module findnaturalnumbers;
  reg [7:0] current = 1;
  initial begin
    while (1) begin
      $display("%0d is a natural number", current);
      current = current + 1;
    end
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 41
module findprimenumbers;
  reg [7:0] start = 2;
  reg [7:0] end = 10;
  initial begin
    for (int current = start; current <= end; current = current + 1) begin
      int is_prime = 1;
      for (int i = 2; i < current; i = i + 1) begin
        if (current % i == 0) begin
          is_prime = 0;
          break;
        end
      end
      if (is_prime) begin
        $display(" %0d is a prime number", current);
      end
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 42
module pi_value;
  real pi;
  real freq;
  initial begin
    pi = 3.14;
    freq = 1e6;
    $display("value of pi =%f", pi);
    $display("value of pi=%0.3f", pi);
    $display("value of freq=%0d", freq);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 43
module logic_test(input y);
  logic a, b;
  assign b = 'b0;
  assign a = 'b1;
  initial begin
    a = 'b0;
  end
endmodule

module top;
  logic c_out;
  logic_test LT(c_out);
endmodule
`endif

`ifdef RUN_SNIPPET == 44
module test;
  int num1, num2, res;
  initial begin
    res = num1 + num2;
    $display("num1=%0d, num2=%0d, result=%0d", num1, num2, res);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 45
module test;
  struct { bit [7:0] r, g, b; int colour; } pixel;
  initial begin
    pixel.r = 8'd25;
    pixel.g = 8'd55;
    pixel.b = 8'd11;
    pixel.colour = 32'd894;
    $display("r=%0d, g=%0d, b=%0d, colour=%0d", pixel.r, pixel.g, pixel.b, pixel.colour);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 46
module test;
  struct { bit [7:0] r, g, b; int colour; } pixel;
  initial begin
    pixel.r = 8'd25;
    pixel.g = 8'd55;
    pixel.b = 8'd11;
    pixel.colour = 32'd894;
    $display("pixel=%p", pixel);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 47
module test;
  struct { int num1, num2, result; } op;
  initial begin
    op.num1 = 32'd30;
    op.num2 = 32'd25;
    op.result = op.num1 + op.num2;
    $display("data=%p", op);
    if (op.result % 2)
      $display("result is odd");
    else
      $display("result is even ");
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 48
module test;
  typedef struct { bit [7:0] r, g, b; int colour; } pixel_st;
  pixel_st samsung_pixel;
  pixel_st sony_pixel;
  initial begin
    samsung_pixel.r = 8'd25;
    samsung_pixel.g = 8'd55;
    samsung_pixel.b = 8'd11;
    sony_pixel = '{ 8'd38, 8'd35, 8'd95, 8'd85 };
    $display("samsung_pixel=%p, sony_pixel=%p", samsung_pixel, sony_pixel);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 49
module test;
  struct { string name; int id; int salary; } emp1, emp2;
  initial begin
    emp1.name = "deepika";
    emp1.id = 32'd30;
    emp1.salary = 6;
    emp2.name = "seshu";
    emp2.id = 32'd31;
    emp2.salary = 32'd127;
    $display("emp1=%p, emp2=%p", emp1, emp2);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 50
module test;
  struct { string s1, s2; int f1, f2, tm, p; } s, v;
  initial begin
    s.s1 = "english";
    s.s2 = "hindi";
    v.s1 = "english";
    v.s2 = "hindi";
    s.f1 = 8'd64;
    s.f2 = 8'd22;
    v.f1 = 8'd28;
    v.f2 = 8'd66;
    s.tm = s.f1 + s.f2;
    v.tm = v.f1 + v.f2;
    s.p = (s.tm * 100) / 100;
    v.p = (v.tm * 100) / 100;
    $display("s.tm=%p, v.tm=%p", s.tm, v.tm);
    $display("s.p=%p, v.p=%p", s.p, v.p);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 51
module test;
  struct { int DT[31:0]; bit DTA; } p1, p2, p3;
  initial begin
    p1.DT = 32'd9;
    p1.DTA = 1;
    p2.DT = 32'd70;
    p2.DTA = 2;
    p3.DT = 32'd40;
    p3.DTA = 3;
    $display("p1=%p, p2=%p, p3=%p", p1, p2, p3);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 52
module test;
  logic [7:0] b1 = 8'b1101zzzz;
  byte b2;
  initial begin
    b2 = b1;
    $write("b1=%b", b1);
    $display("b2=%h", b2);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 53
module test;
  typedef enum { ini, read, writ, brd, bwr } fsm_state_e;
  fsm_state_e pre_state, nxt_state;
  fsm_state_e state = read;
  initial forever begin
    $display("%s:%0d", state.name, state);
    if (state == state.last())
      break;
    else
      state = state.next();
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 54
module test;
  enum { ADD, SUB, MUL, OR, AND, XOR } OPCODE;
  int num1, num2;
  int result;
  initial begin
    OPCODE = SUB;
    num1 = 30;
    num2 = 60;
    if (OPCODE == ADD)
      result = num1 + num2;
    else if (OPCODE == SUB)
      result = num1 - num2;
    else if (OPCODE == MUL)
      result = num1 * num2;
    else if (OPCODE == OR)
      result = num1 | num2;
    else if (OPCODE == AND)
      result = num1 & num2;
    else if (OPCODE == XOR)
      result = num1 ^ num2;
    $display("num1=%0d, num2=%0d, result=%0d", num1, num2, result);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 55
module test;
  enum { IP1 = 10, IP2 = 31, IP4 = 51, IP5 = 60 } IP_addr;
  int dir = 1;
  initial begin
    IP_addr = IP2;
    if (dir == 1)
      IP_addr = IP_addr.next;
    $display("IP_addr=%0d", IP_addr);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 56
module test;
  typedef enum { init, read, write, brd, bwr } fsm_state_e;
  fsm_state_e state;
  int c;
  initial begin
    state = read;
    c = state;
    state = 1;
    state = fsm_state_e'(5);
    if ($cast(state, 5))
      $display("CASTING IS SUCCESSFUL");
    else
      $display("CASTING IS FAILED");
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 57
module test;
  int i_num;
  real r_num;
  initial begin
    i_num = '(10.0 - 0.1);
    r_num = real'(42);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 58
module test;
  enum { ADD, SUB, MUL, OR, AND, XOR } OPCODE;
  int num1, num2;
  int res;
  initial begin
    num1 = 30;
    num2 = 60;
    case (OPCODE)
      ADD: res = num1 + num2;
      SUB: res = num1 - num2;
      MUL: res = num1 * num2;
      OR: res = num1 | num2;
      AND: res = num1 & num2;
      XOR: res = num1 ^ num2;
    endcase
    $display("result=%0d", res);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 59
module test;
  typedef enum { ADD, SUB, MUL, OR, AND, XOR } opcode_dt;
  struct { int num1, num2; int result; opcode_dt opcode; } op1;
  initial begin
    op1.opcode = ADD;
    op1.num1 = 50;
    op1.num2 = 20;
    if (op1.opcode == ADD)
      op1.result = op1.num1 + op1.num2;
    else if (op1.opcode == SUB)
      op1.result = op1.num1 - op1.num2;
    else if (op1.opcode == MUL)
      op1.result = op1.num1 * op1.num2;
    else if (op1.opcode == OR)
      op1.result = op1.num1 | op1.num2;
    else if (op1.opcode == AND)
      op1.result = op1.num1 & op1.num2;
    else if (op1.opcode == XOR)
      op1.result = op1.num1 ^ op1.num2;
    $display("opcode=%s", op1.opcode.name());
    $display("num1=%0d", op1.num1);
    $display("num2=%0d", op1.num2);
    $display("result=%0d", op1.result);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 60
module test;
  typedef enum { ADD, SUB, MUL, OR, AND, XOR } opcode_dt;
  struct { int num1, num2; int res; opcode_dt opcode; } op1;
  initial begin
    op1.opcode = SUB;
    op1.num1 = 50;
    op1.num2 = 20;
    case (op1.opcode)
      ADD: op1.res = op1.num1 + op1.num2;
      SUB: op1.res = op1.num1 - op1.num2;
      MUL: op1.res = op1.num1 * op1.num2;
      OR: op1.res = op1.num1 | op1.num2;
      AND: op1.res = op1.num1 & op1.num2;
      XOR: op1.res = op1.num1 ^ op1.num2;
    endcase
    $display("result=%0d", op1.res);
    $display("num1=%0d", op1.num1);
    $display("num2=%0d", op1.num2);
    $display("opcode=%s", op1.opcode.name());
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 61
module test;
  typedef enum { init, read, write, brd, bwr } fsm_state_e;
  fsm_state_e state = state.first;
  initial forever begin
    $display("%s:%0d", state.name, state);
    if (state == state.prev())
      break;
    state = state.next();
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 62
module test;
  string str;
  initial begin
    str = "MAVEN_SILICON";
    str = str.tolower();
    $display("character in 5th position is %s", str.getc(5));
    str.putc(5, "-");
    $display("%s", str.substr(6, str.len - 1));
    str = {str, ".com"};
    str = {{3{"w"}}, ".", str};
    disp($sformatf("https://%s", str));
  end

  task disp(string s);
    $display("at time t=%0t, %s", $time, s);
  endtask
endmodule
`endif

`ifdef RUN_SNIPPET == 63
package pkg;
  int no_of_trans;
  function void display(string s);
    $display($time, "%s, n=%0d", s, no_of_trans);
  endfunction
endpackage

module A;
  import pkg::*;
  initial begin
    #1;
    no_of_trans = 10;
    #1;
    display("FROM MODULE A");
  end
endmodule

module B;
  import pkg::*;
  initial begin
    #4;
    no_of_trans = 20;
    display("FROM MODULE B");
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 64
package pkg1;
  int no_of_trans = 10;
endpackage

package pkg2;
  int no_of_trans = 30;
  int value;
endpackage

module mem;
  import pkg1::*;
  import pkg2::*;
  initial begin
    $display("MEM MODULE : n=%0d", pkg1::no_of_trans);
  end
endmodule

module cpu;
  import pkg1::*;
  import pkg2::*;
  initial begin
    $display("CPU MODULE : n=%0d", pkg2::no_of_trans);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 65
module test;
  bit [31:0] var1 = 32'h12345678;
  bit [1:0] [15:0] var2 = 32'h12345678;
  bit [3:0] [7:0] var3 = 32'h12345678;
  bit [1:0] [3:0] [3:0] var4 = 32'h12345678;
  initial begin
    $display("var1=%h", var1);
    $display("var1[8]=%h", var1[8]);
    $display("var2[1]=%h", var2[1]);
    $display("var2[1][2]=%h", var2[1][2]);
    $display("var3[1][2]=%h", var3[1][2]);
    $display("var3[1]=%h", var3[1]);
    $display("var4[1][2]=%h", var4[1]);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 66
module test;
  int a;
  real b;
  real x;
  initial begin
    a = 12;
    b = 17;
    x = a / b;
    $display("number is %.2f", x);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 67
package pkg1;
  int no_of_trans;
endpackage
package pkg2;
  int no_of_trans;
endpackage

module A;
  import pkg1::*;
  import pkg2::*;
  initial begin
    no_of_trans = 30;
    $display("MODULE A");
  end
endmodule

module B;
  import pkg1::*;
  import pkg2::*;
  initial begin
    no_of_trans = 40;
    $display("MODULE B");
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 68
module test;
  string str, str1;
  initial begin
    str = "deepika";
    $display("character in 5th position is %s", str.getc(5));
    str.putc(5, "-");
    $display("%s", str.substr(6, str.len - 1));
    str = {str, ".com"};
    str1 = {{3{"w"}}, ".", str};
    disp($sformatf("https://%s", str));
  end

  task disp(string s);
    $display("at time t=%0t, %s", $time, s);
  endtask
endmodule
`endif

`ifdef RUN_SNIPPET == 69
package ram_pkg;
  int number_of_transactions = 1;
  `include "ram_trans.sv"
  `include "ram_gen.sv"
  `include "ram_write_bfm.sv"
  `include "ram_read_mon.sv"
  `include "ram_model1.sv"
endpackage
`endif

`ifdef RUN_SNIPPET == 70
module test;
  bit [3:0] [7:0] bytes[0:2];
  initial begin
    bytes[0] = 32'd255;
    $display("%h", bytes[0]);
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 71
module test;
  logic [31:0] msrc[5], mdst[5];
  initial begin
    for (int i = 0; i < $size(msrc); i++)
      msrc[i] = i;
    foreach (mdst[j])
      mdst[j] = msrc[j] * 4;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 72
// Snippet 72: Randomize with constraints and display
class Packet72;
  rand int addr;
  rand int data;
  // Constraint: addr must be greater than data.
  constraint addr_greater_than_data { addr > data; }

  function void display();
    $display("Snippet 72: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test72;
  initial begin
    Packet72 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 73
// Snippet 73: Randomize with multiple constraints
class Packet73;
  rand int addr;
  rand int data;
  rand bit valid;
  // Constraint: addr between 0 and 100.
  constraint addr_range { addr inside {[0:100]}; }
  // Constraint: if valid then data must be even.
  constraint valid_data { if (valid) data % 2 == 0; }
  // Constraint: addr + data must be at least 50.
  constraint sum_constraint { addr + data >= 50; }

  function void display();
    $display("Snippet 73: addr = %0d, data = %0d, valid = %0b", addr, data, valid);
  endfunction
endclass

module test73;
  initial begin
    Packet73 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 74
// Snippet 74: Randomize with soft constraint
class Packet74;
  rand int addr;
  // Soft constraint: Prefer addr to be between 30 and 40 (overridable if needed).
  soft constraint soft_addr { addr inside {[30:40]}; }

  function void display();
    $display("Snippet 74: addr = %0d", addr);
  endfunction
endclass

module test74;
  initial begin
    Packet74 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 75
// Snippet 75: Randomize with distribution constraint
class Packet75;
  rand int addr;
  // Constraint: addr has weighted probability: 70% for 10-20 and 30% for 40-50.
  constraint weighted_range {
    addr dist { [10:20] := 70, [40:50] := 30 };
  }

  function void display();
    $display("Snippet 75: addr = %0d", addr);
  endfunction
endclass

module test75;
  initial begin
    Packet75 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 76
// Snippet 76: Randomize with conditional constraint
class Packet76;
  rand int addr;
  rand int data;
  // Constraint: if addr equals 10, then data must be greater than 100.
  constraint conditional_constraint {
    if (addr == 10)
      data > 100;
  }

  function void display();
    $display("Snippet 76: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test76;
  initial begin
    Packet76 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 77
// Snippet 77: Randomize with arithmetic constraint
class Packet77;
  rand int addr;
  rand int data;
  // Constraint: data must equal (addr * 2) + 5.
  constraint arithmetic_constraint { data == (addr * 2 + 5); }

  function void display();
    $display("Snippet 77: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test77;
  initial begin
    Packet77 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 78
// Snippet 78: Randomize with if-else constraint
class Packet78;
  rand int addr;
  rand int data;
  // Constraint: if addr < 50 then data < 100; else data > 100.
  constraint if_else_constraint {
    if (addr < 50)
      data < 100;
    else
      data > 100;
  }

  function void display();
    $display("Snippet 78: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test78;
  initial begin
    Packet78 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 79
// Snippet 79: Randomize with ternary operator constraint
class Packet79;
  rand int addr;
  rand int data;
  // Constraint: if addr < 50 then data = addr + 10; else data = addr - 10.
  constraint ternary_constraint { data == (addr < 50 ? addr + 10 : addr - 10); }

  function void display();
    $display("Snippet 79: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test79;
  initial begin
    Packet79 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 80
// Snippet 80: Randomize with local variable in constraint
class Packet80;
  rand int addr;
  rand int data;
  // Constraint: using a local variable to make data double of addr.
  constraint local_variable_constraint {
    int temp;
    temp = addr * 2;
    data == temp;
  }

  function void display();
    $display("Snippet 80: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test80;
  initial begin
    Packet80 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 81
// Snippet 81: Randomize with array constraint
class Packet81;
  rand int array[5];
  // Constraint: each element of the array must be between 0 and 10.
  constraint array_constraint {
    foreach (array[i]) array[i] inside {[0:10]};
  }

  function void display();
    $display("Snippet 81: array = %p", array);
  endfunction
endclass

module test81;
  initial begin
    Packet81 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 82
// Snippet 82: Randomize with dynamic array constraint
class Packet82;
  rand int dyn_array[];
  // Constraint: the dynamic array must have exactly 3 elements and each between 5 and 15.
  constraint dynamic_array_constraint {
    dyn_array.size() == 3;
    foreach (dyn_array[i]) dyn_array[i] inside {[5:15]};
  }

  function void display();
    $display("Snippet 82: dyn_array = %p", dyn_array);
  endfunction
endclass

module test82;
  initial begin
    Packet82 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 83
// Snippet 83: Randomize with foreach loop constraint
class Packet83;
  rand int data_array[4];
  // Constraint: each element must be an even number between 0 and 50.
  constraint foreach_constraint {
    foreach (data_array[i])
      data_array[i] inside {[0:2:50]};
  }

  function void display();
    $display("Snippet 83: data_array = %p", data_array);
  endfunction
endclass

module test83;
  initial begin
    Packet83 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 84
// Snippet 84: Randomize with interdependent field constraint
class Packet84;
  rand int addr;
  rand int data;
  // Constraint: addr + data must be less than 150.
  constraint interdependent_constraint { addr + data < 150; }

  function void display();
    $display("Snippet 84: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test84;
  initial begin
    Packet84 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 85
// Snippet 85: Randomize with soft constraint
class Packet85;
  rand int addr;
  // Soft constraint: Prefer addr to be between 30 and 40 (overridable if needed).
  soft constraint soft_addr { addr inside {[30:40]}; }

  function void display();
    $display("Snippet 85: addr = %0d", addr);
  endfunction
endclass

module test85;
  initial begin
    Packet85 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 86
// Snippet 86: Randomize with combined constraints
class Packet86;
  rand int addr;
  rand int data;
  rand bit valid;
  // Constraint: addr between 0 and 100.
  constraint addr_range { addr inside {[0:100]}; }
  // Constraint: if valid then data must be even.
  constraint valid_data { if (valid) data % 2 == 0; }
  // Constraint: addr + data must be at least 50.
  constraint sum_constraint { addr + data >= 50; }

  function void display();
    $display("Snippet 86: addr = %0d, data = %0d, valid = %0b", addr, data, valid);
  endfunction
endclass

module test86;
  initial begin
    Packet86 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 87
// Snippet 87: Randomize with array constraint
class Packet87;
  rand int array[5];
  // Constraint: each element of the array must be between 0 and 10.
  constraint array_constraint {
    foreach (array[i]) array[i] inside {[0:10]};
  }

  function void display();
    $display("Snippet 87: array = %p", array);
  endfunction
endclass

module test87;
  initial begin
    Packet87 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 88
// Snippet 88: Randomize with dynamic array constraint
class Packet88;
  rand int dyn_array[];
  // Constraint: the dynamic array must have exactly 3 elements and each between 5 and 15.
  constraint dynamic_array_constraint {
    dyn_array.size() == 3;
    foreach (dyn_array[i]) dyn_array[i] inside {[5:15]};
  }

  function void display();
    $display("Snippet 88: dyn_array = %p", dyn_array);
  endfunction
endclass

module test88;
  initial begin
    Packet88 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 89
// Snippet 89: Randomize with foreach loop constraint
class Packet89;
  rand int data_array[4];
  // Constraint: each element must be an even number between 0 and 50.
  constraint foreach_constraint {
    foreach (data_array[i])
      data_array[i] inside {[0:2:50]};
  }

  function void display();
    $display("Snippet 89: data_array = %p", data_array);
  endfunction
endclass

module test89;
  initial begin
    Packet89 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 90
// Snippet 90: Randomize with interdependent field constraint
class Packet90;
  rand int addr;
  rand int data;
  // Constraint: addr + data must be less than 150.
  constraint interdependent_constraint { addr + data < 150; }

  function void display();
    $display("Snippet 90: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test90;
  initial begin
    Packet90 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 91
// Snippet 91: Randomize with soft constraint
class Packet91;
  rand int addr;
  // Soft constraint: Prefer addr to be between 30 and 40 (overridable if needed).
  soft constraint soft_addr { addr inside {[30:40]}; }

  function void display();
    $display("Snippet 91: addr = %0d", addr);
  endfunction
endclass

module test91;
  initial begin
    Packet91 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 92
// Snippet 92: Randomize with combined constraints
class Packet92;
  rand int addr;
  rand int data;
  rand bit valid;
  // Constraint: addr between 0 and 100.
  constraint addr_range { addr inside {[0:100]}; }
  // Constraint: if valid then data must be even.
  constraint valid_data { if (valid) data % 2 == 0; }
  // Constraint: addr + data must be at least 50.
  constraint sum_constraint { addr + data >= 50; }

  function void display();
    $display("Snippet 92: addr = %0d, data = %0d, valid = %0b", addr, data, valid);
  endfunction
endclass

module test92;
  initial begin
    Packet92 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 93
// Snippet 93: Randomize with array constraint
class Packet93;
  rand int array[5];
  // Constraint: each element of the array must be between 0 and 10.
  constraint array_constraint {
    foreach (array[i]) array[i] inside {[0:10]};
  }

  function void display();
    $display("Snippet 93: array = %p", array);
  endfunction
endclass

module test93;
  initial begin
    Packet93 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 94
// Snippet 94: Randomize with dynamic array constraint
class Packet94;
  rand int dyn_array[];
  // Constraint: the dynamic array must have exactly 3 elements and each between 5 and 15.
  constraint dynamic_array_constraint {
    dyn_array.size() == 3;
    foreach (dyn_array[i]) dyn_array[i] inside {[5:15]};
  }

  function void display();
    $display("Snippet 94: dyn_array = %p", dyn_array);
  endfunction
endclass

module test94;
  initial begin
    Packet94 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 95
// Snippet 95: Randomize with foreach loop constraint
class Packet95;
  rand int data_array[4];
  // Constraint: each element must be an even number between 0 and 50.
  constraint foreach_constraint {
    foreach (data_array[i])
      data_array[i] inside {[0:2:50]};
  }

  function void display();
    $display("Snippet 95: data_array = %p", data_array);
  endfunction
endclass

module test95;
  initial begin
    Packet95 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 96
// Snippet 96: Randomize with interdependent field constraint
class Packet96;
  rand int addr;
  rand int data;
  // Constraint: addr + data must be less than 150.
  constraint interdependent_constraint { addr + data < 150; }

  function void display();
    $display("Snippet 96: addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module test96;
  initial begin
    Packet96 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 97
// Snippet 97: Randomize with soft constraint
class Packet97;
  rand int addr;
  // Soft constraint: Prefer addr to be between 30 and 40 (overridable if needed).
  soft constraint soft_addr { addr inside {[30:40]}; }

  function void display();
    $display("Snippet 97: addr = %0d", addr);
  endfunction
endclass

module test97;
  initial begin
    Packet97 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 98
// Snippet 98: Randomize with combined constraints
class Packet98;
  rand int addr;
  rand int data;
  rand bit valid;
  // Constraint: addr between 0 and 100.
  constraint addr_range { addr inside {[0:100]}; }
  // Constraint: if valid then data must be even.
  constraint valid_data { if (valid) data % 2 == 0; }
  // Constraint: addr + data must be at least 50.
  constraint sum_constraint { addr + data >= 50; }

  function void display();
    $display("Snippet 98: addr = %0d, data = %0d, valid = %0b", addr, data, valid);
  endfunction
endclass

module test98;
  initial begin
    Packet98 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 99
// Snippet 99: Randomize with array constraint
class Packet99;
  rand int array[5];
  // Constraint: each element of the array must be between 0 and 10.
  constraint array_constraint {
    foreach (array[i]) array[i] inside {[0:10]};
  }

  function void display();
    $display("Snippet 99: array = %p", array);
  endfunction
endclass

module test99;
  initial begin
    Packet99 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`ifdef RUN_SNIPPET == 100
// Snippet 100: Randomize with dynamic array constraint
class Packet100;
  rand int dyn_array[];
  // Constraint: the dynamic array must have exactly 3 elements and each between 5 and 15.
  constraint dynamic_array_constraint {
    dyn_array.size() == 3;
    foreach (dyn_array[i]) dyn_array[i] inside {[5:15]};
  }

  function void display();
    $display("Snippet 100: dyn_array = %p", dyn_array);
  endfunction
endclass

module test100;
  initial begin
    Packet100 pkt = new();
    if (pkt.randomize()) begin
      pkt.display();
    end else begin
      $display("Randomization failed.");
    end
    $finish;
  end
endmodule
`endif

`else
  initial begin
    $display("No snippet macro defined. Define one of SNIPPET1 to SNIPPET100.");
    $finish;
  end
`endif
