```markdown

# 📘 SystemVerilog Transition Bins & Special Bins (Detailed Explanation)
```

---

## 1. **Single Value Transition**

👉 Tracks a change from one specific value to another.

* **Syntax**: `<value1> => <value2>`
* **Meaning**: Bin is hit when the sampled variable changes from `value1` to `value2` on consecutive samples.

**Example**

```systemverilog
coverpoint data {
  bins b1 = (2 => 5);
  bins b2 = (2 => 10);
  bins b3 = (3 => 8);
}
```

* Bin `b1` records when `data` changes **2 → 5**.
* Bin `b2` records when `data` changes **2 → 10**.
* Bin `b3` records when `data` changes **3 → 8**.

---

## 2. **Sequence of Transitions**

👉 Tracks a **chain of consecutive value changes**.

* **Syntax**: `<v1> => <v2> => <v3> ...`

**Example**

```systemverilog
coverpoint data {
  bins b1 = (2 => 5 => 6);
  bins b2 = (2 => 10 => 12);
  bins b3 = (3 => 8 => 9 => 10);
}
```

* `b1`: covers **2 → 5 → 6**.
* `b2`: covers **2 → 10 → 12**.
* `b3`: covers **3 → 8 → 9 → 10**.
  ✅ Each transition must happen **back-to-back**.

---

## 3. **Set of Transitions**

👉 Covers all combinations between two sets of values.

* **Syntax**: `(set1 => set2)`

**Example**

```systemverilog
coverpoint data {
  bins b1[] = (2,3 => 4,5);
}
```

* Expands into 4 bins:

  * 2 → 4
  * 2 → 5
  * 3 → 4
  * 3 → 5

---

## 4. **Consecutive Repetition**

👉 Same value repeated **consecutively**.

* **Syntax**: `<value> [*repeat]`

**Example**

```systemverilog
coverpoint data {
  bins b1[] = (4[*3]);
}
```

* Equivalent to **4 → 4 → 4**.
* Bin is hit only if `data` stays at `4` for 3 consecutive samples.

---

## 5. **Range of Repetition**

👉 Repeated value within a given range.

* **Syntax**: `<value> [*min:max]`

**Example**

```systemverilog
coverpoint data {
  bins b1[] = (4[*2:4]);
}
```

* Expands to:

  * 4 → 4 (2 times)
  * 4 → 4 → 4 (3 times)
  * 4 → 4 → 4 → 4 (4 times)

---

## 6. **Goto Repetition**

👉 A value must repeat **exactly N times in sequence** before transitioning.

* **Syntax**: `<val1> => <val2[->N]> => <val3>`

**Example**

```systemverilog
coverpoint data {
  bins b1 = (2 => 5[->3] => 7);
}
```

* Must see:

  * 2 → 5 → 5 → 5 → 7
* `5` must appear **3 times in a row** before going to `7`.

---

## 7. **Non-Consecutive Repetition**

👉 A value must appear **N times, but not necessarily consecutively**.

* **Syntax**: `<val1> => <val2[=N]> => <val3>`

**Example**

```systemverilog
coverpoint data {
  bins b1 = (2 => 5[=3] => 7);
}
```

* Must see:

  * 2 … 5 … 5 … 5 … 7
* `5` must occur **3 times in total**, but can be separated by other values.
* ✅ More flexible than *goto repetition*.

---

## 🔑 Difference: Goto vs Non-Consecutive

* **Goto \[->N]**: Repetition must be **immediate and consecutive**.
* **Non-Consecutive \[=N]**: Value can repeat N times at **any spacing** before moving on.

---

## 8. **Ignore Bins**

👉 Exclude values or transitions from coverage.

* Useful when certain values are **don’t care** or irrelevant.

**Example**

```systemverilog
coverpoint addr {
  ignore_bins b1 = {1, 10, 12};
  ignore_bins b2 = {2 => 3 => 9};
}
```

* Ignores single values: 1, 10, 12.
* Ignores transition: **2 → 3 → 9**.
* ✅ These are **excluded** from coverage reports.

---

## 9. **Illegal Bins**

👉 Mark certain values or transitions as **illegal**.

* If hit during simulation → **runtime error reported**.

**Example**

```systemverilog
coverpoint addr {
  illegal_bins b1 = {1, 10, 12};
  illegal_bins b2 = {2 => 3 => 9};
}
```

* If `addr` = 1, 10, or 12 → ❌ Illegal coverage error.
* If transition **2 → 3 → 9** occurs → ❌ Error.
* ✅ Very useful to flag **design bugs**.

---

# 📌 Quick Summary

| Feature                    | Syntax                 | Meaning                                        |
| -------------------------- | ---------------------- | ---------------------------------------------- |
| Single transition          | `a => b`               | Track single step                              |
| Sequence                   | `a => b => c`          | Multi-step                                     |
| Set                        | `(a,b => c,d)`         | Cross-like expansion                           |
| Consecutive repetition     | `(v[*N])`              | Value repeated N times                         |
| Range repetition           | `(v[*m:n])`            | Value repeated m..n times                      |
| Goto repetition            | `(a => b[->N] => c)`   | b repeats N times consecutively                |
| Non-consecutive repetition | `(a => b[=N] => c)`    | b repeats N times, not necessarily consecutive |
| Ignore bins                | `ignore_bins = {...}`  | Exclude coverage                               |
| Illegal bins               | `illegal_bins = {...}` | Error on hit                                   |

