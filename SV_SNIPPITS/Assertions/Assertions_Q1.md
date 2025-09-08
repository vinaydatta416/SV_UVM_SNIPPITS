
### Question 1 — “If A at posedge then next cycle B=1 & C stable until B goes low; when B goes low in same cycle C should change.”

**Assumption:** “C should be stable while B is high, and **when** B goes low C **must change in that same cycle**.”

```systemverilog
// Q1: A -> next cycle B high and C stable while B==1; when B falls, C must change in that same cycle
property Q1_stable_until_B_falls;
  @(posedge clk) disable iff (reset)
    $rose(A) |=> begin
      // at next cycle B must be 1
      ##1 (B) &&
      // while B remains 1, C must NOT change
      ( (B throughout $stable(C)) ) &&
      // eventually B will fall and when it falls C must change in that same cycle
      ( (##0 ($fell(B) && $changed(C))) [*1:$] );
    end
endproperty
// Assert or bind: assert property (Q1_stable_until_B_falls);
```

---

### Question 2 — “Assertion to check divide-by-2 circuit output”

**Goal:** Output `q` toggles every clock cycle (i.e., `q` is the input divided by 2).

```systemverilog
// Q2: divide-by-2: q should toggle every posedge (when not reset)
property Q2_div2 (logic q);
  @(posedge clk) disable iff (reset)
    q == !$past(q,1);
endproperty
// usage: assert property (Q2_div2(q));
```

---

### Question 3 — “Verify clock has 50% duty cycle of any given time period”

**Interpretation:** parameterize with `N` cycles = half-period (i.e., high for N cycles, low for N cycles).

```systemverilog
// Q3: parameterized 50% duty check. N = half-period (in clock cycles)
property Q3_50pct (int unsigned N);
  @(posedge clk) disable iff (reset)
    // On a rising edge, after N cycles we should see a falling edge,
    // and after another N cycles the next rising edge.
    $rose(clk) |=> ##N $fell(clk) && ##N $rose(clk);
endproperty
// example assert: assert property (Q3_50pct(5)); // half-period = 5 cycles
```

*(If you need a continuous stream check rather than from single posedge, we can write a rolling check.)*

---

### Question 4 — “When A goes high, from next cycle B should repeat n times where n = C\[3:0] when A asserted.”

```systemverilog
// Q4: capture n = C[3:0] at the time A rose, then starting next cycle B must be '1' for n consecutive cycles
property Q4_repeat_B;
  @(posedge clk) disable iff (reset)
    $rose(A) |=> begin
      int unsigned n;
      n = C[3:0];
      // from next cycle: require B for exactly n cycles
      ##1 (B)[*n];
    end
endproperty
// assert property (Q4_repeat_B);
```

*(If you want “repeat n times possibly non-consecutive” replace `(B)[*n]` with a pattern that allows intermittent ones; tell me and I’ll provide that variant.)*

---

### Question 5 — Complex conditional on `d` rising

**Text:** When `d` changes to 1, on next cycle if `b` is true then `c` should be high continuously or intermittently for 2 cycles followed by `a` high next cycle; else symmetric with `a` for 2 cycles followed by `c`.
**Assumption implemented:** “high continuously for 2 cycles” (i.e., two consecutive cycles) — if you want the “intermittent” variant (at least once in 2 cycles) tell me and I’ll change it.

```systemverilog
// Q5: on $rose(d) -> at next cycle choose branch by b
property Q5_branch;
  @(posedge clk) disable iff (reset)
    $rose(d) |=> ##1 (
      // if b==1 at that next cycle:
      ( b ? ( (c && ##1 c) ##1 a ) 
          // else: a two cycles then c
          : ( (a && ##1 a) ##1 c ) )
    );
endproperty
// assert property (Q5_branch);
```

*(To allow “intermittent over 2 cycles” semantics: replace `(c && ##1 c)` by `(c || ##1 c)` with an appropriate repetition; I can provide that if needed.)*

---

### Question 6 — “On positive edge of a, b must be high continuously until c goes low”

```systemverilog
// Q6: on rising edge of 'a', 'b' must remain 1 continuously until 'c' falls.
property Q6_b_until_c_falls;
  @(posedge clk) disable iff (reset)
    $rose(a) |=> begin
      // Require b to hold true on every cycle until we observe $fell(c)
      (b) [*1:$] until $fell(c)
    end
endproperty
// assert property (Q6_b_until_c_falls);
```

