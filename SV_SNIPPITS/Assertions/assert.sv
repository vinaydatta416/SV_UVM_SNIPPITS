//-------------------------------------------------------------
// Q1: Basic immediate assertion pass
//-------------------------------------------------------------
/*
module q1;
  int a=5;
  initial begin
    assert(a==5) 
    $display("Q1 -> PASS");
    else
    $display("Q1 -> FAIL");
  end
endmodule
*/

//-------------------------------------------------------------
// Q2: Immediate assertion fail
//-------------------------------------------------------------
/*
module q2;
  int a=3;
  initial begin
    assert(a==5) 
    $display("Q2 -> PASS"); 
    else 
    $display("Q2 -> FAIL");
  end
endmodule
*/

//-------------------------------------------------------------
// Q3: Concurrent assertion pass
//-------------------------------------------------------------
/*
module q3;
  logic clk,a,b;
  property p1;
  @(posedge clk) a |-> b; 
  endproperty
  
  assert property(p1) 
  $display("Q3 -> PASS"); 
  else
  $display("Q3 -> FAIL");
  
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q4: Concurrent assertion fail
//-------------------------------------------------------------
/*
module q4;
  logic clk,a,b;
  property p1;
  @(posedge clk) a |-> b;
  endproperty
  
  assert property(p1)
  $display("Q4 -> PASS");
  else 
  $display("Q4 -> FAIL");
  
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;b=0;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q5: disable iff usage
//-------------------------------------------------------------
/*
module q5;
  logic clk,rst,a,b;
  property p1;
  @(posedge clk) disable iff(rst) a |-> b; 
  endproperty
  
  assert property(p1) $display("Q5 -> PASS");
  else
  $display("Q5 -> FAIL");
  
  initial begin
    clk=0; rst=1; a=1; b=0;
    #5 rst=0; a=1; b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q6: Implication ##1 delay pass
//-------------------------------------------------------------
/*
module q6;
  logic clk,a,b;
  property p1;
  @(posedge clk) a |=> ##1 b; 
  endproperty
  
  assert property(p1) 
  $display("Q6 -> PASS");
  else 
  $display("Q6 -> FAIL");
  
  initial begin
    clk=0;a=0;b=0;
    #5 a=1; #10 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q7: Implication ##1 fail
//-------------------------------------------------------------
/*
module q7;
  logic clk,a,b;
  property p1;
  @(posedge clk) a |=> ##1 b; 
  endproperty
  assert property(p1) $display("Q7 -> PASS"); 
  else
  $display("Q7 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1; #15 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q8: Sequence with consecutive 1's
//-------------------------------------------------------------
/*
module q8;
  logic clk, a;
  property p1;
  @(posedge clk) a[*2]; 
  endproperty
  assert property(p1) $display("Q8 -> PASS"); 
  else 
  $display("Q8 -> FAIL");
  initial begin
    clk=0;a=0;
    #5 a=1; #10 a=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q9: Overlapping implication
//-------------------------------------------------------------
/*
module q9;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##[1:2] b; endproperty
  assert property(p1) $display("Q9 -> PASS"); else $display("Q9 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1; #10 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q10: Sequence non-overlapping
//-------------------------------------------------------------
/*
module q10;
  logic clk,a,b;
  property p1; @(posedge clk) a ##1 b; endproperty
  assert property(p1) $display("Q10 -> PASS"); else $display("Q10 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1; #10 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q11: Within operator usage
//-------------------------------------------------------------
/*
module q11;
  logic clk,a,b;
  
  property p1;
    @(posedge clk) a |-> (b within [1:3]); 
  endproperty
  
  assert property(p1) $display("Q11 -> PASS");
    else
      $display("Q11 -> FAIL");
    
  initial begin
    clk=0;a=0;b=0;
    #5 a=1; #10 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q12: Abort sequence using disable iff
//-------------------------------------------------------------
/*
module q12;
  logic clk,rst,a,b;
  property p1; @(posedge clk) disable iff(rst) (a ##1 b); endproperty
  assert property(p1) $display("Q12 -> PASS"); else $display("Q12 -> FAIL");
  initial begin
    clk=0; rst=1; a=1; b=1;
    #5 rst=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q13: Assertion on always true condition
//-------------------------------------------------------------
/*
module q13;
  logic clk;
  property p1; @(posedge clk) 1; endproperty
  assert property(p1) $display("Q13 -> PASS"); else $display("Q13 -> FAIL");
  initial begin clk=0; repeat(5) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q14: Assertion on always false condition
//-------------------------------------------------------------
/*
module q14;
  logic clk;
  property p1; @(posedge clk) 0; endproperty
  assert property(p1) $display("Q14 -> PASS"); else $display("Q14 -> FAIL");
  initial begin clk=0; repeat(5) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q15: Implication chain pass
//-------------------------------------------------------------
/*
module q15;
  logic clk,a,b,c;
  property p1; @(posedge clk) (a |-> b |-> c); endproperty
  assert property(p1) $display("Q15 -> PASS"); else $display("Q15 -> FAIL");
  initial begin
    clk=0;a=1;b=1;c=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q16: Implication chain fail
//-------------------------------------------------------------
/*
module q16;
  logic clk,a,b,c;
  property p1; @(posedge clk) (a |-> b |-> c); endproperty
  assert property(p1) $display("Q16 -> PASS"); else $display("Q16 -> FAIL");
  initial begin
    clk=0;a=1;b=0;c=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q17: Assertion inside always block
//-------------------------------------------------------------
/*
module q17;
  logic clk,a;
  initial clk=0;
  always #5 clk=~clk;
  always @(posedge clk)
    assert(a==1) $display("Q17 -> PASS"); else $display("Q17 -> FAIL");
  initial begin a=0; #15 a=1; #30 $finish; end
endmodule
*/

//-------------------------------------------------------------
// Q18: Sequence with repetition
//-------------------------------------------------------------
/*
module q18;
  logic clk,a;
  property p1; @(posedge clk) a[*3]; endproperty
  assert property(p1) $display("Q18 -> PASS"); else $display("Q18 -> FAIL");
  initial begin clk=0;a=1; repeat(6) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q19: Event trigger property
//-------------------------------------------------------------
/*
module q19;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> b; endproperty
  assert property(p1) $display("Q19 -> PASS"); else $display("Q19 -> FAIL");
  initial begin clk=0;a=1;b=1; repeat(5) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q20: Simple sequence pass
//-------------------------------------------------------------
/*
module q20;
  logic clk,a,b;
  property p1; @(posedge clk) (a ##1 b); endproperty
  assert property(p1) $display("Q20 -> PASS"); else $display("Q20 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #10 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q21: Simple sequence fail
//-------------------------------------------------------------
/*
module q21;
  logic clk,a,b;
  property p1; @(posedge clk) (a ##1 b); endproperty
  assert property(p1) $display("Q21 -> PASS"); else $display("Q21 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #30 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q22: Immediate assertion in always block
//-------------------------------------------------------------
/*
module q22;
  logic clk,a;
  initial clk=0;
  always #5 clk=~clk;
  always @(posedge clk)
    assert(a) $display("Q22 -> PASS"); else $display("Q22 -> FAIL");
  initial begin a=0; #15 a=1; #30 $finish; end
endmodule
*/

