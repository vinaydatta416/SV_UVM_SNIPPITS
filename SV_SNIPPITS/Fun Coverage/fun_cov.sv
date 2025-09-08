// SystemVerilog - 100 interview coverage questions (snippets only)
// Each entry is a small coverage-related code snippet or syntax example
// All in one file — Q1..Q100

// Q1: basic covergroup and coverpoint
covergroup cg1 @(posedge clk);
  cp1 : coverpoint opcode;
endgroup

// Q2: coverpoint with bins
covergroup cg2 @(posedge clk);
  cp2 : coverpoint addr {
    bins small = {0,1,2};
  }
endgroup

// Q3: range bins
covergroup cg3 @(posedge clk);
  cp3 : coverpoint data { bins r = { [0:15] }; }
endgroup

// Q4: ignore_bins example
covergroup cg4 @(posedge clk);
  cp4 : coverpoint mode { ignore_bins invalid = { 'x, 'z }; }
endgroup

// Q5: illegal_bins example
covergroup cg5 @(posedge clk);
  cp5 : coverpoint flag { illegal_bins bad = {2}; }
endgroup

// Q6: cross coverage
covergroup cg6 @(posedge clk);
  cp_a : coverpoint a;
  cp_b : coverpoint b;
  cross cp_a, cp_b;
endgroup

// Q7: weighted bins
covergroup cg7 @(posedge clk);
  cp7 : coverpoint op { bins common = {0,1} weight=10; }
endgroup

// Q8: transitions coverage
covergroup cg8 @(posedge clk);
  cp8 : coverpoint state { trans bins t = (0 => 1 => 2); }
endgroup

// Q9: sampled manually
covergroup cg9;
  cp9 : coverpoint x;
endgroup
// in code: cg9_inst.sample();

// Q10: sampled on event
covergroup cg10 @(posedge samp_evt);
  cp10 : coverpoint y;
endgroup

// Q11: per instance vs type (tool option shown)
// per-instance shown by creating objects: cg11 cg_inst = new();

// Q12: coverproperty example
property p_cov @(posedge clk);
  @(posedge clk) (req && ack) |-> ##1 data == expected;
endproperty
cover property (p_cov);

// Q13: cover sequence with sequence name
sequence seq1; a ##1 b; endsequence
cover property ( @(posedge clk) seq1 );

// Q14: covergroup inside class
class T;
  covergroup cg(@(posedge clk));
    cp : coverpoint t_val;
  endgroup
endclass

// Q15: cross with option.weight
covergroup cg15 @(posedge clk);
  cp1: coverpoint p1;
  cp2: coverpoint p2;
  cross p1, p2 { option.goal = 90; }
endgroup

// Q16: binsof usage
covergroup cg16 @(posedge clk);
  cp_a : coverpoint a;
  cp_b : coverpoint b { bins bb[] = binsof(a); }
endgroup

// Q17: foreach in coverpoint (array)
covergroup cg17 @(posedge clk);
  cp_arr : coverpoint arr[i] foreach (arr[i]);
endgroup

// Q18: open range bins
covergroup cg18 @(posedge clk);
  cp18 : coverpoint val { bins high = {[100:$]}; }
endgroup

// Q19: default illegal/ignore example via option
covergroup cg19 @(posedge clk);
  cp19 : coverpoint v;
  option.per_instance = 1;
endgroup

// Q20: coverpoint with function call in bin
function int mybin(int v); return (v%4); endfunction
covergroup cg20 @(posedge clk);
  cp20 : coverpoint v { bins fb = { mybin(v) }; }
endgroup

