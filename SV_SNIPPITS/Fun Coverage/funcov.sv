`timescale 1ns/1ps

`define SNIPPET1  // Change this to run a different snippet

`ifdef SNIPPET1
// ==============================================
// Snippet 1: Basic Covergroup Example
// ==============================================
class Coverage1;
  covergroup cg;
    coverpoint value;
  endgroup

  cg c1;
  int value;

  function new();
    c1 = new();
  endfunction

  function void sample(int v);
    value = v;
    c1.sample();
  endfunction

  function void report();
    $display("Snippet 1: Basic Covergroup Example");
    $display("Functional Coverage = %.2f%%", c1.get_coverage());
  endfunction
endclass

module test1;
  initial begin
    Coverage1 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET2
// ==============================================
// Snippet 2: Covergroup with Bins
// ==============================================
class Coverage2;
  covergroup cg;
    coverpoint data { bins zero = {0}; bins one = {1}; }
  endgroup

  cg c2;
  int data;

  function new();
    c2 = new();
  endfunction

  function void sample(int d);
    data = d;
    c2.sample();
  endfunction

  function void report();
    $display("Snippet 2: Covergroup with Bins");
    $display("Functional Coverage = %.2f%%", c2.get_coverage());
  endfunction
endclass

module test2;
  initial begin
    Coverage2 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET3
// ==============================================
// Snippet 3: Implicit Bins
// ==============================================
class Coverage3;
  covergroup cg;
    coverpoint signal { bins low = {0}; bins high = {1}; }
  endgroup

  cg c3;
  int signal;

  function new();
    c3 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c3.sample();
  endfunction

  function void report();
    $display("Snippet 3: Implicit Bins");
    $display("Functional Coverage = %.2f%%", c3.get_coverage());
  endfunction
endclass

module test3;
  initial begin
    Coverage3 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET4
// ==============================================
// Snippet 4: Explicit Bins
// ==============================================
class Coverage4;
  covergroup cg;
    coverpoint x { bins even = {2, 4, 6}; bins odd = {1, 3, 5}; }
  endgroup

  cg c4;
  int x;

  function new();
    c4 = new();
  endfunction

  function void sample(int v);
    x = v;
    c4.sample();
  endfunction

  function void report();
    $display("Snippet 4: Explicit Bins");
    $display("Functional Coverage = %.2f%%", c4.get_coverage());
  endfunction
endclass

module test4;
  initial begin
    Coverage4 cov = new();
    cov.sample(2);
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET5
// ==============================================
// Snippet 5: Cross Products Example
// ==============================================
class Coverage5;
  covergroup cg;
    coverpoint a { bins low = {0}; bins high = {1}; }
    coverpoint b { bins small = {0}; bins large = {1}; }
    cross a, b;
  endgroup

  cg c5;
  int a, b;

  function new();
    c5 = new();
  endfunction

  function void sample(int av, int bv);
    a = av;
    b = bv;
    c5.sample();
  endfunction

  function void report();
    $display("Snippet 5: Cross Products");
    $display("Functional Coverage = %.2f%%", c5.get_coverage());
  endfunction
endclass

module test5;
  initial begin
    Coverage5 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET6
// ==============================================
// Snippet 6: Ignore Bins Example
// ==============================================
class Coverage6;
  covergroup cg;
    coverpoint value { bins valid = {[0:5]}; ignore_bins invalid = {6, 7, 8}; }
  endgroup

  cg c6;
  int value;

  function new();
    c6 = new();
  endfunction

  function void sample(int v);
    value = v;
    c6.sample();
  endfunction

  function void report();
    $display("Snippet 6: Ignore Bins Example");
    $display("Functional Coverage = %.2f%%", c6.get_coverage());
  endfunction
endclass

module test6;
  initial begin
    Coverage6 cov = new();
    cov.sample(0);
    cov.sample(6); // Ignored
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET7
// ==============================================
// Snippet 7: Illegal Bins Example
// ==============================================
class Coverage7;
  covergroup cg;
    coverpoint signal { bins valid = {[0:3]}; illegal_bins error = {4, 5}; }
  endgroup

  cg c7;
  int signal;

  function new();
    c7 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c7.sample();
  endfunction

  function void report();
    $display("Snippet 7: Illegal Bins Example");
    $display("Functional Coverage = %.2f%%", c7.get_coverage());
  endfunction
endclass

module test7;
  initial begin
    Coverage7 cov = new();
    cov.sample(1);
    cov.sample(4); // Illegal value
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET8
// ==============================================
// Snippet 8: Transition Coverage
// ==============================================
class Coverage8;
  covergroup cg;
    coverpoint state_transitions { bins state_seq = (0 => 1 => 2); }
  endgroup

  cg c8;
  int state;

  function new();
    c8 = new();
  endfunction

  function void sample(int s);
    state = s;
    c8.sample();
  endfunction

  function void report();
    $display("Snippet 8: Transition Coverage");
    $display("Functional Coverage = %.2f%%", c8.get_coverage());
  endfunction
endclass

module test8;
  initial begin
    Coverage8 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.sample(2);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET9
// ==============================================
// Snippet 9: Cross Coverage with Ignore Bins
// ==============================================
class Coverage9;
  covergroup cg;
    coverpoint a { bins low = {0}; bins high = {1}; }
    coverpoint b { bins small = {0}; bins large = {1}; }
    cross a, b ignore_bins invalid = (1, 1);
  endgroup

  cg c9;
  int a, b;

  function new();
    c9 = new();
  endfunction

  function void sample(int av, int bv);
    a = av;
    b = bv;
    c9.sample();
  endfunction

  function void report();
    $display("Snippet 9: Cross Coverage with Ignore Bins");
    $display("Functional Coverage = %.2f%%", c9.get_coverage());
  endfunction
endclass

module test9;
  initial begin
    Coverage9 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1); // Ignored
    cov.sample(1, 0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET10
// ==============================================
// Snippet 10: Weighted Coverage Bins
// ==============================================
class Coverage10;
  covergroup cg;
    coverpoint level { bins low = {0}; bins high = {1} with (5); }
  endgroup

  cg c10;
  int level;

  function new();
    c10 = new();
  endfunction

  function void sample(int l);
    level = l;
    c10.sample();
  endfunction

  function void report();
    $display("Snippet 10: Weighted Coverage Bins");
    $display("Functional Coverage = %.2f%%", c10.get_coverage());
  endfunction
endclass

module test10;
  initial begin
    Coverage10 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET11
// ==============================================
// Snippet 11: Cross Coverage with Illegal Bins
// ==============================================
class Coverage11;
  covergroup cg;
    coverpoint x { bins low = {0}; bins high = {1}; }
    coverpoint y { bins low = {0}; bins high = {1}; }
    cross x, y illegal_bins error = (1, 1);
  endgroup

  cg c11;
  int x, y;

  function new();
    c11 = new();
  endfunction

  function void sample(int xv, int yv);
    x = xv;
    y = yv;
    c11.sample();
  endfunction

  function void report();
    $display("Snippet 11: Cross Coverage with Illegal Bins");
    $display("Functional Coverage = %.2f%%", c11.get_coverage());
  endfunction
endclass

module test11;
  initial begin
    Coverage11 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1); // Should trigger an error
    cov.sample(1, 0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET12
// ==============================================
// Snippet 12: Dynamic Coverage Sampling
// ==============================================
class Coverage12;
  covergroup cg;
    coverpoint value { bins low = {0}; bins mid = {1}; bins high = {2}; }
  endgroup

  cg c12;
  int value;

  function new();
    c12 = new();
  endfunction

  function void sample(int v);
    value = v;
    c12.sample();
  endfunction

  function void report();
    $display("Snippet 12: Dynamic Coverage Sampling");
    $display("Functional Coverage = %.2f%%", c12.get_coverage());
  endfunction
endclass

module test12;
  initial begin
    Coverage12 cov = new();
    cov.sample($random % 3);
    cov.sample($random % 3);
    cov.report();
    $finish;
  end
endmodule
`endif