//-------------------------------------------------------------
// Q23: Assertion using sequence range
//-------------------------------------------------------------
/*
module q23;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##[1:3] b; endproperty
  assert property(p1) $display("Q23 -> PASS"); else $display("Q23 -> FAIL");
  initial begin clk=0;a=1;b=0; #10 b=1; repeat(5) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q24: Assertion property with disable condition
//-------------------------------------------------------------
/*
module q24;
  logic clk,rst,a,b;
  property p1; @(posedge clk) disable iff(rst) a |-> b; endproperty
  assert property(p1) $display("Q24 -> PASS"); else $display("Q24 -> FAIL");
  initial begin clk=0; rst=1; a=1;b=0; #5 rst=0;b=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q25: Consecutive repetition range
//-------------------------------------------------------------
/*
module q25;
  logic clk,a;
  property p1; @(posedge clk) a[*1:3]; endproperty
  assert property(p1) $display("Q25 -> PASS"); else $display("Q25 -> FAIL");
  initial begin clk=0;a=1; repeat(5) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q26: Assertion for rising edge
//-------------------------------------------------------------
/*
module q26;
  logic clk,sig;
  property p1; @(posedge clk) $rose(sig); endproperty
  assert property(p1) $display("Q26 -> PASS"); else $display("Q26 -> FAIL");
  initial begin clk=0; sig=0; #10 sig=1; repeat(5) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q27: Assertion for falling edge
//-------------------------------------------------------------
/*
module q27;
  logic clk,sig;
  property p1; @(posedge clk) $fell(sig); endproperty
  assert property(p1) $display("Q27 -> PASS"); else $display("Q27 -> FAIL");
  initial begin clk=0; sig=1; #10 sig=0; repeat(5) #5 clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q28: Stable signal assertion
//-------------------------------------------------------------
/*
module q28;
  logic clk,a;
  property p1; @(posedge clk) $stable(a); endproperty
  assert property(p1) $display("Q28 -> PASS"); else $display("Q28 -> FAIL");
  initial begin clk=0;a=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q29: Change signal assertion
//-------------------------------------------------------------
/*
module q29;
  logic clk,a;
  property p1; @(posedge clk) !$stable(a); endproperty
  assert property(p1) $display("Q29 -> PASS"); else $display("Q29 -> FAIL");
  initial begin clk=0;a=0; #10 a=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q30: Always true property
//-------------------------------------------------------------
/*
module q30;
  logic clk;
  property p1; @(posedge clk) 1; endproperty
  assert property(p1) $display("Q30 -> PASS"); else $display("Q30 -> FAIL");
  initial begin clk=0; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q31: Always false property
//-------------------------------------------------------------
/*
module q31;
  logic clk;
  property p1; @(posedge clk) 0; endproperty
  assert property(p1) $display("Q31 -> PASS"); else $display("Q31 -> FAIL");
  initial begin clk=0; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q32: Assertion with logical and
//-------------------------------------------------------------
/*
module q32;
  logic clk,a,b;
  property p1; @(posedge clk) a && b; endproperty
  assert property(p1) $display("Q32 -> PASS"); else $display("Q32 -> FAIL");
  initial begin clk=0;a=1;b=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q33: Assertion with logical or
//-------------------------------------------------------------
/*
module q33;
  logic clk,a,b;
  property p1; @(posedge clk) a || b; endproperty
  assert property(p1) $display("Q33 -> PASS"); else $display("Q33 -> FAIL");
  initial begin clk=0;a=0;b=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q34: Assertion using not
//-------------------------------------------------------------
/*
module q34;
  logic clk,a;
  property p1; @(posedge clk) !a; endproperty
  assert property(p1) $display("Q34 -> PASS"); else $display("Q34 -> FAIL");
  initial begin clk=0;a=0; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q35: Property true after few cycles
//-------------------------------------------------------------
/*
module q35;
  logic clk,a;
  property p1; @(posedge clk) ##2 a; endproperty
  assert property(p1) $display("Q35 -> PASS"); else $display("Q35 -> FAIL");
  initial begin clk=0;a=0; #15 a=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q36: Property fail if delay missed
//-------------------------------------------------------------
/*
module q36;
  logic clk,a;
  property p1; @(posedge clk) ##1 a; endproperty
  assert property(p1) $display("Q36 -> PASS"); else $display("Q36 -> FAIL");
  initial begin clk=0;a=0; #15 a=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q37: Property with implication and delay
//-------------------------------------------------------------
/*
module q37;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> ##2 b; endproperty
  assert property(p1) $display("Q37 -> PASS"); else $display("Q37 -> FAIL");
  initial begin clk=0;a=1; #10 b=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q38: Assertion using throughout
//-------------------------------------------------------------
/*
module q38;
  logic clk,a,b;
  property p1; @(posedge clk) a throughout b; endproperty
  assert property(p1) $display("Q38 -> PASS"); else $display("Q38 -> FAIL");
  initial begin clk=0;a=1;b=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q39: Assertion with until
//-------------------------------------------------------------
/*
module q39;
  logic clk,a,b;
  property p1; @(posedge clk) a until b; endproperty
  assert property(p1) $display("Q39 -> PASS"); else $display("Q39 -> FAIL");
  initial begin clk=0;a=1;b=0; #15 b=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q40: Assertion with until_with
//-------------------------------------------------------------
/*
module q40;
  logic clk,a,b;
  property p1; @(posedge clk) a until_with b; endproperty
  assert property(p1) $display("Q40 -> PASS"); else $display("Q40 -> FAIL");
  initial begin clk=0;a=1;b=0; #10 b=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q41: Assertion on bit toggle
//-------------------------------------------------------------
/*
module q41;
  logic clk,a;
  property p1; @(posedge clk) $changed(a); endproperty
  assert property(p1) $display("Q41 -> PASS"); else $display("Q41 -> FAIL");
  initial begin clk=0;a=0; #10 a=1; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q42: Assertion false scenario
//-------------------------------------------------------------
/*
module q42;
  logic clk,a;
  property p1; @(posedge clk) a; endproperty
  assert property(p1) $display("Q42 -> PASS"); else $display("Q42 -> FAIL");
  initial begin clk=0;a=0; repeat(5)#5clk=~clk; end
endmodule
*/

//-------------------------------------------------------------
// Q43: Simple immediate assertion pass
//-------------------------------------------------------------
/*
module q43;
  int a=5;
  initial begin
    assert(a==5) $display("Q43 -> PASS"); else $display("Q43 -> FAIL");
  end
endmodule
*/

//-------------------------------------------------------------
// Q44: Simple immediate assertion fail
//-------------------------------------------------------------
/*
module q44;
  int a=3;
  initial begin
    assert(a==5) $display("Q44 -> PASS"); else $display("Q44 -> FAIL");
  end
endmodule
*/

