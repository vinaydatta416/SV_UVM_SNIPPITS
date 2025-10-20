

//-------------------------------------------------------------
/*
// Q1: Basic covergroup for signal 'a'

module q1;
  bit [3:0] a;

  covergroup cg1;
    coverpoint a;
  endgroup

  initial begin
    cg1 c = new();
    repeat (5) begin
      a = $urandom_range(0,15);
      c.sample();
      $display("Q1 -> a = %0d", a);
    end
  end
endmodule


*/

//-------------------------------------------------------------
// Q2: Coverpoint with bins

/*
module q2;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      bins low  = {0,1,2,3};
      bins high = {12,13,14,15};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (10) begin
      a = $urandom_range(0,15);
      c.sample();
      $display("Q2 -> a = %0d", a);
    end
  end
endmodule

*/

//-------------------------------------------------------------
// Q3: Per instance option
//-------------------------------------------------------------
/*
module q3;
  bit x;

  covergroup cg @(posedge x);
    option.per_instance = 1;
    coverpoint x;
  endgroup

  initial begin
    cg c = new();
    repeat (3) begin
      x = $random;
      #1;
      $display("Q3 -> x = %0b", x);
    end
  end
endmodule


//-------------------------------------------------------------
// Q4: Multiple coverpoints
//-------------------------------------------------------------
module q4;
  bit [1:0] a, b;

  covergroup cg;
    coverpoint a;
    coverpoint b;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      c.sample();
      $display("Q4 -> a=%0d b=%0d", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q5: Cross coverage
//-------------------------------------------------------------
module q5;
  bit [1:0] a, b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      c.sample();
      $display("Q5 -> a=%0d b=%0d", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q6: Ignore bins
//-------------------------------------------------------------
module q6;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      ignore_bins ign = {4,5,6};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (8) begin
      a = $urandom_range(0,10);
      c.sample();
      $display("Q6 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q7: Illegal bins
//-------------------------------------------------------------
module q7;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      illegal_bins inv = {9,10,11};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (8) begin
      a = $urandom_range(0,12);
      c.sample();
      $display("Q7 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q8: Even and odd bins
//-------------------------------------------------------------
module q8;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      bins even[] = {0,2,4,6,8};
      bins odd[]  = {1,3,5,7,9};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (10) begin
      a = $urandom_range(0,9);
      c.sample();
      $display("Q8 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q9: Range bins
//-------------------------------------------------------------
module q9;
  bit [7:0] a;

  covergroup cg;
    coverpoint a {
      bins low  = {[0:10]};
      bins mid  = {[11:100]};
      bins high = {[101:255]};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom;
      c.sample();
      $display("Q9 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q10: Default bins
//-------------------------------------------------------------
module q10;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      bins def[] = default;
    }
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom_range(0,15);
      c.sample();
      $display("Q10 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q11: Weighted coverpoint
//-------------------------------------------------------------
module q11;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      type_option.weight = 2;
    }
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom;
      c.sample();
      $display("Q11 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q12: Covergroup sampling on clock
//-------------------------------------------------------------
module q12;
  bit clk;
  bit [3:0] data;

  covergroup cg @(posedge clk);
    coverpoint data;
  endgroup

  initial begin
    cg c = new();
    forever begin
      clk = ~clk;
      data = $urandom_range(0,15);
      $display("Q12 -> data=%0d", data);
      #5;
    end
  end
endmodule


//-------------------------------------------------------------
// Q13: Cross coverage with bins
//-------------------------------------------------------------
module q13;
  bit [1:0] a, b;

  covergroup cg;
    cp1: coverpoint a { bins abins[] = {[0:3]}; }
    cp2: coverpoint b { bins bbins[] = {[0:3]}; }
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      c.sample();
      $display("Q13 -> a=%0d b=%0d", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q14: Illegal and ignore bins
//-------------------------------------------------------------
module q14;
  bit [3:0] val;

  covergroup cg;
    coverpoint val {
      bins good = {[0:5]};
      ignore_bins skip = {6,7};
      illegal_bins bad = {8,9};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (10) begin
      val = $urandom_range(0,9);
      c.sample();
      $display("Q14 -> val=%0d", val);
    end
  end
endmodule


//-------------------------------------------------------------
// Q15: Coverpoint with array
//-------------------------------------------------------------
module q15;
  bit [3:0] arr [3];

  covergroup cg;
    coverpoint arr[0];
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      foreach (arr[i]) arr[i] = $urandom_range(0,15);
      c.sample();
      $display("Q15 -> arr[0]=%0d", arr[0]);
    end
  end
endmodule


//-------------------------------------------------------------
// Q16: Transition bins
//-------------------------------------------------------------
module q16;
  bit [1:0] s;

  covergroup cg;
    coverpoint s {
      bins up   = (0 => 1);
      bins down = (1 => 0);
    }
  endgroup

  initial begin
    cg c = new();
    s = 0;
    repeat (6) begin
      s = $urandom_range(0,1);
      c.sample();
      $display("Q16 -> s=%0b", s);
    end
  end
endmodule


//-------------------------------------------------------------
// Q17: Cross of 3 signals
//-------------------------------------------------------------
module q17;
  bit [1:0] a, b, c1;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cp3: coverpoint c1;
    cross cp1, cp2, cp3;
  endgroup

  initial begin
    cg cov = new();
    repeat (5) begin
      a=$urandom_range(0,3);
      b=$urandom_range(0,3);
      c1=$urandom_range(0,3);
      cov.sample();
      $display("Q17 -> a=%0d b=%0d c=%0d", a, b, c1);
    end
  end
endmodule







//-------------------------------------------------------------
// Q18: Coverpoint with single bin value
//-------------------------------------------------------------
module q18;
  bit [3:0] a;

  covergroup cg;
    coverpoint a { bins single = {5}; }
  endgroup

  initial begin
    cg c = new();
    repeat (8) begin
      a = $urandom_range(0,10);
      c.sample();
      $display("Q18 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q19: Coverpoint using wildcard bins
//-------------------------------------------------------------
module q19;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      wildcard bins w1 = {4'b1??0};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (10) begin
      a = $urandom_range(0,15);
      c.sample();
      $display("Q19 -> a=%b", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q20: Covergroup sampling inside loop
//-------------------------------------------------------------
module q20;
  bit [3:0] data;

  covergroup cg;
    coverpoint data;
  endgroup

  initial begin
    cg c = new();
    for (int i = 0; i < 6; i++) begin
      data = $urandom_range(0,15);
      c.sample();
      $display("Q20 -> data=%0d", data);
    end
  end
endmodule


//-------------------------------------------------------------
// Q21: Cross of 2-bit values
//-------------------------------------------------------------
module q21;
  bit [1:0] x, y;

  covergroup cg;
    cp1: coverpoint x;
    cp2: coverpoint y;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      x = $urandom_range(0,3);
      y = $urandom_range(0,3);
      c.sample();
      $display("Q21 -> x=%0d y=%0d", x, y);
    end
  end
endmodule


//-------------------------------------------------------------
// Q22: Range bins with overlap
//-------------------------------------------------------------
module q22;
  bit [3:0] a;

  covergroup cg;
    coverpoint a {
      bins low  = {[0:5]};
      bins mid  = {[4:9]};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (8) begin
      a = $urandom_range(0,9);
      c.sample();
      $display("Q22 -> a=%0d", a);
    end
  end
endmodule


//-------------------------------------------------------------
// Q23: Sample covergroup manually in task
//-------------------------------------------------------------
module q23;
  bit [3:0] data;

  covergroup cg;
    coverpoint data;
  endgroup

  task sample_it(cg c);
    c.sample();
  endtask

  initial begin
    cg c = new();
    repeat (5) begin
      data = $urandom_range(0,15);
      sample_it(c);
      $display("Q23 -> data=%0d", data);
    end
  end
endmodule


//-------------------------------------------------------------
// Q24: Two covergroups in same module
//-------------------------------------------------------------
module q24;
  bit [3:0] a, b;

  covergroup cg1; coverpoint a; endgroup
  covergroup cg2; coverpoint b; endgroup

  initial begin
    cg1 c1 = new();
    cg2 c2 = new();
    repeat (5) begin
      a = $urandom_range(0,10);
      b = $urandom_range(0,10);
      c1.sample();
      c2.sample();
      $display("Q24 -> a=%0d b=%0d", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q25: Coverpoint for boolean signal
//-------------------------------------------------------------
module q25;
  bit en;

  covergroup cg;
    coverpoint en;
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      en = $random;
      c.sample();
      $display("Q25 -> en=%0b", en);
    end
  end
endmodule


//-------------------------------------------------------------
// Q26: Bins with repetition
//-------------------------------------------------------------
module q26;
  bit [3:0] val;

  covergroup cg;
    coverpoint val {
      bins repeat3[] = {[0:3]} with (item%2==0);
    }
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      val = $urandom_range(0,7);
      c.sample();
      $display("Q26 -> val=%0d", val);
    end
  end
endmodule


//-------------------------------------------------------------
// Q27: Cross with ignore bins
//-------------------------------------------------------------
module q27;
  bit [1:0] a, b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2 {
      ignore_bins same = binsof(cp1) intersect binsof(cp2);
    }
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      c.sample();
      $display("Q27 -> a=%0d b=%0d", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q28: Enum coverage
//-------------------------------------------------------------
module q28;
  typedef enum {IDLE, RUN, STOP} state_t;
  state_t st;

  covergroup cg;
    coverpoint st;
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      st = state_t'($urandom_range(0,2));
      c.sample();
      $display("Q28 -> st=%0d", st);
    end
  end
endmodule


//-------------------------------------------------------------
// Q29: Coverpoint inside a class
//-------------------------------------------------------------
class cov_class;
  rand bit [3:0] d;
  covergroup cg; coverpoint d; endgroup
  function new(); cg = new(); endfunction
endclass

module q29;
  initial begin
    cov_class obj = new();
    repeat (5) begin
      obj.randomize();
      obj.cg.sample();
      $display("Q29 -> d=%0d", obj.d);
    end
  end
endmodule


//-------------------------------------------------------------
// Q30: Cross inside a class
//-------------------------------------------------------------
class cross_class;
  rand bit [1:0] x, y;
  covergroup cg;
    cp1: coverpoint x;
    cp2: coverpoint y;
    cross cp1, cp2;
  endgroup
  function new(); cg = new(); endfunction
endclass

module q30;
  initial begin
    cross_class c = new();
    repeat (5) begin
      c.randomize();
      c.cg.sample();
      $display("Q30 -> x=%0d y=%0d", c.x, c.y);
    end
  end
endmodule


//-------------------------------------------------------------
// Q31: Transition bins with 2-step sequence
//-------------------------------------------------------------
module q31;
  bit [1:0] s;

  covergroup cg;
    coverpoint s {
      bins up2 = (0 => 1 => 2);
    }
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      s = $urandom_range(0,2);
      c.sample();
      $display("Q31 -> s=%0d", s);
    end
  end
endmodule


//-------------------------------------------------------------
// Q32: Coverpoint with type_option comment
//-------------------------------------------------------------
module q32;
  bit [3:0] val;

  covergroup cg;
    coverpoint val;
    type_option.comment = "value cover";
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      val = $urandom_range(0,15);
      c.sample();
      $display("Q32 -> val=%0d", val);
    end
  end
endmodule


//-------------------------------------------------------------
// Q33: Coverpoint with weight and goal
//-------------------------------------------------------------
module q33;
  bit [3:0] data;

  covergroup cg;
    coverpoint data;
    type_option.weight = 3;
    type_option.goal = 90;
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      data = $urandom_range(0,15);
      c.sample();
      $display("Q33 -> data=%0d", data);
    end
  end
endmodule


//-------------------------------------------------------------
// Q34: Cross between 3-bit and 1-bit signals
//-------------------------------------------------------------
module q34;
  bit [2:0] a;
  bit b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      a = $urandom_range(0,7);
      b = $urandom;
      c.sample();
      $display("Q34 -> a=%0d b=%0b", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q35: Conditional sampling
//-------------------------------------------------------------
module q35;
  bit [3:0] d;
  bit en;

  covergroup cg;
    coverpoint d;
  endgroup

  initial begin
    cg c = new();
    repeat (8) begin
      en = $random;
      d = $urandom_range(0,15);
      if (en) c.sample();
      $display("Q35 -> en=%0b d=%0d", en, d);
    end
  end
endmodule


//-------------------------------------------------------------
// Q36: Coverpoint using random delay
//-------------------------------------------------------------
module q36;
  bit [3:0] sig;

  covergroup cg;
    coverpoint sig;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      sig = $urandom_range(0,15);
      #($urandom_range(1,5));
      c.sample();
      $display("Q36 -> sig=%0d", sig);
    end
  end
endmodule


//-------------------------------------------------------------
// Q37: Cross coverage with 4-bit signals
//-------------------------------------------------------------
module q37;
  bit [3:0] a,b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom_range(0,15);
      b = $urandom_range(0,15);
      c.sample();
      $display("Q37 -> a=%0d b=%0d", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q38: Coverpoint using reduction
//-------------------------------------------------------------
module q38;
  bit [3:0] v;

  covergroup cg;
    coverpoint (^v);
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      v = $urandom_range(0,15);
      c.sample();
      $display("Q38 -> v=%b xor=%0b", v, ^v);
    end
  end
endmodule


//-------------------------------------------------------------
// Q39: Cross with negedge sampling
//-------------------------------------------------------------
module q39;
  bit clk;
  bit [1:0] a,b;

  covergroup cg @(negedge clk);
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    forever begin
      clk = ~clk;
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      $display("Q39 -> a=%0d b=%0d", a, b);
      #5;
    end
  end
endmodule


//-------------------------------------------------------------
// Q40: Covergroup inside class with random data
//-------------------------------------------------------------
class c40;
  rand bit [3:0] d;
  covergroup cg; coverpoint d; endgroup
  function new(); cg = new(); endfunction
endclass

module q40;
  initial begin
    c40 obj = new();
    repeat (5) begin
      obj.randomize();
      obj.cg.sample();
      $display("Q40 -> d=%0d", obj.d);
    end
  end
endmodule


//-------------------------------------------------------------
// Q41: Bins with 'iff' condition
//-------------------------------------------------------------
module q41;
  bit [3:0] val;
  bit en;

  covergroup cg;
    coverpoint val iff (en);
  endgroup

  initial begin
    cg c = new();
    repeat (7) begin
      en = $random;
      val = $urandom_range(0,15);
      c.sample();
      $display("Q41 -> en=%0b val=%0d", en, val);
    end
  end
endmodule


//-------------------------------------------------------------
// Q42: Two coverpoints cross inside covergroup
//-------------------------------------------------------------
module q42;
  bit [2:0] x, y;

  covergroup cg;
    cp1: coverpoint x;
    cp2: coverpoint y;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      x = $urandom_range(0,7);
      y = $urandom_range(0,7);
      c.sample();
      $display("Q42 -> x=%0d y=%0d", x, y);
    end
  end
endmodule


//-------------------------------------------------------------
// Q43: Coverpoint of concatenated bits
//-------------------------------------------------------------
module q43;
  bit [1:0] a,b;

  covergroup cg;
    coverpoint {a,b};
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      c.sample();
      $display("Q43 -> a=%0b b=%0b", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q44: Coverpoint with default bins auto
//-------------------------------------------------------------
module q44;
  bit [2:0] sig;

  covergroup cg;
    coverpoint sig { bins def[] = default; }
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      sig = $urandom_range(0,7);
      c.sample();
      $display("Q44 -> sig=%0d", sig);
    end
  end
endmodule


//-------------------------------------------------------------
// Q45: Cross coverage with ignore bins
//-------------------------------------------------------------
module q45;
  bit [2:0] a,b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2 { ignore_bins same = binsof(cp1) intersect binsof(cp2); }
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      a=$urandom_range(0,7);
      b=$urandom_range(0,7);
      c.sample();
      $display("Q45 -> a=%0d b=%0d", a, b);
    end
  end
endmodule


//-------------------------------------------------------------
// Q46: Sampling array element
//-------------------------------------------------------------
module q46;
  bit [3:0] arr [4];

  covergroup cg;
    coverpoint arr[2];
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      foreach(arr[i]) arr[i]=$urandom_range(0,15);
      c.sample();
      $display("Q46 -> arr[2]=%0d", arr[2]);
    end
  end
endmodule


//-------------------------------------------------------------
// Q47: Coverpoint sampling inside fork-join
//-------------------------------------------------------------
module q47;
  bit [3:0] val;

  covergroup cg;
    coverpoint val;
  endgroup

  initial begin
    cg c = new();
    fork
      repeat (5) begin
        val = $urandom_range(0,15);
        c.sample();
        $display("Q47 -> val=%0d", val);
        #2;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q48: Cross coverage of enable and data
//-------------------------------------------------------------
module q48;
  bit en;
  bit [3:0] d;

  covergroup cg;
    cp1: coverpoint en;
    cp2: coverpoint d;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      en = $random;
      d = $urandom_range(0,15);
      c.sample();
      $display("Q48 -> en=%0b d=%0d", en, d);
    end
  end
endmodule


//-------------------------------------------------------------
// Q49: Transition 0=>1 and 1=>0 for single bit
//-------------------------------------------------------------
module q49;
  bit sig;

  covergroup cg;
    coverpoint sig { bins up=(0=>1); bins down=(1=>0); }
  endgroup

  initial begin
    cg c = new();
    repeat (7) begin
      sig = $random;
      c.sample();
      $display("Q49 -> sig=%0b", sig);
    end
  end
endmodule


//-------------------------------------------------------------
// Q50: Cross with three 1-bit signals
//-------------------------------------------------------------
module q50;
  bit a,b,c1;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cp3: coverpoint c1;
    cross cp1, cp2, cp3;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a=$random;
      b=$random;
      c1=$random;
      c.sample();
      $display("Q50 -> a=%0b b=%0b c=%0b", a,b,c1);
    end
  end
endmodule

*/





