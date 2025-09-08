 
 
/*
module assertion_ex;
  bit clk = 0, a, b;

    Clock generation
  always #5 clk = ~clk; 

    Stimulus generation
  initial begin 
    $display("Time=%0t : Simulation started", $time);
    $monitor("Time=%0t : a=%b, b=%b", $time, a, b);

    a = 1; b = 1;
    #15 b = 0;
    #10 b = 1; a = 0;
    #20 a = 1;
    #10;
    $display("Time=%0t : Simulation finished", $time);
    $finish;
  end

    Assertion with pass/fail message
  always @(posedge clk) begin
    if (a && b) begin
      $info ("Time=%0t : Assertion PASSED (a=%b, b=%b)", $time, a, b);
    end else begin
      $error("Time=%0t : Assertion FAILED (a=%b, b=%b)", $time, a, b);
    end
  end

endmodule
*/

 
 
/*
module assertion_ex;
  bit clk = 0, a;

    Clock generation
  always #5 clk = ~clk;

    Signal 'a' generation
  initial begin 
    a = 1;
    #15 a = 0;
    #10 a = 1;
    #10 a = 0;
    #10 a = 1;
    #10;
    $finish;
  end

    Define sequence
  sequence seq_1;
    a == 1;
  endsequence

    Assert the sequence on every posedge of clk
  property p_1;
    @(posedge clk) seq_1;
  endproperty

  a_1: assert property(p_1)
    $info ("Assertion PASSED at Time %0t: a==1 a=%b \n", $time, a);
  else
    $error("Assertion FAILED at Time %0t: a!= 1 a=%b \n", $time, a);

    Dump waveform
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
*/
 
 
/*
module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
   assertion sequence
  sequence seq_2;
    @(posedge clk) (a||b);
  endsequence
  
   calling assert property
  a_1: assert property(seq_2);
    $info("Assertions pass Time=%0t a=%b b=%b ", $time,a,b);
    
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=1;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
   assertion sequence
  sequence seq;
    @(posedge clk) a ##2 b; 
  endsequence
  
   calling assert property
  a_1: assert property(seq);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
 /*
module ass1;
  bit clk = 0, a, b;

  always #5 clk = ~clk;    Clock generation

    Generating a and b
  initial begin
    a = 1; b = 1;
    #15 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 a = 0; b = 0;
    #10 a = 1; b = 1;
    #10;
    #100 $finish;
  end

    Assertion sequence
  sequence seq;
    a ##2 b;
  endsequence

  property p;
    @(posedge clk) not seq;
  endproperty

    Assertion
  a_1: assert property(p)
    $display(" Assertion PASSED \n");
  else
    $display(" Assertion FAILED: a ##2 b occurred \n");

    Dump waveform
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule

*/

 
 