//-------------------------------------------------------------
// Q45: Concurrent assertion simple property pass
//-------------------------------------------------------------
/*
module q45;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> b; endproperty
  assert property(p1) $display("Q45 -> PASS"); else $display("Q45 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q46: Concurrent assertion fail
//-------------------------------------------------------------
/*
module q46;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> b; endproperty
  assert property(p1) $display("Q46 -> PASS"); else $display("Q46 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;b=0;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q47: Assertion with disable iff reset
//-------------------------------------------------------------
/*
module q47;
  logic clk,rst,a,b;
  property p1; @(posedge clk) disable iff(rst) a |-> b; endproperty
  assert property(p1) $display("Q47 -> PASS"); else $display("Q47 -> FAIL");
  initial begin
    clk=0;rst=1;a=1;b=0;
    #5 rst=0;a=1;b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q48: Assertion using implication ##1 pass
//-------------------------------------------------------------
/*
module q48;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> ##1 b; endproperty
  assert property(p1) $display("Q48 -> PASS"); else $display("Q48 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;
    #10 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q49: Assertion using implication ##1 fail
//-------------------------------------------------------------
/*
module q49;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> ##1 b; endproperty
  assert property(p1) $display("Q49 -> PASS"); else $display("Q49 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;
    #20 b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q50: Assertion using sequence with repetition
//-------------------------------------------------------------
/*
module q50;
  logic clk,a,b;
  sequence s1; a ##1 a ##1 b; endsequence
  property p1; @(posedge clk) s1; endproperty
  assert property(p1) $display("Q50 -> PASS"); else $display("Q50 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;
    #10 a=1;
    #15 b=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q51: Assertion checking signal high for 3 cycles
//-------------------------------------------------------------
/*
module q51;
  logic clk,sig;
  property p1; @(posedge clk) sig[*3]; endproperty
  assert property(p1) $display("Q51 -> PASS"); else $display("Q51 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q52: Assertion checking signal low for 2 cycles fail
//-------------------------------------------------------------
/*
module q52;
  logic clk,sig;
  property p1; @(posedge clk) !sig[*2]; endproperty
  assert property(p1) $display("Q52 -> PASS"); else $display("Q52 -> FAIL");
  initial begin
    clk=0;sig=0;
    #5 sig=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q53: Assertion for signal toggling
//-------------------------------------------------------------
/*
module q53;
  logic clk,sig;
  property p1; @(posedge clk) sig |-> !sig; endproperty
  assert property(p1) $display("Q53 -> PASS"); else $display("Q53 -> FAIL");
  initial begin
    clk=0;sig=0;
    #5 sig=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q54: Assertion for signal stable for 2 cycles
//-------------------------------------------------------------
/*
module q54;
  logic clk,sig;
  property p1; @(posedge clk) $stable(sig)[*2]; endproperty
  assert property(p1) $display("Q54 -> PASS"); else $display("Q54 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q55: Assertion with overlapped implication
//-------------------------------------------------------------
/*
module q55;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> b; endproperty
  assert property(p1) $display("Q55 -> PASS"); else $display("Q55 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q56: Assertion with non-overlapped implication fail
//-------------------------------------------------------------
/*
module q56;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> b; endproperty
  assert property(p1) $display("Q56 -> PASS"); else $display("Q56 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q57: Assertion check after delay ##2
//-------------------------------------------------------------
/*
module q57;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> ##2 b; endproperty
  assert property(p1) $display("Q57 -> PASS"); else $display("Q57 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #10 a=1;
    #20 b=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q58: Assertion checking rising edge
//-------------------------------------------------------------
/*
module q58;
  logic clk,sig;
  property p1; @(posedge clk) $rose(sig); endproperty
  assert property(p1) $display("Q58 -> PASS"); else $display("Q58 -> FAIL");
  initial begin
    clk=0;sig=0;
    #10 sig=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q59: Assertion checking falling edge fail
//-------------------------------------------------------------
/*
module q59;
  logic clk,sig;
  property p1; @(posedge clk) $fell(sig); endproperty
  assert property(p1) $display("Q59 -> PASS"); else $display("Q59 -> FAIL");
  initial begin
    clk=0;sig=1;
    #10 sig=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q60: Assertion checking value inside range
//-------------------------------------------------------------
/*
module q60;
  logic clk;
  int data=10;
  property p1; @(posedge clk) data inside {[5:15]}; endproperty
  assert property(p1) $display("Q60 -> PASS"); else $display("Q60 -> FAIL");
  initial begin
    clk=0;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q61: Check signal high within 2 cycles after trigger
//-------------------------------------------------------------
/*
module q61;
  logic clk,trig,sig;
  property p1; @(posedge clk) trig |-> ##[1:2] sig; endproperty
  assert property(p1) $display("Q61 -> PASS"); else $display("Q61 -> FAIL");
  initial begin
    clk=0;trig=0;sig=0;
    #5 trig=1; #10 sig=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q62: Fail when signal doesn’t go high in time window
//-------------------------------------------------------------
/*
module q62;
  logic clk,trig,sig;
  property p1; @(posedge clk) trig |-> ##[1:2] sig; endproperty
  assert property(p1) $display("Q62 -> PASS"); else $display("Q62 -> FAIL");
  initial begin
    clk=0;trig=1;sig=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q63: Check output valid after enable
//-------------------------------------------------------------
/*
module q63;
  logic clk,en,valid;
  property p1; @(posedge clk) en |=> ##1 valid; endproperty
  assert property(p1) $display("Q63 -> PASS"); else $display("Q63 -> FAIL");
  initial begin
    clk=0;en=0;valid=0;
    #5 en=1; #10 valid=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q64: Fail output not valid after enable
//-------------------------------------------------------------
/*
module q64;
  logic clk,en,valid;
  property p1; @(posedge clk) en |=> ##1 valid; endproperty
  assert property(p1) $display("Q64 -> PASS"); else $display("Q64 -> FAIL");
  initial begin
    clk=0;en=1;valid=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q65: Check request must be followed by grant
//-------------------------------------------------------------
/*
module q65;
  logic clk,req,gnt;
  property p1; @(posedge clk) req |-> ##1 gnt; endproperty
  assert property(p1) $display("Q65 -> PASS"); else $display("Q65 -> FAIL");
  initial begin
    clk=0;req=1;gnt=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q66: Request without grant fails
//-------------------------------------------------------------
/*
module q66;
  logic clk,req,gnt;
  property p1; @(posedge clk) req |-> ##1 gnt; endproperty
  assert property(p1) $display("Q66 -> PASS"); else $display("Q66 -> FAIL");
  initial begin
    clk=0;req=1;gnt=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q67: Signal should not toggle within 2 cycles
//-------------------------------------------------------------
/*
module q67;
  logic clk,sig;
  property p1; @(posedge clk) !$changed(sig)[*2]; endproperty
  assert property(p1) $display("Q67 -> PASS"); else $display("Q67 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q68: Fail signal changes early
//-------------------------------------------------------------
/*
module q68;
  logic clk,sig;
  property p1; @(posedge clk) !$changed(sig)[*3]; endproperty
  assert property(p1) $display("Q68 -> PASS"); else $display("Q68 -> FAIL");
  initial begin
    clk=0;sig=1;
    #5 sig=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q69: Check reset clears data
//-------------------------------------------------------------
/*
module q69;
  logic clk,rst; int data;
  property p1; @(posedge clk) rst |-> data==0; endproperty
  assert property(p1) $display("Q69 -> PASS"); else $display("Q69 -> FAIL");
  initial begin
    clk=0;rst=1;data=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q70: Fail reset didn’t clear data
//-------------------------------------------------------------
/*
module q70;
  logic clk,rst; int data;
  property p1; @(posedge clk) rst |-> data==0; endproperty
  assert property(p1) $display("Q70 -> PASS"); else $display("Q70 -> FAIL");
  initial begin
    clk=0;rst=1;data=5;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q71: Signal must hold high for 2 cycles
//-------------------------------------------------------------
/*
module q71;
  logic clk,sig;
  property p1; @(posedge clk) sig[*2]; endproperty
  assert property(p1) $display("Q71 -> PASS"); else $display("Q71 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q72: Signal doesn’t stay high long enough
//-------------------------------------------------------------
/*
module q72;
  logic clk,sig;
  property p1; @(posedge clk) sig[*2]; endproperty
  assert property(p1) $display("Q72 -> PASS"); else $display("Q72 -> FAIL");
  initial begin
    clk=0;sig=1; #5 sig=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q73: Check handshake done after valid
//-------------------------------------------------------------
/*
module q73;
  logic clk,valid,done;
  property p1; @(posedge clk) valid |=> ##1 done; endproperty
  assert property(p1) $display("Q73 -> PASS"); else $display("Q73 -> FAIL");
  initial begin
    clk=0;valid=1;done=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q74: Fail handshake not done
//-------------------------------------------------------------
/*
module q74;
  logic clk,valid,done;
  property p1; @(posedge clk) valid |=> ##1 done; endproperty
  assert property(p1) $display("Q74 -> PASS"); else $display("Q74 -> FAIL");
  initial begin
    clk=0;valid=1;done=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q75: Signal should toggle every 2 cycles
//-------------------------------------------------------------
/*
module q75;
  logic clk,sig;
  property p1; @(posedge clk) sig ##2 !sig; endproperty
  assert property(p1) $display("Q75 -> PASS"); else $display("Q75 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q76: Fail signal doesn’t toggle
//-------------------------------------------------------------
/*
module q76;
  logic clk,sig;
  property p1; @(posedge clk) sig ##2 !sig; endproperty
  assert property(p1) $display("Q76 -> PASS"); else $display("Q76 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q77: Assert ready after valid
//-------------------------------------------------------------
/*
module q77;
  logic clk,valid,ready;
  property p1; @(posedge clk) valid |-> ##1 ready; endproperty
  assert property(p1) $display("Q77 -> PASS"); else $display("Q77 -> FAIL");
  initial begin
    clk=0;valid=1;ready=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q78: Fail ready missing after valid
//-------------------------------------------------------------
/*
module q78;
  logic clk,valid,ready;
  property p1; @(posedge clk) valid |-> ##1 ready; endproperty
  assert property(p1) $display("Q78 -> PASS"); else $display("Q78 -> FAIL");
  initial begin
    clk=0;valid=1;ready=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q79: Check counter increment correctly
//-------------------------------------------------------------
/*
module q79;
  logic clk; int cnt=0;
  property p1; @(posedge clk) cnt |=> cnt+1; endproperty
  assert property(p1) $display("Q79 -> PASS"); else $display("Q79 -> FAIL");
  initial begin
    clk=0;repeat(4) begin #5 clk=~clk; cnt++; end
  end
endmodule
*/

