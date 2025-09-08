```` markdown
# 📘 SystemVerilog Arrays – Types, Syntax, and Operations
````
---

## 1️⃣ Fixed Size Arrays
- **Definition**: Array with pre-defined size.  
- **Syntax**:
```systemverilog
int arr[0:7];       // 8 elements, index 0 to 7
logic [3:0] a[0:3]; // 4-element vector array
````

* **Operations**:

  * Access: `arr[3] = 5;`
  * Iteration: `for(int i=0;i<8;i++) arr[i] = i;`
  * Copying: `int b[0:7]; b = arr;`
  * Size query: `int s = $size(arr);`

---

## 2️⃣ Packed Arrays

* **Definition**: Contiguous bits, can be used like a single vector.
* **Syntax**:

```systemverilog
logic [7:0] byte_arr;      // 8-bit packed array
logic [3:0][7:0] matrix;   // 4x8 packed array
```

* **Operations**:

  * Bit slicing: `byte_arr[3:0]`
  * Vector operations: `&byte_arr, |byte_arr, ^byte_arr`
  * Assignments & concatenation: `{byte_arr, 4'b1010}`

---

## 3️⃣ Unpacked Arrays

* **Definition**: Array of elements, each element separate.
* **Syntax**:

```systemverilog
int arr[10];          // 10-element unpacked array
logic [7:0] mem[0:15];
```

* **Operations**:

  * Indexing: `arr[3] = 10;`
  * Iteration: `foreach(arr[i]) arr[i] += 1;`
  * Dynamic assignment: `mem = '{default:0};`
  * Built-in methods: `$size(arr)`

---

## 4️⃣ Dynamic Arrays

* **Definition**: Resizable arrays at runtime.
* **Syntax**:

```systemverilog
int dyn[];
dyn = new[10];   // allocate 10 elements
```

* **Operations**:

  * Resizing: `dyn = new[20];`
  * Add / remove: `dyn.push_back(5); dyn.pop_back();`
  * Insert / delete: `dyn.insert(2, 99); dyn.delete(3);`
  * Built-in: `dyn.size(), dyn.find(), dyn.sort(), dyn.reverse()`

---

## 5️⃣ Associative Arrays

* **Definition**: Arrays indexed by key (int, string, etc.)
* **Syntax**:

```systemverilog
int assoc[string];      // string key
assoc["one"] = 1;
```

* **Operations**:

  * Indexing: `assoc["two"] = 2;`
  * Querying: `assoc.exists("one");`
  * Delete element: `assoc.delete("one");`
  * Iteration: `foreach(assoc[key]) $display("%s=%0d", key, assoc[key]);`
  * Find index / key: `assoc.find_index(val);`

---

## 6️⃣ Queues

* **Definition**: FIFO / LIFO dynamic arrays
* **Syntax**:

```systemverilog
int q[$];     // queue of integers
```

* **Operations**:

  * Add / Remove: `q.push_back(5); q.push_front(1); q.pop_back(); q.pop_front();`
  * Insert / Delete: `q.insert(2, 10); q.delete(1);`
  * Iteration: `foreach(q[i]) $display(q[i]);`
  * Size / Check: `int n = q.size(); q.empty()`

---

## 7️⃣ Array Methods (All Types)

* **Manipulation**: `push_back()`, `pop_back()`, `insert()`, `delete()`, `resize()`
* **Locator / Query**: `find()`, `find_index()`, `exists()`
* **Ordering**: `sort()`, `rsort()`, `shuffle()`, `reverse()`
* **Reduction**: `sum()`, `product()`, `and()`, `or()`, `xor()`
* **Iteration**: `foreach(array[i]) ...`
* **Slice / Part-select**: `arr[3:0]`

---

## 8️⃣ Multi-dimensional Arrays

* **Packed**: contiguous bits

```systemverilog
logic [3:0][7:0] matrix; // 4 rows, 8 bits each
```

* **Unpacked / Dynamic / Queue**:

```systemverilog
int arr2d[0:3][0:7];     // static 2D
int dyn2d[][0:7];        // dynamic 2D
int q2d[$][0:3];         // queue of arrays
```

* **Operations**:

  * Iteration: nested loops or foreach:

```systemverilog
foreach(arr2d[i,j]) arr2d[i,j] = i+j;
```

* Insert / delete in dynamic 2D or queue arrays

---

This covers **all array types in SV** with **syntax and allowed operations**.

If you want, I can **extend this to include every single topic you listed earlier (Classes, OOP, Randomization, Assertions, Coverage, Interfaces, etc.) in the same style**, so you get a **full SV cheat sheet** with **syntax and operations for all subtopics**.

Do you want me to do that next?
