//-------------------------------------------------------------
// Q1: Basic fork-join example
//-------------------------------------------------------------
/*
module q1;
  initial begin
    fork
      #2 $display("Q1 -> Task1 done at %0t", $time);
      #4 $display("Q1 -> Task2 done at %0t", $time);
    join
    $display("Q1 -> After join at %0t", $time);
  end
endmodule
*/

//-------------------------------------------------------------
// Q2: fork-join with three parallel threads
//-------------------------------------------------------------
/*
module q2;
  initial begin
    fork
      #1 $display("Q2 -> Thread1");
      #3 $display("Q2 -> Thread2");
      #2 $display("Q2 -> Thread3");
    join
    $display("Q2 -> Completed all threads");
  end
endmodule
*/

//-------------------------------------------------------------
// Q3: fork-join_any exits on first completion
//-------------------------------------------------------------
/*
module q3;
  initial begin
    fork
      #5 $display("Q3 -> Delay5");
      #2 $display("Q3 -> Delay2");
    join_any
    $display("Q3 -> Exited after fastest thread at %0t", $time);
  end
endmodule
*/

//-------------------------------------------------------------
// Q4: fork-join_none executes immediately
//-------------------------------------------------------------
/*
module q4;
  initial begin
    fork
      #3 $display("Q4 -> A");
      #6 $display("Q4 -> B");
    join_none
    $display("Q4 -> Immediate line after fork");
    #10 $display("Q4 -> End at %0t", $time);
  end
endmodule
*/

//-------------------------------------------------------------
// Q5: Nested fork-join
//-------------------------------------------------------------
/*
module q5;
  initial begin
    fork
      begin
        #1 $display("Q5 -> Outer1 start");
        fork
          #2 $display("Q5 -> Inner1");
          #4 $display("Q5 -> Inner2");
        join
      end
      #3 $display("Q5 -> Outer2");
    join
    $display("Q5 -> All done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q6
//-------------------------------------------------------------
/*
module q6;
  initial begin
    fork
      #1 $display("Q6 -> TaskA");
      #3 $display("Q6 -> TaskB");
      #5 $display("Q6 -> TaskC");
    join
    $display("Q6 -> Done at %0t", $time);
  end
endmodule
*/

//-------------------------------------------------------------
// Q7
//-------------------------------------------------------------
/*
module q7;
  initial begin
    fork
      #4 $display("Q7 -> Thread1");
      #2 $display("Q7 -> Thread2");
    join_any
    $display("Q7 -> Fastest thread finished");
  end
endmodule
*/

//-------------------------------------------------------------
// Q8
//-------------------------------------------------------------
/*
module q8;
  initial begin
    fork
      #2 $display("Q8 -> A");
      #3 $display("Q8 -> B");
    join_none
    $display("Q8 -> Running immediately after fork");
    #5 $display("Q8 -> Simulation End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q9
//-------------------------------------------------------------
/*
module q9;
  initial begin
    fork
      #2 $display("Q9 -> X");
      #1 $display("Q9 -> Y");
    join
    $display("Q9 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q10
//-------------------------------------------------------------
/*
module q10;
  initial begin
    fork
      #1 $display("Q10 -> t1");
      #5 $display("Q10 -> t2");
    join_any
    $display("Q10 -> join_any done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q11
//-------------------------------------------------------------
/*
module q11;
  initial begin
    fork
      #3 $display("Q11 -> Task1");
      #7 $display("Q11 -> Task2");
      #1 $display("Q11 -> Task3");
    join_any
    $display("Q11 -> First done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q12
//-------------------------------------------------------------
/*
module q12;
  initial begin
    fork
      #2 $display("Q12 -> Start A");
      #4 $display("Q12 -> Start B");
    join
    $display("Q12 -> Both done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q13
//-------------------------------------------------------------
/*
module q13;
  initial begin
    fork
      #5 $display("Q13 -> Thread1");
      #5 $display("Q13 -> Thread2");
    join_any
    $display("Q13 -> Both same delay, any finishes");
  end
endmodule
*/

//-------------------------------------------------------------
// Q14
//-------------------------------------------------------------
/*
module q14;
  initial begin
    fork
      #1 $display("Q14 -> Early");
      #4 $display("Q14 -> Late");
    join_none
    $display("Q14 -> Runs instantly");
    #6 $display("Q14 -> End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q15
//-------------------------------------------------------------
/*
module q15;
  initial begin
    fork
      #2 $display("Q15 -> t1");
      #3 $display("Q15 -> t2");
      #1 $display("Q15 -> t3");
    join
    $display("Q15 -> Done at %0t", $time);
  end
endmodule
*/