// Q21: cross with ignore bins
covergroup cg21 @(posedge clk);
  cpA : coverpoint A;
  cpB : coverpoint B;
  cross cpA, cpB { ignore_bins ib = of (cpA == 0 && cpB == 'x); }
endgroup

// Q22: coverpoint with illegal_bins using expression
covergroup cg22 @(posedge clk);
  cp22 : coverpoint s { illegal_bins bad = { s > 15 }; }
endgroup

// Q23: covergroup with sample method in class
class CGHelper;
  covergroup cgh @(posedge clk); cp: coverpoint x; endgroup
  function void hit(); cgh.sample(); endfunction
endclass

// Q24: covergroup with option.goal
covergroup cg24 @(posedge clk);
  cp24: coverpoint z; option.goal = 80;
endgroup

// Q25: transition bins explicit two-value
covergroup cg25 @(posedge clk);
  cp25 : coverpoint s { trans bins t = (1 => 0); }
endgroup

// Q26: coverpoint with wildcard (all values)
covergroup cg26 @(posedge clk);
  cp26 : coverpoint type { bins all_vals[] = {[0:$]}; }
endgroup

// Q27: using with..inside in coverpoint expression
covergroup cg27 @(posedge clk);
  cp27 : coverpoint v { bins inside_range = { [10:20] }; }
endgroup

// Q28: coverpoint using illegal_bins inside
covergroup cg28 @(posedge clk);
  cp28 : coverpoint mode { illegal_bins inv = { if (mode==3) 1 }; }
endgroup

// Q29: cross with weight per cross bin
covergroup cg29 @(posedge clk);
  a_cp: coverpoint a;
  b_cp: coverpoint b;
  cross a_cp, b_cp { option.weight = 5; }
endgroup

// Q30: covergroup with timed sampling (repeat sampling)
covergroup cg30 @(posedge clk);
  cp30: coverpoint sig;
endgroup
// sample via: repeat (10) @(posedge clk) cg30_inst.sample();

// Q31: coverpoint with illegal_bins and message (tool dependent)
covergroup cg31 @(posedge clk);
  cp31 : coverpoint v { illegal_bins bad = { -1 }; }
endgroup

// Q32: covergroup with ignore_bins using ranges
covergroup cg32 @(posedge clk);
  cp32 : coverpoint val { ignore_bins ig = { [100:200] }; }
endgroup

// Q33: cover cross with illegal combination
covergroup cg33 @(posedge clk);
  cp1: coverpoint x;
  cp2: coverpoint y;
  cross cp1, cp2 { illegal_bins badcross = { (x==0 && y==0) }; }
endgroup

// Q34: covergroup and sampling in initial block
covergroup cg34 @(posedge clk);
  cp34: coverpoint req;
endgroup
initial begin
  cg34 cg34_inst = new();
  @(posedge clk) cg34_inst.sample();
end

// Q35: using inside to create bin ranges
covergroup cg35 @(posedge clk);
  cp35 : coverpoint addr { bins page = { [0:255] }; }
endgroup

// Q36: coverpoint with multiple bins comma separated
covergroup cg36 @(posedge clk);
  cp36 : coverpoint op { bins a = {0,2}, b = {1}; }
endgroup

// Q37: coverpoint with wildcard 'default' bin
covergroup cg37 @(posedge clk);
  cp37 : coverpoint val { bins default_bins = default; }
endgroup

// Q38: cross with different sizes (sparse)
covergroup cg38 @(posedge clk);
  cpA: coverpoint a;
  cpB: coverpoint b;
  cross cpA, cpB;
endgroup

// Q39: covergroup in interface
interface my_if(input logic clk);
  covergroup cg_if @(posedge clk);
    cp : coverpoint sig;
  endgroup
endinterface

// Q40: coverpoint using config option (tool-specific)
covergroup cg40 @(posedge clk);
  cp40 : coverpoint cfg_val;
  // option.per_instance = 0; // set via tool
endgroup

// Q41: coverproperty monitoring event sequence with negation
property p41 @(posedge clk);
  @(posedge clk) !$rose(reset) |-> req ##1 ack;
endproperty
cover property (p41);

// Q42: coverpoint with function-based bin values
function bit is_rare(int v); return v==7; endfunction
covergroup cg42 @(posedge clk);
  cp42: coverpoint v { bins rare = { if (is_rare(v)) v }; }
endgroup

// Q43: cross with wildcard bins using [*]
covergroup cg43 @(posedge clk);
  cp1: coverpoint a;
  cp2: coverpoint b;
  cross cp1[*], cp2[*];
endgroup

// Q44: covergroup with local variables and sample
covergroup cg44 @(posedge clk);
  option.per_instance = 1;
  cp44: coverpoint d;
endgroup

// Q45: coverproperty with ##[1:3] timing
sequence s45; a ##[1:3] b; endsequence
cover property (@(posedge clk) s45);

// Q46: coverpoint with bins using union of ranges
covergroup cg46 @(posedge clk);
  cp46: coverpoint v { bins u = { [0:3], [8:15] }; }
endgroup

// Q47: coverpoint on packed array element
logic [7:0] byte_arr [0:3];
covergroup cg47 @(posedge clk);
  cp47: coverpoint byte_arr[2];
endgroup

// Q48: covergroup sampling conditional
covergroup cg48 @(posedge clk);
  cp48: coverpoint sig;
endgroup
// sample only when enable: if (en) cg48_inst.sample();

// Q49: cross with option.goal set per cross
covergroup cg49 @(posedge clk);
  p1: coverpoint a;
  p2: coverpoint b;
  cross p1, p2 { option.goal = 100; }
endgroup

// Q50: coverpoint with bins and weight per bin
covergroup cg50 @(posedge clk);
  cp50: coverpoint code { bins c1 = {0} weight=5; }
endgroup

// Q51: covergroup with keep_bins (tool specific - pseudo)
covergroup cg51 @(posedge clk);
  cp51: coverpoint x;
  // keep_bins cp51.keep = 1; // tool-specific
endgroup

// Q52: coverpoint using match with don't-care
covergroup cg52 @(posedge clk);
  cp52: coverpoint addr { bins d = { 8'b1x0x }; }
endgroup

// Q53: coverproperty for sequence of signals
property p53 @(posedge clk);
  @(posedge clk) (start && valid) |-> ##[0:4] done;
endproperty
cover property (p53);

// Q54: covergroup with explicit bin index (auto bin creation)
covergroup cg54 @(posedge clk);
  cp54: coverpoint sig { bins auto[]; }
endgroup

// Q55: cross with ignore_bins using of() syntax
covergroup cg55 @(posedge clk);
  a: coverpoint a;
  b: coverpoint b;
  cross a,b { ignore_bins ib = of (a==0 && b==1); }
endgroup

// Q56: coverpoint using illegal_bins with function
function bit illegal_check(int v); return v>255; endfunction
covergroup cg56 @(posedge clk);
  cp56: coverpoint val { illegal_bins ib = { if (illegal_check(val)) 1 }; }
endgroup

// Q57: covergroup with sampled_when (tool-specific syntax shown as comment)
// covergroup cg57 @(posedge clk) with (sample_when(en));

// Q58: covergroup with bins and keep option
covergroup cg58 @(posedge clk);
  cp58: coverpoint t { bins b[] = { [0:3] }; }
endgroup

// Q59: coverpoint on enum type
typedef enum {IDLE, BUSY, DONE} st_t;
covergroup cg59 @(posedge clk);
  cp59: coverpoint state;
endgroup

// Q60: cross with multiple coverpoints
covergroup cg60 @(posedge clk);
  a: coverpoint a;
  b: coverpoint b;
  c: coverpoint c;
  cross a,b,c;
endgroup

// Q61: coverproperty with implication and sequence
sequence seq61; a && b; endsequence
cover property (@(posedge clk) seq61);

// Q62: coverpoint with dynamic bin creation using foreach
logic [3:0] arr;
covergroup cg62 @(posedge clk);
  cp62: coverpoint arr[i] foreach (i);
endgroup

// Q63: covergroup with option.auto_bin (pseudo)
covergroup cg63 @(posedge clk);
  cp63: coverpoint val; // option.auto_bin = 1; (tool-specific)
endgroup

// Q64: coverpoint with sample on change (manual)
covergroup cg64 @(posedge clk);
  cp64: coverpoint sig;
endgroup
always @(sig) cg64_inst.sample();

// Q65: cross with per-instance aggregation comment
covergroup cg65 @(posedge clk);
  p1: coverpoint a;
  p2: coverpoint b;
  cross p1,p2;
endgroup
// aggregate via tool setting

// Q66: coverproperty with overlapping and non-overlapping sequences
sequence so; a ##1 b; endsequence
sequence sn; a [->1] b; endsequence
cover property (@(posedge clk) so);

// Q67: covergroup with disable_coverage (tool hint)
// disable_coverage for specific module region is tool-specific

// Q68: coverpoint with binsof and unique bins
covergroup cg68 @(posedge clk);
  cpX: coverpoint X;
  cpY: coverpoint Y { bins ybins[] = binsof(X); }
endgroup

// Q69: cross with exclusions using ignore_bins
covergroup cg69 @(posedge clk);
  cpA: coverpoint A;
  cpB: coverpoint B;
  cross cpA, cpB { ignore_bins ig = of (cpA == 0 && cpB == 2); }
endgroup

// Q70: coverproperty to cover temporal property occurrence
property p70 @(posedge clk);
  @(posedge clk) seq1 |=> ##[0:2] seq2;
endproperty
cover property (p70);

// Q71: covergroup in program block
program cov_prog(input logic clk);
  covergroup pg @(posedge clk); cp: coverpoint sig; endgroup
endprogram

// Q72: coverpoint with multiple levels of cross
covergroup cg72 @(posedge clk);
  cp1: coverpoint a;
  cp2: coverpoint b;
  cp3: coverpoint c;
  cross cp1, cp2;
  cross cp1, cp3;
endgroup

// Q73: coverpoint sampling based on condition using sample() inside if
covergroup cg73 @(posedge clk);
  cp73: coverpoint d;
endgroup
always @(posedge clk) if (cond) cg73_inst.sample();

// Q74: coverproperty with sequence repetition
sequence s74; a [*3] b; endsequence
cover property (@(posedge clk) s74);

// Q75: covergroup with option.comment (pseudo)
covergroup cg75 @(posedge clk);
  cp75: coverpoint v; // option.comment = "critical";
endgroup

// Q76: coverpoint with set of discrete bins
covergroup cg76 @(posedge clk);
  cp76: coverpoint code { bins set = {1,3,5,7}; }
endgroup

// Q77: cross that uses transitions on one axis
covergroup cg77 @(posedge clk);
  st: coverpoint state { trans bins tr = (IDLE => BUSY); }
  ev: coverpoint evt;
  cross st, ev;
endgroup

// Q78: coverpoint using ignore_bins combined with ranges
covergroup cg78 @(posedge clk);
  cp78: coverpoint v { ignore_bins ig = { [100:199] }; }
endgroup

// Q79: coverproperty using @(a) event in property
property p79 @(posedge clk);
  @(posedge clk) (en) |-> ##1 valid;
endproperty
cover property (p79);

// Q80: covergroup with bins declared as array
covergroup cg80 @(posedge clk);
  cp80: coverpoint v { bins b[3] = { [0:2] }; }
endgroup

// Q81: cross using option.ignore at cross level (pseudo)
covergroup cg81 @(posedge clk);
  a: coverpoint a;
  b: coverpoint b;
  cross a,b { // ignore certain combos via tool option }
endgroup

// Q82: coverpoint on struct member
typedef struct { int a; int b; } pkg_t;
covergroup cg82 @(posedge clk);
  cp82: coverpoint pkg.a;
endgroup

// Q83: coverproperty that covers liveness (eventually)
property p83 @(posedge clk);
  @(posedge clk) start |=> ##[1:$] done;
endproperty
cover property(p83);

// Q84: coverpoint with 'at' sampling on posedge of different clock
covergroup cg84 @(posedge other_clk);
  cp84: coverpoint sig;
endgroup

// Q85: covergroup with per_instance option inside class (pseudo)
class C85; covergroup cg85 @(posedge clk); cp: coverpoint x; endgroup endclass

// Q86: coverpoint with bins using match operator
covergroup cg86 @(posedge clk);
  cp86: coverpoint addr { bins m = { 8'b1?0? }; }
endgroup

// Q87: cross of coverpoints with diamond/sequence concept via coverproperty
sequence s87; a ##1 b; endsequence
cover property (@(posedge clk) s87 && c);

// Q88: covergroup showing how to collect transition coverage across array
covergroup cg88 @(posedge clk);
  cp88 : coverpoint arr[i] foreach (i) { trans bins t = (0 => 1); }
endgroup

// Q89: coverproperty with implication and negation
property p89 @(posedge clk);
  @(posedge clk) req |-> ##1 (!error);
endproperty
cover property(p89);

// Q90: coverpoint using soft bins (pseudo, tool-specific)
covergroup cg90 @(posedge clk);
  cp90: coverpoint val; // soft bins via tool setting
endgroup

// Q91: covergroup with named instances
covergroup cg91 @(posedge clk);
  cp91: coverpoint v;
endgroup
cg91 cg91_inst = new();

// Q92: coverpoint with conditional bin using 'if' syntax
covergroup cg92 @(posedge clk);
  cp92: coverpoint v { bins cond = { if (v > 10) v }; }
endgroup

// Q93: coverproperty for mutual exclusion (mutex)
property p93 @(posedge clk);
  @(posedge clk) (one_hot) |-> !(two_hot);
endproperty
cover property(p93);

// Q94: cross with bin-of and index
covergroup cg94 @(posedge clk);
  cpA: coverpoint A;
  cpB: coverpoint B { bins fromA[] = binsof(A); }
endgroup

// Q95: covergroup with sample() called in task
covergroup cg95 @(posedge clk);
  cp95: coverpoint x;
endgroup
task hit95(); cg95_inst.sample(); endtask

// Q96: coverproperty using sequence concatenation
sequence s96; a ##1 b ##1 c; endsequence
cover property (@(posedge clk) s96);

// Q97: coverpoint with illegal_bins and coverage fail (tool-specific)
covergroup cg97 @(posedge clk);
  cp97: coverpoint v { illegal_bins ib = { -1 }; }
endgroup

// Q98: cross with weight and goal
covergroup cg98 @(posedge clk);
  p1: coverpoint a;
  p2: coverpoint b;
  cross p1,p2 { option.goal = 95; }
endgroup

// Q99: hierarchical covergroups (covergroup inside module and class)
module m99(input logic clk);
  covergroup mg @(posedge clk); cp: coverpoint s; endgroup
endmodule

// Q100: minimal coverpoint on expression
covergroup cg100 @(posedge clk);
  cp100: coverpoint (addr[3:0]);
endgroup

// End of file




//=================================================
// Q1: Define a simple covergroup on signal "a"
covergroup cg1;
  coverpoint a;
endgroup

//=================================================
// Q2: Add bins for specific values of "b"
covergroup cg2;
  coverpoint b { bins low = {0}; bins high = {1}; }
endgroup

//=================================================
// Q3: Cross coverage between two signals "x" and "y"
covergroup cg3;
  coverpoint x;
  coverpoint y;
  cross x, y;
endgroup

//=================================================
// Q4: Ignore unwanted values (3,7) for signal "c"
covergroup cg4;
  coverpoint c { ignore_bins ign = {3,7}; }
endgroup

//=================================================
// Q5: Illegal bins example for signal "d"
covergroup cg5;
  coverpoint d { illegal_bins bad = {5}; }
endgroup

//=================================================
// Q6: Transition coverage for signal "e"
covergroup cg6;
  coverpoint e { bins trans[] = (0 => 1); }
endgroup

//=================================================
// Q7: Manual sampling of covergroup
cg1 cg_inst = new();
initial begin
  a = 1;
  cg_inst.sample();
end

//=================================================
// Q8: Default bins for a range [0:7]
covergroup cg7;
  coverpoint f { bins all[] = {[0:7]}; }
endgroup

//=================================================
// Q9: Cross coverage with illegal bins
covergroup cg8;
  coverpoint g;
  coverpoint h;
  cross g,h { illegal_bins bad = binsof(g) intersect {3}; }
endgroup

//=================================================
// Q10: Enum coverage example
typedef enum {RED, GREEN, BLUE} color_e;
covergroup cg9;
  coverpoint clr;
endgroup


//=================================================
// Q11: Cover odd/even values of signal "a"
covergroup cg11;
  coverpoint a { bins odd = {1,3,5}; bins even = {0,2,4}; }
endgroup

//=================================================
// Q12: Cover range partition for "b"
covergroup cg12;
  coverpoint b { bins low = {[0:3]}; bins mid = {[4:7]}; bins high = {[8:15]}; }
endgroup

//=================================================
// Q13: Coverpoint with wildcard bins
covergroup cg13;
  coverpoint c { wildcard bins mask1 = {4'b1???}; }
endgroup

//=================================================
// Q14: Coverpoint with array values
covergroup cg14;
  coverpoint arr_val[4];
endgroup

//=================================================
// Q15: Cross coverage of three signals
covergroup cg15;
  coverpoint x; coverpoint y; coverpoint z;
  cross x,y,z;
endgroup

//=================================================
// Q16: Ignore all zero case in cross
covergroup cg16;
  coverpoint m; coverpoint n;
  cross m,n { ignore_bins zero = binsof(m) intersect {0} && binsof(n) intersect {0}; }
endgroup

//=================================================
// Q17: Illegal bin for out-of-spec values
covergroup cg17;
  coverpoint p { illegal_bins invalid = {[100:255]}; }
endgroup

//=================================================
// Q18: Coverpoint with default auto bins
covergroup cg18;
  coverpoint q { option.auto_bin_max = 8; }
endgroup

//=================================================
// Q19: Cover transition 1=>0 and 0=>1
covergroup cg19;
  coverpoint r { bins toggle[] = (0=>1, 1=>0); }
endgroup

//=================================================
// Q20: Cross with transition bins
covergroup cg20;
  coverpoint s { bins rise = (0=>1); }
  coverpoint t;
  cross s,t;
endgroup

//=================================================
// Q21: Coverpoint with array of bins
covergroup cg21;
  coverpoint u { bins arr_bins[] = {[0:15]}; }
endgroup

//=================================================
// Q22: Sample covergroup on posedge clk
covergroup cg22 @(posedge clk);
  coverpoint v;
endgroup

//=================================================
// Q23: Coverpoint using iff condition
covergroup cg23;
  coverpoint w iff (enable);
endgroup

//=================================================
// Q24: Ignore bins using condition
covergroup cg24;
  coverpoint x { ignore_bins ign = {[8:15]} iff (x > 10); }
endgroup

//=================================================
// Q25: Cross with iff condition
covergroup cg25;
  coverpoint y; coverpoint z;
  cross y,z iff (y>0 && z>0);
endgroup

//=================================================
// Q26: Cross using option.weight
covergroup cg26;
  coverpoint a1;
  coverpoint a2;
  cross a1,a2 { option.weight = 2; }
endgroup

//=================================================
// Q27: Covergroup with goal set
covergroup cg27;
  coverpoint b1; option.goal = 90;
endgroup

//=================================================
// Q28: Coverpoint with at_least option
covergroup cg28;
  coverpoint b2 { option.at_least = 2; }
endgroup

//=================================================
// Q29: Coverpoint with per_instance option
covergroup cg29;
  coverpoint b3; option.per_instance = 1;
endgroup

//=================================================
// Q30: Sample covergroup in class
class cov_class;
  covergroup cg30; coverpoint c1; endgroup
  function new; cg30 = new(); endfunction
endclass

//=================================================
// Q31: Cross of enum values
typedef enum {IDLE, RUN, STOP} state_e;
covergroup cg31;
  coverpoint st;
  coverpoint next_st;
  cross st, next_st;
endgroup

//=================================================
// Q32: Coverpoint with negedge clk sampling
covergroup cg32 @(negedge clk);
  coverpoint d1;
endgroup

//=================================================
// Q33: Coverpoint for signal transitions in sequence
covergroup cg33;
  coverpoint d2 { bins seq1 = (0=>1=>0); }
endgroup

//=================================================
// Q34: Cross coverage with sequence bins
covergroup cg34;
  coverpoint d3 { bins rise = (0=>1); }
  coverpoint d4;
  cross d3,d4;
endgroup

//=================================================
// Q35: Coverpoint for 2-bit vector
covergroup cg35;
  coverpoint vec[1:0];
endgroup

//=================================================
// Q36: Cross with vector coverpoint
covergroup cg36;
  coverpoint bus[3:0];
  coverpoint ctrl;
  cross bus, ctrl;
endgroup

//=================================================
// Q37: Coverpoint using local variable
covergroup cg37;
  int tmp;
  coverpoint tmp;
endgroup

//=================================================
// Q38: Cover bins using intersect operator
covergroup cg38;
  coverpoint e { bins half = binsof(e) intersect {[0:7]}; }
endgroup

//=================================================
// Q39: Coverpoint with default bin assignments
covergroup cg39;
  coverpoint f { bins others = default; }
endgroup

//=================================================
// Q40: Covergroup instantiation in module
module tb;
  covergroup cg40; coverpoint g; endgroup
  cg40 inst = new();
endmodule

//=================================================
// Q41: Cross with default bins
covergroup cg41;
  coverpoint h { bins vals[] = {[0:3]}; }
  coverpoint k;
  cross h,k;
endgroup

//=================================================
// Q42: Multiple bins in transition coverage
covergroup cg42;
  coverpoint i { bins multi[] = (0=>1,1=>2,2=>3); }
endgroup

//=================================================
// Q43: Transition bins with repetition
covergroup cg43;
  coverpoint j { bins rep = (1 [*3]); }
endgroup

//=================================================
// Q44: Coverpoint with illegal repeated pattern
covergroup cg44;
  coverpoint k1 { illegal_bins bad = (1[*2:4]); }
endgroup

//=================================================
// Q45: Coverpoint with bins merging
covergroup cg45;
  coverpoint k2 { bins all = {[0:3],[4:7]}; }
endgroup

//=================================================
// Q46: Cross coverage weight distribution
covergroup cg46;
  coverpoint k3; coverpoint k4;
  cross k3,k4 { option.weight = 5; }
endgroup

//=================================================
// Q47: Coverpoint with condition on sample
covergroup cg47;
  coverpoint l iff(resetn);
endgroup

//=================================================
// Q48: Covergroup with multiple coverpoints
covergroup cg48;
  coverpoint l1; coverpoint l2; coverpoint l3;
endgroup

//=================================================
// Q49: Cross three coverpoints with illegal bin
covergroup cg49;
  coverpoint m1; coverpoint m2; coverpoint m3;
  cross m1,m2,m3 { illegal_bins zero = {0}; }
endgroup

//=================================================
// Q50: Cover transition from any value to zero
covergroup cg50;
  coverpoint n { bins to_zero[] = ( [*] => 0 ); }
endgroup


//=================================================
// Q51: Coverpoint with auto_bin_max = 4
covergroup cg51;
  coverpoint a { option.auto_bin_max = 4; }
endgroup
cg51 inst51 = new();

//=================================================
// Q52: Cover a signal only when enable=1
covergroup cg52;
  coverpoint b iff (enable);
endgroup
cg52 inst52 = new();

//=================================================
// Q53: Cross coverage of two 2-bit signals
covergroup cg53;
  coverpoint x[1:0];
  coverpoint y[1:0];
  cross x, y;
endgroup

//=================================================
// Q54: Transition bins with sequence
covergroup cg54;
  coverpoint s { bins seq = (0=>1=>2); }
endgroup
cg54 inst54 = new();

//=================================================
// Q55: Ignore unwanted range of values
covergroup cg55;
  coverpoint d { ignore_bins ign = {[8:15]}; }
endgroup
cg55 inst55 = new();

//=================================================
// Q56: Illegal bin for protocol error values
covergroup cg56;
  coverpoint pkt_type { illegal_bins err = {7}; }
endgroup

//=================================================
// Q57: Cross with illegal_bins usage
covergroup cg57;
  coverpoint a;
  coverpoint b;
  cross a, b { illegal_bins bad = binsof(a) intersect {0}; }
endgroup

//=================================================
// Q58: Enum coverage
typedef enum {RED, GREEN, BLUE} color_e;
covergroup cg58;
  coverpoint clr;
endgroup

//=================================================
// Q59: Covergroup with multiple coverpoints
covergroup cg59;
  coverpoint p;
  coverpoint q;
  coverpoint r;
endgroup

//=================================================
// Q60: Cross three coverpoints
covergroup cg60;
  coverpoint u;
  coverpoint v;
  coverpoint w;
  cross u, v, w;
endgroup

//=================================================
// Q61: Coverpoint with bins for powers of 2
covergroup cg61;
  coverpoint num { bins pow2 = {1,2,4,8,16}; }
endgroup

//=================================================
// Q62: Default bin for remaining values
covergroup cg62;
  coverpoint sig { bins valid = {1,2,3}; bins other = default; }
endgroup

//=================================================
// Q63: Wildcard bins usage
covergroup cg63;
  coverpoint vec[3:0] { wildcard bins patt = {4'b10??}; }
endgroup

//=================================================
// Q64: Array coverage
int arr[4];
covergroup cg64;
  coverpoint arr;
endgroup

//=================================================
// Q65: Cross with vector and scalar
covergroup cg65;
  coverpoint bus[7:0];
  coverpoint ctrl;
  cross bus, ctrl;
endgroup

//=================================================
// Q66: Covergroup sampled on posedge clk
covergroup cg66 @(posedge clk);
  coverpoint sig66;
endgroup

//=================================================
// Q67: Covergroup sampled on negedge clk
covergroup cg67 @(negedge clk);
  coverpoint sig67;
endgroup

//=================================================
// Q68: Coverpoint with repetition bins
covergroup cg68;
  coverpoint s { bins rep = (1[*2:3]); }
endgroup

//=================================================
// Q69: Multiple transition bins
covergroup cg69;
  coverpoint t { bins paths[] = (0=>1, 1=>2, 2=>3); }
endgroup

//=================================================
// Q70: Transition from any to 0
covergroup cg70;
  coverpoint x { bins to_zero = ( [*] => 0 ); }
endgroup

//=================================================
// Q71: Cross with weight option
covergroup cg71;
  coverpoint a;
  coverpoint b;
  cross a, b { option.weight = 3; }
endgroup

//=================================================
// Q72: Coverpoint with goal option
covergroup cg72;
  coverpoint c;
  option.goal = 95;
endgroup

//=================================================
// Q73: Coverpoint with at_least option
covergroup cg73;
  coverpoint d { option.at_least = 2; }
endgroup

//=================================================
// Q74: Per instance coverage option
covergroup cg74;
  coverpoint e;
  option.per_instance = 1;
endgroup

//=================================================
// Q75: Covergroup inside a class
class cov_class75;
  covergroup cg75;
    coverpoint f;
  endgroup
  function new; cg75 = new(); endfunction
endclass

//=================================================
// Q76: Cross of enum values
typedef enum {IDLE, RUN, STOP} state_e;
covergroup cg76;
  coverpoint st;
  coverpoint nxt;
  cross st, nxt;
endgroup

//=================================================
// Q77: Coverpoint with option.comment
covergroup cg77;
  coverpoint g;
  option.comment = "Tracking g values";
endgroup

//=================================================
// Q78: Transition bins with repeat operator
covergroup cg78;
  coverpoint h { bins repeat3 = (1[*3]); }
endgroup

//=================================================
// Q79: Coverpoint with array of bins
covergroup cg79;
  coverpoint k { bins all_bins[] = {[0:15]}; }
endgroup

//=================================================
// Q80: Cross with iff condition
covergroup cg80;
  coverpoint a;
  coverpoint b;
  cross a, b iff (a>0 && b>0);
endgroup

//=================================================
// Q81: Coverpoint with two ranges merged
covergroup cg81;
  coverpoint l { bins low = {[0:3]}; bins high = {[4:7]}; }
endgroup

//=================================================
// Q82: Cross coverage of three signals with ignore
covergroup cg82;
  coverpoint m;
  coverpoint n;
  coverpoint o;
  cross m, n, o { ignore_bins ign = {0}; }
endgroup

//=================================================
// Q83: Coverpoint with illegal repeated pattern
covergroup cg83;
  coverpoint p { illegal_bins bad = (1[*2:4]); }
endgroup

//=================================================
// Q84: Coverpoint with local variable inside
covergroup cg84;
  int tmp;
  coverpoint tmp;
endgroup

//=================================================
// Q85: Coverpoint for 4-bit vector
covergroup cg85;
  coverpoint vec85[3:0];
endgroup

//=================================================
// Q86: Cross with default bins
covergroup cg86;
  coverpoint q { bins vals[] = {[0:3]}; }
  coverpoint r;
  cross q, r;
endgroup

//=================================================
// Q87: Coverpoint with bins and default
covergroup cg87;
  coverpoint s { bins one = {1}; bins others = default; }
endgroup

//=================================================
// Q88: Covergroup with sampling in initial block
covergroup cg88;
  coverpoint t;
endgroup
cg88 inst88 = new();
initial begin t=1; inst88.sample(); end

//=================================================
// Q89: Coverpoint with intersect bins
covergroup cg89;
  coverpoint u { bins half = binsof(u) intersect {[0:7]}; }
endgroup

//=================================================
// Q90: Cross with transition bins
covergroup cg90;
  coverpoint v { bins rise = (0=>1); }
  coverpoint w;
  cross v, w;
endgroup

//=================================================
// Q91: Coverpoint using iff with reset
covergroup cg91;
  coverpoint x iff (resetn);
endgroup

//=================================================
// Q92: Covergroup with three coverpoints
covergroup cg92;
  coverpoint a1;
  coverpoint a2;
  coverpoint a3;
endgroup

//=================================================
// Q93: Cross three coverpoints with illegal bin
covergroup cg93;
  coverpoint b1;
  coverpoint b2;
  coverpoint b3;
  cross b1, b2, b3 { illegal_bins all_zero = {0}; }
endgroup

//=================================================
// Q94: Coverpoint with bins option.weight
covergroup cg94;
  coverpoint c1 { option.weight = 2; }
endgroup

//=================================================
// Q95: Cross coverage of 2D array elements
int arr95[2][2];
covergroup cg95;
  coverpoint arr95[0];
  coverpoint arr95[1];
  cross arr95[0], arr95[1];
endgroup

//=================================================
// Q96: Covergroup with negedge clk sampling
covergroup cg96 @(negedge clk);
  coverpoint sig96;
endgroup

//=================================================
// Q97: Coverpoint transition multiple paths
covergroup cg97;
  coverpoint d { bins multi[] = (0=>2, 2=>4, 4=>6); }
endgroup

//=================================================
// Q98: Coverpoint transition with repetition
covergroup cg98;
  coverpoint e { bins rep = (1 [*3:5]); }
endgroup

//=================================================
// Q99: Coverpoint with bins merging two ranges
covergroup cg99;
  coverpoint f { bins part1 = {[0:3]}; bins part2 = {[4:7]}; }
endgroup

//=================================================
// Q100: Coverpoint with wildcard bins pattern
covergroup cg100;
  coverpoint g[3:0] { wildcard bins patt = {4'b11??}; }
endgroup



//=================================================
// Q101: Covergroup inside interface
interface intf(input bit clk);
  logic sig;
  covergroup cg101 @(posedge clk);
    coverpoint sig;
  endgroup
endinterface

//=================================================
// Q102: Covergroup constructor with arguments
class cov102;
  covergroup cg102 (int max);
    coverpoint sig { option.auto_bin_max = max; }
  endgroup
  function new(int m); cg102 = new(m); endfunction
endclass

//=================================================
// Q103: Cross coverage of 4-bit bus with control
covergroup cg103;
  coverpoint bus[3:0];
  coverpoint ctrl;
  cross bus, ctrl;
endgroup

//=================================================
// Q104: Covergroup with transition 0=>1=>0
covergroup cg104;
  coverpoint sig { bins pulse = (0=>1=>0); }
endgroup

//=================================================
// Q105: Coverpoint bins using binsof + intersect
covergroup cg105;
  coverpoint sig { bins mid = binsof(sig) intersect {[4:8]}; }
endgroup

//=================================================
// Q106: Covergroup with multiple sampling events
covergroup cg106 @(posedge clk or negedge rstn);
  coverpoint sig106;
endgroup

//=================================================
// Q107: Coverpoint transition with consecutive bins
covergroup cg107;
  coverpoint s { bins seq[] = (1=>2=>3, 3=>4=>5); }
endgroup

//=================================================
// Q108: Cross with transition bin on one side
covergroup cg108;
  coverpoint a { bins rise = (0=>1); }
  coverpoint b;
  cross a, b;
endgroup

//=================================================
// Q109: Coverpoint with option.weight applied
covergroup cg109;
  coverpoint sig { bins one = {1}; option.weight = 3; }
endgroup

//=================================================
// Q110: Coverpoint with option.comment for report
covergroup cg110;
  coverpoint sig;
  option.comment = "Track signal activity";
endgroup

//=================================================
// Q111: Covergroup with array of signals
bit [7:0] data[4];
covergroup cg111;
  coverpoint data[0];
  coverpoint data[1];
endgroup

//=================================================
// Q112: Cross coverage of FSM states
typedef enum {IDLE, START, RUN, STOP} fsm_e;
covergroup cg112;
  coverpoint curr;
  coverpoint nxt;
  cross curr, nxt;
endgroup

//=================================================
// Q113: Coverpoint bins with ignore of default
covergroup cg113;
  coverpoint sig { bins v = {1,2,3}; ignore_bins rest = default; }
endgroup

//=================================================
// Q114: Coverpoint with bins repetition pattern
covergroup cg114;
  coverpoint s { bins rep2 = (1 [*2:3]); }
endgroup

//=================================================
// Q115: Covergroup with per_instance option
covergroup cg115;
  coverpoint sig;
  option.per_instance = 1;
endgroup

//=================================================
// Q116: Coverpoint transition to multiple values
covergroup cg116;
  coverpoint sig { bins branch = (0=>{1,2,3}); }
endgroup

//=================================================
// Q117: Coverpoint bins with with clause
covergroup cg117;
  coverpoint sig { bins sel = {[0:15]} with (item%2==0); }
endgroup

//=================================================
// Q118: Coverpoint using iff with enable
covergroup cg118;
  coverpoint sig iff (enable);
endgroup

//=================================================
// Q119: Covergroup option.at_least usage
covergroup cg119;
  coverpoint sig { option.at_least = 3; }
endgroup

//=================================================
// Q120: Cross coverage of 3 signals with ignore
covergroup cg120;
  coverpoint a;
  coverpoint b;
  coverpoint c;
  cross a,b,c { ignore_bins zero = {0}; }
endgroup

//=================================================
// Q121: Covergroup with reset sampling disabled
covergroup cg121 @(posedge clk iff (rstn));
  coverpoint sig;
endgroup

//=================================================
// Q122: Coverpoint with wildcard bin ranges
covergroup cg122;
  coverpoint vec[3:0] { wildcard bins patt1 = {4'b0?1?}; }
endgroup

//=================================================
// Q123: Covergroup with bins distribution
covergroup cg123;
  coverpoint sig { bins vals[] = {[0:3]} with (item dist {0:/2,1:/3,2:/1}); }
endgroup

//=================================================
// Q124: Coverpoint with bins for prime numbers
covergroup cg124;
  coverpoint sig { bins prime = {2,3,5,7,11}; }
endgroup

//=================================================
// Q125: Cross with weighted bins
covergroup cg125;
  coverpoint a;
  coverpoint b;
  cross a, b { option.weight = 4; }
endgroup

//=================================================
// Q126: Covergroup with multiple coverpoints
covergroup cg126;
  coverpoint p;
  coverpoint q;
  coverpoint r { bins special = {5}; }
endgroup

//=================================================
// Q127: Transition bins with repetition range
covergroup cg127;
  coverpoint s { bins rep = (2 [*2:5]); }
endgroup

//=================================================
// Q128: Covergroup with instance comment
covergroup cg128;
  coverpoint sig;
  option.comment = "Per instance monitor";
endgroup

//=================================================
// Q129: Cross with illegal_bins condition
covergroup cg129;
  coverpoint x;
  coverpoint y;
  cross x, y { illegal_bins both_zero = binsof(x) intersect {0} && binsof(y) intersect {0}; }
endgroup

//=================================================
// Q130: Coverpoint with goal coverage set
covergroup cg130;
  coverpoint sig;
  option.goal = 100;
endgroup

//=================================================
// Q131: Coverpoint with bins covering negatives
covergroup cg131;
  coverpoint sig { bins neg = {[-10:-1]}; }
endgroup

//=================================================
// Q132: Coverpoint with bins excluding negatives
covergroup cg132;
  coverpoint sig { bins nonneg = {[0:255]}; }
endgroup

//=================================================
// Q133: Transition bin for toggling
covergroup cg133;
  coverpoint sig { bins toggle = (0=>1,1=>0); }
endgroup

//=================================================
// Q134: Covergroup with clock gating condition
covergroup cg134 @(posedge clk iff (enable));
  coverpoint sig;
endgroup

//=================================================
// Q135: Coverpoint with bins overlap
covergroup cg135;
  coverpoint sig { bins small = {[0:5]}; bins large = {[3:10]}; }
endgroup

//=================================================
// Q136: Coverpoint with default bin fallback
covergroup cg136;
  coverpoint sig { bins few = {1,2}; bins rest = default; }
endgroup

//=================================================
// Q137: Covergroup with wildcard multi-patterns
covergroup cg137;
  coverpoint v[7:0] { wildcard bins mask[] = {8'b1???, 8'b01??}; }
endgroup

//=================================================
// Q138: Cross with array coverpoints
int arr138[2];
covergroup cg138;
  coverpoint arr138[0];
  coverpoint arr138[1];
  cross arr138[0], arr138[1];
endgroup

//=================================================
// Q139: Coverpoint using temporary variable
covergroup cg139;
  int temp;
  coverpoint temp;
endgroup

//=================================================
// Q140: Covergroup instantiation in module
module tb140;
  covergroup cg140; coverpoint sig; endgroup
  cg140 inst = new();
endmodule

//=================================================
// Q141: Coverpoint with different bins grouping
covergroup cg141;
  coverpoint sig { bins low = {[0:3]}; bins med = {[4:7]}; bins high = {[8:15]}; }
endgroup

//=================================================
// Q142: Covergroup with option.weight at coverpoint
covergroup cg142;
  coverpoint sig; option.weight = 2;
endgroup

//=================================================
// Q143: Coverpoint with conditional bins
covergroup cg143;
  coverpoint sig { bins even = {[0:10]} with (item%2==0); }
endgroup

//=================================================
// Q144: Coverpoint with bins and option.goal
covergroup cg144;
  coverpoint sig { bins set1 = {[0:3]}; }
  option.goal = 85;
endgroup

//=================================================
// Q145: Cross coverage with 4 signals
covergroup cg145;
  coverpoint a; coverpoint b; coverpoint c; coverpoint d;
  cross a,b,c,d;
endgroup

//=================================================
// Q146: Transition bins for up and down counter
covergroup cg146;
  coverpoint cnt { bins up = (0=>1=>2); bins down = (2=>1=>0); }
endgroup

//=================================================
// Q147: Coverpoint for single-bit toggle
covergroup cg147;
  coverpoint bit1 { bins zero_to_one = (0=>1); bins one_to_zero = (1=>0); }
endgroup

//=================================================
// Q148: Cross with enum and integer
typedef enum {S0,S1,S2} st_e;
covergroup cg148;
  coverpoint st;
  coverpoint val;
  cross st,val;
endgroup

//=================================================
// Q149: Coverpoint with repetition exact 4
covergroup cg149;
  coverpoint sig { bins rep4 = (1[*4]); }
endgroup

//=================================================
// Q150: Coverpoint with ignore_bins for unused values
covergroup cg150;
  coverpoint sig { ignore_bins unused = {[200:255]}; }
endgroup


//=================================================
// Q151: Weighted bins for skewed distribution
covergroup cg151;
  coverpoint data { bins low = {0,1} / 2; bins high = {2,3} / 5; }
endgroup

//=================================================
// Q152: Ignore all zero values in sampling
covergroup cg152;
  coverpoint addr { ignore_bins ign = {0}; }
endgroup

//=================================================
// Q153: Conditional sampling using iff
covergroup cg153;
  coverpoint req iff (enable);
endgroup

//=================================================
// Q154: Cross coverage with transition bins
covergroup cg154;
  coverpoint a { bins t[] = (1 => 0); }
  coverpoint b;
  cross a,b;
endgroup

//=================================================
// Q155: Auto bin creation for wide signal
covergroup cg155;
  coverpoint opcode { option.auto_bin_max = 32; }
endgroup

//=================================================
// Q156: Transition sequence of 3 steps
covergroup cg156;
  coverpoint state { bins seq[] = (0 => 1 => 2); }
endgroup

//=================================================
// Q157: Range bins with gaps
covergroup cg157;
  coverpoint cnt { bins small = {[0:3]}; bins big = {[10:15]}; }
endgroup

//=================================================
// Q158: Default illegal bins for values >7
covergroup cg158;
  coverpoint v { illegal_bins out = default; bins ok = {[0:7]}; }
endgroup

//=================================================
// Q159: Sampling with clocking event
covergroup cg159 @(posedge clk);
  coverpoint sig;
endgroup

//=================================================
// Q160: Bins with array slicing
covergroup cg160;
  coverpoint arr[4];
endgroup

//=================================================
// Q161: Cross coverage with ignore bins
covergroup cg161;
  coverpoint x;
  coverpoint y;
  cross x,y { ignore_bins ign = binsof(x) intersect {0}; }
endgroup

//=================================================
// Q162: Cover enum with explicit bins
typedef enum {IDLE, BUSY, DONE} st_t;
covergroup cg162;
  coverpoint s { bins all[] = {IDLE, BUSY, DONE}; }
endgroup

//=================================================
// Q163: Cover array of signals
covergroup cg163;
  coverpoint bus[3];
endgroup

//=================================================
// Q164: Weighted transition bins
covergroup cg164;
  coverpoint p { bins rise = (0=>1) / 3; bins fall = (1=>0) / 1; }
endgroup

//=================================================
// Q165: Cross coverage between bus and ctrl
covergroup cg165;
  coverpoint bus;
  coverpoint ctrl;
  cross bus, ctrl;
endgroup

//=================================================
// Q166: Coverpoint with option.weight
covergroup cg166;
  coverpoint a { option.weight = 2; }
endgroup

//=================================================
// Q167: Transition bins with multiple paths
covergroup cg167;
  coverpoint c { bins t[] = (0=>2, 2=>3, 3=>0); }
endgroup

//=================================================
// Q168: Cover multiple signals in same group
covergroup cg168;
  coverpoint x;
  coverpoint y;
  coverpoint z;
endgroup

//=================================================
// Q169: Coverpoint with default bins
covergroup cg169;
  coverpoint d { bins others = default; }
endgroup

//=================================================
// Q170: Cross coverage with 3 signals
covergroup cg170;
  coverpoint a;
  coverpoint b;
  coverpoint c;
  cross a,b,c;
endgroup

//=================================================
// Q171: Conditional cross using iff
covergroup cg171;
  coverpoint p;
  coverpoint q;
  cross p,q iff (valid);
endgroup

//=================================================
// Q172: Coverpoint with range partitioning
covergroup cg172;
  coverpoint addr { bins seg1 = {[0:15]}; bins seg2 = {[16:31]}; }
endgroup

//=================================================
// Q173: Illegal transitions only
covergroup cg173;
  coverpoint s { illegal_bins bad = (2=>0); }
endgroup

//=================================================
// Q174: Coverpoint with ignore default
covergroup cg174;
  coverpoint op { bins legal = {[0:7]}; ignore_bins others = default; }
endgroup

//=================================================
// Q175: Bins for odd/even values
covergroup cg175;
  coverpoint num { bins odd = {1,3,5}; bins even = {0,2,4}; }
endgroup

//=================================================
// Q176: Range bins with repetition
covergroup cg176;
  coverpoint data { bins rep[3] = {[0:2]}; }
endgroup

//=================================================
// Q177: Transition bins with iff
covergroup cg177;
  coverpoint s { bins seq = (1=>2) iff (enable); }
endgroup

//=================================================
// Q178: Cross coverage with weighted bins
covergroup cg178;
  coverpoint a;
  coverpoint b { bins low = {0} / 2; bins high = {1} / 1; }
  cross a,b;
endgroup

//=================================================
// Q179: Cover array transitions
covergroup cg179;
  coverpoint arr[2] { bins change = (0=>1); }
endgroup

//=================================================
// Q180: Option per_instance in covergroup
covergroup cg180 @(posedge clk);
  option.per_instance = 1;
  coverpoint sig;
endgroup

//=================================================
// Q181: Coverpoint with binsof usage
covergroup cg181;
  coverpoint a { bins only = binsof(a) intersect {1,2}; }
endgroup

//=================================================
// Q182: Cross with binsof filter
covergroup cg182;
  coverpoint m;
  coverpoint n;
  cross m,n { bins sel = binsof(m) intersect {2}; }
endgroup

//=================================================
// Q183: Ignore bins using binsof
covergroup cg183;
  coverpoint p { ignore_bins ign = binsof(p) intersect {5}; }
endgroup

//=================================================
// Q184: Default bins for full 8-bit range
covergroup cg184;
  coverpoint b { bins all[] = {[0:255]}; }
endgroup

//=================================================
// Q185: Coverpoint with array randomization
covergroup cg185;
  coverpoint arr[3];
endgroup

//=================================================
// Q186: Cross with enum signals
typedef enum {R,G,B} color_e;
covergroup cg186;
  coverpoint c;
  coverpoint id;
  cross c,id;
endgroup

//=================================================
// Q187: Covergroup with function sampling
covergroup cg187;
  coverpoint v;
endgroup
function void sample_cov(cg187 c, int val);
  v = val; c.sample();
endfunction

//=================================================
// Q188: Coverpoint with bins for negatives
covergroup cg188;
  coverpoint s { bins neg = {[-5:-1]}; bins zero = {0}; }
endgroup

//=================================================
// Q189: Illegal bins for reserved values
covergroup cg189;
  coverpoint cmd { illegal_bins rsvd = {7,15}; }
endgroup

//=================================================
// Q190: Cross with default bins
covergroup cg190;
  coverpoint a;
  coverpoint b;
  cross a,b { bins others = default; }
endgroup

//=================================================
// Q191: Coverpoint with repetition transition
covergroup cg191;
  coverpoint s { bins rep = (0=>1)[*3]; }
endgroup

//=================================================
// Q192: Covergroup with weight option
covergroup cg192;
  option.weight = 5;
  coverpoint q;
endgroup

//=================================================
// Q193: Cross coverage with selective bins
covergroup cg193;
  coverpoint a { bins low = {[0:3]}; }
  coverpoint b { bins high = {[4:7]}; }
  cross a,b;
endgroup

//=================================================
// Q194: Coverpoint with wildcard bins
covergroup cg194;
  coverpoint v { bins match[] = (4'b1???); }
endgroup

//=================================================
// Q195: Array of covergroups
covergroup cg195;
  coverpoint sig;
endgroup
cg195 cg_inst[4];

//=================================================
// Q196: Coverpoint with large range divided
covergroup cg196;
  coverpoint addr { bins segs[] = {[0:63]} with (item/16); }
endgroup

//=================================================
// Q197: Cross with transition sequence
covergroup cg197;
  coverpoint a { bins t[] = (0=>1); }
  coverpoint b;
  cross a,b;
endgroup

//=================================================
// Q198: Coverpoint with ignore for all odd
covergroup cg198;
  coverpoint val { ignore_bins odd = {[1:255] with (item%2==1)}; }
endgroup

//=================================================
// Q199: Transition bins with multiple cycles
covergroup cg199;
  coverpoint x { bins jump = (0=>1=>2=>3); }
endgroup

//=================================================
// Q200: Cross coverage with option.cross_num_print_missing
covergroup cg200;
  option.cross_num_print_missing = 10;
  coverpoint a;
  coverpoint b;
  cross a,b;
endgroup