//-------------------------------------------------------------
// Q80: Fail counter not incrementing
//-------------------------------------------------------------
/*
module q80;
  logic clk; int cnt=0;
  property p1; @(posedge clk) cnt |=> cnt+1; endproperty
  assert property(p1) $display("Q80 -> PASS"); else $display("Q80 -> FAIL");
  initial begin
    clk=0;repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q81: Check data stable during valid
//-------------------------------------------------------------
/*
module q81;
  logic clk,valid; int data=5;
  property p1; @(posedge clk) valid |-> $stable(data); endproperty
  assert property(p1) $display("Q81 -> PASS"); else $display("Q81 -> FAIL");
  initial begin
    clk=0;valid=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q82: Fail data changes during valid
//-------------------------------------------------------------
/*
module q82;
  logic clk,valid; int data=5;
  property p1; @(posedge clk) valid |-> $stable(data); endproperty
  assert property(p1) $display("Q82 -> PASS"); else $display("Q82 -> FAIL");
  initial begin
    clk=0;valid=1;
    #10 data=10;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q83: Check start followed by done within 3 cycles
//-------------------------------------------------------------
/*
module q83;
  logic clk,start,done;
  property p1; @(posedge clk) start |-> ##[1:3] done; endproperty
  assert property(p1) $display("Q83 -> PASS"); else $display("Q83 -> FAIL");
  initial begin
    clk=0;start=1; #10 done=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q84: Fail done missing within 3 cycles
//-------------------------------------------------------------
/*
module q84;
  logic clk,start,done;
  property p1; @(posedge clk) start |-> ##[1:3] done; endproperty
  assert property(p1) $display("Q84 -> PASS"); else $display("Q84 -> FAIL");
  initial begin
    clk=0;start=1;done=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q85: Signal high implies it stays high next cycle
//-------------------------------------------------------------
/*
module q85;
  logic clk,sig;
  property p1; @(posedge clk) sig |=> sig; endproperty
  assert property(p1) $display("Q85 -> PASS"); else $display("Q85 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q86: Fail signal low next cycle
//-------------------------------------------------------------
/*
module q86;
  logic clk,sig;
  property p1; @(posedge clk) sig |=> sig; endproperty
  assert property(p1) $display("Q86 -> PASS"); else $display("Q86 -> FAIL");
  initial begin
    clk=0;sig=1; #10 sig=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q87: Check no two enables active together
//-------------------------------------------------------------
/*
module q87;
  logic clk,en1,en2;
  property p1; @(posedge clk) !(en1 && en2); endproperty
  assert property(p1) $display("Q87 -> PASS"); else $display("Q87 -> FAIL");
  initial begin
    clk=0;en1=1;en2=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q88: Fail both enables high
//-------------------------------------------------------------
/*
module q88;
  logic clk,en1,en2;
  property p1; @(posedge clk) !(en1 && en2); endproperty
  assert property(p1) $display("Q88 -> PASS"); else $display("Q88 -> FAIL");
  initial begin
    clk=0;en1=1;en2=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q89: Assert reset low after 5ns
//-------------------------------------------------------------
/*
module q89;
  logic clk,rst;
  property p1; @(posedge clk) ##1 !rst; endproperty
  assert property(p1) $display("Q89 -> PASS"); else $display("Q89 -> FAIL");
  initial begin
    clk=0;rst=1;
    #5 rst=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q90: Fail reset still high
//-------------------------------------------------------------
/*
module q90;
  logic clk,rst;
  property p1; @(posedge clk) ##1 !rst; endproperty
  assert property(p1) $display("Q90 -> PASS"); else $display("Q90 -> FAIL");
  initial begin
    clk=0;rst=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q91: Check output change after input toggle
//-------------------------------------------------------------
/*
module q91;
  logic clk,in,out;
  property p1; @(posedge clk) $changed(in) |-> ##1 $changed(out); endproperty
  assert property(p1) $display("Q91 -> PASS"); else $display("Q91 -> FAIL");
  initial begin
    clk=0;in=0;out=0;
    #5 in=1; #10 out=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q92: Fail output didn’t change after input toggle
//-------------------------------------------------------------
/*
module q92;
  logic clk,in,out;
  property p1; @(posedge clk) $changed(in) |-> ##1 $changed(out); endproperty
  assert property(p1) $display("Q92 -> PASS"); else $display("Q92 -> FAIL");
  initial begin
    clk=0;in=0;out=0;
    #5 in=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q93: Check counter wraps to 0 after 9
//-------------------------------------------------------------
/*
module q93;
  logic clk; int cnt=9;
  property p1; @(posedge clk) (cnt==9) |=> (cnt==0); endproperty
  assert property(p1) $display("Q93 -> PASS"); else $display("Q93 -> FAIL");
  initial begin
    clk=0;cnt=9; #5 cnt=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q94: Fail counter didn’t wrap
//-------------------------------------------------------------
/*
module q94;
  logic clk; int cnt=9;
  property p1; @(posedge clk) (cnt==9) |=> (cnt==0); endproperty
  assert property(p1) $display("Q94 -> PASS"); else $display("Q94 -> FAIL");
  initial begin
    clk=0;cnt=9;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q95: Check signal rises then falls in 2 cycles
//-------------------------------------------------------------
/*
module q95;
  logic clk,sig;
  property p1; @(posedge clk) $rose(sig) |-> ##2 $fell(sig); endproperty
  assert property(p1) $display("Q95 -> PASS"); else $display("Q95 -> FAIL");
  initial begin
    clk=0;sig=0; #5 sig=1; #15 sig=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q96: Fail fall missing after rise
//-------------------------------------------------------------
/*
module q96;
  logic clk,sig;
  property p1; @(posedge clk) $rose(sig) |-> ##2 $fell(sig); endproperty
  assert property(p1) $display("Q96 -> PASS"); else $display("Q96 -> FAIL");
  initial begin
    clk=0;sig=0; #5 sig=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q97: Check enable deasserts before done
//-------------------------------------------------------------
/*
module q97;
  logic clk,en,done;
  property p1; @(posedge clk) done |-> !en; endproperty
  assert property(p1) $display("Q97 -> PASS"); else $display("Q97 -> FAIL");
  initial begin
    clk=0;en=0;done=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q98: Fail enable still high when done
//-------------------------------------------------------------
/*
module q98;
  logic clk,en,done;
  property p1; @(posedge clk) done |-> !en; endproperty
  assert property(p1) $display("Q98 -> PASS"); else $display("Q98 -> FAIL");
  initial begin
    clk=0;en=1;done=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/



//-------------------------------------------------------------
// Q99: Assertion that signal should remain high for 4 cycles
//-------------------------------------------------------------
/*
module q99;
  logic clk,sig;
  property p1; @(posedge clk) sig[*4]; endproperty
  assert property(p1) $display("Q99 -> PASS"); else $display("Q99 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q100: Assertion that signal should remain low for 2 cycles
//-------------------------------------------------------------
/*
module q100;
  logic clk,sig;
  property p1; @(posedge clk) !sig[*2]; endproperty
  assert property(p1) $display("Q100 -> PASS"); else $display("Q100 -> FAIL");
  initial begin
    clk=0;sig=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q101: Assertion using not operator on property
//-------------------------------------------------------------
/*
module q101;
  logic clk,a,b;
  property p1; @(posedge clk) !(a && b); endproperty
  assert property(p1) $display("Q101 -> PASS"); else $display("Q101 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q102: Assertion for signal toggling every clock
//-------------------------------------------------------------
/*
module q102;
  logic clk,sig;
  property p1; @(posedge clk) $changed(sig); endproperty
  assert property(p1) $display("Q102 -> PASS"); else $display("Q102 -> FAIL");
  initial begin
    clk=0;sig=0;
    repeat(6) begin #5 sig=~sig; clk=~clk; end
  end
endmodule
*/