---




Okay 👍 Let’s keep it **very simple** with bullet points:

---

### 🔹 Cross Coverage – Simple Explanation

* **Definition**: Cross coverage tracks **combinations** of values from two or more coverpoints/variables.
* **Purpose**: Ensures that all **possible scenarios of interaction** between signals are tested.
* **Works inside covergroup**: Must be defined along with coverpoints.
* **Syntax**:

  ```systemverilog
  cross_name : cross coverpoint1, coverpoint2;
  ```
* **Example**: If `addr` has 4 values and `data` has 8 values, cross coverage checks all **4 × 8 = 32 combinations**.
* **Use case**:

  * Checking `(opcode, mode)` pairs.
  * Ensuring `(address, enable)` cases are tested.
  * Validating `(burst length, transfer type)` together.
* **Assertions vs Coverage**:

  * **Assertions** → verify *correctness of rules*.
  * **Cross coverage** → verify *completeness of testing (all combinations hit)*.


---

## 🔹 What is Cross Coverage?

* **Definition**: Cross coverage is used to measure combinations of values between **two or more coverpoints or variables** inside the same covergroup.
* **When to use**:

  * When interaction between signals matters.
  * Example: Address vs Data, Opcode vs Enable, Read vs Write.
  * Assertions **check correctness of timing/behavior**, while **cross coverage ensures you have tested all combinations**.

---

## 🔹 Syntax

```systemverilog
<cross_name> : cross <coverpoint_1>, <coverpoint_2>, ... , <coverpoint_n>;
```

---

## 🔹 Example 1 – Simple Cross Coverage

```systemverilog
bit [3:0] addr, data;

covergroup cg @(posedge clk);
  cp_addr : coverpoint addr;
  cp_data : coverpoint data;
  
  addrXdata : cross cp_addr, cp_data; // cross coverage of addr & data
endgroup
```

👉 Ensures all possible `(addr, data)` combinations are covered.

---

## 🔹 Example 2 – Cross with Condition

```systemverilog
bit [1:0] mode;
bit en;

covergroup cg @(posedge clk);
  cp_mode : coverpoint mode;
  cp_en   : coverpoint en;
  
  modeXen : cross cp_mode, cp_en; // cross coverage between mode & enable
endgroup
```

👉 Checks interaction between `mode` values and enable signal.

---

## 🔹 Example 3 – Cross with Ignore Bins

```systemverilog
bit [2:0] opcode;
bit [1:0] burst;

covergroup cg @(posedge clk);
  cp_opcode : coverpoint opcode;
  cp_burst  : coverpoint burst;
  
  opXburst : cross cp_opcode, cp_burst {
    ignore_bins invalid_combo = binsof(cp_opcode) intersect {3,5} &&
                                binsof(cp_burst) intersect {2};
  }
endgroup
```

👉 Ignores illegal `(opcode=3 or 5, burst=2)` combinations.

---

## 🔹 Example 4 – Cross Between Variable and Coverpoint

```systemverilog
bit [3:0] addr;
bit valid;

covergroup cg @(posedge clk);
  cp_addr : coverpoint addr;
  
  validXaddr : cross valid, cp_addr; 
endgroup
```

👉 Crosses raw `valid` signal with coverpoint `addr`.

---

## 🔹 Example 5 – Weighted Cross Coverage

```systemverilog
bit [1:0] cmd;
bit en;

covergroup cg @(posedge clk);
  cp_cmd : coverpoint cmd;
  cp_en  : coverpoint en;
  
  cmdXen : cross cp_cmd, cp_en {
    bins cmd_en = binsof(cp_cmd) intersect {2} && binsof(cp_en) intersect {1};
  }
endgroup
```

👉 Forces a **special bin** for `(cmd=2, en=1)`.

---

✅ **Summary**

* Use **cross coverage** when you want to measure **all meaningful combinations** of variables.
* Use in **coverage**, not assertions. Assertions check correctness, cross coverage checks *completeness of testing*.

---


Perfect 👌 You’re asking about **coverage constructs (`iff`, `binsof`, `intersect`, `ignore_bins`, `illegal_bins`)**.
I’ll explain each one **step by step, clearly, with meaning, syntax, use cases, and examples**.



# 📘 SystemVerilog Coverage Constructs – Detailed Explanation

---

## 1. **`iff` Construct**

* **Meaning**:

  * Used to **conditionally enable** a coverpoint/bin.
  * If the `iff` expression is `false`, the sample is **ignored** (not counted in coverage).
  * Useful for filtering coverage when DUT is not in a valid state.

* **Syntax**:

  ```systemverilog
  cp1: coverpoint addr iff (reset_n);  
  ```

  → Coverage of `addr` is sampled **only if `reset_n` is high**.

* **Example**:

  ```systemverilog
  covergroup cg @(posedge clk);
    cp: coverpoint data iff (enable);
  endgroup
  ```

  ✅ Coverage of `data` is taken only when `enable == 1`.