//-------------------------------------------------------------
// Q51: Coverpoint with step size bins
//-------------------------------------------------------------
/*
module q51;
  bit [5:0] val;

  covergroup cg;
    coverpoint val {
      bins step5[] = {[0:50] with (item % 5 == 0)};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (10) begin
      val = $urandom_range(0,50);
      c.sample();
      $display("Q51 -> val=%0d", val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q52: Multiple coverpoints sampling same variable
//-------------------------------------------------------------
/*
module q52;
  bit [3:0] data;

  covergroup cg;
    cp1: coverpoint data { bins low = {[0:5]}; }
    cp2: coverpoint data { bins high = {[10:15]}; }
  endgroup

  initial begin
    cg c = new();
    repeat (8) begin
      data = $urandom_range(0,15);
      c.sample();
      $display("Q52 -> data=%0d", data);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q53: Ignore a range of values
//-------------------------------------------------------------
/*
module q53;
  bit [4:0] x;

  covergroup cg;
    coverpoint x {
      ignore_bins ign = {[10:20]};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (10) begin
      x = $urandom_range(0,25);
      c.sample();
      $display("Q53 -> x=%0d", x);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q54: Cross with custom bins
//-------------------------------------------------------------
/*
module q54;
  bit [1:0] a, b;

  covergroup cg;
    cp1: coverpoint a { bins abins[] = {[0:3]}; }
    cp2: coverpoint b { bins bbins[] = {[0:3]}; }
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      c.sample();
      $display("Q54 -> a=%0d b=%0d", a, b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q55: Transition bins for bit toggle
//-------------------------------------------------------------
/*
module q55;
  bit x;

  covergroup cg;
    coverpoint x {
      bins rise = (0 => 1);
      bins fall = (1 => 0);
    }
  endgroup

  initial begin
    cg c = new();
    repeat (8) begin
      x = $random;
      c.sample();
      $display("Q55 -> x=%0b", x);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q56: Sampling on event trigger
//-------------------------------------------------------------
/*
module q56;
  event e;
  bit [3:0] d;

  covergroup cg @(e);
    coverpoint d;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      d = $urandom_range(0,10);
      -> e;
      $display("Q56 -> d=%0d", d);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q57: Covergroup with option.goal
//-------------------------------------------------------------
/*
module q57;
  bit [3:0] val;

  covergroup cg;
    option.goal = 90;
    coverpoint val;
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      val = $urandom_range(0,10);
      c.sample();
      $display("Q57 -> val=%0d", val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q58: Cross coverage 2x2 with ignore combination
//-------------------------------------------------------------
/*
module q58;
  bit [1:0] a, b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2 {
      ignore_bins same = binsof(cp1) intersect binsof(cp2);
    }
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      a = $urandom_range(0,3);
      b = $urandom_range(0,3);
      c.sample();
      $display("Q58 -> a=%0d b=%0d", a, b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q59: Using type_option.comment
//-------------------------------------------------------------
/*
module q59;
  bit [3:0] data;

  covergroup cg;
    type_option.comment = "Data coverage test";
    coverpoint data;
  endgroup

  initial begin
    cg c = new();
    repeat (4) begin
      data = $urandom_range(0,15);
      c.sample();
      $display("Q59 -> data=%0d", data);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q60: Sample multiple covergroups manually
//-------------------------------------------------------------
/*
module q60;
  bit [3:0] d;
  covergroup cg1; coverpoint d; endgroup
  covergroup cg2; coverpoint d; endgroup

  initial begin
    cg1 c1 = new();
    cg2 c2 = new();
    repeat (5) begin
      d = $urandom_range(0,15);
      c1.sample();
      c2.sample();
      $display("Q60 -> d=%0d", d);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q61: Array coverpoint sampling first element
//-------------------------------------------------------------
/*
module q61;
  bit [3:0] arr[4];

  covergroup cg;
    coverpoint arr[0];
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      foreach (arr[i]) arr[i] = $urandom_range(0,15);
      c.sample();
      $display("Q61 -> arr[0]=%0d", arr[0]);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q62: Coverpoint of boolean expression
//-------------------------------------------------------------
/*
module q62;
  bit [3:0] a;

  covergroup cg;
    coverpoint (a > 8);
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      a = $urandom_range(0,15);
      c.sample();
      $display("Q62 -> a=%0d", a);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q63: Multiple bins for one coverpoint
//-------------------------------------------------------------
/*
module q63;
  bit [3:0] x;

  covergroup cg;
    coverpoint x {
      bins small = {[0:3]};
      bins medium = {[4:7]};
      bins large = {[8:15]};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      x = $urandom_range(0,15);
      c.sample();
      $display("Q63 -> x=%0d", x);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q64: Transition bins sequence
//-------------------------------------------------------------
/*
module q64;
  bit [1:0] st;

  covergroup cg;
    coverpoint st {
      bins seq = (0 => 1 => 2);
    }
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      st = $urandom_range(0,2);
      c.sample();
      $display("Q64 -> st=%0d", st);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q65: Ignore even values
//-------------------------------------------------------------
/*
module q65;
  bit [3:0] num;

  covergroup cg;
    coverpoint num {
      ignore_bins even = {[0:14] with (item % 2 == 0)};
    }
  endgroup

  initial begin
    cg c = new();
    repeat (6) begin
      num = $urandom_range(0,15);
      c.sample();
      $display("Q65 -> num=%0d", num);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q66: Cross 3 signals with ignore pattern
//-------------------------------------------------------------
/*
module q66;
  bit [1:0] a,b,c1;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cp3: coverpoint c1;
    cross cp1,cp2,cp3 {
      ignore_bins same = binsof(cp1) intersect binsof(cp2);
    }
  endgroup

  initial begin
    cg c = new();
    repeat (5) begin
      a=$urandom_range(0,3);
      b=$urandom_range(0,3);
      c1=$urandom_range(0,3);
      c.sample();
      $display("Q66 -> a=%0d b=%0d c=%0d",a,b,c1);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q67: Covergroup inside a class
//-------------------------------------------------------------
/*
class cov_class;
  rand bit [3:0] val;
  covergroup cg;
    coverpoint val;
  endgroup
  function new;
    cg = new();
  endfunction
endclass

module q67;
  initial begin
    cov_class obj = new();
    repeat (5) begin
      obj.randomize();
      obj.cg.sample();
      $display("Q67 -> val=%0d", obj.val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q68: Transition bin for rising edge
//-------------------------------------------------------------
/*
module q68;
  bit sig;

  covergroup cg;
    coverpoint sig {
      bins rise = (0 => 1);
    }
  endgroup

  initial begin
    cg c = new();
    sig=0;
    repeat(5)begin
      sig=~sig;
      c.sample();
      $display("Q68 -> sig=%0b",sig);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q69: Cross using array values
//-------------------------------------------------------------
/*
module q69;
  bit [1:0] a[2];

  covergroup cg;
    cp1: coverpoint a[0];
    cp2: coverpoint a[1];
    cross cp1,cp2;
  endgroup

  initial begin
    cg c = new();
    repeat(5)begin
      foreach(a[i]) a[i]=$urandom_range(0,3);
      c.sample();
      $display("Q69 -> a0=%0d a1=%0d",a[0],a[1]);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q70: Coverpoint with negative value bin
//-------------------------------------------------------------
/*
module q70;
  int val;

  covergroup cg;
    coverpoint val {
      bins neg = {[-5:-1]};
      bins pos = {[0:5]};
    }
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      val=$urandom_range(-5,5);
      c.sample();
      $display("Q70 -> val=%0d",val);
    end
  end
endmodule
*/