//-------------------------------------------------------------
// Q16
//-------------------------------------------------------------
/*
module q16;
  initial begin
    fork
      #2 $display("Q16 -> T1 done");
      #2 $display("Q16 -> T2 done");
    join_any
    $display("Q16 -> Any one done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q17
//-------------------------------------------------------------
/*
module q17;
  initial begin
    fork
      #2 $display("Q17 -> A");
      #6 $display("Q17 -> B");
      #4 $display("Q17 -> C");
    join
    $display("Q17 -> All threads joined");
  end
endmodule
*/

//-------------------------------------------------------------
// Q18
//-------------------------------------------------------------
/*
module q18;
  initial begin
    fork
      #3 $display("Q18 -> Task1");
      #1 $display("Q18 -> Task2");
    join_none
    $display("Q18 -> No wait join_none");
    #5 $display("Q18 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q19
//-------------------------------------------------------------
/*
module q19;
  initial begin
    fork
      #4 $display("Q19 -> Long");
      #1 $display("Q19 -> Short");
    join_any
    $display("Q19 -> join_any exit");
  end
endmodule
*/

//-------------------------------------------------------------
// Q20
//-------------------------------------------------------------
/*
module q20;
  initial begin
    fork
      #2 $display("Q20 -> Thread A");
      #2 $display("Q20 -> Thread B");
      #2 $display("Q20 -> Thread C");
    join
    $display("Q20 -> All done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q21
//-------------------------------------------------------------
/*
module q21;
  initial begin
    fork
      #1 $display("Q21 -> 1");
      #2 $display("Q21 -> 2");
    join
    $display("Q21 -> Both finished");
  end
endmodule
*/

//-------------------------------------------------------------
// Q22
//-------------------------------------------------------------
/*
module q22;
  initial begin
    fork
      #3 $display("Q22 -> Delay3");
      #5 $display("Q22 -> Delay5");
    join_any
    $display("Q22 -> First done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q23
//-------------------------------------------------------------
/*
module q23;
  initial begin
    fork
      #2 $display("Q23 -> Small");
      #8 $display("Q23 -> Big");
    join_none
    $display("Q23 -> Running after fork");
    #10 $display("Q23 -> End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q24
//-------------------------------------------------------------
/*
module q24;
  initial begin
    fork
      #1 $display("Q24 -> Fast");
      #6 $display("Q24 -> Slow");
    join_any
    $display("Q24 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q25
//-------------------------------------------------------------
/*
module q25;
  initial begin
    fork
      #3 $display("Q25 -> A");
      #3 $display("Q25 -> B");
    join
    $display("Q25 -> Equal delays");
  end
endmodule
*/

//-------------------------------------------------------------
// Q26
//-------------------------------------------------------------
/*
module q26;
  initial begin
    fork
      #5 $display("Q26 -> Long");
      #1 $display("Q26 -> Short");
    join_any
    $display("Q26 -> First finished");
  end
endmodule
*/

//-------------------------------------------------------------
// Q27
//-------------------------------------------------------------
/*
module q27;
  initial begin
    fork
      #2 $display("Q27 -> t1");
      #4 $display("Q27 -> t2");
    join
    $display("Q27 -> Both done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q28
//-------------------------------------------------------------
/*
module q28;
  initial begin
    fork
      #2 $display("Q28 -> one");
      #1 $display("Q28 -> two");
    join_none
    $display("Q28 -> After fork");
    #3 $display("Q28 -> End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q29
//-------------------------------------------------------------
/*
module q29;
  initial begin
    fork
      #1 $display("Q29 -> A");
      #1 $display("Q29 -> B");
    join_any
    $display("Q29 -> First done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q30
//-------------------------------------------------------------
/*
module q30;
  initial begin
    fork
      #4 $display("Q30 -> X");
      #2 $display("Q30 -> Y");
    join
    $display("Q30 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q31
//-------------------------------------------------------------
/*
module q31;
  initial begin
    fork
      #2 $display("Q31 -> a");
      #6 $display("Q31 -> b");
    join_any
    $display("Q31 -> Early exit");
  end
endmodule
*/

//-------------------------------------------------------------
// Q32
//-------------------------------------------------------------
/*
module q32;
  initial begin
    fork
      #5 $display("Q32 -> Slow");
      #2 $display("Q32 -> Fast");
    join_any
    $display("Q32 -> join_any exit");
  end
endmodule
*/