//-------------------------------------------------------------
// Q103: Assertion for reset high disables property
//-------------------------------------------------------------
/*
module q103;
  logic clk,rst,a;
  property p1; @(posedge clk) disable iff(rst) a; endproperty
  assert property(p1) $display("Q103 -> PASS"); else $display("Q103 -> FAIL");
  initial begin
    clk=0;rst=1;a=1;
    #10 rst=0;a=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q104: Assertion sequence with delay 3 cycles
//-------------------------------------------------------------
/*
module q104;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> ##3 b; endproperty
  assert property(p1) $display("Q104 -> PASS"); else $display("Q104 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #10 a=1;
    #25 b=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q105: Assertion for stable signal for 5 cycles
//-------------------------------------------------------------
/*
module q105;
  logic clk,sig;
  property p1; @(posedge clk) $stable(sig)[*5]; endproperty
  assert property(p1) $display("Q105 -> PASS"); else $display("Q105 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q106: Assertion when signal increases each cycle
//-------------------------------------------------------------
/*
module q106;
  logic clk;
  int count=0;
  property p1; @(posedge clk) $rose(count); endproperty
  assert property(p1) $display("Q106 -> PASS"); else $display("Q106 -> FAIL");
  initial begin
    clk=0;
    repeat(6) begin #5 count++; clk=~clk; end
  end
endmodule
*/

//-------------------------------------------------------------
// Q107: Assertion using and with implication
//-------------------------------------------------------------
/*
module q107;
  logic clk,a,b,c;
  property p1; @(posedge clk) (a && b) |-> c; endproperty
  assert property(p1) $display("Q107 -> PASS"); else $display("Q107 -> FAIL");
  initial begin
    clk=0;a=1;b=1;c=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q108: Assertion using or with implication fail
//-------------------------------------------------------------
/*
module q108;
  logic clk,a,b,c;
  property p1; @(posedge clk) (a || b) |-> c; endproperty
  assert property(p1) $display("Q108 -> PASS"); else $display("Q108 -> FAIL");
  initial begin
    clk=0;a=1;b=0;c=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q109: Assertion using throughout operator
//-------------------------------------------------------------
/*
module q109;
  logic clk,a,b;
  property p1; @(posedge clk) a throughout b[*3]; endproperty
  assert property(p1) $display("Q109 -> PASS"); else $display("Q109 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q110: Assertion checking sequence ends with b
//-------------------------------------------------------------
/*
module q110;
  logic clk,a,b;
  sequence s1; a ##1 b; endsequence
  property p1; @(posedge clk) s1; endproperty
  assert property(p1) $display("Q110 -> PASS"); else $display("Q110 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q111: Assertion sequence a then !a
//-------------------------------------------------------------
/*
module q111;
  logic clk,a;
  sequence s1; a ##1 !a; endsequence
  property p1; @(posedge clk) s1; endproperty
  assert property(p1) $display("Q111 -> PASS"); else $display("Q111 -> FAIL");
  initial begin
    clk=0;a=1;
    #10 a=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q112: Assertion for non-blocking overlap
//-------------------------------------------------------------
/*
module q112;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> b; endproperty
  assert property(p1) $display("Q112 -> PASS"); else $display("Q112 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #5 a=1;
    #10 b=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q113: Assertion checking $past value
//-------------------------------------------------------------
/*
module q113;
  logic clk,a,b;
  property p1; @(posedge clk) $past(a) |-> b; endproperty
  assert property(p1) $display("Q113 -> PASS"); else $display("Q113 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q114: Assertion with $fell trigger
//-------------------------------------------------------------
/*
module q114;
  logic clk,a;
  property p1; @(posedge clk) $fell(a); endproperty
  assert property(p1) $display("Q114 -> PASS"); else $display("Q114 -> FAIL");
  initial begin
    clk=0;a=1;
    #10 a=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q115: Assertion when a goes high, b must follow
//-------------------------------------------------------------
/*
module q115;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##1 b; endproperty
  assert property(p1) $display("Q115 -> PASS"); else $display("Q115 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #10 a=1;
    #15 b=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q116: Assertion that a never high when b low
//-------------------------------------------------------------
/*
module q116;
  logic clk,a,b;
  property p1; @(posedge clk) !(a && !b); endproperty
  assert property(p1) $display("Q116 -> PASS"); else $display("Q116 -> FAIL");
  initial begin
    clk=0;a=0;b=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q117: Assertion ensuring signal toggles twice
//-------------------------------------------------------------
/*
module q117;
  logic clk,a;
  sequence s1; $rose(a) ##1 $fell(a); endsequence
  property p1; @(posedge clk) s1; endproperty
  assert property(p1) $display("Q117 -> PASS"); else $display("Q117 -> FAIL");
  initial begin
    clk=0;a=0;
    #5 a=1;
    #10 a=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q118: Assertion signal stays high till reset
//-------------------------------------------------------------
/*
module q118;
  logic clk,a,rst;
  property p1; @(posedge clk) a |-> a until rst; endproperty
  assert property(p1) $display("Q118 -> PASS"); else $display("Q118 -> FAIL");
  initial begin
    clk=0;a=1;rst=0;
    #25 rst=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q119: Assertion signal b follows a for next cycle
//-------------------------------------------------------------
/*
module q119;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> b; endproperty
  assert property(p1) $display("Q119 -> PASS"); else $display("Q119 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q120: Assertion end — always true property
//-------------------------------------------------------------
/*
module q120;
  logic clk;
  property p1; @(posedge clk) 1; endproperty
  assert property(p1) $display("Q120 -> PASS"); else $display("Q120 -> FAIL");
  initial begin
    clk=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/






//-------------------------------------------------------------
// Q121: Assertion that signal never unknown (X/Z)
//-------------------------------------------------------------
/*
module q121;
  logic clk, sig;
  property p1; @(posedge clk) !$isunknown(sig); endproperty
  assert property(p1) $display("Q121 -> PASS"); else $display("Q121 -> FAIL");
  initial begin
    clk=0; sig=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q122: Assertion that b should be high 2 cycles after a
//-------------------------------------------------------------
/*
module q122;
  logic clk, a, b;
  property p1; @(posedge clk) a |=> ##2 b; endproperty
  assert property(p1) $display("Q122 -> PASS"); else $display("Q122 -> FAIL");
  initial begin
    clk=0; a=0; b=0;
    #10 a=1; #20 b=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q123: Assertion that reset low disables property
//-------------------------------------------------------------
/*
module q123;
  logic clk, rst, en;
  property p1; @(posedge clk) disable iff(!rst) en; endproperty
  assert property(p1) $display("Q123 -> PASS"); else $display("Q123 -> FAIL");
  initial begin
    clk=0; rst=1; en=1;
    #15 rst=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q124: Assertion signal must toggle once every 3 cycles
//-------------------------------------------------------------
/*
module q124;
  logic clk, sig;
  property p1; @(posedge clk) $changed(sig)[*3]; endproperty
  assert property(p1) $display("Q124 -> PASS"); else $display("Q124 -> FAIL");
  initial begin
    clk=0; sig=1;
    repeat(6) begin #5 clk=~clk; sig=~sig; end
  end
endmodule
*/