* **Use Case**:

  * Avoid unnecessary coverage when design is in **reset or idle**.
  * Example: You don’t want to count transactions while reset is active.

---

## 2. **`binsof` Construct**

* **Meaning**:

  * Allows you to **select specific bins** from a coverpoint and use them in cross coverage.
  * Instead of taking all bins, you can focus on certain ranges or bins.

* **Syntax**:

  ```systemverilog
  binsof(<coverpoint.bin_name>)
  ```

* **Example**:

  ```systemverilog
  cp1_X_cp2: cross cp1, cp2 {
    bins xy1 = binsof(cp1.x1);                 // all cp2 bins crossed with cp1.x1
    bins xy2 = binsof(cp2.y2);                 // all cp1 bins crossed with cp2.y2
    bins xy3 = binsof(cp1.x1) && binsof(cp2.y2); // only (x1,y2)
  }
  ```

* **Use Case**:

  * Focus on **important ranges only** (e.g., low-power states × error modes).

---

Great 👍 Let’s deep dive only into **`intersect`** and **`ignore_bins`** because these are tricky but **very common in interviews**.

---

# 3. **`intersect` Construct**

### 🔹 Meaning

* Used with `binsof()` inside cross coverage.
* Selects **only those bins of a coverpoint that overlap with a given set/range**.
* Think of it like a **filter** → “From all bins, give me only those intersecting a specific range”.

---

### 🔹 Syntax

```systemverilog
binsof(<coverpoint>) intersect {<range_or_set>}
!binsof(<coverpoint>) intersect {<range_or_set>}
```

* `binsof(cp)` → all bins of coverpoint `cp`.
* `intersect {}` → pick only bins overlapping with given range/set.
* `!binsof(cp)` → all bins **except** those intersecting the given range/set.

---

### 🔹 Example 1: Simple intersect

```systemverilog
bit [7:0] addr, data;

covergroup cg @(posedge clk);
  cp1: coverpoint addr { bins a1 = {[0:50]}; bins a2 = {[51:100]}; bins a3 = {[101:200]}; }
  cp2: coverpoint data { bins d1 = {[0:127]}; bins d2 = {[128:255]}; }

  cross_cp: cross cp1, cp2 {
    bins sel1 = binsof(cp1) intersect {[51:150]}; // selects a2 + part of a3
  }
endgroup
```

✅ Only `addr` values from **51–150** will be included in cross coverage.

---

### 🔹 Example 2: Excluding with `!`

```systemverilog
cross_cp: cross cp1, cp2 {
  bins sel2 = !binsof(cp1) intersect {[0:50]};  
}
```

✅ Includes all bins **except those overlapping with 0–50**.

---

### 🔹 Example 3: Specific set

```systemverilog
cross_cp: cross cp1, cp2 {
  bins sel3 = binsof(cp1) intersect {25, 75, 180};  
}
```

✅ Cross coverage only counts when `addr` = 25, 75, or 180.

---

### 🔹 Use Cases

* To zoom in on **critical ranges** (like special register addresses, priority opcodes).
* To **filter out noise** and focus only on important bins.

---

# 4. **`ignore_bins` Construct**

### 🔹 Meaning

* Used to **exclude values or transitions from coverage**.
* Unlike `intersect`, which **selects**, `ignore_bins` tells coverage:
  → “Don’t consider these values at all”.
* They are **ignored in coverage percentage calculation** (coverage won’t complain that they are missing).

---

### 🔹 Syntax

```systemverilog
ignore_bins <label> = {<values_or_transitions>};
ignore_bins <label> = binsof(<coverpoint>) intersect {<range_or_set>};
```

---

### 🔹 Example 1: Simple ignore

```systemverilog
cp1: coverpoint addr {
  bins normal = {[0:200]};
  ignore_bins reserved = {201, 202, 203};  
}
```

✅ Values 201–203 are excluded. Even if they never occur, coverage will still show **100%**.

---

### 🔹 Example 2: Ignore using intersect

```systemverilog
cp1_X_cp2: cross cp1, cp2 {
  ignore_bins ig1 = binsof(cp1) intersect {[100:150]};
}
```

✅ Any cross combination where `addr` is between 100–150 is **ignored**.

---

### 🔹 Example 3: Ignore with set

```systemverilog
cp1_X_cp2: cross cp1, cp2 {
  ignore_bins ig2 = binsof(cp2) intersect {0, 255};  
}
```

✅ Ignores cross coverage when `data` = 0 or 255.

---

### 🔹 Example 4: Ignore transitions

```systemverilog
cp2: coverpoint state {
  bins trans[] = (0=>1, 1=>2, 2=>3);
  ignore_bins ig_trans = {1=>2};  
}
```

✅ Transition `1=>2` is ignored from coverage.

---

### 🔹 Use Cases

* Ignore **reserved values** (registers, addresses, opcodes).
* Ignore **unreachable states** (like FSM transitions that can’t occur in real hardware).
* Ignore **don’t care cases** where DUT behavior is undefined or irrelevant.

---

# 🚦 Quick Comparison

