
# 📘 SystemVerilog Assertions Syntax Reference
---

## 1. Basics of Assertions

### 1.1 Immediate vs Concurrent
````systemverilog
assert (expr) else $error("Failed");

assert property (@(posedge clk) expr);

1.2 assert, assume, cover

assert property (@(posedge clk) a |-> b);

assume property (@(posedge clk) req |-> gnt);

cover property (@(posedge clk) req |-> gnt);

1.3 Default clocking block

default clocking cb @(posedge clk);
endclocking

````
---

2. Sequence Fundamentals
````systemverilog
2.1 sequence and property

sequence seq1;
  a ##1 b;
endsequence

property p1;
  seq1;
endproperty

2.2 Overlapping implication

assert property (@(posedge clk) a |-> b);

2.3 Non-overlapping implication

assert property (@(posedge clk) a |=> b);

2.4 Sequential delays

a ##3 b;

2.5 Repetition operators

a[*3];       // repeat 3 times
a[+3];       // 3 or more times
a[=3];       // exactly 3 matches
````

---

3. Property Basics
````systemverilog
3.1 Property definition

property p1;
  @(posedge clk) a |-> b;
endproperty

3.2 Property with sequence call

property p2;
  seq1 |-> c;
endproperty

3.3 disable iff usage

assert property (@(posedge clk) disable iff (!reset) a |-> b);

3.4 Property instantiation

assert property (p1);

````
---

4. Sequence Operators
````systemverilog
4.1 AND

seq1 and seq2

4.2 OR

seq1 or seq2

4.3 NOT

!seq1

4.4 WITHIN

seq1 within seq2

4.5 THROUGHOUT

seq1 throughout seq2

4.6 INTERSECT

seq1 intersect seq2

4.7 FIRST_MATCH

first_match(seq1)

````
---

5. System Functions
````systemverilog
5.1 $rose

$rose(signal)

5.2 $fell

$fell(signal)

5.3 stable

stable(signal)

5.4 unchanged

unchanged(signal)

5.5 isunknown

isunknown(signal)

5.6 $past

$past(signal)

5.7 $onehot / $onehot0

$onehot(vector)

$onehot0(vector)

````
---

6. Temporal Windows

````systemverilog 
6.1 Exact cycle repetition

a[*3]

6.2 Range repetition

a[*2:5]

6.3 Eventuality

a[->3]

6.4 Delay

a ##2 b

6.5 Implication inside repetition

(a |-> b)[*3]
````

---

7. Disabling Conditions
````systemverilog
7.1 disable iff

assert property (@(posedge clk) disable iff (!reset) a |-> b);

7.2 Aborting

assert property (@(posedge clk) a |-> b abort c);
````

---

8. Vacuous & Trivial
````systemverilog
8.1 Vacuous pass

a |-> b

8.2 Avoid vacuous

strong (a |-> b)

````
---

9. Using assert/assume/cover
````systemverilog
9.1 assert property

assert property (p1);

9.2 assume property

assume property (p2);

9.3 cover property

cover property (p3);

````
---
````systemverilog
10. Reporting

10.1 $error, $fatal

assert property (p1) else $error("Fail");

assert property (p2) else $fatal("Stop sim");

10.2 $warning

assert property (p3) else $warning("Warn only");

10.3 $monitor

$monitor("a=%0b b=%0b", a, b);

````
---

11. RTL Assertions
````systemverilog
11.1 FSM checks

assert property (@(posedge clk) state==S1 |-> next_state==S2);

11.2 Protocol handshake

assert property (@(posedge clk) req |-> ##1 gnt);

11.3 Data transfer

assert property (@(posedge clk) valid |-> ready);

11.4 Reset behavior

assert property (@(posedge clk) disable iff (!reset) data==0);

````
---

12. Coding Best Practices
````systemverilog
12.1 Name every property

property p_handshake;
  @(posedge clk) req |-> gnt;
endproperty

12.2 Reuse sequences

sequence s_req;
  req ##1 gnt;
endsequence

12.3 Modular blocks

`include "assertions.sv"

12.4 Avoid long sequences

break_into_smaller_properties();

````
---

13. Simulation vs Formal
````systemverilog
13.1 Simulation TB

assert property (@(posedge clk) a |-> b);

13.2 Formal tools

assume property (@(posedge clk) req |-> gnt);
````
---