//-------------------------------------------------------------
// Q125: Assertion sequence a then b then c
//-------------------------------------------------------------
/*
module q125;
  logic clk, a, b, c;
  sequence s1; a ##1 b ##1 c; endsequence
  property p1; @(posedge clk) s1; endproperty
  assert property(p1) $display("Q125 -> PASS"); else $display("Q125 -> FAIL");
  initial begin
    clk=0;a=1;b=1;c=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q126: Assertion a implies b within 1 to 3 cycles
//-------------------------------------------------------------
/*
module q126;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##[1:3] b; endproperty
  assert property(p1) $display("Q126 -> PASS"); else $display("Q126 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #10 b=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q127: Assertion a should stay high for 2 cycles after rising
//-------------------------------------------------------------
/*
module q127;
  logic clk,a;
  property p1; @(posedge clk) $rose(a) |-> a[*2]; endproperty
  assert property(p1) $display("Q127 -> PASS"); else $display("Q127 -> FAIL");
  initial begin
    clk=0;a=0;
    #10 a=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q128: Assertion to check counter increments
//-------------------------------------------------------------
/*
module q128;
  logic clk;
  int cnt=0;
  property p1; @(posedge clk) $rose(cnt); endproperty
  assert property(p1) $display("Q128 -> PASS"); else $display("Q128 -> FAIL");
  initial begin
    clk=0;
    repeat(5) begin #5 cnt++; clk=~clk; end
  end
endmodule
*/

//-------------------------------------------------------------
// Q129: Assertion that signal remains constant for 3 cycles
//-------------------------------------------------------------
/*
module q129;
  logic clk,sig;
  property p1; @(posedge clk) $stable(sig)[*3]; endproperty
  assert property(p1) $display("Q129 -> PASS"); else $display("Q129 -> FAIL");
  initial begin
    clk=0;sig=0;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q130: Assertion to check signal toggles every 2 cycles
//-------------------------------------------------------------
/*
module q130;
  logic clk,sig;
  property p1; @(posedge clk) sig |=> ##2 !sig; endproperty
  assert property(p1) $display("Q130 -> PASS"); else $display("Q130 -> FAIL");
  initial begin
    clk=0;sig=0;
    #10 sig=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q131: Assertion to check valid and ready handshake
//-------------------------------------------------------------
/*
module q131;
  logic clk,valid,ready;
  property p1; @(posedge clk) valid |-> ##1 ready; endproperty
  assert property(p1) $display("Q131 -> PASS"); else $display("Q131 -> FAIL");
  initial begin
    clk=0;valid=0;ready=0;
    #10 valid=1; #15 ready=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q132: Assertion checking $rose followed by $fell
//-------------------------------------------------------------
/*
module q132;
  logic clk,a;
  property p1; @(posedge clk) $rose(a) ##1 $fell(a); endproperty
  assert property(p1) $display("Q132 -> PASS"); else $display("Q132 -> FAIL");
  initial begin
    clk=0;a=0;
    #10 a=1; #20 a=0;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q133: Assertion to ensure signal not X
//-------------------------------------------------------------
/*
module q133;
  logic clk,sig;
  property p1; @(posedge clk) !$isunknown(sig); endproperty
  assert property(p1) $display("Q133 -> PASS"); else $display("Q133 -> FAIL");
  initial begin
    clk=0;sig=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q134: Assertion to check a rises then b high within 2 cycles
//-------------------------------------------------------------
/*
module q134;
  logic clk,a,b;
  property p1; @(posedge clk) $rose(a) |-> ##[1:2] b; endproperty
  assert property(p1) $display("Q134 -> PASS"); else $display("Q134 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    #10 a=1; #15 b=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q135: Assertion that enable high keeps output stable
//-------------------------------------------------------------
/*
module q135;
  logic clk,en,out;
  property p1; @(posedge clk) en |-> $stable(out); endproperty
  assert property(p1) $display("Q135 -> PASS"); else $display("Q135 -> FAIL");
  initial begin
    clk=0;en=1;out=1;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q136: Assertion that counter within range
//-------------------------------------------------------------
/*
module q136;
  logic clk;
  int cnt=5;
  property p1; @(posedge clk) cnt inside {[0:10]}; endproperty
  assert property(p1) $display("Q136 -> PASS"); else $display("Q136 -> FAIL");
  initial begin
    clk=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q137: Assertion check that b follows a on next edge
//-------------------------------------------------------------
/*
module q137;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> b; endproperty
  assert property(p1) $display("Q137 -> PASS"); else $display("Q137 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q138: Assertion check reset clears flag
//-------------------------------------------------------------
/*
module q138;
  logic clk,rst,flag;
  property p1; @(posedge clk) rst |-> !flag; endproperty
  assert property(p1) $display("Q138 -> PASS"); else $display("Q138 -> FAIL");
  initial begin
    clk=0;rst=1;flag=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q139: Assertion that signal toggles exactly once
//-------------------------------------------------------------
/*
module q139;
  logic clk,a;
  sequence s1; $rose(a) ##1 $fell(a); endsequence
  property p1; @(posedge clk) s1; endproperty
  assert property(p1) $display("Q139 -> PASS"); else $display("Q139 -> FAIL");
  initial begin
    clk=0;a=0;
    #10 a=1; #20 a=0;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q140: Assertion signal remains high till reset
//-------------------------------------------------------------
/*
module q140;
  logic clk,a,rst;
  property p1; @(posedge clk) a |-> a until rst; endproperty
  assert property(p1) $display("Q140 -> PASS"); else $display("Q140 -> FAIL");
  initial begin
    clk=0;a=1;rst=0;
    #25 rst=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q141: Assertion that x rises twice within 5 cycles
//-------------------------------------------------------------
/*
module q141;
  logic clk,x;
  sequence s1; $rose(x)[*2]; endsequence
  property p1; @(posedge clk) s1; endproperty
  assert property(p1) $display("Q141 -> PASS"); else $display("Q141 -> FAIL");
  initial begin
    clk=0;x=0;
    #10 x=1; #20 x=0; #25 x=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q142: Assertion signal remains 0 for 4 cycles
//-------------------------------------------------------------
/*
module q142;
  logic clk,sig;
  property p1; @(posedge clk) !sig[*4]; endproperty
  assert property(p1) $display("Q142 -> PASS"); else $display("Q142 -> FAIL");
  initial begin
    clk=0;sig=0;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q143: Assertion that $fell(reset) triggers a=0
//-------------------------------------------------------------
/*
module q143;
  logic clk,rst,a;
  property p1; @(posedge clk) $fell(rst) |-> (a==0); endproperty
  assert property(p1) $display("Q143 -> PASS"); else $display("Q143 -> FAIL");
  initial begin
    clk=0;rst=1;a=0;
    #15 rst=0;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q144: Assertion that signal should toggle every other clk
//-------------------------------------------------------------
/*
module q144;
  logic clk,sig;
  property p1; @(posedge clk) sig |=> ##2 !sig; endproperty
  assert property(p1) $display("Q144 -> PASS"); else $display("Q144 -> FAIL");
  initial begin
    clk=0;sig=0;
    #10 sig=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q145: Assertion with inside range check fail
//-------------------------------------------------------------
/*
module q145;
  logic clk;
  int val=15;
  property p1; @(posedge clk) val inside {[1:10]}; endproperty
  assert property(p1) $display("Q145 -> PASS"); else $display("Q145 -> FAIL");
  initial begin
    clk=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q146: Assertion that $changed triggers within 2 cycles
//-------------------------------------------------------------
/*
module q146;
  logic clk,a;
  property p1; @(posedge clk) $changed(a)[*2]; endproperty
  assert property(p1) $display("Q146 -> PASS"); else $display("Q146 -> FAIL");
  initial begin
    clk=0;a=0;
    repeat(4) begin #5 a=~a; clk=~clk; end
  end
endmodule
*/