| Construct     | Action                                                       |
| ------------- | ------------------------------------------------------------ |
| `intersect`   | Select only bins overlapping with range/set.                 |
| `ignore_bins` | Exclude bins/values from coverage % (not considered a hole). |

---

## 5. **`illegal_bins` Construct**

* **Meaning**:

  * Used to mark certain values or transitions as **illegal**.
  * If simulation hits those values, it **throws a runtime error**.

* **Syntax**:

  ```systemverilog
  illegal_bins b1 = {5, 10, 20};
  illegal_bins b2 = binsof(cp1) intersect {[100:150]};
  ```

* **Example**:

  ```systemverilog
  cp1_X_cp2: cross cp1, cp2 {
    illegal_bins ill1 = binsof(cp1) intersect {[100:150]};
  }
  ```

  ✅ If `cp1` hits any value between 100–150, simulation reports error.

* **Use Case**:

  * Catch **forbidden scenarios** early in simulation.
  * Example: Illegal opcode × valid transaction, invalid state machine transitions.

---

# 🚦 Summary – When to Use What

* **`iff`** → Enable coverage **conditionally** (only when DUT is valid).
* **`binsof`** → Pick specific **bins** from coverpoints for further crossing.
* **`intersect`** → Select bins overlapping with a **value range**.
* **`ignore_bins`** → Exclude irrelevant cases (don’t affect coverage %).
* **`illegal_bins`** → Mark forbidden cases (simulation error if hit).

---


Perfect 👍 You’re asking about **Coverage Methods + Coverage System Tasks/Functions**.
Let’s make this **short, bullet-style, with syntax + use case + tiny examples** so it’s interview-ready ✅.

---

# 📘 Coverage Methods in SystemVerilog

---

### 1. **`sample()`**

* **Syntax**:

  ```systemverilog
  cg.sample();
  ```
* **Use Case**: Manually trigger coverage sampling when you want (instead of automatic clocking).
* **Example**:

  ```systemverilog
  always @(posedge clk) cg.sample();
  ```

---

### 2. **`start()`**

* **Syntax**:

  ```systemverilog
  cg.start();
  ```
* **Use Case**: Enable coverage collection for a covergroup/coverpoint/cross.
* **Example**:

  ```systemverilog
  initial cg.start();
  ```

---

### 3. **`stop()`**

* **Syntax**:

  ```systemverilog
  cg.stop();
  ```
* **Use Case**: Stop collecting coverage (e.g., after enough samples).
* **Example**:

  ```systemverilog
  if (done) cg.stop();
  ```

---

### 4. **`set_inst_name()`**

* **Syntax**:

  ```systemverilog
  cg.set_inst_name("my_cov");
  ```
* **Use Case**: Give a meaningful instance name for reports.
* **Example**:

  ```systemverilog
  initial cg.set_inst_name("packet_cov");
  ```

---

### 5. **`get_coverage()`**

* **Syntax**:

  ```systemverilog
  cov_val = cg.get_coverage();
  ```
* **Use Case**: Returns cumulative coverage % (all coverpoints + crosses).
* **Example**:

  ```systemverilog
  $display("Coverage = %f", cg.get_coverage());
  ```

---

### Code Recap

```systemverilog
covergroup c_group;
  cp1: coverpoint addr;
  cp2: coverpoint data;
  cp1_X_cp2: cross cp1, cp2;
endgroup : c_group

c_group cg = new();

initial begin
  cg.start();                  // 1
  cg.set_inst_name("my_cg");   // 2

  forever begin
    cg.sample();               // 3
    #5;
  end
end

initial begin
  repeat(5) begin
    addr = $random;
    data = $random;
    #5;
  end
  cg.stop();                   // 4
  $display("Coverage = %f", cg.get_coverage()); // 5
  $finish;
end
```

### Explanation of Coverage Methods in the Code

1. **`cg.start()`**

   * Starts collecting coverage for this covergroup instance.
   * Before calling `start()`, even if you `sample()`, coverage won’t be recorded.
   * In this code → it activates coverage collection at simulation start.


2. **`cg.set_inst_name("my_cg")`**

   * Sets a readable name for the coverage instance (helpful in reports/debug).
   * By default, covergroups have auto-generated names.
   * In this code → the instance is renamed to `"my_cg"`, so reports will show `my_cg` instead of something like `cg@1234`.


3. **`cg.sample()`**

   * Manually triggers the covergroup to sample its coverpoints and crosses.
   * Samples the current values of `addr` and `data`, then records them in bins.
   * In this code → it’s called in a `forever` loop every **5 time units** so every new `(addr, data)` pair is recorded.


4. **`cg.stop()`**

   * Stops collecting coverage information for this covergroup instance.
   * After this, even if you call `sample()`, data won’t be recorded.
   * In this code → after 5 random values of `addr` and `data` are generated, coverage collection stops.



5. **`cg.get_coverage()`**

   * Returns the **percentage of coverage achieved** by this instance.
   * This includes coverpoints (`cp1`, `cp2`) and cross (`cp1_X_cp2`).
   * In this code → it prints the cumulative coverage percentage after 5 samples.

---

### Output Meaning

