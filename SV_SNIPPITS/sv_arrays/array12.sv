//// ========================================
//
//`timescale 1ns / 1ps
//
//// ==========================================================================
//// File: static_array_operations.sv
//// Description: 40 independent static array operation snippets
//// Each snippet is conditionally compiled using +define+RUN_SNIPPET_xx
//// ==========================================================================
// 
////------------------------------------------------
//// SNIPPET 1 – Default initialization

//
////------------------------------------------------
//// SNIPPET 2 – Explicit initialization
//`ifdef RUN_SNIPPET_2
module snippet2;

 int arr[4] = '{1, 2, 3, 4}; // Static array initialized explicitly

 initial begin
   $display("SNIPPET 2: Explicit Initialization");
   foreach (arr[i]) 
     $display("arr[%0d] = %0d", i, arr[i]); // Print initialized values
 end
endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 3 – Access by index
//`ifdef RUN_SNIPPET_3
//module snippet3;
//
//  int arr[3] = '{10, 20, 30}; // Static array with 3 elements
//
//  initial begin
//    $display("SNIPPET 3: Access Index");
//    $display("arr[1] = %0d", arr[1]); // Access second element directly
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 4 – Modify element
//`ifdef RUN_SNIPPET_4
//module snippet4;
//
//  int arr[3] = '{5, 6, 7}; // Static array initialization
//
//  initial begin
//    arr[1] = 42; // Modify element at index 1
//    $display("SNIPPET 4: Modify Element");
//    $display("arr[1] = %0d", arr[1]); // Output the modified value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 5 – Sum of elements
//`ifdef RUN_SNIPPET_5
//module snippet5;
//
//  int arr[4] = '{1, 2, 3, 4}, sum = 0; // Array initialized; sum accumulator
//
//  task automatic compute_sum();
//    foreach (arr[i])
//      sum += arr[i]; // Add each value to the sum
//  endtask
//
//  initial begin
//    compute_sum(); // Call task to compute sum
//    $display("SNIPPET 5: Sum = %0d", sum); // Output the result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 6 – Maximum value
//`ifdef RUN_SNIPPET_6
//module snippet6;
//
//  int arr[4] = '{8, 3, 12, 5}, max; // Initialize array and max holder
//
//  function int find_max();
//    max = arr[0]; // Start with first element
//    foreach (arr[i])
//      if (arr[i] > max)
//        max = arr[i]; // Update if greater found
//    return max;
//  endfunction
//
//  initial begin
//    $display("SNIPPET 6: Max = %0d", find_max()); // Call and display max
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 7 – Minimum value
//`ifdef RUN_SNIPPET_7
//module snippet7;
//
//  int arr[4] = '{8, 3, 12, 1}, min; // Static array with initial values
//
//  function int find_min();
//    min = arr[0]; // Start with first element
//    foreach (arr[i])
//      if (arr[i] < min)
//        min = arr[i]; // Replace if smaller value found
//    return min;
//  endfunction
//
//  initial begin
//    $display("SNIPPET 7: Min = %0d", find_min()); // Output minimum
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 8 – Reverse array
//`ifdef RUN_SNIPPET_8
//module snippet8;
//
//  int arr[4] = '{1, 2, 3, 4}, rev[4]; // Declare source and destination arrays
//
//  initial begin
//    foreach (arr[i])
//      rev[i] = arr[3 - i]; // Reverse the order using mirrored indexing
//
//    $display("SNIPPET 8: Reversed Array");
//    foreach (rev[i])
//      $display("rev[%0d] = %0d", i, rev[i]); // Display reversed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 9 – Slice array manually
//`ifdef RUN_SNIPPET_9
//module snippet9;
//
//  int arr[5] = '{10, 20, 30, 40, 50}, slice[2]; // Declare main and sliced array
//
//  initial begin
//    slice[0] = arr[1]; // Manually slice 2nd element
//    slice[1] = arr[2]; // And 3rd element
//    $display("SNIPPET 9: Sliced Elements");
//    foreach (slice[i])
//      $display("slice[%0d] = %0d", i, slice[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 10 – Copy array
//`ifdef RUN_SNIPPET_10
//module snippet10;
//
//  int src[3] = '{100, 200, 300}, dst[3]; // Source and destination arrays
//
//  task automatic copy_array();
//    foreach (src[i])
//      dst[i] = src[i]; // Element-by-element copy
//  endtask
//
//  initial begin
//    copy_array(); // Perform copy
//    $display("SNIPPET 10: Copied Array");
//    foreach (dst[i])
//      $display("dst[%0d] = %0d", i, dst[i]); // Show results
//  end
//endmodule
//`endif
//
//
//
////------------------------------------------------
//// SNIPPET 11 – Fill array with a constant value
//`ifdef RUN_SNIPPET_11
//module snippet11;
//
//  int arr[4]; // Array of 4 elements
//
//  initial begin
//    foreach (arr[i])
//      arr[i] = 7; // Set all elements to the constant value 7
//
//    $display("SNIPPET 11: Array filled with 7");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display filled array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 12 – Clear array (set to 0)
//`ifdef RUN_SNIPPET_12
//module snippet12;
//
//  int arr[4] = '{1, 2, 3, 4}; // Initialized array
//
//  initial begin
//    foreach (arr[i])
//      arr[i] = 0; // Set all elements to zero (clear array)
//
//    $display("SNIPPET 12: Cleared Array");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display cleared array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 13 – Check if array is all zeros
//`ifdef RUN_SNIPPET_13
//module snippet13;
//
//  int arr[4] = '{0, 0, 0, 0}; // Array initialized with zeros
//
//  function automatic bit is_all_zero();
//    foreach (arr[i])
//      if (arr[i] != 0)
//        return 0; // Return false if any element is not zero
//    return 1; // Return true if all elements are zero
//  endfunction
//
//  initial begin
//    $display("SNIPPET 13: Array all zeros = %0d", is_all_zero()); // Display result of check
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 14 – Array comparison
//`ifdef RUN_SNIPPET_14
//module snippet14;
//
//  int arr1[3] = '{1, 2, 3}, arr2[3] = '{1, 2, 3}; // Two equal arrays
//
//  function automatic bit compare_arrays(input int arr1[], input int arr2[]);
//    foreach (arr1[i])
//      if (arr1[i] != arr2[i]) // Compare corresponding elements
//        return 0; // Return false if any element doesn't match
//    return 1; // Return true if all elements match
//  endfunction
//
//  initial begin
//    $display("SNIPPET 14: Arrays are equal = %0d", compare_arrays(arr1, arr2)); // Display result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 15 – Array element shift left
//`ifdef RUN_SNIPPET_15
//module snippet15;
//
//  int arr[4] = '{1, 2, 3, 4}; // Array of 4 elements
//
//  initial begin
//    // Shift elements left by 1 position
//    foreach (arr[i])
//      if (i != 3) 
//        arr[i] = arr[i+1];
//      else
//        arr[i] = 0; // The last element becomes 0
//
//    $display("SNIPPET 15: Array Shift Left");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display shifted array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 16 – Array element shift right
//`ifdef RUN_SNIPPET_16
//module snippet16;
//
//  int arr[4] = '{1, 2, 3, 4}; // Array of 4 elements
//
//  initial begin
//    // Shift elements right by 1 position
//    for (int i = 3; i > 0; i--) 
//      arr[i] = arr[i-1];
//    arr[0] = 0; // The first element becomes 0
//
//    $display("SNIPPET 16: Array Shift Right");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display shifted array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 17 – Array length (static)
//`ifdef RUN_SNIPPET_17
//module snippet17;
//
//  int arr[4] = '{10, 20, 30, 40}; // Static array
//
//  initial begin
//    $display("SNIPPET 17: Array Length = %0d", 4); // The length of arr is 4 (static size)
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 18 – Array resizing (dynamic)
//`ifdef RUN_SNIPPET_18
//module snippet18;
//
//  int arr[] = '{10, 20, 30}; // Dynamically sized array
//
//  initial begin
//    arr = '{arr[0], arr[1], arr[2], 40}; // Resize and append an element
//    $display("SNIPPET 18: Resized Array");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display resized array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 19 – Search element in array
//`ifdef RUN_SNIPPET_19
//module snippet19;
//
//  int arr[5] = '{10, 20, 30, 40, 50}; // Static array
//
//  function automatic int search_element(input int arr[], input int target);
//    foreach (arr[i])
//      if (arr[i] == target)
//        return i; // Return the index if the element is found
//    return -1; // Return -1 if not found
//  endfunction
//
//  initial begin
//    int index = search_element(arr, 30); // Search for the element '30'
//    $display("SNIPPET 19: Element found at index %0d", index); // Display index
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 20 – Sort array (bubble sort)
//`ifdef RUN_SNIPPET_20
//module snippet20;
//
//  int arr[5] = '{40, 10, 30, 20, 50}; // Unsorted array
//  int temp;
//
//  // Bubble sort to sort the array in ascending order
//  initial begin
//    for (int i = 0; i < 5; i++) 
//      for (int j = 0; j < 5-i-1; j++) 
//        if (arr[j] > arr[j+1]) begin
//          temp = arr[j];
//          arr[j] = arr[j+1];
//          arr[j+1] = temp; // Swap elements if in wrong order
//        end
//
//    $display("SNIPPET 20: Sorted Array");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display sorted array
//  end
//endmodule
//`endif
//
//
//
//
//
////------------------------------------------------
//// SNIPPET 21 – Array reversing
//`ifdef RUN_SNIPPET_21
//module snippet21;
//
//  int arr[5] = '{10, 20, 30, 40, 50}; // Array to reverse
//  int temp;
//
//  initial begin
//    // Reverse the array
//    for (int i = 0; i < 2; i++) begin
//      temp = arr[i];
//      arr[i] = arr[4-i];
//      arr[4-i] = temp; // Swap elements to reverse
//    end
//
//    $display("SNIPPET 21: Reversed Array");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display reversed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 22 – Initialize dynamic array using a loop
//`ifdef RUN_SNIPPET_22
//module snippet22;
//
//  int arr[5]; // Dynamic array of size 5
//  int i;
//
//  initial begin
//    for (i = 0; i < 5; i++) 
//      arr[i] = i * 10; // Initialize array elements
//
//    $display("SNIPPET 22: Initialized Array using loop");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display initialized array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 23 – Multi-dimensional array (2D)
//`ifdef RUN_SNIPPET_23
//module snippet23;
//
//  int arr[3][3] = '{'{1, 2, 3}, '{4, 5, 6}, '{7, 8, 9}}; // 2D array initialization
//
//  initial begin
//    $display("SNIPPET 23: 2D Array");
//    for (int i = 0; i < 3; i++) 
//      for (int j = 0; j < 3; j++)
//        $display("arr[%0d][%0d] = %0d", i, j, arr[i][j]); // Display 2D array elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 24 – Initialize multi-dimensional array dynamically
//`ifdef RUN_SNIPPET_24
//module snippet24;
//
//  int arr[][]; // Dynamically sized 2D array
//
//  initial begin
//    arr = new[3][4]; // Dynamically create a 3x4 array
//    // Initialize array with values
//    for (int i = 0; i < 3; i++)
//      for (int j = 0; j < 4; j++)
//        arr[i][j] = (i+1) * (j+1);
//
//    $display("SNIPPET 24: Dynamically Initialized 2D Array");
//    for (int i = 0; i < 3; i++) 
//      for (int j = 0; j < 4; j++)
//        $display("arr[%0d][%0d] = %0d", i, j, arr[i][j]); // Display array elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 25 – Accessing elements in multi-dimensional array
//`ifdef RUN_SNIPPET_25
//module snippet25;
//
//  int arr[2][2] = '{'{1, 2}, '{3, 4}}; // 2D array initialization
//
//  initial begin
//    // Access and display individual elements of the 2D array
//    $display("SNIPPET 25: Accessing 2D Array Elements");
//    $display("arr[0][0] = %0d", arr[0][0]);
//    $display("arr[0][1] = %0d", arr[0][1]);
//    $display("arr[1][0] = %0d", arr[1][0]);
//    $display("arr[1][1] = %0d", arr[1][1]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 26 – Concatenate two arrays
//`ifdef RUN_SNIPPET_26
//module snippet26;
//
//  int arr1[3] = '{1, 2, 3}; // First array
//  int arr2[2] = '{4, 5}; // Second array
//  int result[5]; // Array to store the result
//
//  initial begin
//    // Concatenate arr1 and arr2 into result
//    result = {arr1, arr2};
//
//    $display("SNIPPET 26: Concatenated Array");
//    foreach (result[i])
//      $display("result[%0d] = %0d", i, result[i]); // Display concatenated array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 27 – Fill array with incremental values
//`ifdef RUN_SNIPPET_27
//module snippet27;
//
//  int arr[5]; // Array to hold incremental values
//
//  initial begin
//    // Fill the array with incremental values starting from 1
//    for (int i = 0; i < 5; i++) 
//      arr[i] = i + 1;
//
//    $display("SNIPPET 27: Array with Incremental Values");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display array with incremental values
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 28 – Create an array of random numbers
//`ifdef RUN_SNIPPET_28
//module snippet28;
//
//  int arr[5]; // Array for random values
//
//  initial begin
//    // Generate random numbers between 0 and 99
//    for (int i = 0; i < 5; i++) 
//      arr[i] = $random % 100;
//
//    $display("SNIPPET 28: Array of Random Numbers");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display random numbers
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 29 – Check if an array contains a specific value
//`ifdef RUN_SNIPPET_29
//module snippet29;
//
//  int arr[4] = '{1, 3, 5, 7}; // Array with elements
//  int target = 5; // Element to search for
//
//  function automatic bit contains_value(input int arr[], input int value);
//    foreach (arr[i])
//      if (arr[i] == value) 
//        return 1; // Return true if value is found
//    return 0; // Return false if value is not found
//  endfunction
//
//  initial begin
//    $display("SNIPPET 29: Array contains %0d = %0d", target, contains_value(arr, target)); // Check if array contains target value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 30 – Insert value into specific index of array
//`ifdef RUN_SNIPPET_30
//module snippet30;
//
//  int arr[5] = '{1, 2, 3, 4, 5}; // Array
//  int new_value = 9; // New value to insert
//  int index = 2; // Position to insert at
//
//  initial begin
//    // Insert value at the specified index
//    for (int i = 4; i > index; i--) 
//      arr[i] = arr[i-1]; // Shift elements to the right
//    arr[index] = new_value; // Insert new value
//
//    $display("SNIPPET 30: Array after Insertion");
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display array after insertion
//  end
//endmodule
//`endif
//
//
////------------------------------------------------
//// SNIPPET 31 – Merge two arrays
//`ifdef RUN_SNIPPET_31
//module snippet31;
//
//  int arr1[3] = '{1, 2, 3}; // First array
//  int arr2[3] = '{4, 5, 6}; // Second array
//  int result[6]; // Array to store the merged result
//
//  initial begin
//    // Merge arr1 and arr2 into result
//    result = {arr1, arr2};
//
//    $display("SNIPPET 31: Merged Array");
//    foreach (result[i])
//      $display("result[%0d] = %0d", i, result[i]); // Display merged array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 32 – Check if an array is empty
//`ifdef RUN_SNIPPET_32
//module snippet32;
//
//  int arr[0]; // Empty array
//
//  function automatic bit is_empty(input int arr[]);
//    return (arr.size() == 0); // Check if the array size is zero
//  endfunction
//
//  initial begin
//    $display("SNIPPET 32: Array is empty = %0d", is_empty(arr)); // Check if array is empty
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 33 – Sum of elements in an array
//`ifdef RUN_SNIPPET_33
//module snippet33;
//
//  int arr[4] = '{1, 2, 3, 4}; // Array of numbers
//  int sum = 0;
//
//  initial begin
//    // Calculate sum of array elements
//    foreach (arr[i])
//      sum = sum + arr[i];
//
//    $display("SNIPPET 33: Sum of array elements = %0d", sum); // Display the sum
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 34 – Product of elements in an array
//`ifdef RUN_SNIPPET_34
//module snippet34;
//
//  int arr[4] = '{1, 2, 3, 4}; // Array of numbers
//  int product = 1;
//
//  initial begin
//    // Calculate product of array elements
//    foreach (arr[i])
//      product = product * arr[i];
//
//    $display("SNIPPET 34: Product of array elements = %0d", product); // Display the product
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 35 – Find the largest element in an array
//`ifdef RUN_SNIPPET_35
//module snippet35;
//
//  int arr[5] = '{10, 20, 30, 40, 50}; // Array to find largest element
//  int max_value = arr[0]; // Initialize max_value to the first element
//
//  initial begin
//    // Find the largest element in the array
//    foreach (arr[i]) 
//      if (arr[i] > max_value) 
//        max_value = arr[i];
//
//    $display("SNIPPET 35: Largest element in array = %0d", max_value); // Display the largest value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 36 – Find the smallest element in an array
//`ifdef RUN_SNIPPET_36
//module snippet36;
//
//  int arr[5] = '{10, 20, 30, 40, 50}; // Array to find smallest element
//  int min_value = arr[0]; // Initialize min_value to the first element
//
//  initial begin
//    // Find the smallest element in the array
//    foreach (arr[i]) 
//      if (arr[i] < min_value) 
//        min_value = arr[i];
//
//    $display("SNIPPET 36: Smallest element in array = %0d", min_value); // Display the smallest value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 37 – Delete an element from a dynamic array
//`ifdef RUN_SNIPPET_37
//module snippet37;
//
//  int arr[]; // Dynamic array
//  int index_to_delete = 2; // Index of element to delete
//
//  initial begin
//    arr = new[5]; // Initialize dynamic array with 5 elements
//    // Initialize array with values
//    for (int i = 0; i < 5; i++) 
//      arr[i] = i * 10;
//
//    // Delete the element at the specified index
//    for (int i = index_to_delete; i < 4; i++) 
//      arr[i] = arr[i + 1];
//
//    // Display the modified array
//    $display("SNIPPET 37: Array after deletion of element at index %0d", index_to_delete);
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display updated array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 38 – Replace an element at a specific index
//`ifdef RUN_SNIPPET_38
//module snippet38;
//
//  int arr[5] = '{1, 2, 3, 4, 5}; // Array of elements
//  int new_value = 99; // New value to insert
//  int index_to_replace = 2; // Index of element to replace
//
//  initial begin
//    // Replace the element at the specified index
//    arr[index_to_replace] = new_value;
//
//    $display("SNIPPET 38: Array after replacing element at index %0d with %0d", index_to_replace, new_value);
//    foreach (arr[i])
//      $display("arr[%0d] = %0d", i, arr[i]); // Display updated array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 39 – Calculate the average of elements in an array
//`ifdef RUN_SNIPPET_39
//module snippet39;
//
//  int arr[4] = '{10, 20, 30, 40}; // Array of numbers
//  real average;
//  int sum = 0;
//
//  initial begin
//    // Calculate sum of array elements
//    foreach (arr[i])
//      sum = sum + arr[i];
//
//    // Calculate average
//    average = sum / $itor(arr.size());
//
//    $display("SNIPPET 39: Average of array elements = %0f", average); // Display the average
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 40 – Reverse a string stored in an array
//`ifdef RUN_SNIPPET_40
//module snippet40;
//
//  string arr[5] = '({"H", "e", "l", "l", "o"}); // String array
//  string reversed[5]; // Array to store reversed string
//
//  initial begin
//    // Reverse the string array
//    for (int i = 0; i < 5; i++) 
//      reversed[i] = arr[4 - i];
//
//    $display("SNIPPET 40: Reversed String Array");
//    foreach (reversed[i])
//      $display("reversed[%0d] = %0s", i, reversed[i]); // Display reversed string
//  end
//endmodule
//`endif
//
//
//
////====================================
//// Dynamic Arrays 
////====================================
//
//// ==========================================================================
//// File: dynamic_array_operations.sv
//// Description: Independent dynamic array operation snippets
//// Each snippet is conditionally compiled using +define+RUN_SNIPPET_xx
//// ==========================================================================
//
////------------------------------------------------
//// SNIPPET 1 – Default initialization of dynamic array
//`ifdef RUN_SNIPPET_1
//module snippet1;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    $display("SNIPPET 1: Default Initialization");
//    $display("Dynamic array size: %0d", $size(arr)); // Display the size (should be 0 initially)
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 2 – Dynamically allocating memory using `new`
//`ifdef RUN_SNIPPET_2
//module snippet2;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Dynamically allocate an array of 5 elements
//    $display("SNIPPET 2: Dynamically Allocate Memory");
//    $display("Dynamic array size: %0d", $size(arr)); // Should be 5 now
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 3 – Push operation (add elements to the dynamic array)
//`ifdef RUN_SNIPPET_3
//module snippet3;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[2]; // Initial allocation of 2 elements
//    arr.push_back(10); // Add 10 to the array
//    arr.push_back(20); // Add 20 to the array
//    $display("SNIPPET 3: Push Operation");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Print elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 4 – Pop operation (remove elements from the dynamic array)
//`ifdef RUN_SNIPPET_4
//module snippet4;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.pop_back(); // Remove last element (30)
//    $display("SNIPPET 4: Pop Operation");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Print remaining elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 5 – Insert element at a specific index
//`ifdef RUN_SNIPPET_5
//module snippet5;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(5);
//    arr.push_back(10);
//    arr.push_back(15);
//    arr.insert(1, 7); // Insert 7 at index 1
//    $display("SNIPPET 5: Insert Operation");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Print elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 6 – Delete an element at a specific index
//`ifdef RUN_SNIPPET_6
//module snippet6;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//    arr.delete(2); // Delete element at index 2 (value 30)
//    $display("SNIPPET 6: Delete Operation");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Print remaining elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 7 – Clear all elements
//`ifdef RUN_SNIPPET_7
//module snippet7;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(5);
//    arr.push_back(10);
//    arr.push_back(15);
//    arr.delete(); // Clear all elements
//    $display("SNIPPET 7: Clear Operation");
//    $display("Dynamic array size after clear: %0d", $size(arr)); // Should be 0
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 8 – Access elements by index
//`ifdef RUN_SNIPPET_8
//module snippet8;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(100);
//    arr.push_back(200);
//    arr.push_back(300);
//    $display("SNIPPET 8: Access by Index");
//    $display("arr[1] = %0d", arr[1]); // Access second element
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 9 – Set array size dynamically
//`ifdef RUN_SNIPPET_9
//module snippet9;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.resize(5); // Resize array to 5 elements
//    $display("SNIPPET 9: Resize Array");
//    $display("Dynamic array size after resize: %0d", $size(arr)); // Should be 5
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 10 – Concatenate two dynamic arrays
//`ifdef RUN_SNIPPET_10
//module snippet10;
//
//  int arr1[]; // Declare the first dynamic array
//  int arr2[]; // Declare the second dynamic array
//  int result[]; // Resultant dynamic array after concatenation
//
//  initial begin
//    arr1 = new[3]; // Initialize first array
//    arr1.push_back(1);
//    arr1.push_back(2);
//    arr1.push_back(3);
//
//    arr2 = new[2]; // Initialize second array
//    arr2.push_back(4);
//    arr2.push_back(5);
//
//    result = arr1; // Concatenate arrays
//    result = result.concat(arr2); // Add arr2 to the end of result
//
//    $display("SNIPPET 10: Concatenate Arrays");
//    foreach (result[i]) 
//      $display("result[%0d] = %0d", i, result[i]); // Print the concatenated array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 11 – Sort the dynamic array
//`ifdef RUN_SNIPPET_11
//module snippet11;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(5);
//    arr.push_back(30);
//    arr.push_back(15);
//
//    $display("SNIPPET 11: Sort Array");
//    arr.sort(); // Sort the array in ascending order
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Print sorted elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 12 – Reverse the dynamic array
//`ifdef RUN_SNIPPET_12
//module snippet12;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//
//    $display("SNIPPET 12: Reverse Array");
//    arr.reverse(); // Reverse the order of elements
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Print reversed elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 13 – Multidimensional dynamic array
//`ifdef RUN_SNIPPET_13
//module snippet13;
//
//  int arr[][]; // Declare a 2D dynamic array
//
//  initial begin
//    arr = new[3][2]; // Initialize 3x2 2D array
//    arr[0][0] = 1;
//    arr[0][1] = 2;
//    arr[1][0] = 3;
//    arr[1][1] = 4;
//    arr[2][0] = 5;
//    arr[2][1] = 6;
//
//    $display("SNIPPET 13: Multidimensional Dynamic Array");
//    foreach (arr[i, j]) 
//      $display("arr[%0d][%0d] = %0d", i, j, arr[i][j]); // Print 2D array elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 14 – Access dynamic array size using $size
//`ifdef RUN_SNIPPET_14
//module snippet14;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//
//    $display("SNIPPET 14: Access Size of Dynamic Array");
//    $display("Dynamic array size: %0d", $size(arr)); // Should be 3
//  end
//endmodule
//`endif
////------------------------------------------------
//// SNIPPET 15 – Find the index of an element
//`ifdef RUN_SNIPPET_15
//module snippet15;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//
//    $display("SNIPPET 15: Find Index of an Element");
//    int idx = arr.find(30); // Find the index of the element 30
//    $display("Index of 30: %0d", idx); // Should return 2
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 16 – Count occurrences of an element
//`ifdef RUN_SNIPPET_16
//module snippet16;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(10);
//    arr.push_back(30);
//    arr.push_back(10);
//
//    $display("SNIPPET 16: Count Occurrences of an Element");
//    int count = arr.count(10); // Count occurrences of element 10
//    $display("Occurrences of 10: %0d", count); // Should return 3
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 17 – Remove a specific element (all occurrences)
//`ifdef RUN_SNIPPET_17
//module snippet17;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(10);
//    arr.push_back(30);
//    arr.push_back(10);
//
//    $display("SNIPPET 17: Remove Specific Element");
//    arr.remove(10); // Remove all occurrences of the element 10
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should only show 20 and 30
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 18 – Shrink the array
//`ifdef RUN_SNIPPET_18
//module snippet18;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//    arr.push_back(50);
//
//    $display("SNIPPET 18: Shrink the Array");
//    arr.shrink(3); // Shrink the array to 3 elements
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should only display first 3 elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 19 – Set all elements to a specific value
//`ifdef RUN_SNIPPET_19
//module snippet19;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//
//    $display("SNIPPET 19: Set All Elements to a Specific Value");
//    arr.fill(100); // Set all elements to 100
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print 100 for all elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 20 – Check if array is empty
//`ifdef RUN_SNIPPET_20
//module snippet20;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[0]; // Initialize an empty array
//
//    $display("SNIPPET 20: Check if Array is Empty");
//    if (arr.empty()) 
//      $display("The array is empty"); // Should print that the array is empty
//    else
//      $display("The array is not empty");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 21 – Array slice (extract a part of the array)
//`ifdef RUN_SNIPPET_21
//module snippet21;
//
//  int arr[]; // Declare a dynamic array
//  int sliced_arr[]; // Declare a new array to store the sliced elements
//
//  initial begin
//    arr = new[6]; // Initialize with 6 elements
//    arr.push_back(1);
//    arr.push_back(2);
//    arr.push_back(3);
//    arr.push_back(4);
//    arr.push_back(5);
//    arr.push_back(6);
//
//    $display("SNIPPET 21: Array Slice");
//    sliced_arr = arr[2:4]; // Extract elements from index 2 to 4 (inclusive)
//    foreach (sliced_arr[i]) 
//      $display("sliced_arr[%0d] = %0d", i, sliced_arr[i]); // Should print elements 3, 4, 5
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 22 – Set dynamic array size to zero
//`ifdef RUN_SNIPPET_22
//module snippet22;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//    arr.push_back(50);
//
//    $display("SNIPPET 22: Set Array Size to Zero");
//    arr.delete(); // Set the array size to zero (clear all elements)
//    $display("Dynamic array size after delete: %0d", $size(arr)); // Should be 0
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 23 – Find maximum element in the dynamic array
//`ifdef RUN_SNIPPET_23
//module snippet23;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(5);
//    arr.push_back(30);
//
//    $display("SNIPPET 23: Find Maximum Element");
//    int max_val = arr.max(); // Find the maximum element
//    $display("Maximum value: %0d", max_val); // Should print 30
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 24 – Find minimum element in the dynamic array
//`ifdef RUN_SNIPPET_24
//module snippet24;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(5);
//    arr.push_back(30);
//
//    $display("SNIPPET 24: Find Minimum Element");
//    int min_val = arr.min(); // Find the minimum element
//    $display("Minimum value: %0d", min_val); // Should print 5
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 25 – Set element to the minimum value in the array
//`ifdef RUN_SNIPPET_25
//module snippet25;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(5);
//    arr.push_back(30);
//    arr.push_back(25);
//
//    $display("SNIPPET 25: Set Element to Minimum Value");
//    arr[2] = arr.min(); // Set the third element (index 2) to the minimum value in the array
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print updated array with arr[2] = 5
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 26 – Fill dynamic array with a single value
//`ifdef RUN_SNIPPET_26
//module snippet26;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//
//    $display("SNIPPET 26: Fill Array with a Specific Value");
//    arr.fill(100); // Set all elements to 100
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print 100 for all elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 27 – Search for an element in the array
//`ifdef RUN_SNIPPET_27
//module snippet27;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(15);
//    arr.push_back(25);
//    arr.push_back(35);
//    arr.push_back(45);
//
//    $display("SNIPPET 27: Search for an Element");
//    int idx = arr.find(35); // Find the index of element 35
//    if (idx != -1) 
//      $display("Found 35 at index %0d", idx); // Should print the index of 35
//    else
//      $display("Element not found");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 28 – Resize array to a larger size
//`ifdef RUN_SNIPPET_28
//module snippet28;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(100);
//    arr.push_back(200);
//    arr.push_back(300);
//
//    $display("SNIPPET 28: Resize Array to a Larger Size");
//    arr.resize(6); // Resize the array to 6 elements
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print the resized array with default values (0)
//  end
//endmodule
//`endif
// 
// 
// //------------------------------------------------
//// SNIPPET 29 – Resize array to a smaller size
//`ifdef RUN_SNIPPET_29
//module snippet29;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[6]; // Initialize with 6 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//    arr.push_back(50);
//    arr.push_back(60);
//
//    $display("SNIPPET 29: Resize Array to a Smaller Size");
//    arr.resize(4); // Resize the array to 4 elements (drops the last 2 elements)
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print the first 4 elements
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 30 – Sort the array
//`ifdef RUN_SNIPPET_30
//module snippet30;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(40);
//    arr.push_back(10);
//    arr.push_back(30);
//    arr.push_back(50);
//    arr.push_back(20);
//
//    $display("SNIPPET 30: Sort the Array");
//    arr.sort(); // Sort the array in ascending order
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print sorted array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 31 – Reverse the array
//`ifdef RUN_SNIPPET_31
//module snippet31;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//
//    $display("SNIPPET 31: Reverse the Array");
//    arr.reverse(); // Reverse the array
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print the reversed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 32 – Insert an element at a specific index
//`ifdef RUN_SNIPPET_32
//module snippet32;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//
//    $display("SNIPPET 32: Insert Element at a Specific Index");
//    arr.insert(1, 15); // Insert element 15 at index 1
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should show array with 15 inserted at index 1
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 33 – Insert an element at the beginning
//`ifdef RUN_SNIPPET_33
//module snippet33;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//
//    $display("SNIPPET 33: Insert Element at the Beginning");
//    arr.unshift(10); // Insert element 10 at the beginning
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should show array with 10 at the beginning
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 34 – Remove an element at a specific index
//`ifdef RUN_SNIPPET_34
//module snippet34;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//    arr.push_back(50);
//
//    $display("SNIPPET 34: Remove Element at a Specific Index");
//    arr.remove(2); // Remove element at index 2 (should remove 30)
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print array without 30
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 35 – Push an element to the end of the array
//`ifdef RUN_SNIPPET_35
//module snippet35;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//
//    $display("SNIPPET 35: Push Element to the End of the Array");
//    arr.push_back(40); // Push 40 to the end of the array
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should show array with 40 at the end
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 36 – Pop an element from the end of the array
//`ifdef RUN_SNIPPET_36
//module snippet36;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//
//    $display("SNIPPET 36: Pop Element from the End of the Array");
//    int popped_value = arr.pop_back(); // Pop the last element (40)
//    $display("Popped value: %0d", popped_value); // Should print 40
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print the array without 40
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 37 – Push multiple elements to the array
//`ifdef RUN_SNIPPET_37
//module snippet37;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[3]; // Initialize with 3 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//
//    $display("SNIPPET 37: Push Multiple Elements to the Array");
//    arr.push_back(40, 50); // Push 40 and 50 to the array
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print array with 40 and 50 added
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 38 – Pop an element from the beginning of the array
//`ifdef RUN_SNIPPET_38
//module snippet38;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[4]; // Initialize with 4 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//
//    $display("SNIPPET 38: Pop Element from the Beginning of the Array");
//    int popped_value = arr.shift(); // Pop the first element (10)
//    $display("Popped value: %0d", popped_value); // Should print 10
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print the array without 10
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 39 – Merge two dynamic arrays
//`ifdef RUN_SNIPPET_39
//module snippet39;
//
//  int arr1[], arr2[]; // Declare two dynamic arrays
//
//  initial begin
//    arr1 = new[3]; // Initialize arr1 with 3 elements
//    arr1.push_back(10);
//    arr1.push_back(20);
//    arr1.push_back(30);
//
//    arr2 = new[2]; // Initialize arr2 with 2 elements
//    arr2.push_back(40);
//    arr2.push_back(50);
//
//    $display("SNIPPET 39: Merge Two Dynamic Arrays");
//    arr1.add(arr2); // Merge arr2 into arr1
//    foreach (arr1[i]) 
//      $display("arr1[%0d] = %0d", i, arr1[i]); // Should print merged array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 40 – Remove and return an element at a specific index
//`ifdef RUN_SNIPPET_40
//module snippet40;
//
//  int arr[]; // Declare a dynamic array
//
//  initial begin
//    arr = new[5]; // Initialize with 5 elements
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//    arr.push_back(50);
//
//    $display("SNIPPET 40: Remove and Return Element at Specific Index");
//    int removed_value = arr.remove(2); // Remove and return element at index 2 (30)
//    $display("Removed value: %0d", removed_value); // Should print 30
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // Should print array without 30
//  end
//endmodule
//`endif
// 
// 
// `ifdef RUN_SNIPPET_41
// //------------------------------------------------
//// SNIPPET 1 - Dynamic Array Operations (Full List)
//// This single module covers initialization, adding, removing, resizing, and other operations
////------------------------------------------------
//
//`timescale 1ns / 1ps
//
//module dynamic_array_operations;
//
//  // Declare dynamic arrays for demonstration
//  int arr[], arr2[], arr3[];
//
//  initial begin
//
//    //-----------------------------------
//    // Initialization and Adding Elements
//    //-----------------------------------
//    // Initialize arr with 5 elements
//    arr = new[5];
//    arr.push_back(10);
//    arr.push_back(20);
//    arr.push_back(30);
//    arr.push_back(40);
//    arr.push_back(50);
//
//    // Initialize arr2 with some elements
//    arr2 = new[3];
//    arr2.push_back(100);
//    arr2.push_back(200);
//    arr2.push_back(300);
//
//    $display("SNIPPET 1: Initialize arrays and add elements");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Resize Dynamic Array
//    //-----------------------------------
//    arr.resize(7); // Resize the array to 7 elements
//    arr.push_back(60); // Adding more elements
//    arr.push_back(70);
//
//    $display("SNIPPET 2: Resize the array and add more elements");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Remove Element by Index
//    //-----------------------------------
//    arr.remove(2); // Remove the element at index 2 (value: 30)
//
//    $display("SNIPPET 3: Remove element at index 2");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Insert Element at Specific Index
//    //-----------------------------------
//    arr.insert(1, 25); // Insert value 25 at index 1
//    $display("SNIPPET 4: Insert element 25 at index 1");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Sort Array
//    //-----------------------------------
//    arr.sort(); // Sort the array in ascending order
//
//    $display("SNIPPET 5: Sort the array");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Reverse the Array
//    //-----------------------------------
//    arr.reverse(); // Reverse the array order
//
//    $display("SNIPPET 6: Reverse the array");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Push an element to the end
//    //-----------------------------------
//    arr.push_back(80); // Push 80 to the end of the array
//
//    $display("SNIPPET 7: Push 80 to the end of the array");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Pop an element from the end
//    //-----------------------------------
//    int popped_value = arr.pop_back(); // Pop the last element (value 80)
//    $display("SNIPPET 8: Pop element from the end. Popped value = %0d", popped_value);
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Shift (Pop from the Beginning)
//    //-----------------------------------
//    int shifted_value = arr.shift(); // Remove the first element (value: 10)
//    $display("SNIPPET 9: Shift element from the beginning. Shifted value = %0d", shifted_value);
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Add another array to the current array (Merge Arrays)
//    //-----------------------------------
//    arr.add(arr2); // Merge arr2 into arr
//    $display("SNIPPET 10: Merge arr2 into arr");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Insert an element at the beginning
//    //-----------------------------------
//    arr.unshift(5); // Insert 5 at the beginning of the array
//    $display("SNIPPET 11: Insert 5 at the beginning of the array");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Remove a specific element (by value)
//    //-----------------------------------
//    arr.remove(200); // Remove the element with value 200
//
//    $display("SNIPPET 12: Remove element 200 by value");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Resizing the array again
//    //-----------------------------------
//    arr.resize(4); // Resize the array to 4 elements
//
//    $display("SNIPPET 13: Resize the array to 4 elements");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]);
//
//    //-----------------------------------
//    // Copy the array into another array
//    //-----------------------------------
//    arr3 = arr.copy(); // Copy contents of arr to arr3
//    $display("SNIPPET 14: Copy arr to arr3");
//    foreach (arr3[i]) 
//      $display("arr3[%0d] = %0d", i, arr3[i]);
//
//    //-----------------------------------
//    // Check if element exists in the array
//    //-----------------------------------
//    if (arr.exists(40)) // Check if value 40 exists in arr
//      $display("SNIPPET 15: Element 40 exists in arr");
//    else
//      $display("SNIPPET 15: Element 40 does not exist in arr");
//
//    //-----------------------------------
//    // Concatenate arrays
//    //-----------------------------------
//    arr2 = arr2.concatenate(arr); // Concatenate arr to arr2
//    $display("SNIPPET 16: Concatenate arr to arr2");
//    foreach (arr2[i]) 
//      $display("arr2[%0d] = %0d", i, arr2[i]);
//
//    //-----------------------------------
//    // Clear all elements from the array
//    //-----------------------------------
//    arr.clear(); // Clear all elements from arr
//    $display("SNIPPET 17: Clear all elements from arr");
//    foreach (arr[i]) 
//      $display("arr[%0d] = %0d", i, arr[i]); // This should not print anything as the array is cleared
//
//    //-----------------------------------
//    // Set element at a specific index
//    //-----------------------------------
//    arr2[1] = 999; // Set the value at index 1 to 999
//    $display("SNIPPET 18: Set element at index 1 of arr2");
//    foreach (arr2[i]) 
//      $display("arr2[%0d] = %0d", i, arr2[i]);
//
//    //-----------------------------------
//    // Fetch element by index
//    //-----------------------------------
//    int element_at_2 = arr2[2]; // Fetch element at index 2
//    $display("SNIPPET 19: Fetch element at index 2 from arr2. Element = %0d", element_at_2);
//
//    //-----------------------------------
//    // Check the size of the array
//    //-----------------------------------
//    int size = arr2.size(); // Get the size of arr2
//    $display("SNIPPET 20: Size of arr2 = %0d", size);
//
//  end
//endmodule
//
//`endif 
//
//
//
// // ===================================================================
//
// // ===================================================================
// // ===================================================================
// // ==================================================================
// // ===================================================================
//`timescale 1ns / 1ps
//
//// ==========================================================================
//// File: associative_array_operations.sv
//// Description: Independent associative array operation snippets
//// Each snippet is conditionally compiled using +define+RUN_SNIPPET_xx
//// ==========================================================================
//
////------------------------------------------------
//// SNIPPET 1 – Initialization
//`ifdef RUN_SNIPPET_1
//module snippet1;
//  int assoc_arr[int]; // Declare an associative array
//
//  initial begin
//    $display("SNIPPET 1: Initialization");
//    assoc_arr = '{1: 10, 2: 20, 3: 30}; // Initialize the array
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 2 – Inserting Elements
//`ifdef RUN_SNIPPET_2
//module snippet2;
//  int assoc_arr[int]; // Declare an associative array
//
//  initial begin
//    $display("SNIPPET 2: Inserting Elements");
//    assoc_arr[1] = 10; // Insert elements
//    assoc_arr[2] = 20;
//    assoc_arr[3] = 30;
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 3 – Accessing Elements
//`ifdef RUN_SNIPPET_3
//module snippet3;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 3: Accessing Elements");
//    $display("assoc_arr[2] = %0d", assoc_arr[2]); // Access element with key 2
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 4 – Checking Key Existence
//`ifdef RUN_SNIPPET_4
//module snippet4;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 4: Checking Key Existence");
//    if (assoc_arr.exists(2))
//      $display("Key 2 exists");
//    else
//      $display("Key 2 does not exist");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 5 – Deleting Elements
//`ifdef RUN_SNIPPET_5
//module snippet5;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 5: Deleting Elements");
//    assoc_arr.delete(2); // Delete element with key 2
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 6 – Clearing All Elements
//`ifdef RUN_SNIPPET_6
//module snippet6;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 6: Clearing All Elements");
//    assoc_arr.delete(); // Clear all elements
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 7 – Iterating Over Elements
//`ifdef RUN_SNIPPET_7
//module snippet7;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 7: Iterating Over Elements");
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 8 – Copying Elements
//`ifdef RUN_SNIPPET_8
//module snippet8;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//  int copy_arr[int]; // Declare another associative array
//
//  initial begin
//    $display("SNIPPET 8: Copying Elements");
//    foreach (assoc_arr[i])
//      copy_arr[i] = assoc_arr[i]; // Copy elements
//    foreach (copy_arr[i])
//      $display("copy_arr[%0d] = %0d", i, copy_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 9 – Resizing Array
//`ifdef RUN_SNIPPET_9
//module snippet9;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 9: Resizing Array");
//    assoc_arr[4] = 40; // Resize by adding a new element
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 10 – Checking Array Size
//`ifdef RUN_SNIPPET_10
//module snippet10;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 10: Checking Array Size");
//    $display("Array size = %0d", assoc_arr.num()); // Check array size
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 11 – Associative Array Assignment
//`ifdef RUN_SNIPPET_11
//module snippet11;
//  int assoc_arr1[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//  int assoc_arr2[int]; // Declare another associative array
//
//  initial begin
//    $display("SNIPPET 11: Associative Array Assignment");
//    assoc_arr2 = assoc_arr1; // Assign one array to another
//    foreach (assoc_arr2[i])
//      $display("assoc_arr2[%0d] = %0d", i, assoc_arr2[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 12 – Key Retrieval
//`ifdef RUN_SNIPPET_12
//module snippet12;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 12: Key Retrieval");
//    int key = assoc_arr.first(); // Retrieve the first key
//    $display("First key = %0d", key);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 13 – Getting Array Size
//`ifdef RUN_SNIPPET_13
//module snippet13;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 13: Getting Array Size");
//    $display("Array size = %0d", assoc_arr.num()); // Get array size
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 14 – Sorting Keys
//`ifdef RUN_SNIPPET_14
//module snippet14;
//  int assoc_arr[int] = '{3: 30, 1: 10, 2: 20}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 14: Sorting Keys");
//    int keys[int][$]; // Array to hold keys
//    foreach (assoc_arr[i])
//      keys.push_back(i); // Collect keys
//    keys.sort(); // Sort keys
//    foreach (keys[i])
//      $display("Sorted key: %0d", keys[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 15 – Concatenation of Associative Arrays
//`ifdef RUN_SNIPPET_15
//module snippet15;
//  int assoc_arr1[int] = '{1: 10, 2: 20}; // Declare and initialize an associative array
//  int assoc_arr2[int] = '{3: 30, 4: 40}; // Declare and initialize another associative array
//  int concat_arr[int]; // Array to hold concatenated result
//
//  initial begin
//    $display("SNIPPET 15: Concatenation of Associative Arrays");
//    foreach (assoc_arr1[i])
//      concat_arr[i] = assoc_arr1[i]; // Copy elements from first array
//    foreach (assoc_arr2[i])
//      concat_arr[i] = assoc_arr2[i]; // Copy elements from second array
//    foreach (concat_arr[i])
//      $display("concat_arr[%0d] = %0d", i, concat_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 16 – Unpacking Associative Array
//`ifdef RUN_SNIPPET_16
//module snippet16;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 16: Unpacking Associative Array");
//    foreach (assoc_arr[i])
//      $display("Unpacked value: %0d", assoc_arr[i]); // Unpack and print values
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 17 – Incrementing Elements
//`ifdef RUN_SNIPPET_17
//module snippet17;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 17: Incrementing Elements");
//    foreach (assoc_arr[i])
//      assoc_arr[i]++; // Increment each element
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 18 – Decrementing Elements
//`ifdef RUN_SNIPPET_18
//module snippet18;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 18: Decrementing Elements");
//    foreach (assoc_arr[i])
//      assoc_arr[i]--; // Decrement each element
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 19 – Find Element Using Key
//`ifdef RUN_SNIPPET_19
//module snippet19;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 19: Find Element Using Key");
//    if (assoc_arr.exists(2))
//      $display("Element with key 2: %0d", assoc_arr[2]); // Find and print element
//    else
//      $display("Key 2 does not exist");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 20 – Range Query Using Keys
//`ifdef RUN_SNIPPET_20
//module snippet20;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30, 4: 40}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 20: Range Query Using Keys");
//    foreach (assoc_arr[i])
//      if (i >= 2 && i <= 3) // Range query
//        $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 21 – Getting Keys
//`ifdef RUN_SNIPPET_21
//module snippet21;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 21: Getting Keys");
//    int keys[int][$]; // Array to hold keys
//    foreach (assoc_arr[i])
//      keys.push_back(i); // Collect keys
//    foreach (keys[i])
//      $display("Key: %0d", keys[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 22 – Using Default Values for Missing Keys
//`ifdef RUN_SNIPPET_22
//module snippet22;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 22: Using Default Values for Missing Keys");
//    $display("Value for key 4 (default): %0d", assoc_arr.get(4, -1)); // Get default value for missing key
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 23 – Merging Arrays
//`ifdef RUN_SNIPPET_23
//module snippet23;
//  int assoc_arr1[int] = '{1: 10, 2: 20}; // Declare and initialize an associative array
//  int assoc_arr2[int] = '{3: 30, 4: 40}; // Declare and initialize another associative array
//  int merged_arr[int]; // Array to hold merged result
//
//  initial begin
//    $display("SNIPPET 23: Merging Arrays");
//    foreach (assoc_arr1[i])
//      merged_arr[i] = assoc_arr1[i]; // Copy elements from first array
//    foreach (assoc_arr2[i])
//      merged_arr[i] = assoc_arr2[i]; // Copy elements from second array
//    foreach (merged_arr[i])
//      $display("merged_arr[%0d] = %0d", i, merged_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 24 – Shuffling Keys
//`ifdef RUN_SNIPPET_24
//module snippet24;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 24: Shuffling Keys");
//    int keys[int][$]; // Array to hold keys
//    foreach (assoc_arr[i])
//      keys.push_back(i); // Collect keys
//    keys.shuffle(); // Shuffle keys
//    foreach (keys[i])
//      $display("Shuffled key: %0d", keys[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 25 – Checking if Key is Empty
//`ifdef RUN_SNIPPET_25
//module snippet25;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 25: Checking if Key is Empty");
//    if (!assoc_arr.exists(4))
//      $display("Key 4 is empty");
//    else
//      $display("Key 4 exists");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 26 – Printing Keys and Values
//`ifdef RUN_SNIPPET_26
//module snippet26;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 26: Printing Keys and Values");
//    foreach (assoc_arr[i])
//      $display("Key: %0d, Value: %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 27 – Checking if Array is Empty
//`ifdef RUN_SNIPPET_27
//module snippet27;
//  int assoc_arr[int]; // Declare an associative array
//
//  initial begin
//    $display("SNIPPET 27: Checking if Array is Empty");
//    if (assoc_arr.num() == 0)
//      $display("Array is empty");
//    else
//      $display("Array is not empty");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 28 – Array Search with Conditions
//`ifdef RUN_SNIPPET_28
//module snippet28;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 28: Array Search with Conditions");
//    foreach (assoc_arr[i])
//      if (assoc_arr[i] > 15) // Condition: value greater than 15
//        $display("Key: %0d, Value: %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 29 – Combining Associative Arrays
//`ifdef RUN_SNIPPET_29
//module snippet29;
//  int assoc_arr1[int] = '{1: 10, 2: 20}; // Declare and initialize an associative array
//  int assoc_arr2[int] = '{3: 30, 4: 40}; // Declare and initialize another associative array
//  int combined_arr[int]; // Array to hold combined result
//
//  initial begin
//    $display("SNIPPET 29: Combining Associative Arrays");
//    foreach (assoc_arr1[i])
//      combined_arr[i] = assoc_arr1[i]; // Copy elements from first array
//    foreach (assoc_arr2[i])
//      combined_arr[i] = assoc_arr2[i]; // Copy elements from second array
//    foreach (combined_arr[i])
//      $display("combined_arr[%0d] = %0d", i, combined_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 30 – Converting to a Dynamic Array
//`ifdef RUN_SNIPPET_30
//module snippet30;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//  int dynamic_arr[$]; // Declare a dynamic array
//
//  initial begin
//    $display("SNIPPET 30: Converting to a Dynamic Array");
//    foreach (assoc_arr[i])
//      dynamic_arr.push_back(assoc_arr[i]); // Convert to dynamic array
//    foreach (dynamic_arr[i])
//      $display("dynamic_arr[%0d] = %0d", i, dynamic_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 31 – Memory Management
//`ifdef RUN_SNIPPET_31
//module snippet31;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 31: Memory Management");
//    assoc_arr.delete(); // Clear all elements to manage memory
//    $display("Array cleared");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 32 – Copying Specific Index Elements
//`ifdef RUN_SNIPPET_32
//module snippet32;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//  int copy_arr[int]; // Declare another associative array
//
//  initial begin
//    $display("SNIPPET 32: Copying Specific Index Elements");
//    copy_arr[1] = assoc_arr[1]; // Copy specific elements
//    copy_arr[3] = assoc_arr[3];
//    foreach (copy_arr[i])
//      $display("copy_arr[%0d] = %0d", i, copy_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 33 – Clearing Array Memory
//`ifdef RUN_SNIPPET_33
//module snippet33;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 33: Clearing Array Memory");
//    assoc_arr.delete(); // Clear array memory
//    $display("Array memory cleared");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 34 – Counting Occurrences of Keys
//`ifdef RUN_SNIPPET_34
//module snippet34;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30, 1: 40}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 34: Counting Occurrences of Keys");
//    int count = 0;
//    foreach (assoc_arr[i])
//      if (i == 1)
//        count++; // Count occurrences of key 1
//    $display("Occurrences of key 1: %0d", count);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 35 – Access by Random Keys
//`ifdef RUN_SNIPPET_35
//module snippet35;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 35: Access by Random Keys");
//    int random_key = $urandom_range(1, 3); // Generate a random key
//    $display("Value for random key %0d: %0d", random_key, assoc_arr[random_key]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 36 – Resizing Associative Array Dynamically
//`ifdef RUN_SNIPPET_36
//module snippet36;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 36: Resizing Associative Array Dynamically");
//    assoc_arr[4] = 40; // Resize by adding a new element
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 37 – Reassigning Elements
//`ifdef RUN_SNIPPET_37
//module snippet37;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 37: Reassigning Elements");
//    assoc_arr[2] = 50; // Reassign element with key 2
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 38 – Extracting Key-Value Pairs
//`ifdef RUN_SNIPPET_38
//module snippet38;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 38: Extracting Key-Value Pairs");
//    foreach (assoc_arr[i])
//      $display("Key: %0d, Value: %0d", i, assoc_arr[i]); // Extract and print key-value pairs
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 39 – Performing Mathematical Operations on Values
//`ifdef RUN_SNIPPET_39
//module snippet39;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 39: Performing Mathematical Operations on Values");
//    foreach (assoc_arr[i])
//      assoc_arr[i] = assoc_arr[i] * 2; // Double each value
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 40 – Using Arrays with Multiple Dimensions
//`ifdef RUN_SNIPPET_40
//module snippet40;
//  int assoc_arr[int][int] = '{'{1, 1}: 10, {1, 2}: 20, {2, 1}: 30}; // Declare and initialize a 2D associative array
//
//  initial begin
//    $display("SNIPPET 40: Using Arrays with Multiple Dimensions");
//    foreach (assoc_arr[i, j])
//      $display("assoc_arr[%0d, %0d] = %0d", i, j, assoc_arr[i, j]);
//  end
//endmodule
//`endif
//
//
////------------------------------------------------
//// SNIPPET 41 – Using Arrays with Multiple Dimensions
//`ifdef RUN_SNIPPET_41
//module snippet41;
//  int assoc_arr[int][int] = '{'{1, 1}: 10, {1, 2}: 20, {2, 1}: 30}; // Declare and initialize a 2D associative array
//
//  initial begin
//    $display("SNIPPET 41: Using Arrays with Multiple Dimensions");
//    foreach (assoc_arr[i, j])
//      $display("assoc_arr[%0d, %0d] = %0d", i, j, assoc_arr[i, j]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 42 – Using Default Values for Missing Keys
//`ifdef RUN_SNIPPET_42
//module snippet42;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 42: Using Default Values for Missing Keys");
//    $display("Value for key 4 (default): %0d", assoc_arr.get(4, -1)); // Get default value for missing key
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 43 – Merging Arrays
//`ifdef RUN_SNIPPET_43
//module snippet43;
//  int assoc_arr1[int] = '{1: 10, 2: 20}; // Declare and initialize an associative array
//  int assoc_arr2[int] = '{3: 30, 4: 40}; // Declare and initialize another associative array
//  int merged_arr[int]; // Array to hold merged result
//
//  initial begin
//    $display("SNIPPET 43: Merging Arrays");
//    foreach (assoc_arr1[i])
//      merged_arr[i] = assoc_arr1[i]; // Copy elements from first array
//    foreach (assoc_arr2[i])
//      merged_arr[i] = assoc_arr2[i]; // Copy elements from second array
//    foreach (merged_arr[i])
//      $display("merged_arr[%0d] = %0d", i, merged_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 44 – Shuffling Keys
//`ifdef RUN_SNIPPET_44
//module snippet44;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 44: Shuffling Keys");
//    int keys[int][$]; // Array to hold keys
//    foreach (assoc_arr[i])
//      keys.push_back(i); // Collect keys
//    keys.shuffle(); // Shuffle keys
//    foreach (keys[i])
//      $display("Shuffled key: %0d", keys[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 45 – Checking if Key is Empty
//`ifdef RUN_SNIPPET_45
//module snippet45;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 45: Checking if Key is Empty");
//    if (!assoc_arr.exists(4))
//      $display("Key 4 is empty");
//    else
//      $display("Key 4 exists");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 46 – Printing Keys and Values
//`ifdef RUN_SNIPPET_46
//module snippet46;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 46: Printing Keys and Values");
//    foreach (assoc_arr[i])
//      $display("Key: %0d, Value: %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 47 – Checking if Array is Empty
//`ifdef RUN_SNIPPET_47
//module snippet47;
//  int assoc_arr[int]; // Declare an associative array
//
//  initial begin
//    $display("SNIPPET 47: Checking if Array is Empty");
//    if (assoc_arr.num() == 0)
//      $display("Array is empty");
//    else
//      $display("Array is not empty");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 48 – Array Search with Conditions
//`ifdef RUN_SNIPPET_48
//module snippet48;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 48: Array Search with Conditions");
//    foreach (assoc_arr[i])
//      if (assoc_arr[i] > 15) // Condition: value greater than 15
//        $display("Key: %0d, Value: %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 49 – Combining Associative Arrays
//`ifdef RUN_SNIPPET_49
//module snippet49;
//  int assoc_arr1[int] = '{1: 10, 2: 20}; // Declare and initialize an associative array
//  int assoc_arr2[int] = '{3: 30, 4: 40}; // Declare and initialize another associative array
//  int combined_arr[int]; // Array to hold combined result
//
//  initial begin
//    $display("SNIPPET 49: Combining Associative Arrays");
//    foreach (assoc_arr1[i])
//      combined_arr[i] = assoc_arr1[i]; // Copy elements from first array
//    foreach (assoc_arr2[i])
//      combined_arr[i] = assoc_arr2[i]; // Copy elements from second array
//    foreach (combined_arr[i])
//      $display("combined_arr[%0d] = %0d", i, combined_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 50 – Converting to a Dynamic Array
//`ifdef RUN_SNIPPET_50
//module snippet50;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//  int dynamic_arr[$]; // Declare a dynamic array
//
//  initial begin
//    $display("SNIPPET 50: Converting to a Dynamic Array");
//    foreach (assoc_arr[i])
//      dynamic_arr.push_back(assoc_arr[i]); // Convert to dynamic array
//    foreach (dynamic_arr[i])
//      $display("dynamic_arr[%0d] = %0d", i, dynamic_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 51 – Memory Management
//`ifdef RUN_SNIPPET_51
//module snippet51;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 51: Memory Management");
//    assoc_arr.delete(); // Clear all elements to manage memory
//    $display("Array cleared");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 52 – Copying Specific Index Elements
//`ifdef RUN_SNIPPET_52
//module snippet52;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//  int copy_arr[int]; // Declare another associative array
//
//  initial begin
//    $display("SNIPPET 52: Copying Specific Index Elements");
//    copy_arr[1] = assoc_arr[1]; // Copy specific elements
//    copy_arr[3] = assoc_arr[3];
//    foreach (copy_arr[i])
//      $display("copy_arr[%0d] = %0d", i, copy_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 53 – Clearing Array Memory
//`ifdef RUN_SNIPPET_53
//module snippet53;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 53: Clearing Array Memory");
//    assoc_arr.delete(); // Clear array memory
//    $display("Array memory cleared");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 54 – Counting Occurrences of Keys
//`ifdef RUN_SNIPPET_54
//module snippet54;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30, 1: 40}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 54: Counting Occurrences of Keys");
//    int count = 0;
//    foreach (assoc_arr[i])
//      if (i == 1)
//        count++; // Count occurrences of key 1
//    $display("Occurrences of key 1: %0d", count);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 55 – Access by Random Keys
//`ifdef RUN_SNIPPET_55
//module snippet55;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 55: Access by Random Keys");
//    int random_key = $urandom_range(1, 3); // Generate a random key
//    $display("Value for random key %0d: %0d", random_key, assoc_arr[random_key]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 56 – Resizing Associative Array Dynamically
//`ifdef RUN_SNIPPET_56
//module snippet56;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 56: Resizing Associative Array Dynamically");
//    assoc_arr[4] = 40; // Resize by adding a new element
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 57 – Reassigning Elements
//`ifdef RUN_SNIPPET_57
//module snippet57;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 57: Reassigning Elements");
//    assoc_arr[2] = 50; // Reassign element with key 2
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 58 – Extracting Key-Value Pairs
//`ifdef RUN_SNIPPET_58
//module snippet58;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 58: Extracting Key-Value Pairs");
//    foreach (assoc_arr[i])
//      $display("Key: %0d, Value: %0d", i, assoc_arr[i]); // Extract and print key-value pairs
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 59 – Performing Mathematical Operations on Values
//`ifdef RUN_SNIPPET_59
//module snippet59;
//  int assoc_arr[int] = '{1: 10, 2: 20, 3: 30}; // Declare and initialize an associative array
//
//  initial begin
//    $display("SNIPPET 59: Performing Mathematical Operations on Values");
//    foreach (assoc_arr[i])
//      assoc_arr[i] = assoc_arr[i] * 2; // Double each value
//    foreach (assoc_arr[i])
//      $display("assoc_arr[%0d] = %0d", i, assoc_arr[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 60 – Using Arrays with Multiple Dimensions
//`ifdef RUN_SNIPPET_60
//module snippet60;
//  int assoc_arr[int][int] = '{'{1, 1}: 10, {1, 2}: 20, {2, 1}: 30}; // Declare and initialize a 2D associative array
//
//  initial begin
//    $display("SNIPPET 60: Using Arrays with Multiple Dimensions");
//    foreach (assoc_arr[i, j])
//      $display("assoc_arr[%0d, %0d] = %0d", i, j, assoc_arr[i, j]);
//  end
//endmodule
//`endif
//
//
//
//
//
//
//
//
//
//
//
//// ========================================
//`timescale 1ns / 1ps
//
//// ==========================================================================
//// File: queue_array_operations.sv
//// Description: Independent queue array operation snippets
//// Each snippet is conditionally compiled using +define+RUN_SNIPPET_xx
//// ==========================================================================
//
////------------------------------------------------
//// SNIPPET 1 – Initialization
//`ifdef RUN_SNIPPET_1
//module snippet1;
//  int queue[$]; // Declare a dynamic queue array
//
//  initial begin
//    $display("SNIPPET 1: Initialization");
//    queue = '{10, 20, 30}; // Initialize the queue with elements
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 2 – Push Elements
//`ifdef RUN_SNIPPET_2
//module snippet2;
//  int queue[$]; // Declare a dynamic queue array
//
//  initial begin
//    $display("SNIPPET 2: Push Elements");
//    queue.push_back(10); // Push element to the back of the queue
//    queue.push_back(20);
//    queue.push_back(30);
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 3 – Pop Elements
//`ifdef RUN_SNIPPET_3
//module snippet3;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 3: Pop Elements");
//    int popped_value = queue.pop_front(); // Pop element from the front of the queue
//    $display("Popped value: %0d", popped_value);
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 4 – Peek First Element
//`ifdef RUN_SNIPPET_4
//module snippet4;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 4: Peek First Element");
//    int first_value = queue[0]; // Peek the first element
//    $display("First element: %0d", first_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 5 – Peek Last Element
//`ifdef RUN_SNIPPET_5
//module snippet5;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 5: Peek Last Element");
//    int last_value = queue[queue.size() - 1]; // Peek the last element
//    $display("Last element: %0d", last_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 6 – Checking Queue Size
//`ifdef RUN_SNIPPET_6
//module snippet6;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 6: Checking Queue Size");
//    $display("Queue size: %0d", queue.size()); // Check the size of the queue
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 7 – Clearing Queue
//`ifdef RUN_SNIPPET_7
//module snippet7;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 7: Clearing Queue");
//    queue.delete(); // Clear the queue
//    $display("Queue cleared");
//    $display("Queue size after clearing: %0d", queue.size());
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 8 – Inserting Element at Specific Position
//`ifdef RUN_SNIPPET_8
//module snippet8;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 8: Inserting Element at Specific Position");
//    queue.insert(1, 15); // Insert element at position 1
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 9 – Removing Element at Specific Position
//`ifdef RUN_SNIPPET_9
//module snippet9;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 9: Removing Element at Specific Position");
//    queue.delete(1); // Remove element at position 1
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 10 – Accessing Element by Index
//`ifdef RUN_SNIPPET_10
//module snippet10;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 10: Accessing Element by Index");
//    int value = queue[1]; // Access element at index 1
//    $display("Element at index 1: %0d", value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 11 – Resizing Queue
//`ifdef RUN_SNIPPET_11
//module snippet11;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 11: Resizing Queue");
//    queue.resize(5); // Resize the queue to have 5 elements
//    $display("Queue size after resizing: %0d", queue.size());
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 12 – Copying Queue
//`ifdef RUN_SNIPPET_12
//module snippet12;
//  int queue1[$] = '{10, 20, 30}; // Declare and initialize a queue array
//  int queue2[$]; // Declare another queue array
//
//  initial begin
//    $display("SNIPPET 12: Copying Queue");
//    queue2 = queue1; // Copy queue1 to queue2
//    foreach (queue2[i])
//      $display("queue2[%0d] = %0d", i, queue2[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 13 – Queue Concatenation
//`ifdef RUN_SNIPPET_13
//module snippet13;
//  int queue1[$] = '{10, 20}; // Declare and initialize a queue array
//  int queue2[$] = '{30, 40}; // Declare and initialize another queue array
//  int concat_queue[$]; // Queue to hold concatenated result
//
//  initial begin
//    $display("SNIPPET 13: Queue Concatenation");
//    concat_queue = {queue1, queue2}; // Concatenate queue1 and queue2
//    foreach (concat_queue[i])
//      $display("concat_queue[%0d] = %0d", i, concat_queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 14 – Queue Assignment
//`ifdef RUN_SNIPPET_14
//module snippet14;
//  int queue1[$] = '{10, 20, 30}; // Declare and initialize a queue array
//  int queue2[$]; // Declare another queue array
//
//  initial begin
//    $display("SNIPPET 14: Queue Assignment");
//    queue2 = queue1; // Assign queue1 to queue2
//    foreach (queue2[i])
//      $display("queue2[%0d] = %0d", i, queue2[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 15 – Shuffling Queue
//`ifdef RUN_SNIPPET_15
//module snippet15;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 15: Shuffling Queue");
//    queue.shuffle(); // Shuffle the queue
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 16 – Reversing Queue
//`ifdef RUN_SNIPPET_16
//module snippet16;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 16: Reversing Queue");
//    queue.reverse(); // Reverse the queue
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 17 – Checking if Queue is Empty
//`ifdef RUN_SNIPPET_17
//module snippet17;
//  int queue[$]; // Declare a queue array
//
//  initial begin
//    $display("SNIPPET 17: Checking if Queue is Empty");
//    if (queue.size() == 0)
//      $display("Queue is empty");
//    else
//      $display("Queue is not empty");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 18 – Checking if Queue is Full
//`ifdef RUN_SNIPPET_18
//module snippet18;
//  int queue[$]; // Declare a queue array
//
//  initial begin
//    $display("SNIPPET 18: Checking if Queue is Full");
//    // Queue arrays in SystemVerilog are dynamic and do not have a fixed size, so they are never "full"
//    $display("Queue arrays in SystemVerilog are dynamic and do not have a fixed size.");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 19 – Queue Iteration
//`ifdef RUN_SNIPPET_19
//module snippet19;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 19: Queue Iteration");
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 20 – Adding Elements to Front (unshift)
//`ifdef RUN_SNIPPET_20
//module snippet20;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 20: Adding Elements to Front (unshift)");
//    queue.insert(0, 5); // Add element to the front of the queue
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 21 – Removing Elements from Front (shift)
//`ifdef RUN_SNIPPET_21
//module snippet21;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 21: Removing Elements from Front (shift)");
//    int removed_value = queue.pop_front(); // Remove element from the front of the queue
//    $display("Removed value: %0d", removed_value);
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 22 – Extracting Front Element Without Removing
//`ifdef RUN_SNIPPET_22
//module snippet22;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 22: Extracting Front Element Without Removing");
//    int front_value = queue[0]; // Extract the front element without removing
//    $display("Front element: %0d", front_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 23 – Extracting Back Element Without Removing
//`ifdef RUN_SNIPPET_23
//module snippet23;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 23: Extracting Back Element Without Removing");
//    int back_value = queue[queue.size() - 1]; // Extract the back element without removing
//    $display("Back element: %0d", back_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 24 – Searching for an Element
//`ifdef RUN_SNIPPET_24
//module snippet24;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 24: Searching for an Element");
//    int search_value = 20;
//    int index = -1;
//    foreach (queue[i])
//      if (queue[i] == search_value)
//        index = i;
//    if (index != -1)
//      $display("Element %0d found at index %0d", search_value, index);
//    else
//      $display("Element %0d not found", search_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 25 – Queue Merge
//`ifdef RUN_SNIPPET_25
//module snippet25;
//  int queue1[$] = '{10, 20}; // Declare and initialize a queue array
//  int queue2[$] = '{30, 40}; // Declare and initialize another queue array
//  int merged_queue[$]; // Queue to hold merged result
//
//  initial begin
//    $display("SNIPPET 25: Queue Merge");
//    merged_queue = {queue1, queue2}; // Merge queue1 and queue2
//    foreach (merged_queue[i])
//      $display("merged_queue[%0d] = %0d", i, merged_queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 26 – Queue Filtering
//`ifdef RUN_SNIPPET_26
//module snippet26;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  int filtered_queue[$]; // Queue to hold filtered result
//
//  initial begin
//    $display("SNIPPET 26: Queue Filtering");
//    foreach (queue[i])
//      if (queue[i] > 25)
//        filtered_queue.push_back(queue[i]); // Filter elements greater than 25
//    foreach (filtered_queue[i])
//      $display("filtered_queue[%0d] = %0d", i, filtered_queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 27 – Queue Expansion
//`ifdef RUN_SNIPPET_27
//module snippet27;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 27: Queue Expansion");
//    queue.resize(10); // Expand the queue to have 10 elements
//    $display("Queue size after expansion: %0d", queue.size());
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 28 – Queue Truncation
//`ifdef RUN_SNIPPET_28
//module snippet28;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 28: Queue Truncation");
//    queue.resize(3); // Truncate the queue to have 3 elements
//    $display("Queue size after truncation: %0d", queue.size());
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 29 – Queue Comparison
//`ifdef RUN_SNIPPET_29
//module snippet29;
//  int queue1[$] = '{10, 20, 30}; // Declare and initialize a queue array
//  int queue2[$] = '{10, 20, 30}; // Declare and initialize another queue array
//
//  initial begin
//    $display("SNIPPET 29: Queue Comparison");
//    if (queue1 == queue2)
//      $display("Queues are equal");
//    else
//      $display("Queues are not equal");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 30 – Queue Deletion
//`ifdef RUN_SNIPPET_30
//module snippet30;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 30: Queue Deletion");
//    queue.delete(); // Delete the queue
//    $display("Queue deleted");
//    $display("Queue size after deletion: %0d", queue.size());
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 31 – Queue Insertion
//`ifdef RUN_SNIPPET_31
//module snippet31;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 31: Queue Insertion");
//    queue.insert(1, 15); // Insert element at position 1
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 32 – Queue Length Check
//`ifdef RUN_SNIPPET_32
//module snippet32;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 32: Queue Length Check");
//    $display("Queue length: %0d", queue.size()); // Check the length of the queue
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 33 – Queue Flattening
//`ifdef RUN_SNIPPET_33
//module snippet33;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//  int flattened_queue[$]; // Queue to hold flattened result
//
//  initial begin
//    $display("SNIPPET 33: Queue Flattening");
//    flattened_queue = queue; // Flatten the queue (copying in this context)
//    foreach (flattened_queue[i])
//      $display("flattened_queue[%0d] = %0d", i, flattened_queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 34 – Queue Mapping
//`ifdef RUN_SNIPPET_34
//module snippet34;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//  int mapped_queue[$]; // Queue to hold mapped result
//
//  initial begin
//    $display("SNIPPET 34: Queue Mapping");
//    foreach (queue[i])
//      mapped_queue.push_back(queue[i] * 2); // Map each element to its double
//    foreach (mapped_queue[i])
//      $display("mapped_queue[%0d] = %0d", i, mapped_queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 35 – Queue Sorting
//`ifdef RUN_SNIPPET_35
//module snippet35;
//  int queue[$] = '{30, 10, 20}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 35: Queue Sorting");
//    queue.sort(); // Sort the queue
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 36 – Queue Reallocation
//`ifdef RUN_SNIPPET_36
//module snippet36;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 36: Queue Reallocation");
//    queue.resize(5); // Reallocate the queue to have 5 elements
//    $display("Queue size after reallocation: %0d", queue.size());
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 37 – Performing Mathematical Operations on Queue Elements
//`ifdef RUN_SNIPPET_37
//module snippet37;
//  int queue[$] = '{10, 20, 30}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 37: Performing Mathematical Operations on Queue Elements");
//    foreach (queue[i])
//      queue[i] = queue[i] * 2; // Double each element
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 38 – Accessing Multiple Elements in One Operation
//`ifdef RUN_SNIPPET_38
//module snippet38;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 38: Accessing Multiple Elements in One Operation");
//    int values[3];
//    values = queue[1:3]; // Access elements from index 1 to 3
//    foreach (values[i])
//      $display("values[%0d] = %0d", i, values[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 39 – Queue Rotation
//`ifdef RUN_SNIPPET_39
//module snippet39;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 39: Queue Rotation");
//    int temp = queue.pop_front(); // Rotate the queue by moving the front element to the back
//    queue.push_back(temp);
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 40 – Queue Extraction
////------------------------------------------------
//`ifdef RUN_SNIPPET_40
//module snippet40;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//
//  initial begin
//    $display("SNIPPET 40: Queue Extraction");
//    int extracted_value = queue.pop_front(); // Extract the front element
//    $display("Extracted value: %0d", extracted_value);
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
//
//// ========================================
//`timescale 1ns / 1ps
//
//// ==========================================================================
//// File: queue_array_operations.sv
//// Description: Independent queue array operation snippets
//// Each snippet is conditionally compiled using +define+RUN_SNIPPET_xx
//// ==========================================================================
//
////------------------------------------------------
//// SNIPPET 41 – Finding Minimum Value
//`ifdef RUN_SNIPPET_41
//module snippet41;
//  int queue[$] = '{10, 20, 5, 30, 40}; // Declare and initialize a queue array
//  int min_value;
//
//  initial begin
//    $display("SNIPPET 41: Finding Minimum Value");
//    min_value = queue[0]; // Initialize min_value with the first element
//    foreach (queue[i])
//      if (queue[i] < min_value)
//        min_value = queue[i]; // Find the minimum value
//    $display("Minimum value: %0d", min_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 42 – Finding Maximum Value
//`ifdef RUN_SNIPPET_42
//module snippet42;
//  int queue[$] = '{10, 20, 5, 30, 40}; // Declare and initialize a queue array
//  int max_value;
//
//  initial begin
//    $display("SNIPPET 42: Finding Maximum Value");
//    max_value = queue[0]; // Initialize max_value with the first element
//    foreach (queue[i])
//      if (queue[i] > max_value)
//        max_value = queue[i]; // Find the maximum value
//    $display("Maximum value: %0d", max_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 43 – Sum of Values
//`ifdef RUN_SNIPPET_43
//module snippet43;
//  int queue[$] = '{10, 20, 30, 40}; // Declare and initialize a queue array
//  int sum = 0;
//
//  initial begin
//    $display("SNIPPET 43: Sum of Values");
//    foreach (queue[i])
//      sum += queue[i]; // Calculate the sum of values
//    $display("Sum of values: %0d", sum);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 44 – Average of Values
//`ifdef RUN_SNIPPET_44
//module snippet44;
//  int queue[$] = '{10, 20, 30, 40}; // Declare and initialize a queue array
//  int sum = 0;
//  int count = 0;
//
//  initial begin
//    $display("SNIPPET 44: Average of Values");
//    foreach (queue[i]) begin
//      sum += queue[i]; // Calculate the sum of values
//      count++; // Count the number of elements
//    end
//    $display("Average of values: %0f", sum / count);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 45 – Finding Median Value
//`ifdef RUN_SNIPPET_45
//module snippet45;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  int values[$];
//
//  initial begin
//    $display("SNIPPET 45: Finding Median Value");
//    foreach (queue[i])
//      values.push_back(queue[i]); // Collect values in a dynamic array
//    values.sort(); // Sort the values
//    $display("Median value: %0d", values[values.size() / 2]); // Find the median value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 46 – Finding Mode Value
//`ifdef RUN_SNIPPET_46
//module snippet46;
//  int queue[$] = '{10, 20, 20, 30, 20}; // Declare and initialize a queue array
//  int freq[int][$];
//  int mode_value;
//  int max_freq = 0;
//
//  initial begin
//    $display("SNIPPET 46: Finding Mode Value");
//    foreach (queue[i]) begin
//      if (freq.exists(queue[i]))
//        freq[queue[i]]++;
//      else
//        freq[queue[i]] = 1;
//    end
//    foreach (freq[i])
//      if (freq[i] > max_freq) begin
//        max_freq = freq[i];
//        mode_value = i;
//      end
//    $display("Mode value: %0d", mode_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 47 – Finding Range of Values
//`ifdef RUN_SNIPPET_47
//module snippet47;
//  int queue[$] = '{10, 20, 30, 40}; // Declare and initialize a queue array
//  int min_value, max_value;
//
//  initial begin
//    $display("SNIPPET 47: Finding Range of Values");
//    min_value = queue[0]; // Initialize min_value with the first element
//    max_value = min_value; // Initialize max_value with the first element
//    foreach (queue[i]) begin
//      if (queue[i] < min_value)
//        min_value = queue[i];
//      if (queue[i] > max_value)
//        max_value = queue[i];
//    end
//    $display("Range of values: %0d to %0d", min_value, max_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 48 – Finding Standard Deviation
//`ifdef RUN_SNIPPET_48
//module snippet48;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  real sum = 0;
//  real mean;
//  real variance = 0;
//  real std_dev;
//
//  initial begin
//    $display("SNIPPET 48: Finding Standard Deviation");
//    foreach (queue[i])
//      sum += queue[i]; // Calculate the sum of values
//    mean = sum / queue.size(); // Calculate the mean
//    foreach (queue[i])
//      variance += (queue[i] - mean) ** 2; // Calculate the variance
//    variance /= queue.size();
//    std_dev = sqrt(variance); // Calculate the standard deviation
//    $display("Standard deviation: %0f", std_dev);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 49 – Finding Variance
//`ifdef RUN_SNIPPET_49
//module snippet49;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  real sum = 0;
//  real mean;
//  real variance = 0;
//
//  initial begin
//    $display("SNIPPET 49: Finding Variance");
//    foreach (queue[i])
//      sum += queue[i]; // Calculate the sum of values
//    mean = sum / queue.size(); // Calculate the mean
//    foreach (queue[i])
//      variance += (queue[i] - mean) ** 2; // Calculate the variance
//    variance /= queue.size();
//    $display("Variance: %0f", variance);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 50 – Finding Percentile
//`ifdef RUN_SNIPPET_50
//module snippet50;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  int values[$];
//  int percentile = 50; // 50th percentile (median)
//
//  initial begin
//    $display("SNIPPET 50: Finding Percentile");
//    foreach (queue[i])
//      values.push_back(queue[i]); // Collect values in a dynamic array
//    values.sort(); // Sort the values
//    $display("%0dth percentile: %0d", percentile, values[(values.size() * percentile) / 100]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 51 – Finding Quartiles
//`ifdef RUN_SNIPPET_51
//module snippet51;
//  int queue[$] = '{10, 20, 30, 40, 50, 60}; // Declare and initialize a queue array
//  int values[$];
//
//  initial begin
//    $display("SNIPPET 51: Finding Quartiles");
//    foreach (queue[i])
//      values.push_back(queue[i]); // Collect values in a dynamic array
//    values.sort(); // Sort the values
//    $display("Q1 (25th percentile): %0d", values[values.size() / 4]);
//    $display("Q2 (50th percentile): %0d", values[values.size() / 2]);
//    $display("Q3 (75th percentile): %0d", values[(3 * values.size()) / 4]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 52 – Finding Interquartile Range
//`ifdef RUN_SNIPPET_52
//module snippet52;
//  int queue[$] = '{10, 20, 30, 40, 50, 60}; // Declare and initialize a queue array
//  int values[$];
//  int q1, q3;
//
//  initial begin
//    $display("SNIPPET 52: Finding Interquartile Range");
//    foreach (queue[i])
//      values.push_back(queue[i]); // Collect values in a dynamic array
//    values.sort(); // Sort the values
//    q1 = values[values.size() / 4]; // Q1 (25th percentile)
//    q3 = values[(3 * values.size()) / 4]; // Q3 (75th percentile)
//    $display("Interquartile Range (IQR): %0d", q3 - q1);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 53 – Finding Five Number Summary
//`ifdef RUN_SNIPPET_53
//module snippet53;
//  int queue[$] = '{10, 20, 30, 40, 50, 60}; // Declare and initialize a queue array
//  int values[$];
//  int min_value, q1, median, q3, max_value;
//
//  initial begin
//    $display("SNIPPET 53: Finding Five Number Summary");
//    foreach (queue[i])
//      values.push_back(queue[i]); // Collect values in a dynamic array
//    values.sort(); // Sort the values
//    min_value = values[0]; // Minimum value
//    q1 = values[values.size() / 4]; // Q1 (25th percentile)
//    median = values[values.size() / 2]; // Median (50th percentile)
//    q3 = values[(3 * values.size()) / 4]; // Q3 (75th percentile)
//    max_value = values[values.size() - 1]; // Maximum value
//    $display("Five Number Summary: Min=%0d, Q1=%0d, Median=%0d, Q3=%0d, Max=%0d", min_value, q1, median, q3, max_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 54 – Finding Outliers
//`ifdef RUN_SNIPPET_54
//module snippet54;
//  int queue[$] = '{10, 20, 30, 40, 50, 60, 100}; // Declare and initialize a queue array
//  int values[$];
//  int q1, q3, iqr;
//  int lower_bound, upper_bound;
//
//  initial begin
//    $display("SNIPPET 54: Finding Outliers");
//    foreach (queue[i])
//      values.push_back(queue[i]); // Collect values in a dynamic array
//    values.sort(); // Sort the values
//    q1 = values[values.size() / 4]; // Q1 (25th percentile)
//    q3 = values[(3 * values.size()) / 4]; // Q3 (75th percentile)
//    iqr = q3 - q1; // Interquartile Range (IQR)
//    lower_bound = q1 - (1.5 * iqr); // Lower bound for outliers
//    upper_bound = q3 + (1.5 * iqr); // Upper bound for outliers
//    $display("Outliers:");
//    foreach (values[i])
//      if (values[i] < lower_bound || values[i] > upper_bound)
//        $display("Outlier: %0d", values[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 55 – Removing Outliers
//`ifdef RUN_SNIPPET_55
//module snippet55;
//  int queue[$] = '{10, 20, 30, 40, 50, 60, 100}; // Declare and initialize a queue array
//  int values[$];
//  int q1, q3, iqr;
//  int lower_bound, upper_bound;
//
//  initial begin
//    $display("SNIPPET 55: Removing Outliers");
//    foreach (queue[i])
//      values.push_back(queue[i]); // Collect values in a dynamic array
//    values.sort(); // Sort the values
//    q1 = values[values.size() / 4]; // Q1 (25th percentile)
//    q3 = values[(3 * values.size()) / 4]; // Q3 (75th percentile)
//    iqr = q3 - q1; // Interquartile Range (IQR)
//    lower_bound = q1 - (1.5 * iqr); // Lower bound for outliers
//    upper_bound = q3 + (1.5 * iqr); // Upper bound for outliers
//    foreach (values[i])
//      if (values[i] < lower_bound || values[i] > upper_bound)
//        queue.delete(i); // Remove outliers
//    foreach (queue[i])
//      $display("queue[%0d] = %0d", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 56 – Finding Z-Score
//`ifdef RUN_SNIPPET_56
//module snippet56;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  real sum = 0;
//  real mean;
//  real variance = 0;
//  real std_dev;
//
//  initial begin
//    $display("SNIPPET 56: Finding Z-Score");
//    foreach (queue[i])
//      sum += queue[i]; // Calculate the sum of values
//    mean = sum / queue.size(); // Calculate the mean
//    foreach (queue[i])
//      variance += (queue[i] - mean) ** 2; // Calculate the variance
//    variance /= queue.size();
//    std_dev = sqrt(variance); // Calculate the standard deviation
//    foreach (queue[i])
//      $display("Z-Score for index %0d: %0f", i, (queue[i] - mean) / std_dev);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 57 – Normalizing Values
//`ifdef RUN_SNIPPET_57
//module snippet57;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  real min_value, max_value;
//
//  initial begin
//    $display("SNIPPET 57: Normalizing Values");
//    min_value = queue[0]; // Initialize min_value with the first element
//    max_value = min_value; // Initialize max_value with the first element
//    foreach (queue[i]) begin
//      if (queue[i] < min_value)
//        min_value = queue[i];
//      if (queue[i] > max_value)
//        max_value = queue[i];
//    end
//    foreach (queue[i])
//      queue[i] = (queue[i] - min_value) / (max_value - min_value); // Normalize values
//    foreach (queue[i])
//      $display("Normalized value for index %0d: %0f", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 58 – Standardizing Values
//`ifdef RUN_SNIPPET_58
//module snippet58;
//  int queue[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  real sum = 0;
//  real mean;
//  real variance = 0;
//  real std_dev;
//
//  initial begin
//    $display("SNIPPET 58: Standardizing Values");
//    foreach (queue[i])
//      sum += queue[i]; // Calculate the sum of values
//    mean = sum / queue.size(); // Calculate the mean
//    foreach (queue[i])
//      variance += (queue[i] - mean) ** 2; // Calculate the variance
//    variance /= queue.size();
//    std_dev = sqrt(variance); // Calculate the standard deviation
//    foreach (queue[i])
//      queue[i] = (queue[i] - mean) / std_dev; // Standardize values
//    foreach (queue[i])
//      $display("Standardized value for index %0d: %0f", i, queue[i]);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 59 – Finding Correlation
//`ifdef RUN_SNIPPET_59
//module snippet59;
//  int queue1[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  int queue2[$] = '{50, 40, 30, 20, 10}; // Declare and initialize another queue array
//  real sum1 = 0, sum2 = 0;
//  real mean1, mean2;
//  real covariance = 0;
//  real std_dev1, std_dev2;
//  real correlation;
//
//  initial begin
//    $display("SNIPPET 59: Finding Correlation");
//    foreach (queue1[i])
//      sum1 += queue1[i]; // Calculate the sum of values for queue1
//    foreach (queue2[i])
//      sum2 += queue2[i]; // Calculate the sum of values for queue2
//    mean1 = sum1 / queue1.size(); // Calculate the mean for queue1
//    mean2 = sum2 / queue2.size(); // Calculate the mean for queue2
//    foreach (queue1[i])
//      covariance += (queue1[i] - mean1) * (queue2[i] - mean2); // Calculate the covariance
//    covariance /= queue1.size();
//    foreach (queue1[i])
//      std_dev1 += (queue1[i] - mean1) ** 2; // Calculate the variance for queue1
//    std_dev1 = sqrt(std_dev1 / queue1.size());
//    foreach (queue2[i])
//      std_dev2 += (queue2[i] - mean2) ** 2; // Calculate the variance for queue2
//    std_dev2 = sqrt(std_dev2 / queue2.size());
//    correlation = covariance / (std_dev1 * std_dev2); // Calculate the correlation
//    $display("Correlation: %0f", correlation);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 60 – Finding Covariance
//`ifdef RUN_SNIPPET_60
//module snippet60;
//  int queue1[$] = '{10, 20, 30, 40, 50}; // Declare and initialize a queue array
//  int queue2[$] = '{50, 40, 30, 20, 10}; // Declare and initialize another queue array
//  real sum1 = 0, sum2 = 0;
//  real mean1, mean2;
//  real covariance = 0;
//
//  initial begin
//    $display("SNIPPET 60: Finding Covariance");
//    foreach (queue1[i])
//      sum1 += queue1[i]; // Calculate the sum of values for queue1
//    foreach (queue2[i])
//      sum2 += queue2[i]; // Calculate the sum of values for queue2
//    mean1 = sum1 / queue1.size(); // Calculate the mean for queue1
//    mean2 = sum2 / queue2.size(); // Calculate the mean for queue2
//    foreach (queue1[i])
//      covariance += (queue1[i] - mean1) * (queue2[i] - mean2); // Calculate the covariance
//    covariance /= queue1.size();
//    $display("Covariance: %0f", covariance);
//  end
//endmodule
//`endif
//
//
//
//`timescale 1ns / 1ps
//
//// ==========================================================================
//// File: array_operations.sv
//// Description: Demonstrates operations on packed and unpacked arrays.
//// Each snippet is conditionally compiled using +define+RUN_SNIPPET_xx
//// ==========================================================================
//
////------------------------------------------------
//// SNIPPET 1 – Packed Array Declaration
//`ifdef RUN_SNIPPET_1
//module snippet1;
//
//  logic [7:0] packed_array; // Declare a packed array of 8 bits
//
//  initial begin
//    $display("SNIPPET 1: Packed Array Declaration");
//    $display("Packed array size = %0d bits", $bits(packed_array)); // Print size in bits
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 2 – Packed Array Initialization
//`ifdef RUN_SNIPPET_2
//module snippet2;
//
//  logic [7:0] packed_array = 8'b10101010; // Initialize with binary value
//
//  initial begin
//    $display("SNIPPET 2: Packed Array Initialization");
//    $display("Packed array = %b", packed_array); // Print initialized value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 3 – Bit-level Access (Packed Array)
//`ifdef RUN_SNIPPET_3
//module snippet3;
//
//  logic [7:0] packed_array = 8'b10101010;
//
//  initial begin
//    $display("SNIPPET 3: Bit-level Access (Packed Array)");
//    $display("Bit 3 = %b", packed_array[3]); // Access individual bit
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 4 – Concatenation (Packed Array)
//`ifdef RUN_SNIPPET_4
//module snippet4;
//
//  logic [3:0] part1 = 4'b1111;
//  logic [3:0] part2 = 4'b0000;
//  logic [7:0] result;
//
//  initial begin
//    $display("SNIPPET 4: Concatenation (Packed Array)");
//    result = {part1, part2}; // Concatenate two packed arrays
//    $display("Concatenated result = %b", result); // Print concatenated result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 5 – Replication (Packed Array)
//`ifdef RUN_SNIPPET_5
//module snippet5;
//
//  logic [7:0] replicated_array;
//
//  initial begin
//    $display("SNIPPET 5: Replication (Packed Array)");
//    replicated_array = {4{2'b10}}; // Replicate '10' four times
//    $display("Replicated array = %b", replicated_array); // Print replicated value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 6 – Slicing/Part-select (Packed Array)
//`ifdef RUN_SNIPPET_6
//module snippet6;
//
//  logic [7:0] packed_array = 8'b11001100;
//
//  initial begin
//    $display("SNIPPET 6: Slicing/Part-select (Packed Array)");
//    $display("Sliced bits [7:4] = %b", packed_array[7:4]); // Extract upper nibble
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 7 – Arithmetic Operations (Packed Array)
//`ifdef RUN_SNIPPET_7
//module snippet7;
//
//  logic [7:0] a = 8'd10;
//  logic [7:0] b = 8'd5;
//  logic [7:0] sum;
//
//  initial begin
//    $display("SNIPPET 7: Arithmetic Operations (Packed Array)");
//    sum = a + b; // Perform addition
//    $display("Sum = %d", sum); // Print result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 8 – Logical Operations (Packed Array)
//`ifdef RUN_SNIPPET_8
//module snippet8;
//
//  logic [7:0] a = 8'b11001100;
//  logic [7:0] b = 8'b11110000;
//  logic result;
//
//  initial begin
//    $display("SNIPPET 8: Logical Operations (Packed Array)");
//    result = &a && &b; // Logical AND of all bits
//    $display("Logical AND result = %b", result); // Print logical result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 9 – Bitwise Operations (Packed Array)
//`ifdef RUN_SNIPPET_9
//module snippet9;
//
//  logic [7:0] a = 8'b11001100;
//  logic [7:0] b = 8'b11110000;
//  logic [7:0] result;
//
//  initial begin
//    $display("SNIPPET 9: Bitwise Operations (Packed Array)");
//    result = a ^ b; // Bitwise XOR
//    $display("Bitwise XOR result = %b", result); // Print bitwise result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 10 – Shift Operations (Packed Array)
//`ifdef RUN_SNIPPET_10
//module snippet10;
//
//  logic [7:0] packed_array = 8'b11001100;
//  logic [7:0] shifted;
//
//  initial begin
//    $display("SNIPPET 10: Shift Operations (Packed Array)");
//    shifted = packed_array << 2; // Left shift by 2 bits
//    $display("Shifted result = %b", shifted); // Print shifted value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 11 – Reduction Operators (Packed Array)
//`ifdef RUN_SNIPPET_11
//module snippet11;
//
//  logic [7:0] packed_array = 8'b11001100;
//  logic result;
//
//  initial begin
//    $display("SNIPPET 11: Reduction Operators (Packed Array)");
//    result = &packed_array; // Reduction AND
//    $display("Reduction AND result = %b", result); // Print reduction result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 12 – Comparison (Packed Array)
//`ifdef RUN_SNIPPET_12
//module snippet12;
//
//  logic [7:0] a = 8'b11001100;
//  logic [7:0] b = 8'b11001100;
//
//  initial begin
//    $display("SNIPPET 12: Comparison (Packed Array)");
//    if (a == b)
//      $display("Arrays are equal");
//    else
//      $display("Arrays are not equal");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 13 – Type Casting (Packed Array)
//`ifdef RUN_SNIPPET_13
//module snippet13;
//
//  logic [7:0] packed_array = 8'b11001100;
//  int casted_value;
//
//  initial begin
//    $display("SNIPPET 13: Type Casting (Packed Array)");
//    casted_value = int'(packed_array); // Cast to integer
//    $display("Casted value = %d", casted_value); // Print casted value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 14 – Looping Over Bits (Packed Array)
//`ifdef RUN_SNIPPET_14
//module snippet14;
//
//  logic [7:0] packed_array = 8'b11001100;
//
//  initial begin
//    $display("SNIPPET 14: Looping Over Bits (Packed Array)");
//    for (int i = 0; i < 8; i++) begin
//      $display("Bit %0d = %b", i, packed_array[i]); // Print each bit
//    end
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 15 – Unpacked Array Declaration
//`ifdef RUN_SNIPPET_15
//module snippet15;
//
//  int unpacked_array[4]; // Declare an unpacked array of integers
//
//  initial begin
//    $display("SNIPPET 15: Unpacked Array Declaration");
//    $display("Unpacked array size = %0d", $size(unpacked_array)); // Print size
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 16 – Unpacked Array Initialization
//`ifdef RUN_SNIPPET_16
//module snippet16;
//
//  int unpacked_array[4] = '{10, 20, 30, 40}; // Initialize unpacked array
//
//  initial begin
//    $display("SNIPPET 16: Unpacked Array Initialization");
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print initialized values
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 17 – Accessing Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_17
//module snippet17;
//
//  int unpacked_array[3] = '{10, 20, 30};
//
//  initial begin
//    $display("SNIPPET 17: Accessing Elements (Unpacked Array)");
//    $display("unpacked_array[1] = %0d", unpacked_array[1]); // Access second element
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 18 – Modifying Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_18
//module snippet18;
//
//  int unpacked_array[3] = '{10, 20, 30};
//
//  initial begin
//    $display("SNIPPET 18: Modifying Elements (Unpacked Array)");
//    unpacked_array[1] = 25; // Modify second element
//    $display("Modified unpacked_array[1] = %0d", unpacked_array[1]); // Print modified value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 19 – Looping Over Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_19
//module snippet19;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 19: Looping Over Elements (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print each element
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 20 – Summing Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_20
//module snippet20;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int sum = 0;
//
//  initial begin
//    $display("SNIPPET 20: Summing Elements (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      sum += unpacked_array[i]; // Calculate sum of elements
//    $display("Sum of elements = %0d", sum); // Print sum
//  end
//endmodule
//`endif
//
//// Additional snippets for unpacked arrays can be added similarly...
//
////------------------------------------------------
//// SNIPPET 21 – Searching for Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_21
//module snippet21;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int search_value = 30;
//  int index = -1;
//
//  initial begin
//    $display("SNIPPET 21: Searching for Elements (Unpacked Array)");
//    foreach (unpacked_array[i]) begin
//      if (unpacked_array[i] == search_value) begin
//        index = i; // Find the index of the search value
//        break;
//      end
//    end
//    if (index != -1)
//      $display("Element %0d found at index %0d", search_value, index);
//    else
//      $display("Element %0d not found", search_value);
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 22 – Filtering Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_22
//module snippet22;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int filtered_array[$];
//
//  initial begin
//    $display("SNIPPET 22: Filtering Elements (Unpacked Array)");
//    foreach (unpacked_array[i]) begin
//      if (unpacked_array[i] > 20) begin
//        filtered_array.push_back(unpacked_array[i]); // Filter elements greater than 20
//      end
//    end
//    foreach (filtered_array[i]) 
//      $display("filtered_array[%0d] = %0d", i, filtered_array[i]); // Print filtered array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 23 – Sorting Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_23
//module snippet23;
//
//  int unpacked_array[4] = '{30, 10, 40, 20};
//
//  initial begin
//    $display("SNIPPET 23: Sorting Elements (Unpacked Array)");
//    unpacked_array.sort(); // Sort array in ascending order
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print sorted array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 24 – Reversing Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_24
//module snippet24;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 24: Reversing Elements (Unpacked Array)");
//    unpacked_array.reverse(); // Reverse array elements
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print reversed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 25 – Concatenation (Unpacked Array)
//`ifdef RUN_SNIPPET_25
//module snippet25;
//
//  int array1[2] = '{10, 20};
//  int array2[2] = '{30, 40};
//  int concatenated_array[4];
//
//  initial begin
//    $display("SNIPPET 25: Concatenation (Unpacked Array)");
//    concatenated_array = {array1, array2}; // Concatenate two arrays
//    foreach (concatenated_array[i]) 
//      $display("concatenated_array[%0d] = %0d", i, concatenated_array[i]); // Print concatenated array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 26 – Flattening to 1D (Unpacked Array)
//`ifdef RUN_SNIPPET_26
//module snippet26;
//
//  int array[2][2] = '{{10, 20}, {30, 40}};
//  int flat_array[4];
//
//  initial begin
//    $display("SNIPPET 26: Flattening to 1D (Unpacked Array)");
//    int k = 0;
//    foreach (array[i]) begin
//      foreach (array[i][j]) begin
//        flat_array[k++] = array[i][j]; // Flatten 2D array into 1D
//      end
//    end
//    foreach (flat_array[i]) 
//      $display("flat_array[%0d] = %0d", i, flat_array[i]); // Print flattened array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 27 – Dynamic Resizing (Unpacked Array)
//`ifdef RUN_SNIPPET_27
//module snippet27;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int resized_array[];
//
//  initial begin
//    $display("SNIPPET 27: Dynamic Resizing (Unpacked Array)");
//    resized_array = new[6](unpacked_array); // Resize array to size 6
//    $display("Resized array size = %0d", resized_array.size()); // Print new size
//    foreach (resized_array[i]) 
//      $display("resized_array[%0d] = %0d", i, resized_array[i]); // Print resized array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 28 – Printing Contents (Unpacked Array)
//`ifdef RUN_SNIPPET_28
//module snippet28;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 28: Printing Contents (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print array contents
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 29 – Unpacked Array in Class
//`ifdef RUN_SNIPPET_29
//class MyClass;
//  int unpacked_array[4];
//
//  function void initialize();
//    unpacked_array = '{10, 20, 30, 40}; // Initialize array in class
//  endfunction
//
//  function void display();
//    $display("SNIPPET 29: Unpacked Array in Class");
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print array contents
//  endfunction
//endclass
//
//module snippet29;
//
//  MyClass obj = new();
//
//  initial begin
//    obj.initialize();
//    obj.display();
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 30 – Zeroing/Resetting Array (Unpacked Array)
//`ifdef RUN_SNIPPET_30
//module snippet30;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 30: Zeroing/Resetting Array (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      unpacked_array[i] = 0; // Reset all elements to zero
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print reset array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 31 – Counting Based on Condition (Unpacked Array)
//`ifdef RUN_SNIPPET_31
//module snippet31;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int count = 0;
//
//  initial begin
//    $display("SNIPPET 31: Counting Based on Condition (Unpacked Array)");
//    foreach (unpacked_array[i]) begin
//      if (unpacked_array[i] > 20) 
//        count++; // Count elements greater than 20
//    end
//    $display("Number of elements > 20 = %0d", count); // Print count
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 32 – Creating Look-Up Tables (Unpacked Array)
//`ifdef RUN_SNIPPET_32
//module snippet32;
//
//  int lut[4] = '{100, 200, 300, 400}; // Look-up table
//  int index = 2;
//
//  initial begin
//    $display("SNIPPET 32: Creating Look-Up Tables (Unpacked Array)");
//    $display("Value at index %0d = %0d", index, lut[index]); // Access look-up table
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 33 – Aggregation into Structs/Records (Unpacked Array)
//`ifdef RUN_SNIPPET_33
//typedef struct {
//  int id;
//  int unpacked_array[4];
//} Record;
//
//module snippet33;
//
//  Record record;
//
//  initial begin
//    $display("SNIPPET 33: Aggregation into Structs/Records (Unpacked Array)");
//    record.id = 1;
//    record.unpacked_array = '{10, 20, 30, 40}; // Store array in struct
//    $display("Record ID = %0d", record.id);
//    foreach (record.unpacked_array[i]) 
//      $display("record.unpacked_array[%0d] = %0d", i, record.unpacked_array[i]); // Print array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 34 – Exporting to Output Port (Unpacked Array)
//`ifdef RUN_SNIPPET_34
//module snippet34 (
//  output int out_array[4]
//);
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 34: Exporting to Output Port (Unpacked Array)");
//    out_array = unpacked_array; // Export array to output port
//    foreach (out_array[i]) 
//      $display("out_array[%0d] = %0d", i, out_array[i]); // Print exported array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 35 – Using Unpacked Arrays with DPI (C Interface)
//`ifdef RUN_SNIPPET_35
//import "DPI-C" function void process_array(input int arr[], input int size);
//
//module snippet35;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 35: Using Unpacked Arrays with DPI (C Interface)");
//    process_array(unpacked_array, 4); // Pass array to C function
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 36 – Manual Serialization (Unpacked Array)
//`ifdef RUN_SNIPPET_36
//module snippet36;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  bit serialized_bits[32];
//
//  initial begin
//    $display("SNIPPET 36: Manual Serialization (Unpacked Array)");
//    int k = 0;
//    foreach (unpacked_array[i]) begin
//      for (int j = 0; j < 8; j++) begin
//        serialized_bits[k++] = unpacked_array[i][j]; // Serialize each byte
//      end
//    end
//    foreach (serialized_bits[i]) 
//      $display("serialized_bits[%0d] = %b", i, serialized_bits[i]); // Print serialized bits
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 37 – Returning Arrays from Functions (Unpacked Array)
//`ifdef RUN_SNIPPET_37
//function automatic int get_array[int];
//  int temp[4] = '{10, 20, 30, 40};
//  return temp; // Return an unpacked array
//endfunction
//
//module snippet37;
//
//  int unpacked_array[4];
//
//  initial begin
//    $display("SNIPPET 37: Returning Arrays from Functions (Unpacked Array)");
//    unpacked_array = get_array();
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print returned array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 38 – Passing as Function Arguments (Unpacked Array)
//`ifdef RUN_SNIPPET_38
//function automatic void modify_array(ref int arr[4]);
//  foreach (arr[i]) 
//    arr[i] += 10; // Modify array elements
//endfunction
//
//module snippet38;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 38: Passing as Function Arguments (Unpacked Array)");
//    modify_array(unpacked_array); // Pass array by reference
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print modified array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 39 – Nested Arrays (Unpacked Array)
//`ifdef RUN_SNIPPET_39
//module snippet39;
//
//  int nested_array[2][3] = '{{10, 20, 30}, {40, 50, 60}};
//
//  initial begin
//    $display("SNIPPET 39: Nested Arrays (Unpacked Array)");
//    foreach (nested_array[i]) begin
//      foreach (nested_array[i][j]) 
//        $display("nested_array[%0d][%0d] = %0d", i, j, nested_array[i][j]); // Print nested array
//    end
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 40 – Multi-dimensional Indexing (Unpacked Array)
//`ifdef RUN_SNIPPET_40
//module snippet40;
//
//  int array[2][2] = '{{10, 20}, {30, 40}};
//
//  initial begin
//    $display("SNIPPET 40: Multi-dimensional Indexing (Unpacked Array)");
//    $display("array[1][1] = %0d", array[1][1]); // Access element at [1][1]
//  end
//endmodule
//`endif
//
//
////------------------------------------------------
//// SNIPPET 41 – Combining with Other Arrays (Unpacked Array)
//`ifdef RUN_SNIPPET_41
//module snippet41;
//
//  int array1[3] = '{10, 20, 30};
//  int array2[3] = '{40, 50, 60};
//  int combined_array[6];
//
//  initial begin
//    $display("SNIPPET 41: Combining with Other Arrays (Unpacked Array)");
//    combined_array = {array1, array2}; // Combine two arrays
//    foreach (combined_array[i]) 
//      $display("combined_array[%0d] = %0d", i, combined_array[i]); // Print combined array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 42 – Using as Global/Static Array
//`ifdef RUN_SNIPPET_42
//int global_array[4] = '{10, 20, 30, 40}; // Global unpacked array
//
//module snippet42;
//
//  initial begin
//    $display("SNIPPET 42: Using as Global/Static Array");
//    foreach (global_array[i]) 
//      $display("global_array[%0d] = %0d", i, global_array[i]); // Print global array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 43 – Initializing with Pattern (Unpacked Array)
//`ifdef RUN_SNIPPET_43
//module snippet43;
//
//  int unpacked_array[4] = '{default: 0}; // Initialize all elements to 0
//
//  initial begin
//    $display("SNIPPET 43: Initializing with Pattern (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print initialized array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 44 – Bitwise Operations (Element-wise) (Unpacked Array)
//`ifdef RUN_SNIPPET_44
//module snippet44;
//
//  int array1[4] = '{0xF0, 0x0F, 0xAA, 0x55};
//  int array2[4] = '{0x0F, 0xF0, 0x55, 0xAA};
//  int result[4];
//
//  initial begin
//    $display("SNIPPET 44: Bitwise Operations (Element-wise) (Unpacked Array)");
//    foreach (array1[i]) 
//      result[i] = array1[i] & array2[i]; // Perform bitwise AND on each element
//    foreach (result[i]) 
//      $display("result[%0d] = %h", i, result[i]); // Print result in hex
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 45 – Arithmetic Operations (Element-wise) (Unpacked Array)
//`ifdef RUN_SNIPPET_45
//module snippet45;
//
//  int array1[4] = '{10, 20, 30, 40};
//  int array2[4] = '{1, 2, 3, 4};
//  int result[4];
//
//  initial begin
//    $display("SNIPPET 45: Arithmetic Operations (Element-wise) (Unpacked Array)");
//    foreach (array1[i]) 
//      result[i] = array1[i] * array2[i]; // Multiply corresponding elements
//    foreach (result[i]) 
//      $display("result[%0d] = %0d", i, result[i]); // Print result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 46 – Using with Parameterized Functions (Unpacked Array)
//`ifdef RUN_SNIPPET_46
//function automatic void print_array(input int arr[], input int size);
//  foreach (arr[i]) 
//    $display("arr[%0d] = %0d", i, arr[i]); // Print array elements
//endfunction
//
//module snippet46;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 46: Using with Parameterized Functions (Unpacked Array)");
//    print_array(unpacked_array, 4); // Pass array and size to function
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 47 – Use with Queue/Dynamic Array (Unpacked Array)
//`ifdef RUN_SNIPPET_47
//module snippet47;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int queue[$];
//
//  initial begin
//    $display("SNIPPET 47: Use with Queue/Dynamic Array (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      queue.push_back(unpacked_array[i]); // Copy unpacked array into a queue
//    foreach (queue[i]) 
//      $display("queue[%0d] = %0d", i, queue[i]); // Print queue contents
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 48 – Indexing via Loop Variable (Unpacked Array)
//`ifdef RUN_SNIPPET_48
//module snippet48;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//
//  initial begin
//    $display("SNIPPET 48: Indexing via Loop Variable (Unpacked Array)");
//    for (int i = 0; i < 4; i++) begin
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Access using loop variable
//    end
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 49 – Manual Serialization to Packed Array (Unpacked Array)
//`ifdef RUN_SNIPPET_49
//module snippet49;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  logic [31:0] packed_result;
//
//  initial begin
//    $display("SNIPPET 49: Manual Serialization to Packed Array (Unpacked Array)");
//    foreach (unpacked_array[i]) begin
//      packed_result[i*8 +: 8] = unpacked_array[i]; // Serialize each element into packed bits
//    end
//    $display("Packed result = %h", packed_result); // Print serialized packed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 50 – Reversal of Array Elements (Manual) (Unpacked Array)
//`ifdef RUN_SNIPPET_50
//module snippet50;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int reversed_array[4];
//
//  initial begin
//    $display("SNIPPET 50: Reversal of Array Elements (Manual) (Unpacked Array)");
//    for (int i = 0; i < 4; i++) 
//      reversed_array[i] = unpacked_array[3 - i]; // Reverse manually
//    foreach (reversed_array[i]) 
//      $display("reversed_array[%0d] = %0d", i, reversed_array[i]); // Print reversed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 51 – Aggregation into Structs (Unpacked Array)
//`ifdef RUN_SNIPPET_51
//typedef struct {
//  int id;
//  int data[4];
//} Record;
//
//module snippet51;
//
//  Record record;
//
//  initial begin
//    $display("SNIPPET 51: Aggregation into Structs (Unpacked Array)");
//    record.id = 1;
//    record.data = '{10, 20, 30, 40}; // Store unpacked array in struct
//    $display("Record ID = %0d", record.id);
//    foreach (record.data[i]) 
//      $display("record.data[%0d] = %0d", i, record.data[i]); // Print struct array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 52 – Comparing Arrays (Manual) (Unpacked Array)
//`ifdef RUN_SNIPPET_52
//module snippet52;
//
//  int array1[4] = '{10, 20, 30, 40};
//  int array2[4] = '{10, 20, 30, 40};
//  bit are_equal = 1;
//
//  initial begin
//    $display("SNIPPET 52: Comparing Arrays (Manual) (Unpacked Array)");
//    foreach (array1[i]) begin
//      if (array1[i] != array2[i]) begin
//        are_equal = 0; // Check for inequality
//        break;
//      end
//    end
//    if (are_equal)
//      $display("Arrays are equal");
//    else
//      $display("Arrays are not equal");
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 53 – Flattening Nested Arrays (Unpacked Array)
//`ifdef RUN_SNIPPET_53
//module snippet53;
//
//  int nested_array[2][3] = '{{10, 20, 30}, {40, 50, 60}};
//  int flat_array[6];
//
//  initial begin
//    $display("SNIPPET 53: Flattening Nested Arrays (Unpacked Array)");
//    int k = 0;
//    foreach (nested_array[i]) begin
//      foreach (nested_array[i][j]) begin
//        flat_array[k++] = nested_array[i][j]; // Flatten 2D array into 1D
//      end
//    end
//    foreach (flat_array[i]) 
//      $display("flat_array[%0d] = %0d", i, flat_array[i]); // Print flattened array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 54 – Filtering Nested Arrays (Unpacked Array)
//`ifdef RUN_SNIPPET_54
//module snippet54;
//
//  int nested_array[2][3] = '{{10, 20, 30}, {40, 50, 60}};
//  int filtered_array[$];
//
//  initial begin
//    $display("SNIPPET 54: Filtering Nested Arrays (Unpacked Array)");
//    foreach (nested_array[i]) begin
//      foreach (nested_array[i][j]) begin
//        if (nested_array[i][j] > 30) 
//          filtered_array.push_back(nested_array[i][j]); // Filter elements > 30
//      end
//    end
//    foreach (filtered_array[i]) 
//      $display("filtered_array[%0d] = %0d", i, filtered_array[i]); // Print filtered array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 55 – Sorting Nested Arrays (Unpacked Array)
//`ifdef RUN_SNIPPET_55
//module snippet55;
//
//  int nested_array[2][3] = '{{30, 10, 20}, {60, 40, 50}};
//  int flat_array[6];
//
//  initial begin
//    $display("SNIPPET 55: Sorting Nested Arrays (Unpacked Array)");
//    int k = 0;
//    foreach (nested_array[i]) begin
//      foreach (nested_array[i][j]) begin
//        flat_array[k++] = nested_array[i][j]; // Flatten 2D array into 1D
//      end
//    end
//    flat_array.sort(); // Sort flattened array
//    foreach (flat_array[i]) 
//      $display("flat_array[%0d] = %0d", i, flat_array[i]); // Print sorted array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 56 – Mapping Function on Array (Unpacked Array)
//`ifdef RUN_SNIPPET_56
//module snippet56;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int mapped_array[4];
//
//  initial begin
//    $display("SNIPPET 56: Mapping Function on Array (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      mapped_array[i] = unpacked_array[i] * 2; // Map each element to its double
//    foreach (mapped_array[i]) 
//      $display("mapped_array[%0d] = %0d", i, mapped_array[i]); // Print mapped array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 57 – Creating Sub-arrays (Unpacked Array)
//`ifdef RUN_SNIPPET_57
//module snippet57;
//
//  int unpacked_array[6] = '{10, 20, 30, 40, 50, 60};
//  int sub_array[3];
//
//  initial begin
//    $display("SNIPPET 57: Creating Sub-arrays (Unpacked Array)");
//    sub_array = unpacked_array[2:4]; // Extract sub-array from index 2 to 4
//    foreach (sub_array[i]) 
//      $display("sub_array[%0d] = %0d", i, sub_array[i]); // Print sub-array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 58 – Dynamic Resizing with Fill Value (Unpacked Array)
//`ifdef RUN_SNIPPET_58
//module snippet58;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int resized_array[6];
//
//  initial begin
//    $display("SNIPPET 58: Dynamic Resizing with Fill Value (Unpacked Array)");
//    resized_array = '{unpacked_array, default: 0}; // Resize and fill extra elements with 0
//    foreach (resized_array[i]) 
//      $display("resized_array[%0d] = %0d", i, resized_array[i]); // Print resized array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 59 – Using with Associative Arrays (Unpacked Array)
//`ifdef RUN_SNIPPET_59
//module snippet59;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int associative_array[int];
//
//  initial begin
//    $display("SNIPPET 59: Using with Associative Arrays (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      associative_array[i] = unpacked_array[i]; // Copy unpacked array into associative array
//    foreach (associative_array[i]) 
//      $display("associative_array[%0d] = %0d", i, associative_array[i]); // Print associative array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 60 – Exporting to File (Unpacked Array)
//`ifdef RUN_SNIPPET_60
//module snippet60;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int file_id;
//
//  initial begin
//    $display("SNIPPET 60: Exporting to File (Unpacked Array)");
//    file_id = $fopen("output.txt", "w"); // Open file for writing
//    foreach (unpacked_array[i]) 
//      $fwrite(file_id, "unpacked_array[%0d] = %0d\n", i, unpacked_array[i]); // Write to file
//    $fclose(file_id); // Close file
//  end
//endmodule
//`endif
//
//
////======================================================
////======================================================
//// UNPACKED ARRAY
////======================================================
////======================================================
//
//
//
////------------------------------------------------
//// SNIPPET 61 – Zero Extension or Truncation (Unpacked Array)
//`ifdef RUN_SNIPPET_61
//module snippet61;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int resized_array[6];
//
//  initial begin
//    $display("SNIPPET 61: Zero Extension or Truncation (Unpacked Array)");
//    resized_array = '{unpacked_array, default: 0}; // Extend with zeros
//    foreach (resized_array[i]) 
//      $display("resized_array[%0d] = %0d", i, resized_array[i]); // Print extended array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 62 – Conversion to Packed Array (Unpacked Array)
//`ifdef RUN_SNIPPET_62
//module snippet62;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  logic [31:0] packed_array;
//
//  initial begin
//    $display("SNIPPET 62: Conversion to Packed Array (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      packed_array[i*8 +: 8] = unpacked_array[i]; // Serialize into packed bits
//    $display("Packed array = %h", packed_array); // Print packed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 63 – Aggregated Bitwise XOR (Unpacked Array)
//`ifdef RUN_SNIPPET_63
//module snippet63;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int result = 0;
//
//  initial begin
//    $display("SNIPPET 63: Aggregated Bitwise XOR (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      result ^= unpacked_array[i]; // Perform XOR across all elements
//    $display("Aggregated XOR result = %0d", result); // Print result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 64 – Aggregated Bitwise AND (Unpacked Array)
//`ifdef RUN_SNIPPET_64
//module snippet64;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int result = -1; // Start with all bits set
//
//  initial begin
//    $display("SNIPPET 64: Aggregated Bitwise AND (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      result &= unpacked_array[i]; // Perform AND across all elements
//    $display("Aggregated AND result = %0d", result); // Print result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 65 – Aggregated Bitwise OR (Unpacked Array)
//`ifdef RUN_SNIPPET_65
//module snippet65;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int result = 0;
//
//  initial begin
//    $display("SNIPPET 65: Aggregated Bitwise OR (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      result |= unpacked_array[i]; // Perform OR across all elements
//    $display("Aggregated OR result = %0d", result); // Print result
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 66 – Use in Parameterized Modules (Unpacked Array)
//`ifdef RUN_SNIPPET_66
//module param_module #(parameter SIZE = 4) (
//  input int in_array[SIZE],
//  output int out_array[SIZE]
//);
//
//  always_comb begin
//    foreach (in_array[i]) 
//      out_array[i] = in_array[i] + 1; // Increment each element
//  end
//endmodule
//
//module snippet66;
//
//  int in_array[4] = '{10, 20, 30, 40};
//  int out_array[4];
//
//  param_module #(.SIZE(4)) uut (
//    .in_array(in_array),
//    .out_array(out_array)
//  );
//
//  initial begin
//    $display("SNIPPET 66: Use in Parameterized Modules (Unpacked Array)");
//    #1; // Wait for output to stabilize
//    foreach (out_array[i]) 
//      $display("out_array[%0d] = %0d", i, out_array[i]); // Print output array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 67 – Using with Enumerated Types (Unpacked Array)
//`ifdef RUN_SNIPPET_67
//typedef enum {RED, GREEN, BLUE} color_t;
//
//module snippet67;
//
//  color_t color_array[3] = '{RED, GREEN, BLUE};
//
//  initial begin
//    $display("SNIPPET 67: Using with Enumerated Types (Unpacked Array)");
//    foreach (color_array[i]) 
//      $display("color_array[%0d] = %s", i, color_array[i].name()); // Print enum names
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 68 – Accessing via Class Method (Unpacked Array)
//`ifdef RUN_SNIPPET_68
//class ArrayHandler;
//  int unpacked_array[4];
//
//  function void initialize();
//    unpacked_array = '{10, 20, 30, 40}; // Initialize array
//  endfunction
//
//  function void display();
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print array
//  endfunction
//endclass
//
//module snippet68;
//
//  ArrayHandler handler = new();
//
//  initial begin
//    $display("SNIPPET 68: Accessing via Class Method (Unpacked Array)");
//    handler.initialize();
//    handler.display(); // Call class methods
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 69 – Manual Serialization to Stream (Unpacked Array)
//`ifdef RUN_SNIPPET_69
//module snippet69;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  bit stream[];
//
//  initial begin
//    $display("SNIPPET 69: Manual Serialization to Stream (Unpacked Array)");
//    foreach (unpacked_array[i]) begin
//      for (int j = 0; j < 8; j++) begin
//        stream.push_back(unpacked_array[i][j]); // Serialize each byte
//      end
//    end
//    foreach (stream[i]) 
//      $display("stream[%0d] = %b", i, stream[i]); // Print serialized stream
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 70 – Deserialization from Stream (Unpacked Array)
//`ifdef RUN_SNIPPET_70
//module snippet70;
//
//  bit stream[32] = '{default: 0};
//  int unpacked_array[4];
//
//  initial begin
//    $display("SNIPPET 70: Deserialization from Stream (Unpacked Array)");
//    // Populate stream with some data
//    stream = {8'b00001010, 8'b00010100, 8'b00011110, 8'b00101000};
//    foreach (unpacked_array[i]) begin
//      unpacked_array[i] = 0;
//      for (int j = 0; j < 8; j++) begin
//        unpacked_array[i][j] = stream[i*8 + j]; // Deserialize into array
//      end
//    end
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print deserialized array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 71 – Reversal Using Queue (Unpacked Array)
//`ifdef RUN_SNIPPET_71
//module snippet71;
//
//  int unpacked_array[4] = '{10, 20, 30, 40};
//  int queue[$];
//  int reversed_array[4];
//
//  initial begin
//    $display("SNIPPET 71: Reversal Using Queue (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      queue.push_front(unpacked_array[i]); // Reverse using queue
//    queue.reverse(); // Reverse queue
//    queue.pop_back(reversed_array); // Copy reversed queue back to array
//    foreach (reversed_array[i]) 
//      $display("reversed_array[%0d] = %0d", i, reversed_array[i]); // Print reversed array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 72 – Filtering with Conditions (Unpacked Array)
//`ifdef RUN_SNIPPET_72
//module snippet72;
//
//  int unpacked_array[6] = '{10, 20, 30, 40, 50, 60};
//  int filtered_array[$];
//
//  initial begin
//    $display("SNIPPET 72: Filtering with Conditions (Unpacked Array)");
//    foreach (unpacked_array[i]) begin
//      if (unpacked_array[i] > 30 && unpacked_array[i] < 60) 
//        filtered_array.push_back(unpacked_array[i]); // Filter elements between 30 and 60
//    end
//    foreach (filtered_array[i]) 
//      $display("filtered_array[%0d] = %0d", i, filtered_array[i]); // Print filtered array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 73 – Sorting with Custom Comparator (Unpacked Array)
//`ifdef RUN_SNIPPET_73
//module snippet73;
//
//  int unpacked_array[6] = '{50, 10, 40, 20, 60, 30};
//  int sorted_array[6];
//
//  initial begin
//    $display("SNIPPET 73: Sorting with Custom Comparator (Unpacked Array)");
//    sorted_array = unpacked_array; // Copy array
//    sorted_array.sort() with (item > 30 ? -item : item); // Custom comparator
//    foreach (sorted_array[i]) 
//      $display("sorted_array[%0d] = %0d", i, sorted_array[i]); // Print sorted array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 74 – Counting Unique Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_74
//module snippet74;
//
//  int unpacked_array[6] = '{10, 20, 10, 30, 20, 40};
//  int unique_count = 0;
//
//  initial begin
//    $display("SNIPPET 74: Counting Unique Elements (Unpacked Array)");
//    bit seen[100] = '{default: 0}; // Assume max value is 100
//    foreach (unpacked_array[i]) begin
//      if (!seen[unpacked_array[i]]) begin
//        unique_count++; // Increment count for unique elements
//        seen[unpacked_array[i]] = 1;
//      end
//    end
//    $display("Number of unique elements = %0d", unique_count); // Print count
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 75 – Creating Histogram (Unpacked Array)
//`ifdef RUN_SNIPPET_75
//module snippet75;
//
//  int unpacked_array[6] = '{10, 20, 10, 30, 20, 40};
//  int histogram[100];
//
//  initial begin
//    $display("SNIPPET 75: Creating Histogram (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      histogram[unpacked_array[i]]++; // Increment histogram count
//    foreach (histogram[i]) begin
//      if (histogram[i] > 0) 
//        $display("Value %0d appears %0d times", i, histogram[i]); // Print histogram
//    end
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 76 – Finding Maximum Value (Unpacked Array)
//`ifdef RUN_SNIPPET_76
//module snippet76;
//
//  int unpacked_array[6] = '{10, 20, 30, 40, 50, 60};
//  int max_value;
//
//  initial begin
//    $display("SNIPPET 76: Finding Maximum Value (Unpacked Array)");
//    max_value = unpacked_array[0];
//    foreach (unpacked_array[i]) begin
//      if (unpacked_array[i] > max_value) 
//        max_value = unpacked_array[i]; // Update max value
//    end
//    $display("Maximum value = %0d", max_value); // Print max value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 77 – Finding Minimum Value (Unpacked Array)
//`ifdef RUN_SNIPPET_77
//module snippet77;
//
//  int unpacked_array[6] = '{10, 20, 30, 40, 50, 60};
//  int min_value;
//
//  initial begin
//    $display("SNIPPET 77: Finding Minimum Value (Unpacked Array)");
//    min_value = unpacked_array[0];
//    foreach (unpacked_array[i]) begin
//      if (unpacked_array[i] < min_value) 
//        min_value = unpacked_array[i]; // Update min value
//    end
//    $display("Minimum value = %0d", min_value); // Print min value
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 78 – Calculating Average Value (Unpacked Array)
//`ifdef RUN_SNIPPET_78
//module snippet78;
//
//  int unpacked_array[6] = '{10, 20, 30, 40, 50, 60};
//  int sum = 0;
//  real average;
//
//  initial begin
//    $display("SNIPPET 78: Calculating Average Value (Unpacked Array)");
//    foreach (unpacked_array[i]) 
//      sum += unpacked_array[i]; // Calculate sum
//    average = sum / 6.0; // Calculate average
//    $display("Average value = %.2f", average); // Print average
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 79 – Removing Duplicates (Unpacked Array)
//`ifdef RUN_SNIPPET_79
//module snippet79;
//
//  int unpacked_array[6] = '{10, 20, 10, 30, 20, 40};
//  int unique_array[6];
//  int unique_count = 0;
//
//  initial begin
//    $display("SNIPPET 79: Removing Duplicates (Unpacked Array)");
//    bit seen[100] = '{default: 0}; // Assume max value is 100
//    foreach (unpacked_array[i]) begin
//      if (!seen[unpacked_array[i]]) begin
//        unique_array[unique_count++] = unpacked_array[i]; // Add unique element
//        seen[unpacked_array[i]] = 1;
//      end
//    end
//    foreach (unique_array[i]) 
//      $display("unique_array[%0d] = %0d", i, unique_array[i]); // Print unique array
//  end
//endmodule
//`endif
//
////------------------------------------------------
//// SNIPPET 80 – Shuffling Elements (Unpacked Array)
//`ifdef RUN_SNIPPET_80
//module snippet80;
//
//  int unpacked_array[6] = '{10, 20, 30, 40, 50, 60};
//
//  initial begin
//    $display("SNIPPET 80: Shuffling Elements (Unpacked Array)");
//    unpacked_array.shuffle(); // Shuffle array elements
//    foreach (unpacked_array[i]) 
//      $display("unpacked_array[%0d] = %0d", i, unpacked_array[i]); // Print shuffled array
//  end
//endmodule
//`endif

