//-------------------------------------------------------------
// Q1: Basic semaphore creation and release
//-------------------------------------------------------------
/*
module q1;
  semaphore sema = new(1);
  initial begin
    sema.get(1);
    $display("Q1 -> Semaphore acquired at %0t", $time);
    sema.put(1);
    $display("Q1 -> Semaphore released at %0t", $time);
  end
endmodule
*/

//-------------------------------------------------------------
// Q2: Multiple permits allocation
//-------------------------------------------------------------
/*
module q2;
  semaphore sema = new(3);
  initial begin
    sema.get(2);
    $display("Q2 -> Got 2 permits at %0t", $time);
    sema.put(2);
    $display("Q2 -> Released 2 permits at %0t", $time);
  end
endmodule
*/

//-------------------------------------------------------------
// Q3: Semaphore with two threads
//-------------------------------------------------------------
/*
module q3;
  semaphore sema = new(1);
  initial fork
    begin sema.get(1); $display("Q3 -> Thread A acquired"); #3; sema.put(1); end
    begin sema.get(1); $display("Q3 -> Thread B acquired"); sema.put(1); end
  join
endmodule
*/

//-------------------------------------------------------------
// Q4: Semaphore blocking demonstration
//-------------------------------------------------------------
/*
module q4;
  semaphore s = new(1);
  initial fork
    begin s.get(1); $display("Q4 -> A got semaphore"); #5; s.put(1); end
    begin s.get(1); $display("Q4 -> B got semaphore"); s.put(1); end
  join
endmodule
*/

//-------------------------------------------------------------
// Q5: Semaphore controlling 3 resource threads
//-------------------------------------------------------------
/*
module q5;
  semaphore s = new(2);
  initial fork
    begin s.get(1); $display("Q5 -> Thread1 using resource"); #5; s.put(1); end
    begin s.get(1); $display("Q5 -> Thread2 using resource"); #5; s.put(1); end
    begin s.get(1); $display("Q5 -> Thread3 waiting"); s.put(1); end
  join
endmodule
*/

//-------------------------------------------------------------
// Q6: Using new(0) and put later
//-------------------------------------------------------------
/*
module q6;
  semaphore s = new(0);
  initial begin
    fork
      begin #5; s.put(1); $display("Q6 -> Semaphore released"); end
      begin s.get(1); $display("Q6 -> Semaphore acquired"); end
    join
  end
endmodule
*/

//-------------------------------------------------------------
// Q7: Semaphore with random delay threads
//-------------------------------------------------------------
/*
module q7;
  semaphore s = new(1);
  initial fork
    begin s.get(1); #($urandom_range(1,5)); $display("Q7 -> A done"); s.put(1); end
    begin s.get(1); #($urandom_range(1,5)); $display("Q7 -> B done"); s.put(1); end
  join
endmodule
*/

//-------------------------------------------------------------
// Q8: Check blocking order
//-------------------------------------------------------------
/*
module q8;
  semaphore s = new(1);
  initial fork
    begin s.get(1); $display("Q8 -> 1st got"); #10; s.put(1); end
    begin s.get(1); $display("Q8 -> 2nd got"); s.put(1); end
    begin s.get(1); $display("Q8 -> 3rd got"); s.put(1); end
  join
endmodule
*/

//-------------------------------------------------------------
// Q9: Using semaphore inside a task
//-------------------------------------------------------------
/*
module q9;
  semaphore s = new(1);
  task automatic use_res(string t);
    s.get(1);
    $display("Q9 -> %s acquired", t);
    #3;
    s.put(1);
    $display("Q9 -> %s released", t);
  endtask
  initial fork
    use_res("T1");
    use_res("T2");
  join
endmodule
*/

//-------------------------------------------------------------
// Q10: Nested semaphore calls
//-------------------------------------------------------------
/*
module q10;
  semaphore s = new(2);
  initial begin
    s.get(1);
    $display("Q10 -> First got");
    s.get(1);
    $display("Q10 -> Second got");
    s.put(2);
  end
endmodule
*/

//-------------------------------------------------------------
// Q11: Semaphore controlling print order
//-------------------------------------------------------------
/*
module q11;
  semaphore s = new(1);
  initial fork
    begin s.get(1); $display("Q11 -> Step1"); s.put(1); end
    begin s.get(1); $display("Q11 -> Step2"); s.put(1); end
  join
endmodule
*/

//-------------------------------------------------------------
// Q12: get() and put() with delays
//-------------------------------------------------------------
/*
module q12;
  semaphore s = new(1);
  initial begin
    s.get(1); $display("Q12 -> Got semaphore"); #10; s.put(1); $display("Q12 -> Released");
  end
endmodule
*/

//-------------------------------------------------------------
// Q13: 0 initial count with delayed release
//-------------------------------------------------------------
/*
module q13;
  semaphore s = new(0);
  initial begin
    fork
      begin #3; s.put(1); $display("Q13 -> Released at %0t", $time); end
      begin s.get(1); $display("Q13 -> Acquired at %0t", $time); end
    join
  end
endmodule
*/

//-------------------------------------------------------------
// Q14: Multi-thread sync using semaphore
//-------------------------------------------------------------
/*
module q14;
  semaphore s = new(0);
  initial fork
    begin #5; s.put(3); $display("Q14 -> Released 3 tokens"); end
    begin s.get(1); $display("Q14 -> Thread1 done"); end
    begin s.get(1); $display("Q14 -> Thread2 done"); end
    begin s.get(1); $display("Q14 -> Thread3 done"); end
  join
endmodule
*/