```
At time = 0: addr = 36, data = 129
At time = 5: addr = 9, data = 99
At time = 10: addr = 13, data = 141
At time = 15: addr = 101, data = 18
At time = 20: addr = 1, data = 13
Coverage = 5.777995
```

* 5 random samples were collected (`addr`, `data` values).
* Cross coverage (`addr × data`) creates a huge number of bins (since both are 8-bit).
* Only a few bins got hit → very small % coverage (`~5.77%`).

✅ **Summary**

* `start()` → begin coverage collection.
* `set_inst_name()` → name coverage instance for readability.
* `sample()` → record values of variables in bins.
* `stop()` → stop collecting coverage.
* `get_coverage()` → return how much coverage % achieved so far.


---

### 6. **`get_inst_coverage()`**

* **Syntax**:

  ```systemverilog
  cov_val = cp1.get_inst_coverage();
  ```
* **Use Case**: Returns coverage for a **specific coverpoint/cross**.
* **Example**:

  ```systemverilog
  $display("CP1 Coverage = %f", cg.cp1.get_inst_coverage());
  ```

---

# 📘 Coverage System Tasks/Functions

---

### 1. **`$set_coverage_db_name("file")`**

* **Use Case**: Save coverage data in a file (UCDB, .cov).
* **Example**:

  ```systemverilog
  $set_coverage_db_name("my_cov.ucdb");
  ```

---

### 2. **`$get_coverage()`**

* **Use Case**: Returns overall coverage % (0–100) of all covergroups.
* **Example**:

  ```systemverilog
  $display("Overall Coverage = %f", $get_coverage());
  ```

---

### 3. **`$load_coverage_db("file")`**

* **Use Case**: Load coverage from a saved database file (for merging runs).
* **Example**:

  ```systemverilog
  $load_coverage_db("my_cov.ucdb");
  ```

---

# 🚦 Quick Interview-Style Summary

* **`sample`** → manually trigger sample.
* **`start/stop`** → enable/disable collection.
* **`set_inst_name`** → give instance a name for reporting.
* **`get_coverage/get_inst_coverage`** → get % for group or specific item.
* **`$set_coverage_db_name / $get_coverage / $load_coverage_db`** → save, check, reload coverage data.


---

## Code Recap

```systemverilog
covergroup c_group;
  cp1: coverpoint addr;
  cp2: coverpoint data;
  cp1_X_cp2: cross cp1, cp2;
endgroup : c_group

c_group cg = new();

initial begin
  $set_coverage_db_name("my_cg");   // 1
  forever begin
    cg.sample();                    // 2
    #5;
  end
end

initial begin
  $monitor("At time = %0t: addr = %0d, data = %0d", $time, addr, data);

  repeat(5) begin
    addr = $random;
    data = $random;
    #5;
  end

  $display("Coverage = %f", $get_coverage());  // 3
  $finish;
end
```

---

## Step-by-Step Explanation

### 1. **`$set_coverage_db_name("my_cg")`**

* This tells the simulator:
  *“Save all coverage information into a database file named `my_cg`”*.
* Usually produces a file like `my_cg.ucdb` or `my_cg.cov` depending on simulator.
* Very useful if you want to analyze coverage later with tools (e.g., QuestaSim, VCS DVE).
* In this code → ensures that all coverage results are stored under the file `"my_cg"`.

---

### 2. **`cg.sample()`**

* Triggers sampling of the covergroup.
* Each time it is called, it checks the values of `addr` and `data`, and updates:

  * Coverpoint `cp1` → bins for `addr`.
  * Coverpoint `cp2` → bins for `data`.
  * Cross `cp1_X_cp2` → combinations of (`addr`, `data`).
* In this code → called every **5 time units**, so each new `(addr, data)` pair is logged.

---

### 3. **`$get_coverage()`**

* Returns the **overall coverage %** of all covergroups in the design (0–100).
* It combines **all coverpoints and crosses** into a single number.
* In this code → prints the cumulative coverage after 5 samples.

---

## Why Coverage = 5.777995 ?

* Both `addr` and `data` are **8-bit wide** → each has 256 possible values.
* Cross coverage (`addr × data`) → **256 × 256 = 65,536 bins**.
* With only 5 random samples, only 5 bins are hit.
* So coverage ≈ `(5 / 65536) * 100 = 0.0076%`.

But simulators apply **bin auto-merging** (grouping values into fewer bins for practicality). That’s why the reported coverage is not exactly 0.0076% but around **5.77%**.

---

## ✅ Summary

* `$set_coverage_db_name("file")` → save coverage to a database file for later analysis.
* `cg.sample()` → record current variable values into coverpoints/crosses.
* `$get_coverage()` → gives overall coverage % (all covergroups combined).
* Small % coverage is expected here because only a few samples were taken against a huge number of possible bins.

---

# overage Options in SystemVerilog

Coverage options let you control coverage behavior at different levels.
Two types:

Instance-specific options → affect only one instance of a covergroup.

Type-specific options → affect all instances of a covergroup type.

✅ Type A: Instance-specific Options

Applied using:

option.<option_name> = <expression>;


These apply only to the current instance of the covergroup.

---

# 📊 SystemVerilog Coverage Options