//-------------------------------------------------------------
// Q147: Assertion a implies b for next 3 cycles
//-------------------------------------------------------------
/*
module q147;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> b[*3]; endproperty
  assert property(p1) $display("Q147 -> PASS"); else $display("Q147 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(10) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q148: Assertion that signal stays same during enable
//-------------------------------------------------------------
/*
module q148;
  logic clk,en,data;
  property p1; @(posedge clk) en |-> $stable(data); endproperty
  assert property(p1) $display("Q148 -> PASS"); else $display("Q148 -> FAIL");
  initial begin
    clk=0;en=1;data=1;
    repeat(8) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q149: Assertion that reset must be followed by enable low
//-------------------------------------------------------------
/*
module q149;
  logic clk,rst,en;
  property p1; @(posedge clk) rst |-> ##1 !en; endproperty
  assert property(p1) $display("Q149 -> PASS"); else $display("Q149 -> FAIL");
  initial begin
    clk=0;rst=1;en=0;
    repeat(6) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q150: Assertion always true property for completeness
//-------------------------------------------------------------
/*
module q150;
  logic clk;
  property p1; @(posedge clk) 1; endproperty
  assert property(p1) $display("Q150 -> PASS"); else $display("Q150 -> FAIL");
  initial begin
    clk=0;
    repeat(5) #5 clk=~clk;
  end
endmodule
*/



//-------------------------------------------------------------
// Q151: Simple assertion for signal high
//-------------------------------------------------------------
/*
module q151;
  logic clk, sig;
  property p1; @(posedge clk) sig; endproperty
  assert property(p1) $display("Q151 -> PASS"); else $display("Q151 -> FAIL");
  initial begin
    clk=0; sig=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q152: Assertion to check low signal
//-------------------------------------------------------------
/*
module q152;
  logic clk, sig;
  property p1; @(posedge clk) !sig; endproperty
  assert property(p1) $display("Q152 -> PASS"); else $display("Q152 -> FAIL");
  initial begin
    clk=0; sig=0;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q153: Check for stable signal using $stable
//-------------------------------------------------------------
/*
module q153;
  logic clk, sig;
  property p1; @(posedge clk) $stable(sig); endproperty
  assert property(p1) $display("Q153 -> PASS"); else $display("Q153 -> FAIL");
  initial begin
    clk=0; sig=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q154: Assertion fail for unstable signal
//-------------------------------------------------------------
/*
module q154;
  logic clk, sig;
  property p1; @(posedge clk) $stable(sig); endproperty
  assert property(p1) $display("Q154 -> PASS"); else $display("Q154 -> FAIL");
  initial begin
    clk=0; sig=0;
    #5 sig=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q155: Check signal rise using $rose
//-------------------------------------------------------------
/*
module q155;
  logic clk, sig;
  property p1; @(posedge clk) $rose(sig); endproperty
  assert property(p1) $display("Q155 -> PASS"); else $display("Q155 -> FAIL");
  initial begin
    clk=0; sig=0;
    #5 sig=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q156: Check signal fall using $fell
//-------------------------------------------------------------
/*
module q156;
  logic clk, sig;
  property p1; @(posedge clk) $fell(sig); endproperty
  assert property(p1) $display("Q156 -> PASS"); else $display("Q156 -> FAIL");
  initial begin
    clk=0; sig=1;
    #5 sig=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q157: Assertion with multiple conditions
//-------------------------------------------------------------
/*
module q157;
  logic clk,a,b;
  property p1; @(posedge clk) (a && b); endproperty
  assert property(p1) $display("Q157 -> PASS"); else $display("Q157 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q158: Sequential check using ## delay
//-------------------------------------------------------------
/*
module q158;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##2 b; endproperty
  assert property(p1) $display("Q158 -> PASS"); else $display("Q158 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #10 b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q159: Assertion using or in antecedent
//-------------------------------------------------------------
/*
module q159;
  logic clk,a,b;
  property p1; @(posedge clk) (a || b) |-> b; endproperty
  assert property(p1) $display("Q159 -> PASS"); else $display("Q159 -> FAIL");
  initial begin
    clk=0;a=0;b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q160: Assertion disabled with reset
//-------------------------------------------------------------
/*
module q160;
  logic clk,rst,a,b;
  property p1; @(posedge clk) disable iff(rst) a |-> b; endproperty
  assert property(p1) $display("Q160 -> PASS"); else $display("Q160 -> FAIL");
  initial begin
    clk=0;rst=1;a=1;b=0;
    #5 rst=0;b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q161: Assertion inside always block
//-------------------------------------------------------------
/*
module q161;
  logic clk,a,b;
  always @(posedge clk)
    assert(a==b) $display("Q161 -> PASS"); else $display("Q161 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q162: Assertion using not operator
//-------------------------------------------------------------
/*
module q162;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> !b; endproperty
  assert property(p1) $display("Q162 -> PASS"); else $display("Q162 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q163: Check signal after 3 cycles
//-------------------------------------------------------------
/*
module q163;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##3 b; endproperty
  assert property(p1) $display("Q163 -> PASS"); else $display("Q163 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #15 b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q164: Immediate assertion inside initial block
//-------------------------------------------------------------
/*
module q164;
  int x=5;
  initial begin
    assert(x>0) $display("Q164 -> PASS"); else $display("Q164 -> FAIL");
  end
endmodule
*/