//-------------------------------------------------------------
// Q15: Semaphore new(5) and get 5 permits
//-------------------------------------------------------------
/*
module q15;
  semaphore s = new(5);
  initial begin
    s.get(5); $display("Q15 -> All permits taken");
    s.put(5); $display("Q15 -> All permits released");
  end
endmodule
*/

//-------------------------------------------------------------
// Q16: Partial permit get
//-------------------------------------------------------------
/*
module q16;
  semaphore s = new(4);
  initial begin
    s.get(2);
    $display("Q16 -> Took 2 of 4");
    s.put(2);
  end
endmodule
*/

//-------------------------------------------------------------
// Q17: Synchronize tasks using semaphore
//-------------------------------------------------------------
/*
module q17;
  semaphore s = new(0);
  task t1(); #5; s.put(1); $display("Q17 -> Task1 done"); endtask
  task t2(); s.get(1); $display("Q17 -> Task2 starts"); endtask
  initial fork t1(); t2(); join
endmodule
*/

//-------------------------------------------------------------
// Q18: Sequential thread entry using semaphore
//-------------------------------------------------------------
/*
module q18;
  semaphore s = new(1);
  task run(string name);
    s.get(1);
    $display("Q18 -> %s running", name);
    #2;
    s.put(1);
  endtask
  initial fork
    run("A"); run("B"); run("C");
  join
endmodule
*/

//-------------------------------------------------------------
// Q19: Semaphore with loop iteration
//-------------------------------------------------------------
/*
module q19;
  semaphore s = new(1);
  initial begin
    repeat(3) begin
      s.get(1); $display("Q19 -> Loop %0t", $time); #2; s.put(1);
    end
  end
endmodule
*/

//-------------------------------------------------------------
// Q20: Semaphore coordination between modules
//-------------------------------------------------------------
/*
module q20;
  semaphore s = new(1);
  initial begin
    fork
      begin s.get(1); #4; $display("Q20 -> A done"); s.put(1); end
      begin s.get(1); #2; $display("Q20 -> B done"); s.put(1); end
    join
  end
endmodule
*/

//-------------------------------------------------------------
// Q21: Dynamic semaphore instance
//-------------------------------------------------------------
/*
module q21;
  semaphore s;
  initial begin
    s = new(2);
    s.get(1); $display("Q21 -> Dynamic acquired");
    s.put(1);
  end
endmodule
*/

//-------------------------------------------------------------
// Q22: Multiple semaphore objects
//-------------------------------------------------------------
/*
module q22;
  semaphore s1 = new(1), s2 = new(2);
  initial begin
    s1.get(1); $display("Q22 -> s1 got");
    s2.get(2); $display("Q22 -> s2 got");
    s1.put(1); s2.put(2);
  end
endmodule
*/

//-------------------------------------------------------------
// Q23: Shared resource with semaphore
//-------------------------------------------------------------
/*
module q23;
  semaphore s = new(1);
  int shared;
  task use(int val);
    s.get(1);
    shared = val;
    $display("Q23 -> Updated shared=%0d", shared);
    s.put(1);
  endtask
  initial fork use(10); use(20); join
endmodule
*/

//-------------------------------------------------------------
// Q24: Wait for semaphore token dynamically
//-------------------------------------------------------------
/*
module q24;
  semaphore s = new(0);
  initial begin
    fork
      begin s.get(1); $display("Q24 -> Acquired"); end
      begin #3; s.put(1); $display("Q24 -> Released"); end
    join
  end
endmodule
*/

//-------------------------------------------------------------
// Q25: Semaphore in always block (simulation purpose)
//-------------------------------------------------------------
/*
module q25;
  semaphore s = new(1);
  always begin
    s.get(1);
    $display("Q25 -> Always block got at %0t", $time);
    #2;
    s.put(1);
    #2;
  end
endmodule
*/

//-------------------------------------------------------------
// Q26: Semaphore inside class
//-------------------------------------------------------------
/*
class sem_ctrl;
  semaphore s;
  function new(); s = new(1); endfunction
  task access(string n);
    s.get(1); $display("Q26 -> %s got", n); #2; s.put(1);
  endtask
endclass

module q26;
  sem_ctrl c = new();
  initial fork
    c.access("A"); c.access("B");
  join
endmodule
*/

//-------------------------------------------------------------
// Q27: Semaphore usage count simulation
//-------------------------------------------------------------
/*
module q27;
  semaphore s = new(3);
  initial begin
    s.get(1); $display("Q27 -> Remaining permits reduce");
    s.put(1); $display("Q27 -> Permits restored");
  end
endmodule
*/

//-------------------------------------------------------------
// Q28: Mixed size get-put
//-------------------------------------------------------------
/*
module q28;
  semaphore s = new(5);
  initial begin
    s.get(3); $display("Q28 -> Got 3 of 5");
    s.put(2); $display("Q28 -> Put 2 back");
  end
endmodule
*/

//-------------------------------------------------------------
// Q29: Semaphore used with forever loop
//-------------------------------------------------------------
/*
module q29;
  semaphore s = new(1);
  initial forever begin
    s.get(1);
    $display("Q29 -> Loop action at %0t", $time);
    #3; s.put(1); #1;
  end
endmodule
*/

//-------------------------------------------------------------
// Q30: Delayed get and release sequence
//-------------------------------------------------------------
/*
module q30;
  semaphore s = new(1);
  initial begin
    #5 s.get(1);
    $display("Q30 -> Acquired at %0t", $time);
    #5 s.put(1);
  end
endmodule
*/