| **Option Name**           | **Default**  | **Description**                                                             | **Allowed in**                |
| ------------------------- | ------------ | --------------------------------------------------------------------------- | ----------------------------- |
| `weight`                  | `1`          | Sets importance/weight. Higher weight = more influence on final coverage %. | covergroup, coverpoint, cross |
| `name`                    | auto-gen     | Assigns a custom name to covergroup instance.                               | covergroup                    |
| `per_instance`            | `0` (False)  | If `1`, tracks coverage **per instance** instead of merging.                | covergroup                    |
| `goal`                    | `90`         | Target coverage percentage (stops once achieved).                           | covergroup, coverpoint, cross |
| `comment`                 | `""`         | Adds a note/remark in coverage report & database.                           | covergroup, coverpoint, cross |
| `at_least`                | `1`          | Minimum bin hits required before considering bin covered.                   | covergroup, coverpoint, cross |
| `detect_overlap`          | `0` (False)  | Warns if two bins overlap in definition.                                    | covergroup, coverpoint        |
| `auto_bin_max`            | `64`         | Maximum number of auto-created bins (when bins not defined explicitly).     | covergroup, coverpoint        |
| `cross_auto_bin_max`      | tool-defined | Maximum number of automatically created cross-product bins.                 | covergroup, cross             |
| `cross_num_print_missing` | `0`          | Reports/saves uncovered cross bins in coverage database & report.           | covergroup, cross             |

---

# 📘 SystemVerilog Coverage Options – Syntax + Example + Explanation

---

### 1️⃣ **`weight`**

**Syntax:**

```systemverilog
cp: coverpoint addr { option.weight = 2; }
```

**Example:**

```systemverilog
covergroup cg;
  cp1: coverpoint addr { option.weight = 2; }  
  cp2: coverpoint data { option.weight = 1; }
endgroup
```

**Explanation:**

* Gives **relative importance** in final coverage %.
* `cp1` contributes **double** compared to `cp2`.
* Useful when some signals are **more critical** to verify.

---

### 2️⃣ **`name`**

**Syntax:**

```systemverilog
option.name = "addr_cov";
```

**Example:**

```systemverilog
covergroup cg;
  option.name = "address_coverage";  
  cp: coverpoint addr;
endgroup
```

**Explanation:**

* Assigns a **custom name** for reports instead of tool-generated names.
* Helps in debugging when multiple covergroups exist.
* Easier to identify coverage in reports/databases.

---

### 3️⃣ **`per_instance`**

**Syntax:**

```systemverilog
option.per_instance = 1;
```

**Example:**

```systemverilog
covergroup cg;
  option.per_instance = 1;  
  cp: coverpoint data;
endgroup
```

**Explanation:**

* If `1`, each instance has **separate coverage**.
* If `0`, merges all instances for cumulative coverage.
* Useful in **multi-core DUTs** or per-channel tracking.

---

### 4️⃣ **`goal`**

**Syntax:**

```systemverilog
option.goal = 95;
```

**Example:**

```systemverilog
covergroup cg;
  cp: coverpoint state { option.goal = 95; }
endgroup
```

**Explanation:**

* Specifies **target % coverage** (default 90).
* Can be applied at covergroup/coverpoint/cross level.
* Simulators can stop once the **goal is reached**.

---

### 5️⃣ **`comment`**

**Syntax:**

```systemverilog
option.comment = "FSM state coverage";
```

**Example:**

```systemverilog
covergroup cg;
  cp: coverpoint state { option.comment = "Covers FSM states"; }
endgroup
```

**Explanation:**

* Adds notes in **coverage reports & DB**.
* Good for **documentation** inside coverage model.
* Helps **reviewers** understand coverage intent.

---

### 6️⃣ **`at_least`**

**Syntax:**

```systemverilog
option.at_least = 5;
```

**Example:**

```systemverilog
covergroup cg;
  cp: coverpoint opcode { option.at_least = 5; }
endgroup
```

**Explanation:**

* Bin is counted covered only after **N hits**.
* Prevents false coverage due to **random one-time hits**.
* Useful in **stress testing** scenarios.

---

### 7️⃣ **`detect_overlap`**

**Syntax:**

```systemverilog
option.detect_overlap = 1;
```

**Example:**

```systemverilog
covergroup cg;
  cp: coverpoint addr {
    bins b1 = {[0:10]};
    bins b2 = {[5:15]}; // Overlaps
    option.detect_overlap = 1;
  }
endgroup
```

**Explanation:**

* Reports **warning if bins overlap**.
* Prevents **double-counting** coverage.
* Ensures clean and **non-redundant bin definitions**.

---

### 8️⃣ **`auto_bin_max`**

**Syntax:**

```systemverilog
option.auto_bin_max = 16;
```

**Example:**

```systemverilog
covergroup cg;
  cp: coverpoint addr; // Auto-bins created
  option.auto_bin_max = 16;
endgroup
```

**Explanation:**

* Limits number of **auto-generated bins**.
* Useful for large ranges (e.g., 32-bit addr).
* Keeps coverage database **manageable**.

---

### 9️⃣ **`cross_auto_bin_max`**

**Syntax:**

```systemverilog
option.cross_auto_bin_max = 32;
```