//-------------------------------------------------------------
// Q71: Basic covergroup sampling inside always block
//-------------------------------------------------------------
/*
module q71;
  bit [3:0] data;
  bit clk;

  covergroup cg @(posedge clk);
    coverpoint data;
  endgroup

  initial begin
    cg c = new();
    forever begin
      #5 clk = ~clk;
      data = $urandom_range(0,15);
      $display("Q71 -> data=%0d", data);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q72: Coverpoint using 2-bit signal
//-------------------------------------------------------------
/*
module q72;
  bit [1:0] sig;

  covergroup cg;
    coverpoint sig { bins all[] = {[0:3]}; }
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      sig=$urandom_range(0,3);
      c.sample();
      $display("Q72 -> sig=%0d",sig);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q73: Covergroup for opcode coverage
//-------------------------------------------------------------
/*
module q73;
  bit [3:0] opcode;

  covergroup cg;
    coverpoint opcode {
      bins alu_ops = {[0:5]};
      bins mem_ops = {[6:9]};
    }
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      opcode=$urandom_range(0,9);
      c.sample();
      $display("Q73 -> opcode=%0d",opcode);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q74: Coverpoint for signal toggle count
//-------------------------------------------------------------
/*
module q74;
  bit sig;
  int count;

  covergroup cg;
    coverpoint count {
      bins small = {[0:3]};
      bins large = {[4:10]};
    }
  endgroup

  initial begin
    cg c = new();
    count=0;
    repeat(10)begin
      sig=~sig;
      count++;
      c.sample();
      $display("Q74 -> toggle count=%0d",count);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q75: Ignore a specific value
//-------------------------------------------------------------
/*
module q75;
  bit [3:0] val;

  covergroup cg;
    coverpoint val {
      ignore_bins skip = {7};
    }
  endgroup

  initial begin
    cg c = new();
    repeat(8)begin
      val=$urandom_range(0,10);
      c.sample();
      $display("Q75 -> val=%0d",val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q76: Cross 2-bit and 3-bit signals
//-------------------------------------------------------------
/*
module q76;
  bit [1:0] a;
  bit [2:0] b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2;
  endgroup

  initial begin
    cg c = new();
    repeat(5)begin
      a=$urandom_range(0,3);
      b=$urandom_range(0,7);
      c.sample();
      $display("Q76 -> a=%0d b=%0d",a,b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q77: Transition bin from 0→1→0
//-------------------------------------------------------------
/*
module q77;
  bit sig;

  covergroup cg;
    coverpoint sig {
      bins rise_fall = (0 => 1 => 0);
    }
  endgroup

  initial begin
    cg c = new();
    sig=0;
    repeat(5)begin
      sig=~sig;
      c.sample();
      $display("Q77 -> sig=%0b",sig);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q78: Covergroup inside class with random sampling
//-------------------------------------------------------------
/*
class cov_demo;
  rand bit [3:0] val;
  covergroup cg; coverpoint val; endgroup
  function new; cg=new(); endfunction
endclass

module q78;
  initial begin
    cov_demo c=new();
    repeat(5)begin
      c.randomize();
      c.cg.sample();
      $display("Q78 -> val=%0d",c.val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q79: Covergroup sampling array element
//-------------------------------------------------------------
/*
module q79;
  bit [7:0] arr[3];

  covergroup cg;
    coverpoint arr[1];
  endgroup

  initial begin
    cg c = new();
    repeat(5)begin
      foreach(arr[i]) arr[i]=$urandom_range(0,255);
      c.sample();
      $display("Q79 -> arr[1]=%0d",arr[1]);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q80: Covergroup with multiple sample calls
//-------------------------------------------------------------
/*
module q80;
  bit [3:0] a,b;

  covergroup cg;
    coverpoint a;
    coverpoint b;
  endgroup

  initial begin
    cg c=new();
    repeat(4)begin
      a=$urandom_range(0,15);
      b=$urandom_range(0,15);
      c.sample();
      c.sample(); // multiple samples
      $display("Q80 -> a=%0d b=%0d",a,b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q81: Coverpoint of concatenated value
//-------------------------------------------------------------
/*
module q81;
  bit [1:0] a,b;

  covergroup cg;
    coverpoint {a,b};
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      a=$urandom_range(0,3);
      b=$urandom_range(0,3);
      c.sample();
      $display("Q81 -> concat=%0b", {a,b});
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q82: Cross of 2 coverpoints with illegal bins
//-------------------------------------------------------------
/*
module q82;
  bit [1:0] a,b;

  covergroup cg;
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1,cp2 {
      illegal_bins same = binsof(cp1) intersect binsof(cp2);
    }
  endgroup

  initial begin
    cg c = new();
    repeat(5)begin
      a=$urandom_range(0,3);
      b=$urandom_range(0,3);
      c.sample();
      $display("Q82 -> a=%0d b=%0d",a,b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q83: Coverpoint using mod condition
//-------------------------------------------------------------
/*
module q83;
  bit [5:0] val;

  covergroup cg;
    coverpoint val {
      bins div3[] = {[0:60] with (item % 3 == 0)};
    }
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      val=$urandom_range(0,60);
      c.sample();
      $display("Q83 -> val=%0d",val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q84: Covergroup sampling difference of two signals
//-------------------------------------------------------------
/*
module q84;
  int a,b;

  covergroup cg;
    coverpoint (a-b);
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      a=$urandom_range(0,10);
      b=$urandom_range(0,10);
      c.sample();
      $display("Q84 -> a=%0d b=%0d diff=%0d",a,b,a-b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q85: Ignore bins using expression
//-------------------------------------------------------------
/*
module q85;
  bit [3:0] x;

  covergroup cg;
    coverpoint x {
      ignore_bins ign = {[0:15] with (item>10)};
    }
  endgroup

  initial begin
    cg c = new();
    repeat(5)begin
      x=$urandom_range(0,15);
      c.sample();
      $display("Q85 -> x=%0d",x);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q86: Weighted coverage example
//-------------------------------------------------------------
/*
module q86;
  bit [3:0] y;

  covergroup cg;
    coverpoint y {
      type_option.weight = 3;
    }
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      y=$urandom_range(0,10);
      c.sample();
      $display("Q86 -> y=%0d",y);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q87: Cross coverage of even and odd bins
//-------------------------------------------------------------
/*
module q87;
  bit [3:0] a,b;

  covergroup cg;
    cp1: coverpoint a { bins even = {[0:14] with (item%2==0)}; }
    cp2: coverpoint b { bins odd  = {[0:14] with (item%2==1)}; }
    cross cp1,cp2;
  endgroup

  initial begin
    cg c = new();
    repeat(6)begin
      a=$urandom_range(0,14);
      b=$urandom_range(0,14);
      c.sample();
      $display("Q87 -> a=%0d b=%0d",a,b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q88: Transition coverage of counter
//-------------------------------------------------------------
/*
module q88;
  int count;

  covergroup cg;
    coverpoint count {
      bins inc = (0 => 1 => 2);
    }
  endgroup

  initial begin
    cg c = new();
    for(count=0;count<3;count++)begin
      c.sample();
      $display("Q88 -> count=%0d",count);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q89: Coverpoint with default bins
//-------------------------------------------------------------
/*
module q89;
  bit [2:0] a;

  covergroup cg;
    coverpoint a { bins def[] = default; }
  endgroup

  initial begin
    cg c = new();
    repeat(5)begin
      a=$urandom_range(0,7);
      c.sample();
      $display("Q89 -> a=%0d",a);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q90: Per-instance option in class coverage
//-------------------------------------------------------------
/*
class cov_class;
  rand bit [3:0] val;
  covergroup cg;
    option.per_instance = 1;
    coverpoint val;
  endgroup
  function new; cg=new(); endfunction
endclass

module q90;
  initial begin
    cov_class c1=new(), c2=new();
    repeat(3)begin
      c1.randomize(); c1.cg.sample();
      c2.randomize(); c2.cg.sample();
      $display("Q90 -> c1=%0d c2=%0d",c1.val,c2.val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q91: Sampling on posedge of signal
//-------------------------------------------------------------
/*
module q91;
  bit sig;
  bit [3:0] val;

  covergroup cg @(posedge sig);
    coverpoint val;
  endgroup

  initial begin
    cg c=new();
    repeat(6)begin
      #5 sig=~sig;
      val=$urandom_range(0,15);
      $display("Q91 -> val=%0d",val);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q92: Coverpoint of function return
//-------------------------------------------------------------
/*
module q92;
  function int calc();
    return $urandom_range(0,10);
  endfunction

  covergroup cg;
    coverpoint calc();
  endgroup

  initial begin
    cg c=new();
    repeat(5)begin
      c.sample();
      $display("Q92 -> sampled value");
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q93: Array coverage with foreach sample
//-------------------------------------------------------------
/*
module q93;
  bit [3:0] arr[3];

  covergroup cg;
    coverpoint arr[2];
  endgroup

  initial begin
    cg c=new();
    repeat(4)begin
      foreach(arr[i]) arr[i]=$urandom_range(0,15);
      c.sample();
      $display("Q93 -> arr[2]=%0d",arr[2]);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q94: Transition between states
//-------------------------------------------------------------
/*
module q94;
  typedef enum {IDLE, READ, WRITE} state_t;
  state_t s;

  covergroup cg;
    coverpoint s {
      bins seq = (IDLE => READ => WRITE);
    }
  endgroup

  initial begin
    cg c=new();
    s=IDLE; c.sample(); $display("Q94 -> s=IDLE");
    s=READ; c.sample(); $display("Q94 -> s=READ");
    s=WRITE; c.sample(); $display("Q94 -> s=WRITE");
  end
endmodule
*/