`ifdef SNIPPET13
// ==============================================
// Snippet 13: Multiple Covergroups in a Class
// ==============================================
class Coverage13;
  covergroup cg1;
    coverpoint data { bins low = {0}; bins high = {1}; }
  endgroup

  covergroup cg2;
    coverpoint addr { bins even = {2, 4, 6}; bins odd = {1, 3, 5}; }
  endgroup

  cg1 c1;
  cg2 c2;
  int data, addr;

  function new();
    c1 = new();
    c2 = new();
  endfunction

  function void sample(int d, int a);
    data = d;
    addr = a;
    c1.sample();
    c2.sample();
  endfunction

  function void report();
    $display("Snippet 13: Multiple Covergroups");
    $display("Functional Coverage cg1 = %.2f%%", c1.get_coverage());
    $display("Functional Coverage cg2 = %.2f%%", c2.get_coverage());
  endfunction
endclass

module test13;
  initial begin
    Coverage13 cov = new();
    cov.sample(0, 2);
    cov.sample(1, 3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET14
// ==============================================
// Snippet 14: Using Covergroup in a Struct
// ==============================================
typedef struct {
  int addr;
  int data;
} packet_t;

class Coverage14;
  covergroup cg;
    coverpoint pkt.addr { bins addr_bins[] = {[0:5]}; }
    coverpoint pkt.data { bins data_bins[] = {[10:20]}; }
  endgroup

  cg c14;
  packet_t pkt;

  function new();
    c14 = new();
  endfunction

  function void sample(int a, int d);
    pkt.addr = a;
    pkt.data = d;
    c14.sample();
  endfunction

  function void report();
    $display("Snippet 14: Covergroup in Struct");
    $display("Functional Coverage = %.2f%%", c14.get_coverage());
  endfunction
endclass

module test14;
  initial begin
    Coverage14 cov = new();
    cov.sample(2, 15);
    cov.sample(4, 10);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET15
// ==============================================
// Snippet 15: Covergroup with Wildcard Bins
// ==============================================
class Coverage15;
  covergroup cg;
    coverpoint signal { wildcard bins wild_bin = {4'b1??1}; }
  endgroup

  cg c15;
  int signal;

  function new();
    c15 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c15.sample();
  endfunction

  function void report();
    $display("Snippet 15: Wildcard Bins");
    $display("Functional Coverage = %.2f%%", c15.get_coverage());
  endfunction
endclass

module test15;
  initial begin
    Coverage15 cov = new();
    cov.sample(5);  // 0101
    cov.sample(9);  // 1001
    cov.sample(13); // 1101
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET16
// ==============================================
// Snippet 16: Coverage with Weighted Sampling
// ==============================================
class Coverage16;
  covergroup cg;
    coverpoint value { bins low = {0}; bins high = {1} with (3); }
  endgroup

  cg c16;
  int value;

  function new();
    c16 = new();
  endfunction

  function void sample(int v);
    value = v;
    c16.sample();
  endfunction

  function void report();
    $display("Snippet 16: Weighted Sampling");
    $display("Functional Coverage = %.2f%%", c16.get_coverage());
  endfunction
endclass

module test16;
  initial begin
    Coverage16 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET17
// ==============================================
// Snippet 17: Cross Coverage with Weighting
// ==============================================
class Coverage17;
  covergroup cg;
    coverpoint x { bins low = {0}; bins high = {1} with (2); }
    coverpoint y { bins low = {0}; bins high = {1} with (3); }
    cross x, y;
  endgroup

  cg c17;
  int x, y;

  function new();
    c17 = new();
  endfunction

  function void sample(int xv, int yv);
    x = xv;
    y = yv;
    c17.sample();
  endfunction

  function void report();
    $display("Snippet 17: Cross Coverage with Weighting");
    $display("Functional Coverage = %.2f%%", c17.get_coverage());
  endfunction
endclass

module test17;
  initial begin
    Coverage17 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET18
// ==============================================
// Snippet 18: Covergroup with Toggle Coverage
// ==============================================
class Coverage18;
  covergroup cg;
    coverpoint signal { bins toggle = (0 => 1); }
  endgroup

  cg c18;
  int signal;

  function new();
    c18 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c18.sample();
  endfunction

  function void report();
    $display("Snippet 18: Toggle Coverage");
    $display("Functional Coverage = %.2f%%", c18.get_coverage());
  endfunction
endclass

module test18;
  initial begin
    Coverage18 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.sample(0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET19
// ==============================================
// Snippet 19: Covergroup with Range Bins
// ==============================================
class Coverage19;
  covergroup cg;
    coverpoint value { bins low = {[0:4]}; bins high = {[5:9]}; }
  endgroup

  cg c19;
  int value;

  function new();
    c19 = new();
  endfunction

  function void sample(int v);
    value = v;
    c19.sample();
  endfunction

  function void report();
    $display("Snippet 19: Range Bins");
    $display("Functional Coverage = %.2f%%", c19.get_coverage());
  endfunction
endclass

module test19;
  initial begin
    Coverage19 cov = new();
    cov.sample(3);
    cov.sample(7);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET20
// ==============================================
// Snippet 20: Covergroup with Transition Bins
// ==============================================
class Coverage20;
  covergroup cg;
    coverpoint state { bins trans = (0 => 1 => 2); }
  endgroup

  cg c20;
  int state;

  function new();
    c20 = new();
  endfunction

  function void sample(int s);
    state = s;
    c20.sample();
  endfunction

  function void report();
    $display("Snippet 20: Transition Bins");
    $display("Functional Coverage = %.2f%%", c20.get_coverage());
  endfunction
endclass

module test20;
  initial begin
    Coverage20 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.sample(2);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET21
// ==============================================
// Snippet 21: Covergroup with Cross and Ignore Bins
// ==============================================
class Coverage21;
  covergroup cg;
    coverpoint a { bins low = {0}; bins high = {1}; }
    coverpoint b { bins small = {0}; bins large = {1}; }
    cross a, b ignore_bins invalid = (1, 1);
  endgroup

  cg c21;
  int a, b;

  function new();
    c21 = new();
  endfunction

  function void sample(int av, int bv);
    a = av;
    b = bv;
    c21.sample();
  endfunction

  function void report();
    $display("Snippet 21: Cross and Ignore Bins");
    $display("Functional Coverage = %.2f%%", c21.get_coverage());
  endfunction
endclass

module test21;
  initial begin
    Coverage21 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1); // Ignored
    cov.sample(1, 0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET22
// ==============================================
// Snippet 22: Covergroup with Cross and Illegal Bins
// ==============================================
class Coverage22;
  covergroup cg;
    coverpoint x { bins low = {0}; bins high = {1}; }
    coverpoint y { bins low = {0}; bins high = {1}; }
    cross x, y illegal_bins error = (1, 1);
  endgroup

  cg c22;
  int x, y;

  function new();
    c22 = new();
  endfunction

  function void sample(int xv, int yv);
    x = xv;
    y = yv;
    c22.sample();
  endfunction

  function void report();
    $display("Snippet 22: Cross and Illegal Bins");
    $display("Functional Coverage = %.2f%%", c22.get_coverage());
  endfunction
endclass

module test22;
  initial begin
    Coverage22 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1); // Should trigger an error
    cov.sample(1, 0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET23
// ==============================================
// Snippet 23: Covergroup with Weighted Bins
// ==============================================
class Coverage23;
  covergroup cg;
    coverpoint level { bins low = {0}; bins high = {1} with (5); }
  endgroup

  cg c23;
  int level;

  function new();
    c23 = new();
  endfunction

  function void sample(int l);
    level = l;
    c23.sample();
  endfunction

  function void report();
    $display("Snippet 23: Weighted Bins");
    $display("Functional Coverage = %.2f%%", c23.get_coverage());
  endfunction
endclass

module test23;
  initial begin
    Coverage23 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET24
// ==============================================
// Snippet 24: Covergroup with Dynamic Sampling
// ==============================================
class Coverage24;
  covergroup cg;
    coverpoint value { bins low = {0}; bins mid = {1}; bins high = {2}; }
  endgroup

  cg c24;
  int value;

  function new();
    c24 = new();
  endfunction

  function void sample(int v);
    value = v;
    c24.sample();
  endfunction

  function void report();
    $display("Snippet 24: Dynamic Sampling");
    $display("Functional Coverage = %.2f%%", c24.get_coverage());
  endfunction
endclass

module test24;
  initial begin
    Coverage24 cov = new();
    cov.sample($random % 3);
    cov.sample($random % 3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET25
// ==============================================
// Snippet 25: Covergroup with Multiple Coverpoints
// ==============================================
class Coverage25;
  covergroup cg;
    coverpoint data { bins low = {0}; bins high = {1}; }
    coverpoint addr { bins even = {2, 4, 6}; bins odd = {1, 3, 5}; }
  endgroup

  cg c25;
  int data, addr;

  function new();
    c25 = new();
  endfunction

  function void sample(int d, int a);
    data = d;
    addr = a;
    c25.sample();
  endfunction

  function void report();
    $display("Snippet 25: Multiple Coverpoints");
    $display("Functional Coverage = %.2f%%", c25.get_coverage());
  endfunction
endclass

module test25;
  initial begin
    Coverage25 cov = new();
    cov.sample(0, 2);
    cov.sample(1, 3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET26
// ==============================================
// Snippet 26: Covergroup with Struct
// ==============================================
typedef struct {
  int addr;
  int data;
} packet_t;

class Coverage26;
  covergroup cg;
    coverpoint pkt.addr { bins addr_bins[] = {[0:5]}; }
    coverpoint pkt.data { bins data_bins[] = {[10:20]}; }
  endgroup

  cg c26;
  packet_t pkt;

  function new();
    c26 = new();
  endfunction

  function void sample(int a, int d);
    pkt.addr = a;
    pkt.data = d;
    c26.sample();
  endfunction

  function void report();
    $display("Snippet 26: Covergroup with Struct");
    $display("Functional Coverage = %.2f%%", c26.get_coverage());
  endfunction
endclass

module test26;
  initial begin
    Coverage26 cov = new();
    cov.sample(2, 15);
    cov.sample(4, 10);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET27
// ==============================================
// Snippet 27: Covergroup with Wildcard Bins
// ==============================================
class Coverage27;
  covergroup cg;
    coverpoint signal { wildcard bins wild_bin = {4'b1??1}; }
  endgroup

  cg c27;
  int signal;

  function new();
    c27 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c27.sample();
  endfunction

  function void report();
    $display("Snippet 27: Wildcard Bins");
    $display("Functional Coverage = %.2f%%", c27.get_coverage());
  endfunction
endclass

module test27;
  initial begin
    Coverage27 cov = new();
    cov.sample(5);  // 0101
    cov.sample(9);  // 1001
    cov.sample(13); // 1101
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET28
// ==============================================
// Snippet 28: Covergroup with Weighted Sampling
// ==============================================
class Coverage28;
  covergroup cg;
    coverpoint value { bins low = {0}; bins high = {1} with (3); }
  endgroup

  cg c28;
  int value;

  function new();
    c28 = new();
  endfunction

  function void sample(int v);
    value = v;
    c28.sample();
  endfunction

  function void report();
    $display("Snippet 28: Weighted Sampling");
    $display("Functional Coverage = %.2f%%", c28.get_coverage());
  endfunction
endclass

module test28;
  initial begin
    Coverage28 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif


`ifdef SNIPPET29
// ==============================================
// Snippet 29: Covergroup with Toggle Coverage
// This snippet demonstrates how to use toggle coverage to ensure that a signal toggles between 0 and 1.
// ==============================================
class Coverage29;
  covergroup cg;
    coverpoint signal { bins toggle = (0 => 1); }
  endgroup

  cg c29;
  int signal;

  function new();
    c29 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c29.sample();
  endfunction

  function void report();
    $display("Snippet 29: Toggle Coverage");
    $display("Functional Coverage = %.2f%%", c29.get_coverage());
  endfunction