/*
 / Overlapped implication

module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> b;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
  Non-overlapped implication

module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |=> b;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/

 
 
/*
 The implication with a fixed delay on the consequent

module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##2 b;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
  The implication with a sequence as an antecedent

module asertion_ex;
  bit clk,a,b,c,d;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  sequence seq_1;
    (a && b) ##1 c;
  endsequence

  sequence seq_2;
    ##2 !d;
  endsequence

  property p;
    @(posedge clk) seq_1 |-> seq_2;
  endproperty
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/

 
 
/*
 Timing windows in SVA Checkers

module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##[1:4] b;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
  Overlapping timing window

module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##[0:4] b;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
 Indefinite timing window

module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##[1:$] b;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
  SystemVerilog Repetition operators
module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##1 b[*3];
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
 go to repetition

module asertion_ex;
  bit clk,a,b,c;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##1 b[->3] ##1 c;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
 $past

module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) b |-> ($past(a,2) == 1);
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
 $past construct with clock gating

module asertion_ex;
  bit clk,a,b,c;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) b |-> ($past(a,2,c) == 1);
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
 disable iff

module asertion_ex;
  bit clk,a,b,c,reset;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
        a=1; b=1;
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) disable iff (reset) a |-> ##1 b[->3] ##1 c;
  endproperty
  
   calling assert property
  a_1: assert property(p);
    
   wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
*/
 
 
/*
 Variable delay in SVA


module asertion_variable_delay;
  bit clk,a,b;
  int cfg_delay;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
    cfg_delay = 4;
        a=1; b = 0;
    #15 a=0; b = 1;
    #10 a=1; 
    #10 a=0; b = 1;
    #10 a=1; b = 0;
    #10;
    $finish;
  end
  
   calling assert property
  a_1: assert property(@(posedge clk) a ##cfg_delay b);
    
   wave dump
   initial begin 
     $dumpfile("dump.vcd"); $dumpvars;
   end
endmodule 
*/
 
 
/*
 Below is one of the ways to implement the variable delay

module asertion_variable_delay;
  bit clk,a,b;
  int cfg_delay;
  
  always #5 clk = ~clk;  clock generation
  
   generating 'a'
  initial begin 
    cfg_delay = 4;
        a=1; b = 0;
    #15 a=0; b = 1;
    #10 a=1; 
    #10 a=0; b = 1;
    #10 a=1; b = 0;
    #10;
    $finish;
  end
  
   delay sequence
  sequence delay_seq(v_delay);
    int delay;
    (1,delay=v_delay) ##0 first_match((1,delay=delay-1) [*0:$] ##0 delay <=0);
  endsequence
  
   calling assert property
  a_1: assert property(@(posedge clk) a |-> delay_seq(cfg_delay) |-> b);
    
   wave dump
   initial begin 
     $dumpfile("dump.vcd"); $dumpvars;
   end
endmodule 
*/
 
 





 
 





 
 








 
 










 
 


 `define SNIPPET_2    Uncomment or define this to run Snippet 1
 
 `ifdef SNIPPET_1
 module assertion_example_1;
   bit clk, req1, req2;
 
   initial begin
     $dumpfile("waveform.vcd");
     $dumpvars(0, assertion_example_1);
 
     req1 = 0;
     req2 = 0;
 
     #4 req1 = 1;
     req2 = 1;
     #6 req1 = 0;
     #6 req2 = 0;
     #10 req1 = 1;
     #20 req2 = 1;
     #20; $finish;
   end
 
   always #2 clk = ~clk;
 
   sequence seqA;
     req1 ##5 req2;
   endsequence
 
   sequence seqB;
     req1 && req2;
   endsequence
 
   property prop;
     @(posedge clk) seqA |-> seqB;
   endproperty
 
   time_a: assert property(prop) $info("assertion passed"); else $error("assertion failed");
 endmodule
 `endif
 
 `ifdef SNIPPET_2
 module overlapping_implication_example;
   bit clk, req, ack;
 
   initial begin
     req = 0;
     ack = 0;
 
     #5 req = 1;
     #3 ack = 1;
     #7 req = 0;
     #4 ack = 0;
 
     #20 $finish;
   end
 
   always #2 clk = ~clk;
 
   sequence seqA;
     req ##2 ack;
   endsequence
 
   sequence seqB;
     req && ack;
   endsequence
 
   property prop;
     @(posedge clk) seqA |-> seqB;
   endproperty
 
   assert_prop: assert property(prop)
     else $fatal(0, "Overlapping implication failed at time %0t", $time);
 
   initial begin
     forever begin
       @(posedge clk);
       if (req && ack) begin
         $display("Assertion passed at time %0t", $time);
       end
     end
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_3
 module dff_tb;
   logic clk, rstn, d, q;
 
   dff dut (
       .clk(clk),
       .rstn(rstn),
       .d(d),
       .q(q)
   );
 
   always #5 clk = ~clk;
 
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(0, dff_tb);
 
     clk = 0; rstn = 0; d = 0;
     #10 rstn = 1;
     #10 d = 1;
     #10 d = 0;
     #10 rstn = 0;
     #10 rstn = 1;
     #10 d = 1;
     #10 d = 0;
     #20 $finish;
   end
 
   sequence seq_setup;
     rstn ##1 d;
   endsequence
 
   sequence seq_hold;
     d ##1 q;
   endsequence
 
   property check_setup;
     @(posedge clk) seq_setup |-> q;
   endproperty
 
   property check_hold;
     @(posedge clk) seq_hold |-> q;
   endproperty
 
   setup_check: assert property (check_setup) $info("Setup Assertion Passed"); else $error("Setup Assertion Failed");
   hold_check: assert property (check_hold) $info("Hold Assertion Passed"); else $error("Hold Assertion Failed");
 
   covergroup dff_coverage;
     coverpoint d;
     coverpoint q;
     coverpoint rstn;
     coverpoint clk;
   endgroup
 
   dff_coverage cov = new();
   always @(posedge clk) cov.sample();
 endmodule
 `endif
 
 `ifdef SNIPPET_4
 module DFF_tb;
   logic clk, rst_n, d, q;
 
   DFF dut (
       .clk(clk),
       .rst_n(rst_n),
       .d(d),
       .q(q)
   );
 
   initial begin
     clk = 0;
     forever #5 clk = ~clk;
   end
 
   initial begin
     rst_n = 0;
     d = 0;
     #10 rst_n = 1;
     repeat (20) begin
       d = $random % 2;
       #10;
     end
     $finish;
   end
 
   always @(posedge clk) begin
     if (rst_n == 0 && q !== 0)
       $error("Assertion FAILED: q should be 0 when rst_n is 0");
 
     if (rst_n == 1 && q !== d)
       $error("Assertion FAILED: q should follow d when rst_n is 1");
 
     `ifdef PRINT_ASSERTIONS_PASS
       if (rst_n == 0 && q === 0)
         $display("Assertion PASSED: Reset works correctly.");
 
       if (rst_n == 1 && q === d)
         $display("Assertion PASSED: DFF is functioning correctly.");
     `endif
   end
 
   covergroup cg;
     coverpoint d;
     coverpoint q;
     coverpoint rst_n;
   endgroup
 
   cg cov_inst = new();
 
   always @(posedge clk) begin
     cov_inst.sample();
   end
 
   initial begin
     $dumpfile("DFF_waveform.vcd");
     $dumpvars(0, DFF_tb);
   end
 
   final begin
     $display("Coverage Report:");
     $display("Coverage: %0.2f%%", $get_coverage());
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_5
 module tb_AsynDFF();
   reg data;
   reg clk;
   reg reset;
   wire q;
   dff_async_reset d1(.*);
 
   always #1 clk = ~clk;
 
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars;
     clk = 0;
     for(int i=0;i<16;i++) begin
       reset = $urandom_range(1);
       data = $urandom_range(1);
       #3 $display("time = %t, reset = %d, data = %b and q = %d", $realtime, reset, data, q);
     end
     $finish;
   end
 
   sequence seq1;
     ((reset==0) -> (q==0));
   endsequence
 
   RESET: assert property(@(posedge clk) seq1) $display("Assertion on RESET operation Passed");
   else $display("Assertion on RESET operation Failed");
 
   sequence seq2;
     ((reset==1) -> (q==data));
   endsequence
 
   DFF: assert property(@(posedge clk) seq2) $display("Assertion on DFF operation Passed");
   else $display("Assertion on DFF operation Failed");
 endmodule
 `endif
 
 `ifdef SNIPPET_6
 module tb;
   logic a, b;
   logic clk;
 
   `define neg @(negedge clk)
 
   always #5 clk = ~clk;
 
   initial begin
     clk = 0;
     a = 1; b = 0;
     `neg;
     a = 0; b = 1;
     repeat(2) `neg;
     a = 1; b = 1;
     `neg;
     a = 0; b = 0;
     `neg;
     $finish;
   end
 
   initial begin
     assert property (@(posedge clk) ((a && !b) ##1 (!a && b)) |=> ($rose(a) && b) ##1 (a && b) ##1 (!a && !b))
     begin
       $display("Assertion passed");
     end
     else begin
       $display("Assertion failed");
     end
   end
 
   initial begin
     $dumpfile("file1.vcd");
     $dumpvars();
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_7
 module reverse_array;
   int arr[] = '{1, 2, 3, 4, 5};
   int rev[$];
 
   initial begin
     foreach (arr[i]) rev.insert(0, arr[i]);
     $display("Original: %p, Reversed: %p", arr, rev);
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_8
 module assertion_ex;
   bit clk, a, b;
 
   always #5 clk = ~clk;
 
   initial begin
     clk = 0;
     a = 1; b = 1;
     #15 a = 0; b = 0;
     #10 a = 1; b = 0;
     #10 a = 0; b = 0;
     #10 a = 1; b = 1;
     #10;
     $finish;
   end
 
   property p;
     @(posedge clk) a |-> b;
   endproperty
 
   initial begin
     assert property (p)
       $display("Time %0t: Assertion Passed", $time);
     else
       $error("Time %0t: Assertion Failed", $time);
   end
 
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars;
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_9
 module assertion_ex_non_overlap;
   bit clk, a, b;
 
   always #5 clk = ~clk;
 
   initial begin
     clk = 0;
     a = 1; b = 1;
     #15 a = 0; b = 0;
     #10 a = 1; b = 0;
     #10 a = 0; b = 0;
     #10 a = 1; b = 1;
     #10;
     $finish;
   end
 
   property p;
     @(posedge clk) (a == 1) |=> (b == 1);
   endproperty
 
   always @(posedge clk) begin
     $display("Time %0t: a=%b, b=%b", $time, a, b);
     if (a) begin
       if (b == 1) begin
         $display("Time %0t: Assertion Passed", $time);
       end else begin
         $display("Time %0t: Assertion Failed", $time);
       end
       assert property (p);
     end
   end
 
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars;
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_10
 module tb_system_functions;
   logic clk;
   logic reset;
   logic [3:0] signal;
   logic flag;
 
   always #5 clk = ~clk;
 
   initial begin
     clk = 0;
     reset = 1;
     signal = 4'b0000;
     flag = 0;
 
     #10 reset = 0;
     #10 flag = 1;
     #10 flag = 0;
     #10 flag = 1;
     #10 $finish;
   end
 
   property p_rose;
     @(posedge clk) $rose(flag);
   endproperty
 
   a_rose: assert property (p_rose)
     else $error("ERROR: Rising edge NOT detected at %0t", $time);
 endmodule
 `endif
 
 `ifdef SNIPPET_11
 module assertion_example_timing;
   bit clk, req1, req2;
 
   always #2 clk = ~clk;
 
   sequence seq;
     req1 ##5 req2;
   endsequence
 
   property prop;
     @(posedge clk) seq;
   endproperty
 
   time_a: assert property(prop);
 
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars;
 
     req1 = 0;
     req2 = 0;
 
     #4 req1 = 1;
     req2 = 1;
     #6 req1 = 0;
     #6 req2 = 0;
     #10 req1 = 1;
     #20 req2 = 1;
     #20; $finish;
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_12
 module assertion_example_logical;
   bit clk, req1, req2;
 
   always #2 clk = ~clk;
 
   sequence seq;
     req1 && req2;
   endsequence
 
   property prop;
     @(posedge clk) seq;
   endproperty
 
   logical_exp: assert property(prop);
 
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars;
 
     req1 = 0;
     req2 = 0;
 
     #4 req1 = 1;
     req2 = 1;
     #6 req1 = 0;
     #6 req2 = 0;
     #10 req1 = 1;
     #20 req2 = 1;
     #20; $finish;
   end
 endmodule
 `endif
 
 `ifdef SNIPPET_13
 module assertion_example_multiple;
   bit clk, req1, req2;
 
   initial begin
     req1 = 0;
     req2 = 0;
 
     #4 req1 = 1;
     req2 = 1;
     #6 req1 = 0;
     #6 req2 = 0;
     #10 req1 = 1;
     #20 req2 = 1;
     #20; $finish;
   end
 
   always #2 clk = ~clk;
 
   sequence seqA;
     req1 ##5 req2;
   endsequence
 
   sequence seqB;
     req1 && req2;
   endsequence
 
   property prop;
     @(posedge clk) seqA |-> seqB;
   endproperty
 
   time_a: assert property(prop) $info("assertion passed"); else $error("assertion failed");
 endmodule
 `endif
 
 `ifdef SNIPPET_14
 module assertion_example_2;
   bit clk, req1, req2;
 
   initial begin
     $fsdbDumpfile("dump.fsdb");
     $fsdbDumpvars(0, assertion_example_2);
     $fsdbDumpSVA();
 
     req1 = 0;
     req2 = 0;
 
     #4 req1 = 1;
     req2 = 1;
     #6 req1 = 0;
     #6 req2 = 0;
     #10 req1 = 1;
     #20 req2 = 1;
     #20; $finish;
   end
 
   always #2 clk = ~clk;
 
   sequence seqA;
     req1 ##3 req2;
   endsequence
 
   sequence seqB;
     req1 && req2;
   endsequence
 
   property prop;
     @(posedge clk) seqA |-> seqB;
   endproperty
 
   time_a: assert property(prop) $info("assertion passed"); else $error("assertion failed");
 endmodule
 `endif