*(If your simulator doesn't accept `until` in that sequence style, an equivalent is: \$rose(a) |=> (b throughout (!c)) || ( (b throughout (!c)) ##1 \$fell(c) ). I can provide alternate forms.)*

---

### Question 7 — “Mod-12 loadable up-down counter”

Provide a set of concise properties covering range, load, up/down behavior, and wrapping.

```systemverilog
// Q7a: count always in 0..11
property Q7_range (logic [3:0] count); // 4-bit representation ok
  @(posedge clk) disable iff (reset)
    (count <= 11);
endproperty

// Q7b: load behavior: when load asserted, count equals data_in next cycle
property Q7_load (logic load, logic [3:0] data_in, logic [3:0] count);
  @(posedge clk) disable iff (reset)
    $rose(load) |=> ##1 (count == data_in);
endproperty

// Q7c: up mode: when up asserted and not load, count increments mod 12
property Q7_up (logic up, logic load, logic [3:0] count);
  @(posedge clk) disable iff (reset)
    (up && !load) |=> ##1 (count == (( $past(count) + 1 ) % 12));
endproperty

// Q7d: down mode: when down asserted and not load, count decrements mod 12
property Q7_down (logic down, logic load, logic [3:0] count);
  @(posedge clk) disable iff (reset)
    (down && !load) |=> ##1 (count == (( $past(count) + 11 ) % 12)); // -1 mod 12
endproperty

// Use asserts:
// assert property (Q7_range(count));
// assert property (Q7_load(load, data_in, count));
// assert property (Q7_up(up, load, count));
// assert property (Q7_down(down, load, count));
```

---

### Question 8 — “Assertions to verify JK flipflop”

Standard JK truth-table (sync on posedge `clk`, with reset).

```systemverilog
// Q8-JK: standard behavior. q is current output, j,k are inputs
// 1) J=0,K=0 -> no change
property Q8_no_change (logic j,k,logic q);
  @(posedge clk) disable iff (reset)
    (!j && !k) |=> ##1 (q == $past(q));
endproperty

// 2) J=1,K=0 -> set
property Q8_set (logic j,k,logic q);
  @(posedge clk) disable iff (reset)
    (j && !k) |=> ##1 (q == 1'b1);
endproperty

// 3) J=0,K=1 -> reset
property Q8_reset (logic j,k,logic q);
  @(posedge clk) disable iff (reset)
    (!j && k) |=> ##1 (q == 1'b0);
endproperty

// 4) J=1,K=1 -> toggle
property Q8_toggle (logic j,k,logic q);
  @(posedge clk) disable iff (reset)
    (j && k) |=> ##1 (q == !$past(q));
endproperty

// assert property (Q8_no_change(j,k,q));
// assert property (Q8_set(j,k,q));
// assert property (Q8_reset(j,k,q));
// assert property (Q8_toggle(j,k,q));
```

---

### Question 9 — “Verify FSM which detects sequence ‘101’”

**Interpretation:** When serial input `din` contains contiguous bits `1,0,1` on consecutive clocks, detect (`det` or `out`) should assert (either immediately at last bit or next cycle depending on design). Below asserts that when pattern `1 ##1 0 ##1 1` occurs, `det` is 1 **at the cycle of the last '1'**.

```systemverilog
// Q9: FSM sequence detector for pattern 1-0-1: assert det on the last '1' cycle
sequence s_101 (logic din);
  (din == 1'b1) ##1 (din == 1'b0) ##1 (din == 1'b1);
endsequence

property Q9_seq_detector (logic din, logic det);
  @(posedge clk) disable iff (reset)
    s_101 |=> (det == 1'b1);
endproperty
// assert property (Q9_seq_detector(din,det));
```

*(If your FSM asserts output in the next cycle, change the implication to `s_101 |=> ##1 (det==1)`).)*

---

### Question 10 — “Whenever valid goes high, enable should be asserted next cycle & stable till ready; ready should assert after enable within 4–6 cycles.”

```systemverilog
// Q10: valid -> next cycle enable asserted; enable must remain stable (1) until ready;
// ready must be asserted within 4..6 cycles after the enable assertion.
property Q10_valid_enable_ready (logic valid, logic enable, logic ready);
  @(posedge clk) disable iff (reset)
    $rose(valid) |=> begin
      // enable must be asserted in the next cycle
      ##1 (enable) &&
      // enable must remain asserted until ready (i.e., stable 1 on each intervening cycle before ready)
      ( (enable throughout (!ready)) ) &&
      // ready must occur 4..6 cycles after the enable assertion (counting cycles after the enable cycle)
      ##[4:6] (ready);
    end
endproperty
// assert property (Q10_valid_enable_ready(valid, enable, ready));
```

*(If you want `enable` allowed to be asserted earlier than exactly next cycle,
 or allowed to de-assert & re-assert, tell me — I can create the looser or stricter variant.)*

---