//-------------------------------------------------------------
// Q95: Random even number coverage
//-------------------------------------------------------------
/*
module q95;
  bit [4:0] num;

  covergroup cg;
    coverpoint num {
      bins even[] = {[0:30] with (item%2==0)};
    }
  endgroup

  initial begin
    cg c=new();
    repeat(6)begin
      num=$urandom_range(0,30);
      c.sample();
      $display("Q95 -> num=%0d",num);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q96: Cross of 2 covergroups on same signal
//-------------------------------------------------------------
/*
module q96;
  bit [3:0] sig;
  covergroup cg1; coverpoint sig; endgroup
  covergroup cg2; coverpoint sig; endgroup

  initial begin
    cg1 c1=new();
    cg2 c2=new();
    repeat(5)begin
      sig=$urandom_range(0,15);
      c1.sample();
      c2.sample();
      $display("Q96 -> sig=%0d",sig);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q97: Coverage of arithmetic result
//-------------------------------------------------------------
/*
module q97;
  int a,b;

  covergroup cg;
    coverpoint (a+b);
  endgroup

  initial begin
    cg c=new();
    repeat(6)begin
      a=$urandom_range(0,10);
      b=$urandom_range(0,10);
      c.sample();
      $display("Q97 -> a=%0d b=%0d sum=%0d",a,b,a+b);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q98: Random 4-bit toggle coverage
//-------------------------------------------------------------
/*
module q98;
  bit [3:0] d;

  covergroup cg;
    coverpoint d {
      bins toggles[] = {[0:15]};
    }
  endgroup

  initial begin
    cg c=new();
    repeat(5)begin
      d=$urandom();
      c.sample();
      $display("Q98 -> d=%0b",d);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q99: Coverpoint for address range test
//-------------------------------------------------------------
/*
module q99;
  bit [7:0] addr;

  covergroup cg;
    coverpoint addr {
      bins low  = {[0:63]};
      bins high = {[64:255]};
    }
  endgroup

  initial begin
    cg c=new();
    repeat(6)begin
      addr=$urandom_range(0,255);
      c.sample();
      $display("Q99 -> addr=%0d",addr);
    end
  end
endmodule
*/


//-------------------------------------------------------------
// Q100: Cross coverage for mode and enable
//-------------------------------------------------------------
/*
module q100;
  bit [1:0] mode;
  bit enable;

  covergroup cg;
    cp1: coverpoint mode;
    cp2: coverpoint enable;
    cross cp1,cp2;
  endgroup

  initial begin
    cg c=new();
    repeat(6)begin
      mode=$urandom_range(0,3);
      enable=$urandom_range(0,1);
      c.sample();
      $display("Q100 -> mode=%0d enable=%0b",mode,enable);
    end
  end
endmodule
*/