//-------------------------------------------------------------
// Q33
//-------------------------------------------------------------
/*
module q33;
  initial begin
    fork
      #3 $display("Q33 -> T1");
      #3 $display("Q33 -> T2");
    join
    $display("Q33 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q34
//-------------------------------------------------------------
/*
module q34;
  initial begin
    fork
      #4 $display("Q34 -> t1");
      #8 $display("Q34 -> t2");
    join_any
    $display("Q34 -> join_any done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q35
//-------------------------------------------------------------
/*
module q35;
  initial begin
    fork
      #2 $display("Q35 -> One");
      #2 $display("Q35 -> Two");
      #2 $display("Q35 -> Three");
    join
    $display("Q35 -> All joined");
  end
endmodule
*/

//-------------------------------------------------------------
// Q36
//-------------------------------------------------------------
/*
module q36;
  initial begin
    fork
      #1 $display("Q36 -> Early");
      #5 $display("Q36 -> Late");
    join_none
    $display("Q36 -> No wait");
    #6 $display("Q36 -> End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q37
//-------------------------------------------------------------
/*
module q37;
  initial begin
    fork
      #3 $display("Q37 -> Task1");
      #6 $display("Q37 -> Task2");
    join
    $display("Q37 -> End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q38
//-------------------------------------------------------------
/*
module q38;
  initial begin
    fork
      #2 $display("Q38 -> t1");
      #1 $display("Q38 -> t2");
    join_any
    $display("Q38 -> join_any exit");
  end
endmodule
*/

//-------------------------------------------------------------
// Q39
//-------------------------------------------------------------
/*
module q39;
  initial begin
    fork
      #1 $display("Q39 -> Fast");
      #8 $display("Q39 -> Slow");
    join_none
    $display("Q39 -> After fork");
    #9 $display("Q39 -> End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q40
//-------------------------------------------------------------
/*
module q40;
  initial begin
    fork
      #2 $display("Q40 -> t1");
      #4 $display("Q40 -> t2");
      #6 $display("Q40 -> t3");
    join
    $display("Q40 -> Completed");
  end
endmodule
*/

//-------------------------------------------------------------
// Q41
//-------------------------------------------------------------
/*
module q41;
  initial begin
    fork
      #2 $display("Q41 -> First");
      #1 $display("Q41 -> Second");
    join_any
    $display("Q41 -> Fast one done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q42
//-------------------------------------------------------------
/*
module q42;
  initial begin
    fork
      #5 $display("Q42 -> Long");
      #2 $display("Q42 -> Short");
    join_any
    $display("Q42 -> join_any exit");
  end
endmodule
*/

//-------------------------------------------------------------
// Q43
//-------------------------------------------------------------
/*
module q43;
  initial begin
    fork
      #3 $display("Q43 -> X");
      #1 $display("Q43 -> Y");
    join_none
    $display("Q43 -> Continue immediately");
    #5 $display("Q43 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q44
//-------------------------------------------------------------
/*
module q44;
  initial begin
    fork
      #2 $display("Q44 -> A");
      #2 $display("Q44 -> B");
    join
    $display("Q44 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q45
//-------------------------------------------------------------
/*
module q45;
  initial begin
    fork
      #4 $display("Q45 -> t1");
      #1 $display("Q45 -> t2");
    join_any
    $display("Q45 -> join_any exit");
  end
endmodule
*/

//-------------------------------------------------------------
// Q46
//-------------------------------------------------------------
/*
module q46;
  initial begin
    fork
      #3 $display("Q46 -> Start1");
      #5 $display("Q46 -> Start2");
    join_none
    $display("Q46 -> No wait join_none");
    #6 $display("Q46 -> End");
  end
endmodule
*/

//-------------------------------------------------------------
// Q47
//-------------------------------------------------------------
/*
module q47;
  initial begin
    fork
      #2 $display("Q47 -> Run1");
      #3 $display("Q47 -> Run2");
    join
    $display("Q47 -> Both done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q48
//-------------------------------------------------------------
/*
module q48;
  initial begin
    fork
      #1 $display("Q48 -> A");
      #5 $display("Q48 -> B");
    join_any
    $display("Q48 -> join_any exit");
  end
endmodule
*/

//-------------------------------------------------------------
// Q49
//-------------------------------------------------------------
/*
module q49;
  initial begin
    fork
      #3 $display("Q49 -> one");
      #1 $display("Q49 -> two");
    join_none
    $display("Q49 -> Continue");
    #5 $display("Q49 -> Done");
  end
endmodule
*/

//-------------------------------------------------------------
// Q50
//-------------------------------------------------------------
/*
module q50;
  initial begin
    fork
      #2 $display("Q50 -> t1");
      #2 $display("Q50 -> t2");
    join
    $display("Q50 -> End");
  end
endmodule
*/