//-------------------------------------------------------------
// Q165: Assertion for signal toggle
//-------------------------------------------------------------
/*
module q165;
  logic clk,a;
  property p1; @(posedge clk) $changed(a); endproperty
  assert property(p1) $display("Q165 -> PASS"); else $display("Q165 -> FAIL");
  initial begin
    clk=0;a=0;
    #5 a=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q166: Check signal remains high for 2 cycles
//-------------------------------------------------------------
/*
module q166;
  logic clk,a;
  property p1; @(posedge clk) a[*2]; endproperty
  assert property(p1) $display("Q166 -> PASS"); else $display("Q166 -> FAIL");
  initial begin
    clk=0;a=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q167: Check sequence of signals
//-------------------------------------------------------------
/*
module q167;
  logic clk,a,b;
  property p1; @(posedge clk) a ##1 b; endproperty
  assert property(p1) $display("Q167 -> PASS"); else $display("Q167 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #5 b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q168: Assertion with repeat range
//-------------------------------------------------------------
/*
module q168;
  logic clk,a;
  property p1; @(posedge clk) a[*1:3]; endproperty
  assert property(p1) $display("Q168 -> PASS"); else $display("Q168 -> FAIL");
  initial begin
    clk=0;a=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q169: Assertion using overlapped implication
//-------------------------------------------------------------
/*
module q169;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> b; endproperty
  assert property(p1) $display("Q169 -> PASS"); else $display("Q169 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q170: Assertion using non-overlapped implication
//-------------------------------------------------------------
/*
module q170;
  logic clk,a,b;
  property p1; 
  @(posedge clk) a |-> b;
  endproperty
  assert property(p1) 
  $display("Q170 -> PASS"); 
  else 
  $display("Q170 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/



//-------------------------------------------------------------
// Q171: Check signal high after one clock
//-------------------------------------------------------------
/*
module q171;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##1 b; endproperty
  assert property(p1) $display("Q171 -> PASS"); else $display("Q171 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #5 b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q172: Assertion with OR condition
//-------------------------------------------------------------
/*
module q172;
  logic clk,a,b;
  property p1; @(posedge clk) (a || b); endproperty
  assert property(p1) $display("Q172 -> PASS"); else $display("Q172 -> FAIL");
  initial begin
    clk=0;a=0;b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q173: Assertion to detect $changed signal
//-------------------------------------------------------------
/*
module q173;
  logic clk,a;
  property p1; @(posedge clk) $changed(a); endproperty
  assert property(p1) $display("Q173 -> PASS"); else $display("Q173 -> FAIL");
  initial begin
    clk=0;a=0;
    #5 a=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q174: Assertion check reset disable
//-------------------------------------------------------------
/*
module q174;
  logic clk,rst,a,b;
  property p1; @(posedge clk) disable iff(rst) a |-> b; endproperty
  assert property(p1) $display("Q174 -> PASS"); else $display("Q174 -> FAIL");
  initial begin
    clk=0;rst=1;a=1;b=0;
    #5 rst=0;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q175: Assertion fail for non-matching signals
//-------------------------------------------------------------
/*
module q175;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> b; endproperty
  assert property(p1) $display("Q175 -> PASS"); else $display("Q175 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q176: Assertion with $rose check
//-------------------------------------------------------------
/*
module q176;
  logic clk,a;
  property p1; @(posedge clk) $rose(a); endproperty
  assert property(p1) $display("Q176 -> PASS"); else $display("Q176 -> FAIL");
  initial begin
    clk=0;a=0;
    #5 a=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q177: Assertion using $fell
//-------------------------------------------------------------
/*
module q177;
  logic clk,a;
  property p1; @(posedge clk) $fell(a); endproperty
  assert property(p1) $display("Q177 -> PASS"); else $display("Q177 -> FAIL");
  initial begin
    clk=0;a=1;
    #5 a=0;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q178: Assertion using 2-cycle sequence
//-------------------------------------------------------------
/*
module q178;
  logic clk,a,b;
  property p1; @(posedge clk) a ##2 b; endproperty
  assert property(p1) $display("Q178 -> PASS"); else $display("Q178 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #10 b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q179: Assertion for signal staying high 3 cycles
//-------------------------------------------------------------
/*
module q179;
  logic clk,a;
  property p1; @(posedge clk) a[*3]; endproperty
  assert property(p1) $display("Q179 -> PASS"); else $display("Q179 -> FAIL");
  initial begin
    clk=0;a=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q180: Assertion using $stable check
//-------------------------------------------------------------
/*
module q180;
  logic clk,a;
  property p1; @(posedge clk) $stable(a); endproperty
  assert property(p1) $display("Q180 -> PASS"); else $display("Q180 -> FAIL");
  initial begin
    clk=0;a=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q181: Assertion for signal change fail
//-------------------------------------------------------------
/*
module q181;
  logic clk,a;
  property p1; @(posedge clk) $changed(a); endproperty
  assert property(p1) $display("Q181 -> PASS"); else $display("Q181 -> FAIL");
  initial begin
    clk=0;a=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q182: Assertion using both a and b
//-------------------------------------------------------------
/*
module q182;
  logic clk,a,b;
  property p1; @(posedge clk) (a && b); endproperty
  assert property(p1) $display("Q182 -> PASS"); else $display("Q182 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q183: Assertion with a |-> ##3 b
//-------------------------------------------------------------
/*
module q183;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##3 b; endproperty
  assert property(p1) $display("Q183 -> PASS"); else $display("Q183 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #15 b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q184: Assertion with overlapped implication |=> 
//-------------------------------------------------------------
/*
module q184;
  logic clk,a,b;
  property p1; @(posedge clk) a |=> b; endproperty
  assert property(p1) $display("Q184 -> PASS"); else $display("Q184 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q185: Assertion for no change in b when a=0
//-------------------------------------------------------------
/*
module q185;
  logic clk,a,b;
  property p1; @(posedge clk) (!a) |-> $stable(b); endproperty
  assert property(p1) $display("Q185 -> PASS"); else $display("Q185 -> FAIL");
  initial begin
    clk=0;a=0;b=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q186: Assertion with $fell and b=1 check
//-------------------------------------------------------------
/*
module q186;
  logic clk,a,b;
  property p1; @(posedge clk) $fell(a) |-> b; endproperty
  assert property(p1) $display("Q186 -> PASS"); else $display("Q186 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    #5 a=0;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q187: Assertion check for rising and falling
//-------------------------------------------------------------
/*
module q187;
  logic clk,a;
  property p1; @(posedge clk) $rose(a) or $fell(a); endproperty
  assert property(p1) $display("Q187 -> PASS"); else $display("Q187 -> FAIL");
  initial begin
    clk=0;a=0;
    #5 a=1; #5 a=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q188: Assertion with sequence of 3 events
//-------------------------------------------------------------
/*
module q188;
  logic clk,a,b,c;
  property p1; @(posedge clk) a ##1 b ##1 c; endproperty
  assert property(p1) $display("Q188 -> PASS"); else $display("Q188 -> FAIL");
  initial begin
    clk=0;a=1;b=0;c=0;
    #5 b=1; #10 c=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q189: Assertion fail with wrong sequence
//-------------------------------------------------------------
/*
module q189;
  logic clk,a,b,c;
  property p1; @(posedge clk) a ##1 b ##1 c; endproperty
  assert property(p1) $display("Q189 -> PASS"); else $display("Q189 -> FAIL");
  initial begin
    clk=0;a=1;b=1;c=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q190: Assertion for toggle detection
//-------------------------------------------------------------
/*
module q190;
  logic clk,a;
  property p1; @(posedge clk) $changed(a); endproperty
  assert property(p1) $display("Q190 -> PASS"); else $display("Q190 -> FAIL");
  initial begin
    clk=0;a=0; #5 a=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q191: Assertion for a followed by b after 2 cycles
//-------------------------------------------------------------
/*
module q191;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##2 b; endproperty
  assert property(p1) $display("Q191 -> PASS"); else $display("Q191 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #10 b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q192: Assertion with delay range ##[1:3]
//-------------------------------------------------------------
/*
module q192;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> ##[1:3] b; endproperty
  assert property(p1) $display("Q192 -> PASS"); else $display("Q192 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    #10 b=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q193: Assertion to check $past value
//-------------------------------------------------------------
/*
module q193;
  logic clk,a;
  property p1; @(posedge clk) a == $past(a); endproperty
  assert property(p1) $display("Q193 -> PASS"); else $display("Q193 -> FAIL");
  initial begin
    clk=0;a=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q194: Assertion using $rose and $fell both
//-------------------------------------------------------------
/*
module q194;
  logic clk,a;
  property p1; @(posedge clk) $rose(a) or $fell(a); endproperty
  assert property(p1) $display("Q194 -> PASS"); else $display("Q194 -> FAIL");
  initial begin
    clk=0;a=0;
    #5 a=1; #10 a=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q195: Assertion check reset sequence
//-------------------------------------------------------------
/*
module q195;
  logic clk,rst;
  property p1; @(posedge clk) rst |-> ##1 !rst; endproperty
  assert property(p1) $display("Q195 -> PASS"); else $display("Q195 -> FAIL");
  initial begin
    clk=0;rst=1;
    #5 rst=0;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q196: Assertion for both signals true
//-------------------------------------------------------------
/*
module q196;
  logic clk,a,b;
  property p1; @(posedge clk) a && b; endproperty
  assert property(p1) $display("Q196 -> PASS"); else $display("Q196 -> FAIL");
  initial begin
    clk=0;a=1;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q197: Assertion using disable iff reset with |=> 
//-------------------------------------------------------------
/*
module q197;
  logic clk,rst,a,b;
  property p1; @(posedge clk) disable iff(rst) a |=> b; endproperty
  assert property(p1) $display("Q197 -> PASS"); else $display("Q197 -> FAIL");
  initial begin
    clk=0;rst=1;a=1;b=0;
    #5 rst=0;b=1;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q198: Assertion fail with missing response
//-------------------------------------------------------------
/*
module q198;
  logic clk,a,b;
  property p1; @(posedge clk) a |-> b; endproperty
  assert property(p1) $display("Q198 -> PASS"); else $display("Q198 -> FAIL");
  initial begin
    clk=0;a=1;b=0;
    repeat(4) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q199: Assertion with 2-cycle hold
//-------------------------------------------------------------
/*
module q199;
  logic clk,a;
  property p1; @(posedge clk) a[*2]; endproperty
  assert property(p1) $display("Q199 -> PASS"); else $display("Q199 -> FAIL");
  initial begin
    clk=0;a=1;
    repeat(3) #5 clk=~clk;
  end
endmodule
*/

//-------------------------------------------------------------
// Q200: Assertion for signal toggling every clock
//-------------------------------------------------------------
/*
module q200;
  logic clk,a;
  property p1; @(posedge clk) $changed(a); endproperty
  assert property(p1) $display("Q200 -> PASS"); else $display("Q200 -> FAIL");
  initial begin
    clk=0;a=0;
    forever begin
      #5 a=~a; clk=~clk;
    end
  end
endmodule
*/