endclass

module test29;
  initial begin
    Coverage29 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.sample(0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET30
// ==============================================
// Snippet 30: Covergroup with Cross Coverage and Weighting
// This snippet demonstrates how to use cross coverage with weighted bins.
// ==============================================
class Coverage30;
  covergroup cg;
    coverpoint x { bins low = {0}; bins high = {1} with (2); }
    coverpoint y { bins low = {0}; bins high = {1} with (3); }
    cross x, y;
  endgroup

  cg c30;
  int x, y;

  function new();
    c30 = new();
  endfunction

  function void sample(int xv, int yv);
    x = xv;
    y = yv;
    c30.sample();
  endfunction

  function void report();
    $display("Snippet 30: Cross Coverage with Weighting");
    $display("Functional Coverage = %.2f%%", c30.get_coverage());
  endfunction
endclass

module test30;
  initial begin
    Coverage30 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET31
// ==============================================
// Snippet 31: Covergroup with Transition Coverage
// This snippet demonstrates how to use transition coverage to ensure that a signal transitions through specific states.
// ==============================================
class Coverage31;
  covergroup cg;
    coverpoint state { bins trans = (0 => 1 => 2); }
  endgroup

  cg c31;
  int state;

  function new();
    c31 = new();
  endfunction

  function void sample(int s);
    state = s;
    c31.sample();
  endfunction

  function void report();
    $display("Snippet 31: Transition Coverage");
    $display("Functional Coverage = %.2f%%", c31.get_coverage());
  endfunction
endclass

module test31;
  initial begin
    Coverage31 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.sample(2);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET32
// ==============================================
// Snippet 32: Covergroup with Ignore Bins
// This snippet demonstrates how to use ignore bins to exclude certain values from coverage.
// ==============================================
class Coverage32;
  covergroup cg;
    coverpoint value { bins valid = {[0:5]}; ignore_bins invalid = {6, 7, 8}; }
  endgroup

  cg c32;
  int value;

  function new();
    c32 = new();
  endfunction

  function void sample(int v);
    value = v;
    c32.sample();
  endfunction

  function void report();
    $display("Snippet 32: Ignore Bins Example");
    $display("Functional Coverage = %.2f%%", c32.get_coverage());
  endfunction
endclass

module test32;
  initial begin
    Coverage32 cov = new();
    cov.sample(0);
    cov.sample(6); // Ignored
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET33
// ==============================================
// Snippet 33: Covergroup with Illegal Bins
// This snippet demonstrates how to use illegal bins to flag certain values as errors.
// ==============================================
class Coverage33;
  covergroup cg;
    coverpoint signal { bins valid = {[0:3]}; illegal_bins error = {4, 5}; }
  endgroup

  cg c33;
  int signal;

  function new();
    c33 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c33.sample();
  endfunction

  function void report();
    $display("Snippet 33: Illegal Bins Example");
    $display("Functional Coverage = %.2f%%", c33.get_coverage());
  endfunction
endclass

module test33;
  initial begin
    Coverage33 cov = new();
    cov.sample(1);
    cov.sample(4); // Illegal value
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET34
// ==============================================
// Snippet 34: Covergroup with Range Bins
// This snippet demonstrates how to use range bins to cover a range of values.
// ==============================================
class Coverage34;
  covergroup cg;
    coverpoint value { bins low = {[0:4]}; bins high = {[5:9]}; }
  endgroup

  cg c34;
  int value;

  function new();
    c34 = new();
  endfunction

  function void sample(int v);
    value = v;
    c34.sample();
  endfunction

  function void report();
    $display("Snippet 34: Range Bins");
    $display("Functional Coverage = %.2f%%", c34.get_coverage());
  endfunction
endclass

module test34;
  initial begin
    Coverage34 cov = new();
    cov.sample(3);
    cov.sample(7);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET35
// ==============================================
// Snippet 35: Covergroup with Explicit Bins
// This snippet demonstrates how to use explicit bins to cover specific values.
// ==============================================
class Coverage35;
  covergroup cg;
    coverpoint x { bins even = {2, 4, 6}; bins odd = {1, 3, 5}; }
  endgroup

  cg c35;
  int x;

  function new();
    c35 = new();
  endfunction

  function void sample(int v);
    x = v;
    c35.sample();
  endfunction

  function void report();
    $display("Snippet 35: Explicit Bins");
    $display("Functional Coverage = %.2f%%", c35.get_coverage());
  endfunction
endclass

module test35;
  initial begin
    Coverage35 cov = new();
    cov.sample(2);
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET36
// ==============================================
// Snippet 36: Covergroup with Multiple Coverpoints
// This snippet demonstrates how to use multiple coverpoints in a single covergroup.
// ==============================================
class Coverage36;
  covergroup cg;
    coverpoint data { bins low = {0}; bins high = {1}; }
    coverpoint addr { bins even = {2, 4, 6}; bins odd = {1, 3, 5}; }
  endgroup

  cg c36;
  int data, addr;

  function new();
    c36 = new();
  endfunction

  function void sample(int d, int a);
    data = d;
    addr = a;
    c36.sample();
  endfunction

  function void report();
    $display("Snippet 36: Multiple Coverpoints");
    $display("Functional Coverage = %.2f%%", c36.get_coverage());
  endfunction
endclass

module test36;
  initial begin
    Coverage36 cov = new();
    cov.sample(0, 2);
    cov.sample(1, 3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET37
// ==============================================
// Snippet 37: Covergroup with Struct
// This snippet demonstrates how to use a struct with a covergroup.
// ==============================================
typedef struct {
  int addr;
  int data;
} packet_t;

class Coverage37;
  covergroup cg;
    coverpoint pkt.addr { bins addr_bins[] = {[0:5]}; }
    coverpoint pkt.data { bins data_bins[] = {[10:20]}; }
  endgroup

  cg c37;
  packet_t pkt;

  function new();
    c37 = new();
  endfunction

  function void sample(int a, int d);
    pkt.addr = a;
    pkt.data = d;
    c37.sample();
  endfunction

  function void report();
    $display("Snippet 37: Covergroup with Struct");
    $display("Functional Coverage = %.2f%%", c37.get_coverage());
  endfunction
endclass

module test37;
  initial begin
    Coverage37 cov = new();
    cov.sample(2, 15);
    cov.sample(4, 10);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET38
// ==============================================
// Snippet 38: Covergroup with Wildcard Bins
// This snippet demonstrates how to use wildcard bins to cover a range of values with a pattern.
// ==============================================
class Coverage38;
  covergroup cg;
    coverpoint signal { wildcard bins wild_bin = {4'b1??1}; }
  endgroup

  cg c38;
  int signal;

  function new();
    c38 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c38.sample();
  endfunction

  function void report();
    $display("Snippet 38: Wildcard Bins");
    $display("Functional Coverage = %.2f%%", c38.get_coverage());
  endfunction
endclass

module test38;
  initial begin
    Coverage38 cov = new();
    cov.sample(5);  // 0101
    cov.sample(9);  // 1001
    cov.sample(13); // 1101
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET39
// ==============================================
// Snippet 39: Covergroup with Weighted Sampling
// This snippet demonstrates how to use weighted sampling to prioritize certain bins.
// ==============================================
class Coverage39;
  covergroup cg;
    coverpoint value { bins low = {0}; bins high = {1} with (3); }
  endgroup

  cg c39;
  int value;

  function new();
    c39 = new();
  endfunction

  function void sample(int v);
    value = v;
    c39.sample();
  endfunction

  function void report();
    $display("Snippet 39: Weighted Sampling");
    $display("Functional Coverage = %.2f%%", c39.get_coverage());
  endfunction
endclass

module test39;
  initial begin
    Coverage39 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET40
// ==============================================
// Snippet 40: Covergroup with Cross Coverage and Ignore Bins
// This snippet demonstrates how to use cross coverage with ignore bins.
// ==============================================
class Coverage40;
  covergroup cg;
    coverpoint a { bins low = {0}; bins high = {1}; }
    coverpoint b { bins small = {0}; bins large = {1}; }
    cross a, b ignore_bins invalid = (1, 1);
  endgroup

  cg c40;
  int a, b;

  function new();
    c40 = new();
  endfunction

  function void sample(int av, int bv);
    a = av;
    b = bv;
    c40.sample();
  endfunction

  function void report();
    $display("Snippet 40: Cross Coverage with Ignore Bins");
    $display("Functional Coverage = %.2f%%", c40.get_coverage());
  endfunction
endclass

module test40;
  initial begin
    Coverage40 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1); // Ignored
    cov.sample(1, 0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET41
// ==============================================
// Snippet 41: Covergroup with Cross Coverage and Illegal Bins
// This snippet demonstrates how to use cross coverage with illegal bins.
// ==============================================
class Coverage41;
  covergroup cg;
    coverpoint x { bins low = {0}; bins high = {1}; }
    coverpoint y { bins low = {0}; bins high = {1}; }
    cross x, y illegal_bins error = (1, 1);
  endgroup

  cg c41;
  int x, y;

  function new();
    c41 = new();
  endfunction

  function void sample(int xv, int yv);
    x = xv;
    y = yv;
    c41.sample();
  endfunction

  function void report();
    $display("Snippet 41: Cross Coverage with Illegal Bins");
    $display("Functional Coverage = %.2f%%", c41.get_coverage());
  endfunction
endclass

module test41;
  initial begin
    Coverage41 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1); // Should trigger an error
    cov.sample(1, 0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET42
// ==============================================
// Snippet 42: Covergroup with Dynamic Sampling
// This snippet demonstrates how to use dynamic sampling to cover random values.
// ==============================================
class Coverage42;
  covergroup cg;
    coverpoint value { bins low = {0}; bins mid = {1}; bins high = {2}; }
  endgroup

  cg c42;
  int value;

  function new();
    c42 = new();
  endfunction

  function void sample(int v);
    value = v;
    c42.sample();
  endfunction

  function void report();
    $display("Snippet 42: Dynamic Sampling");
    $display("Functional Coverage = %.2f%%", c42.get_coverage());
  endfunction
endclass

module test42;
  initial begin
    Coverage42 cov = new();
    cov.sample($random % 3);
    cov.sample($random % 3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET43
// ==============================================
// Snippet 43: Covergroup with Multiple Covergroups in a Class
// This snippet demonstrates how to use multiple covergroups within a single class.
// ==============================================
class Coverage43;
  covergroup cg1;
    coverpoint data { bins low = {0}; bins high = {1}; }
  endgroup

  covergroup cg2;
    coverpoint addr { bins even = {2, 4, 6}; bins odd = {1, 3, 5}; }
  endgroup

  cg1 c1;
  cg2 c2;
  int data, addr;

  function new();
    c1 = new();
    c2 = new();
  endfunction

  function void sample(int d, int a);
    data = d;
    addr = a;
    c1.sample();
    c2.sample();
  endfunction

  function void report();
    $display("Snippet 43: Multiple Covergroups");
    $display("Functional Coverage cg1 = %.2f%%", c1.get_coverage());
    $display("Functional Coverage cg2 = %.2f%%", c2.get_coverage());
  endfunction
endclass

module test43;
  initial begin
    Coverage43 cov = new();
    cov.sample(0, 2);
    cov.sample(1, 3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET44
// ==============================================
// Snippet 44: Covergroup with Toggle Coverage
// This snippet demonstrates how to use toggle coverage to ensure that a signal toggles between 0 and 1.
// ==============================================
class Coverage44;
  covergroup cg;
    coverpoint signal { bins toggle = (0 => 1); }
  endgroup

  cg c44;
  int signal;

  function new();
    c44 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c44.sample();
  endfunction

  function void report();
    $display("Snippet 44: Toggle Coverage");
    $display("Functional Coverage = %.2f%%", c44.get_coverage());
  endfunction
endclass

module test44;
  initial begin
    Coverage44 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.sample(0);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET45
// ==============================================
// Snippet 45: Covergroup with Cross Coverage and Weighting
// This snippet demonstrates how to use cross coverage with weighted bins.
// ==============================================
class Coverage45;
  covergroup cg;
    coverpoint x { bins low = {0}; bins high = {1} with (2); }
    coverpoint y { bins low = {0}; bins high = {1} with (3); }
    cross x, y;
  endgroup

  cg c45;
  int x, y;

  function new();
    c45 = new();
  endfunction

  function void sample(int xv, int yv);
    x = xv;
    y = yv;
    c45.sample();
  endfunction

  function void report();
    $display("Snippet 45: Cross Coverage with Weighting");
    $display("Functional Coverage = %.2f%%", c45.get_coverage());
  endfunction
endclass

module test45;
  initial begin
    Coverage45 cov = new();
    cov.sample(0, 0);
    cov.sample(1, 1);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET46
// ==============================================
// Snippet 46: Covergroup with Transition Coverage
// This snippet demonstrates how to use transition coverage to ensure that a signal transitions through specific states.
// ==============================================
class Coverage46;
  covergroup cg;
    coverpoint state { bins trans = (0 => 1 => 2); }
  endgroup

  cg c46;
  int state;

  function new();
    c46 = new();
  endfunction

  function void sample(int s);
    state = s;
    c46.sample();
  endfunction

  function void report();
    $display("Snippet 46: Transition Coverage");
    $display("Functional Coverage = %.2f%%", c46.get_coverage());
  endfunction
endclass

module test46;
  initial begin
    Coverage46 cov = new();
    cov.sample(0);
    cov.sample(1);
    cov.sample(2);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET47
// ==============================================
// Snippet 47: Covergroup with Ignore Bins
// This snippet demonstrates how to use ignore bins to exclude certain values from coverage.
// ==============================================
class Coverage47;
  covergroup cg;
    coverpoint value { bins valid = {[0:5]}; ignore_bins invalid = {6, 7, 8}; }
  endgroup

  cg c47;
  int value;

  function new();
    c47 = new();
  endfunction

  function void sample(int v);
    value = v;
    c47.sample();
  endfunction

  function void report();
    $display("Snippet 47: Ignore Bins Example");
    $display("Functional Coverage = %.2f%%", c47.get_coverage());
  endfunction
endclass

module test47;
  initial begin
    Coverage47 cov = new();
    cov.sample(0);
    cov.sample(6); // Ignored
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET48
// ==============================================
// Snippet 48: Covergroup with Illegal Bins
// This snippet demonstrates how to use illegal bins to flag certain values as errors.
// ==============================================
class Coverage48;
  covergroup cg;
    coverpoint signal { bins valid = {[0:3]}; illegal_bins error = {4, 5}; }
  endgroup

  cg c48;
  int signal;

  function new();
    c48 = new();
  endfunction

  function void sample(int s);
    signal = s;
    c48.sample();
  endfunction

  function void report();
    $display("Snippet 48: Illegal Bins Example");
    $display("Functional Coverage = %.2f%%", c48.get_coverage());
  endfunction
endclass

module test48;
  initial begin
    Coverage48 cov = new();
    cov.sample(1);
    cov.sample(4); // Illegal value
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET49
// ==============================================
// Snippet 49: Covergroup with Range Bins
// This snippet demonstrates how to use range bins to cover a range of values.
// ==============================================
class Coverage49;
  covergroup cg;
    coverpoint value { bins low = {[0:4]}; bins high = {[5:9]}; }
  endgroup

  cg c49;
  int value;

  function new();
    c49 = new();
  endfunction

  function void sample(int v);
    value = v;
    c49.sample();
  endfunction

  function void report();
    $display("Snippet 49: Range Bins");
    $display("Functional Coverage = %.2f%%", c49.get_coverage());
  endfunction
endclass

module test49;
  initial begin
    Coverage49 cov = new();
    cov.sample(3);
    cov.sample(7);
    cov.report();
    $finish;
  end
endmodule
`endif

`ifdef SNIPPET50
// ==============================================
// Snippet 50: Covergroup with Explicit Bins
// This snippet demonstrates how to use explicit bins to cover specific values.
// ==============================================
class Coverage50;
  covergroup cg;
    coverpoint x { bins even = {2, 4, 6}; bins odd = {1, 3, 5}; }
  endgroup

  cg c50;
  int x;

  function new();
    c50 = new();
  endfunction

  function void sample(int v);
    x = v;
    c50.sample();
  endfunction

  function void report();
    $display("Snippet 50: Explicit Bins");
    $display("Functional Coverage = %.2f%%", c50.get_coverage());
  endfunction
endclass

module test50;
  initial begin
    Coverage50 cov = new();
    cov.sample(2);
    cov.sample(3);
    cov.report();
    $finish;
  end
endmodule
`endif


