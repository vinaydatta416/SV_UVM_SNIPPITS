/*

//-------------------------------------------------------------
// Q1: Basic event trigger
//-------------------------------------------------------------
module q1;
  event e;
  initial begin
    -> e;
    $display("Q1 -> Event triggered");
  end
endmodule


//-------------------------------------------------------------
// Q2: Wait for event
//-------------------------------------------------------------
module q2;
  event e;
  initial begin
    fork
      begin
        #5 -> e;
        $display("Q2 -> Event triggered");
      end
      begin
        @e;
        $display("Q2 -> Event caught");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q3: Multiple event triggers
//-------------------------------------------------------------
module q3;
  event e;
  initial begin
    fork
      begin
        repeat(3) begin
          #3 -> e;
          $display("Q3 -> Event fired");
        end
      end
      begin
        repeat(3) begin
          @e;
          $display("Q3 -> Event detected");
        end
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q4: Named event wait in block
//-------------------------------------------------------------
module q4;
  event e1;
  initial begin
    fork
      begin
        #5 -> e1;
        $display("Q4 -> e1 fired");
      end
      begin
        @e1;
        $display("Q4 -> e1 caught");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q5: Using wait(e.triggered)
 //-------------------------------------------------------------
module q5;
  event e;
  initial begin
    fork
      begin
        #4 -> e;
        $display("Q5 -> Event fired");
      end
      begin
        wait(e.triggered);
        $display("Q5 -> Event seen");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q6: Multiple events waiting
//-------------------------------------------------------------
module q6;
  event a,b;
  initial begin
    fork
      begin
        #5 -> a;
        #8 -> b;
      end
      begin
        @a;
        $display("Q6 -> a triggered");
        @b;
        $display("Q6 -> b triggered");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q7: Trigger event inside loop
//-------------------------------------------------------------
module q7;
  event e;
  initial begin
    repeat(3) begin
      #2 -> e;
      $display("Q7 -> Event fired");
    end
  end
endmodule


//-------------------------------------------------------------
// Q8: Trigger event with delay
//-------------------------------------------------------------
module q8;
  event e;
  initial begin
    fork
      begin
        #10 -> e;
      end
      begin
        @e;
        $display("Q8 -> Event caught after delay");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q9: Trigger event inside task
//-------------------------------------------------------------
module q9;
  event e;
  task trigger_task;
    -> e;
  endtask
  initial begin
    trigger_task();
    @e;
    $display("Q9 -> Event detected");
  end
endmodule


//-------------------------------------------------------------
// Q10: Wait for event in task
//-------------------------------------------------------------
module q10;
  event e;
  task wait_event;
    @e;
    $display("Q10 -> Event caught");
  endtask
  initial begin
    fork
      wait_event();
      begin
        #5 -> e;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q11: Multiple processes waiting for same event
//-------------------------------------------------------------
module q11;
  event e;
  initial begin
    fork
      begin
        @e; $display("Q11 -> P1 caught");
      end
      begin
        @e; $display("Q11 -> P2 caught");
      end
      begin
        #5 -> e;
        $display("Q11 -> Event fired");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q12: Event trigger using loop index
//-------------------------------------------------------------
module q12;
  event e;
  initial begin
    for(int i=0;i<3;i++) begin
      #2 -> e;
      $display("Q12 -> Fired %0d", i);
    end
  end
endmodule


//-------------------------------------------------------------
// Q13: Using disable fork with events
//-------------------------------------------------------------
module q13;
  event e;
  initial begin
    fork
      begin
        #5 -> e;
      end
      begin
        @e; $display("Q13 -> caught");
        disable fork;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q14: Event in always block
//-------------------------------------------------------------
module q14;
  event e;
  always begin
    #3 -> e;
  end
  initial begin
    repeat(3) @e;
    $display("Q14 -> 3 events observed");
    $finish;
  end
endmodule


//-------------------------------------------------------------
// Q15: Wait for multiple triggers
//-------------------------------------------------------------
module q15;
  event e;
  initial begin
    fork
      begin
        repeat(3) #2 -> e;
      end
      begin
        repeat(3) @e;
        $display("Q15 -> All events caught");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q16: Nested event triggering
//-------------------------------------------------------------
module q16;
  event e1, e2;
  initial begin
    fork
      begin
        @e1; -> e2;
      end
      begin
        #5 -> e1;
      end
      begin
        @e2; $display("Q16 -> e2 fired");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q17: Wait for event twice
//-------------------------------------------------------------
module q17;
  event e;
  initial begin
    fork
      begin
        repeat(2) #3 -> e;
      end
      begin
        repeat(2) @e;
        $display("Q17 -> Done twice");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q18: Using event as handshake
//-------------------------------------------------------------
module q18;
  event req, ack;
  initial begin
    fork
      begin
        #5 -> req;
        @ack;
        $display("Q18 -> Handshake done");
      end
      begin
        @req;
        -> ack;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q19: Re-triggering same event
//-------------------------------------------------------------
module q19;
  event e;
  initial begin
    repeat(3) begin
      #2 -> e;
      @e;
      $display("Q19 -> cycle done");
    end
  end
endmodule


//-------------------------------------------------------------
// Q20: Event inside class
//-------------------------------------------------------------
class ev_class;
  event e;
  task trigger;
    -> e;
  endtask
endclass

module q20;
  ev_class c = new();
  initial begin
    fork
      begin
        @c.e;
        $display("Q20 -> caught");
      end
      c.trigger();
    join
  end
endmodule


//-------------------------------------------------------------
// Q21: Using ->> to queue event
//-------------------------------------------------------------
module q21;
  event e;
  initial begin
    fork
      begin
        #3 ->> e;
        $display("Q21 -> Event queued");
      end
      begin
        @e;
        $display("Q21 -> Event observed");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q22: Wait fork and events
//-------------------------------------------------------------
module q22;
  event e;
  initial begin
    fork
      begin #4 -> e; end
      begin @e; $display("Q22 -> caught"); end
    join_none
    wait fork;
  end
endmodule


//-------------------------------------------------------------
// Q23: Disable fork before trigger
//-------------------------------------------------------------
module q23;
  event e;
  initial begin
    fork
      begin
        @e; $display("Q23 -> never triggered");
      end
      begin
        disable fork;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q24: Reuse same event variable
//-------------------------------------------------------------
module q24;
  event e;
  initial begin
    -> e;
    -> e;
    @e; $display("Q24 -> caught");
  end
endmodule


//-------------------------------------------------------------
// Q25: Conditional event trigger
//-------------------------------------------------------------
module q25;
  event e;
  bit cond = 1;
  initial begin
    if(cond) -> e;
    @e; $display("Q25 -> triggered due to condition");
  end
endmodule


//-------------------------------------------------------------
// Q26: Event wait inside forever
//-------------------------------------------------------------
module q26;
  event e;
  initial fork
    forever begin
      @e;
      $display("Q26 -> Event loop");
    end
    begin
      repeat(3) #3 -> e;
    end
  join
endmodule


//-------------------------------------------------------------
// Q27: Wait for multiple events sequentially
//-------------------------------------------------------------
module q27;
  event a,b;
  initial begin
    fork
      begin
        #2 -> a;
        #4 -> b;
      end
      begin
        @a; @b; $display("Q27 -> Both done");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q28: Use wait_order for event sequence
//-------------------------------------------------------------
module q28;
  event a,b;
  initial begin
    fork
      begin
        wait_order(a,b) $display("Q28 -> a then b");
      end
      begin
        -> a; #2 -> b;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q29: Wait_order reversed
//-------------------------------------------------------------
module q29;
  event a,b;
  initial begin
    fork
      begin
        wait_order(b,a) $display("Q29 -> b then a");
      end
      begin
        -> b; #1 -> a;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q30: Event and delay mix
//-------------------------------------------------------------
module q30;
  event e;
  initial begin
    #2 -> e;
    #1 @e;
    $display("Q30 -> caught after delay");
  end
endmodule


//-------------------------------------------------------------
// Q31: Event in class task
//-------------------------------------------------------------
class ev_task;
  event e;
  task run;
    fork
      begin @e; $display("Q31 -> event seen"); end
      begin #5 -> e; end
    join
  endtask
endclass

module q31;
  ev_task t = new();
  initial t.run();
endmodule


//-------------------------------------------------------------
// Q32: Trigger event in always block
//-------------------------------------------------------------
module q32;
  event e;
  bit clk;
  always #2 clk = ~clk;
  always @(posedge clk) -> e;
  initial begin
    repeat(3) @e;
    $display("Q32 -> 3 posedges caught");
  end
endmodule


//-------------------------------------------------------------
// Q33: Multiple events in parallel fork
//-------------------------------------------------------------
module q33;
  event e1,e2;
  initial begin
    fork
      #2 -> e1;
      #4 -> e2;
      begin @e1; $display("Q33 -> e1"); end
      begin @e2; $display("Q33 -> e2"); end
    join
  end
endmodule


//-------------------------------------------------------------
// Q34: Event assigned between instances
//-------------------------------------------------------------
module q34;
  event e;
  q34_sub s(e);
endmodule

module q34_sub(event e);
  initial begin
    #2 -> e;
    @e; $display("Q34 -> shared event");
  end
endmodule


//-------------------------------------------------------------
// Q35: Wait for event and variable
//-------------------------------------------------------------
module q35;
  event e;
  bit done;
  initial begin
    fork
      begin
        #3 -> e;
      end
      begin
        @e; done=1;
      end
    join
    $display("Q35 -> done=%0b",done);
  end
endmodule


//-------------------------------------------------------------
// Q36: Repeated event with count
//-------------------------------------------------------------
module q36;
  event e;
  int cnt;
  initial begin
    fork
      begin
        repeat(3) #2 -> e;
      end
      begin
        forever begin
          @e;
          cnt++;
          $display("Q36 -> count=%0d",cnt);
          if(cnt==3) disable fork;
        end
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q37: Trigger event with variable time
//-------------------------------------------------------------
module q37;
  event e;
  int delay=5;
  initial begin
    #delay -> e;
    @e;
    $display("Q37 -> after delay=%0d",delay);
  end
endmodule


//-------------------------------------------------------------
// Q38: Use of ->> for postponed event
//-------------------------------------------------------------
module q38;
  event e;
  initial begin
    fork
      begin
        #2 ->> e;
      end
      begin
        @e;
        $display("Q38 -> caught queued event");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q39: Using multiple events inside class
//-------------------------------------------------------------
class ev_multi;
  event e1,e2;
endclass

module q39;
  ev_multi c = new();
  initial begin
    fork
      -> c.e1;
      @c.e1 $display("Q39 -> e1");
    join
  end
endmodule


//-------------------------------------------------------------
// Q40: Simple trigger using fork-join_none
//-------------------------------------------------------------
module q40;
  event e;
  initial begin
    fork
      #3 -> e;
      @e $display("Q40 -> caught");
    join_none
    #10;
  end
endmodule


//-------------------------------------------------------------
// Q41: Event with if-else condition
//-------------------------------------------------------------
module q41;
  event e;
  bit flag=1;
  initial begin
    if(flag) -> e; else $display("Q41 -> not fired");
    @e; $display("Q41 -> event happened");
  end
endmodule


//-------------------------------------------------------------
// Q42: Event in generate block
//-------------------------------------------------------------
module q42;
  event e;
  genvar i;
  generate
    for(i=0;i<2;i++) begin : blk
      initial begin
        #i -> e;
        @e; $display("Q42 -> gen[%0d]",i);
      end
    end
  endgenerate
endmodule


//-------------------------------------------------------------
// Q43: Wait for any of two events
//-------------------------------------------------------------
module q43;
  event a,b;
  initial begin
    fork
      begin #3 -> a; end
      begin #4 -> b; end
      begin
        fork
          @a $display("Q43 -> a");
          @b $display("Q43 -> b");
        join_any
        disable fork;
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q44: Trigger event using forever loop
//-------------------------------------------------------------
module q44;
  event e;
  initial fork
    forever begin
      #2 -> e;
    end
    begin
      repeat(3) @e;
      $display("Q44 -> 3 triggers done");
      disable fork;
    end
  join
endmodule


//-------------------------------------------------------------
// Q45: Event chain trigger
//-------------------------------------------------------------
module q45;
  event a,b,c;
  initial begin
    fork
      begin @a; -> b; end
      begin @b; -> c; end
      begin #2 -> a; end
      begin @c; $display("Q45 -> chain complete"); end
    join
  end
endmodule


//-------------------------------------------------------------
// Q46: Using event in task chain
//-------------------------------------------------------------
module q46;
  event e;
  task t1; #2 -> e; endtask
  task t2; @e; $display("Q46 -> done"); endtask
  initial begin
    fork
      t1();
      t2();
    join
  end
endmodule


//-------------------------------------------------------------
// Q47: Event scope example
//-------------------------------------------------------------
module q47;
  event e;
  initial begin
    fork
      begin
        automatic event e;
        #2 -> e;
      end
      begin
        @e; $display("Q47 -> global event caught");
      end
    join
  end
endmodule


//-------------------------------------------------------------
// Q48: Reassign event handle
//-------------------------------------------------------------
module q48;
  event e1, e2;
  initial begin
    e1 = e2;
    -> e1;
    @e2;
    $display("Q48 -> event reassigned");
  end
endmodule


//-------------------------------------------------------------
// Q49: Event as barrier
//-------------------------------------------------------------
module q49;
  event e;
  int cnt;
  initial begin
    fork
      begin #3 -> e; end
      begin @e; cnt++; $display("Q49 -> step1"); end
      begin @e; cnt++; $display("Q49 -> step2"); end
    join
  end
endmodule


//-------------------------------------------------------------
// Q50: Final event example
//-------------------------------------------------------------
module q50;
  event e;
  initial begin
    fork
      begin #2 -> e; end
      begin @e; $display("Q50 -> done"); end
    join
  end
endmodule
*/