**Example:**

```systemverilog
covergroup cg;
  cp1: coverpoint addr;
  cp2: coverpoint data;
  cpX: cross cp1, cp2;  
  option.cross_auto_bin_max = 32;
endgroup
```

**Explanation:**

* Limits **cross-product bins** auto-generation.
* Avoids explosion of bins in **wide signals**.
* Keeps runtime & DB size under control.

---

### 🔟 **`cross_num_print_missing`**

**Syntax:**

```systemverilog
option.cross_num_print_missing = 5;
```

**Example:**

```systemverilog
covergroup cg;
  cp1: coverpoint a;
  cp2: coverpoint b;
  cpX: cross cp1, cp2 { option.cross_num_print_missing = 5; }
endgroup
```

**Explanation:**

* Prints **N missing cross bins** in report.
* Helps identify **uncovered scenarios quickly**.
* Debug aid for **testplan vs coverage gap analysis**.

---

```systemverilog 

Example for specific to an instance of a covergroup
module func_coverage;
 bit [7:0] addr, data;
 covergroup c_group;
 option.per_instance = 1;
 option.comment = "This is the comment";

 cp1: coverpoint addr {
 option.weight = 2;
 option.auto_bin_max = 32;
 }
 cp2: coverpoint data;
 cp1_X_cp2: cross cp1, cp2 {
 option.cross_auto_bin_max = 32;
 }
 endgroup : c_group
 c_group cg = new();

 initial begin
 forever begin
 cg.sample();
 #5;
 end
 end

 initial begin
 $monitor("At time = %0t: addr = %0d, data = %0d", $time, addr, data);
 repeat(5) begin
 addr = $random;
 data = $random;
 #5;
 end
 $display("Coverage = %f", cg.get_coverage());
 $finish;
 end

endmodule
Output:
At time = 0: addr = 36, data = 129
At time = 5: addr = 9, data = 99
At time = 10: addr = 13, data = 141
At time = 15: addr = 101, data = 18
At time = 20: addr = 1, data = 13
Coverage = 7.389323
```
---

## 🔎 Code Walkthrough

### 1. Covergroup Level Options

```systemverilog
covergroup c_group;
   option.per_instance = 1;
   option.comment = "This is the comment";
```

* **`option.per_instance = 1;`**

  * Means coverage for this instance (`cg`) is tracked separately, not merged with others.
  * If you had multiple instances, each one would have its own coverage stats.
* **`option.comment`**

  * Stores `"This is the comment"` in the coverage database/report (useful for documentation & reports).

---

### 2. Coverpoint Level Options

```systemverilog
cp1: coverpoint addr {
   option.weight = 2;
   option.auto_bin_max = 32;
}
```

* **`option.weight = 2;`**

  * Gives more importance to `addr` coverage compared to other coverpoints/crosses.
  * Weighted coverage formula:

    $$
    \text{Coverage} = \frac{\sum(\text{coverpoint\_cov} \times \text{weight})}{\sum(\text{weights})}
    $$
  * Here `addr` is counted **twice as important**.

* **`option.auto_bin_max = 32;`**

  * By default, `addr` (8 bits → 256 values) would generate **256 bins**.
  * But here, bins are limited to **32 maximum** → values get grouped into **ranges** instead of individual bins.
  * Example: `0–7`, `8–15`, … → 32 ranges total.

```systemverilog
cp2: coverpoint data;
```

* No extra options → defaults apply (weight = 1, auto\_bin\_max = 64).

---

### 3. Cross Coverage Options

```systemverilog
cp1_X_cp2: cross cp1, cp2 {
   option.cross_auto_bin_max = 32;
}
```

* **Cross coverage = cp1 × cp2 combinations**.

  * Without limit → **32 × 64 = 2048 bins!**
  * `cross_auto_bin_max = 32` caps it to 32 bins → tool merges many combinations into ranges.

---

## 🔎 Why Coverage = `7.389323`?

* You only drove **5 random samples**:

  ```
  addr: 36, 9, 13, 101, 1
  data: 129, 99, 141, 18, 13
  ```
* Each sample activates **1 bin in addr, 1 in data, 1 in cross**.
* But:

  * `addr` bins were weighted ×2.
  * `auto_bin_max` restricted bins (so fewer total bins).
  * Only **5 out of thousands of bins** got hit → **very low coverage %**.
* The simulator calculated:

  * `total_bins_hit / total_bins × weight adjustments = 7.38%`.
  * That’s why it’s small but **non-zero**.

---

## ✅ Key Takeaways

* **`option.per_instance`** → enables individual tracking per covergroup object.
* **`option.weight`** → biases overall coverage contribution.
* **`option.auto_bin_max` & `cross_auto_bin_max`** → control explosion of bins by limiting them.
* **Coverage = 7.38%** → small random sampling vs very large bin space → expected result.

---

## 🔎 Explanation of **Type B (type\_option)**

* **What it is:**

  * These options apply to the **covergroup type itself**, not to a single instance.
  * Think of them like **static members in classes** → shared across all instances.

* **Syntax:**

  ```systemverilog
  type_option.<option_name> = <expression>;
  ```

* **How it differs from `option`:**

  * `option` → per instance (each `new()` covergroup can have different settings).
  * `type_option` → applies globally to *all instances of that covergroup type*.

---

## ✅ Bullet Point Breakdown

* **Scope:**

  * `type_option` settings are shared across all objects of that covergroup type.
  * If you change once, it affects every instance.

* **Analogy to OOP:**

  * Similar to **static variables** in classes: one copy for the type, not per object.

* **Use case:**

  * Helps when you want **consistent coverage behavior** across all instances (e.g., same auto\_bin\_max, same goal, same weighting rules).


---

# 📊 Type B – Covergroup Type Options

| **Option Name** | **Default** | **Description**                                                                                                                                                       | **Allowed in**                |
| --------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------- |
| `weight`        | 1           | 1. Specifies the weight of covergroup instance for overall coverage. <br> 2. At coverpoint/cross level, specifies weight for computing enclosing covergroup coverage. | covergroup, coverpoint, cross |
| `goal`          | 90          | Specifies the target coverage % for coverpoint, cross, or covergroup instance.                                                                                        | covergroup, coverpoint, cross |
| `comment`       | ""          | Saves comment in coverage database and includes it in coverage reports.                                                                                               | covergroup, coverpoint, cross |
| `strobe`        | 0           | Similar to `$strobe` system task; if 1, sampling occurs at the **end of the time slot**.                                                                              | covergroup                    |

---

```shell

Example for specific to the covergroup type as a whole
module func_coverage;
 bit [7:0] addr, data;
 covergroup c_group;
 option.per_instance = 1;
 type_option.comment = "This is the comment";
 type_option.strobe = 1;

 cp1: coverpoint addr {
 type_option.weight = 2;
 }
 cp2: coverpoint data;
 cp1_X_cp2: cross cp1, cp2;
 endgroup : c_group
 c_group cg = new();

 initial begin
 forever begin
 cg.sample();
 #5;
 end
 end

 initial begin
 $monitor("At time = %0t: addr = %0d, data = %0d", $time, addr, data);
 repeat(5) begin
 addr = $random;
 data = $random;
 #5;
 end
 $display("Coverage = %f", cg.get_coverage());
 $finish;
 end

endmodule
Output:
At time = 0: addr = 36, data = 129
At time = 5: addr = 9, data = 99
At time = 10: addr = 13, data = 141
At time = 15: addr = 101, data = 18
At time = 20: addr = 1, data = 13
Coverage = 6.28662
```

## 🔎 Code Walkthrough

### 1. **Covergroup Definition**

```systemverilog
covergroup c_group;
   option.per_instance = 1;
   type_option.comment = "This is the comment";
   type_option.strobe = 1;
```

* **`option.per_instance = 1;`**

  * This is still **instance-specific** → tracks coverage for this object `cg` separately.
* **`type_option.comment`**

  * Adds `"This is the comment"` to the **coverage database/report**.
  * Because it’s **type-level**, all instances of `c_group` share this comment.
* **`type_option.strobe = 1;`**

  * Sampling happens at **end of the time slot** (like `$strobe`).
  * Ensures that all signal updates in the current time step are captured **after they have settled**.

---

### 2. **Coverpoints**

```systemverilog
cp1: coverpoint addr {
   type_option.weight = 2;
}
cp2: coverpoint data;
```

* **`type_option.weight = 2;`**

  * Applied at **coverpoint level**, affects **all instances** of this coverpoint type.
  * Makes `addr` more significant in overall coverage calculation compared to `data`.
* **`cp2`**

  * Uses **default type-level settings** (weight = 1, etc.).

---

### 3. **Cross Coverage**

```systemverilog
cp1_X_cp2: cross cp1, cp2;
```

* Cross coverage uses **default type-level settings** (weight = 1, no auto-bin max).
* Every combination of `cp1 × cp2` is sampled at the **strobe (end of time slot)**.

---

### 4. **Simulation**

```systemverilog
initial begin
  forever begin
    cg.sample();
    #5;
  end
end
```

* **`cg.sample()`** → triggers coverage collection every 5 time units.
* Because `strobe = 1`, **sampling happens at the end of the time slot** to capture final values.

```systemverilog
repeat(5) begin
  addr = $random;
  data = $random;
  #5;
end
```

* 5 random samples are generated for `addr` and `data`.
* Each sample activates 1 bin in `cp1`, 1 bin in `cp2`, and 1 bin in `cp1_X_cp2`.

---

### 5. **Coverage Output**

```
Coverage = 6.28662
```

* Why low?

  * Only 5 random samples → **very few bins hit**.
  * `addr` weight = 2 → contributes **more to overall coverage**.
  * `strobe = 1` ensures **values are properly sampled** at the end of the time step.
  * Coverage formula:

    ```
    total_coverage = Σ(hit_bins × weight) / Σ(total_bins × weight)
    ```

---

### ✅ Key Points

* **`type_option`** → affects all **instances of the covergroup type**.
* **`option`** → affects **individual instance**.
* **`strobe`** → useful when signals change multiple times in a time step; ensures coverage samples **final settled values**.
* Low coverage value is expected with **few random samples vs large bin space**.

---
































