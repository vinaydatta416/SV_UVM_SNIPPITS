////===========================================
//// Code 1: Reverse a Static Array
/*
module arr;
  int arr[10] = '{1,2,3,4,5,6,7,8,9,10};
  initial begin
    for (int i=0; i<=10; i++ )
      $display(" %0d", arr[i]);
//    $display("\n");
  end
endmodule 
*/
////===========================================  
//// Code 2: Count Occurrences of an Element  
/*
module arr;
  int arr[6] = '{3,1,4,3,5,3};
  int count =0;	
  initial begin
    foreach (arr[i])
      if(arr[i]==3) count++;
    $display("3 occur %0d times", count);
  end
endmodule
*/
////===========================================  
//// Code 3: Find Maximum Element  
/*
module arr;
  int arr[5] = '{1,3,5,6,9};
  int max = arr[0];
  initial begin
    foreach (arr[i])
      if(arr[i] > max) max = arr[i];
    $display("Max = %0d", max);
  end
endmodule
*/
////===========================================  
//// Code 4: Check if All Elements are Even  
/*
module even;
  int arr[4]='{2,4,6,8};
  bit flag = 1;
  
  initial begin
    foreach (arr[i])
      if(arr[i]%2 !=0) flag = 0;
    $display("All  even? %0b", flag , arr);
  end
endmodule
*/
////===========================================  
//// Code 5: Find Sum of Array Elements  
/*
module sum;
  int arr[5] = '{1,2,3,4,5};
  int sum = 0;
  
  initial begin
    foreach (arr[i])
      sum += arr[i];
    $display("Sum=%0d", sum);
  end
endmodule
*/
////===========================================  
//// Code 6: Find Index of First Occurrence  
/*
module arr;
  int arr[6] = '{7,5,4,5,2,1};
  
  initial begin
    foreach (arr[i])
      if(arr[i] ==5 ) begin
        $display("Index = %0d", i);
        break;
      end
  end
endmodule
*/
////===========================================  
//// Code 7: Swap First and Last Elements  
/*
module arr;
  int arr[4] = '{9,8,7,6};
  
  initial begin
    int temp = arr[0];
    arr[0] = arr[3];
    arr[3] = temp;
    $display("Swapped = %p", arr);
  end
endmodule 
*/
////===========================================  
//// Code 8: Count Even and Odd Elements  

////===========================================  
//// Code 9: Left Rotate Array by One  
/*
module arr;
  int arr[5] = '{1,2,3,4,5};
  int temp = arr[0];
  
  initial begin
    for (int i=0; i<4; i++)
      arr[i] = arr[i+1];
    arr[4] = temp;
    $display("ROtated =%p", arr);
  end
endmodule
*/
////===========================================  
//// Code 10: Reverse Elements In-Place  
 
////===========================================  
//// Code 11: Check for Sorted Array  
/*
module arr;
  int arr[4] = '{2,3,5,8};
  bit sorted = 1;
  
  initial begin 
    for (int i=1; i<4; i++)
      if(arr[i] < arr[i-1]) sorted = 0;
    $display("Sorted? %0b", sorted);
  end
endmodule
*/
////===========================================  
//// Code 12: Count Elements Greater Than 5  
/*
module arr;
  int arr[6] = '{1,5,6,7,8,3};
  int count = 0;
  initial begin
    foreach (arr[i])
      if(arr[i] > 5 ) count++;
    $display(">5 Count = %0d", count);
  end
endmodule
*/
////===========================================  
//// Code 13: Replace All Zeros with Ones  
/*
module arr;
  int arr[5] = '{0,1,0,2,3};
  
  initial begin
    foreach (arr[i])
      if(arr[i]== 0) arr[i] = 1; // can replcae with orther numbers and i*2 also
    $display("Modified = %p", arr);
  end
endmodule
*/
////===========================================  
//// Code 14: Sum of Alternate Elements  
///**
//```systemverilog
//module alt_sum;
//  int arr[6] = '{1, 2, 3, 4, 5, 6};
//  int sum = 0;
//
//  initial begin
//    for (int i = 0; i < 6; i += 2)
//      sum += arr[i];
//    $display("Alt Sum = %0d", sum);
//  end
//endmodule

////===========================================  
//// Code 15: Second Largest Element  
///**
//```systemverilog
//module second_largest;
//  int arr[6] = '{5, 2, 9, 1, 6, 3};
//  int max = -1, second = -1;
//
//  initial begin
//    foreach (arr[i]) begin
//      if (arr[i] > max) begin
//        second = max;
//        max = arr[i];
//      end else if (arr[i] > second && arr[i] != max)
//        second = arr[i];
//    end
//    $display("Second Max = %0d", second);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 16: Check for Duplicate Elements  
///**
//```systemverilog
//module check_duplicate;
//  int arr[5] = '{3, 1, 4, 3, 5};
//  bit found = 0;
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      for (int j = i+1; j < 5; j++)
//        if (arr[i] == arr[j]) found = 1;
//    $display("Duplicates? %0b", found);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 17: Count Elements Equal to Index  
///**
//```systemverilog
//module count_equal_index;
//  int arr[6] = '{0, 2, 2, 3, 5, 6};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == i) count++;
//    $display("Equal to index = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 18: All Elements Are Unique?  
///**
//```systemverilog
//module all_unique;
//  int arr[4] = '{1, 2, 3, 4};
//  bit unique = 1;
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      for (int j = i+1; j < 4; j++)
//        if (arr[i] == arr[j]) unique = 0;
//    $display("All Unique? %0b", unique);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 19: Shift Elements Right by 1  
///**
//```systemverilog
//module shift_right;
//  int arr[5] = '{1, 2, 3, 4, 5};
//  int temp;
//
//  initial begin
//    temp = arr[4];
//    for (int i = 4; i > 0; i--)
//      arr[i] = arr[i-1];
//    arr[0] = temp;
//    $display("Right Shift = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 20: Find First Even Number  
///**
//```systemverilog
//module first_even;
//  int arr[5] = '{1, 3, 5, 4, 6};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2 == 0) begin
//        $display("First Even = %0d", arr[i]);
//        break;
//      end
//  end
//endmodule
//*/
//
////===========================================
//// Code 1: Reverse a Static Array
///*\*\*
//
//````systemverilog
//module reverse_array;
//  int arr[5] = '{1,2,3,4,5};
//  initial begin
//    for (int i = 4; i >= 0; i--)
//      $write("%0d ", arr[i]);
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 2: Count Occurrences of an Element  
///**
//```systemverilog
//module count_element;
//  int arr[6] = '{3,1,4,3,5,3};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == 3) count++;
//    $display("3 occurs %0d times", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 3: Find Maximum Element  
///**
//```systemverilog
//module max_element;
//  int arr[5] = '{2, 9, 1, 6, 3};
//  int max = arr[0];
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] > max) max = arr[i];
//    $display("Max = %0d", max);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 4: Check if All Elements are Even  
///**
//```systemverilog
//module all_even;
//  int arr[4] = '{2, 4, 6, 8};
//  bit flag = 1;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2 != 0) flag = 0;
//    $display("All Even? %0b", flag);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 5: Find Sum of Array Elements  
///**
//```systemverilog
//module sum_array;
//  int arr[5] = '{1, 2, 3, 4, 5};
//  int sum = 0;
//
//  initial begin
//    foreach (arr[i])
//      sum += arr[i];
//    $display("Sum = %0d", sum);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 6: Find Index of First Occurrence  
///**
//```systemverilog
//module find_index;
//  int arr[6] = '{7, 5, 4, 5, 2, 1};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == 5) begin
//        $display("Index = %0d", i);
//        break;
//      end
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 7: Swap First and Last Elements  
///**
//```systemverilog
//module swap_first_last;
//  int arr[4] = '{9, 8, 7, 6};
//
//  initial begin
//    int temp = arr[0];
//    arr[0] = arr[3];
//    arr[3] = temp;
//    $display("Swapped = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 8: Count Even and Odd Elements  
///**
//```systemverilog
//module count_even_odd;
//  int arr[6] = '{1, 2, 3, 4, 5, 6};
//  int even = 0, odd = 0;
//
//  initial begin
//    foreach (arr[i])
//      (arr[i] % 2 == 0) ? even++ : odd++;
//    $display("Even = %0d, Odd = %0d", even, odd);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 9: Left Rotate Array by One  
///**
//```systemverilog
//module left_rotate;
//  int arr[5] = '{1,2,3,4,5};
//  int temp = arr[0];
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      arr[i] = arr[i+1];
//    arr[4] = temp;
//    $display("Rotated = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 10: Reverse Elements In-Place  
///**
//```systemverilog
//module reverse_inplace;
//  int arr[6] = '{1, 2, 3, 4, 5, 6};
//
//  initial begin
//    for (int i = 0; i < 3; i++) begin
//      int t = arr[i];
//      arr[i] = arr[5 - i];
//      arr[5 - i] = t;
//    end
//    $display("Reversed = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 11: Check for Sorted Array  
///**
//```systemverilog
//module check_sorted;
//  int arr[4] = '{2, 3, 5, 8};
//  bit sorted = 1;
//
//  initial begin
//    for (int i = 1; i < 4; i++)
//      if (arr[i] < arr[i-1]) sorted = 0;
//    $display("Sorted? %0b", sorted);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 12: Count Elements Greater Than 5  
///**
//```systemverilog
//module count_gt5;
//  int arr[6] = '{1, 5, 6, 8, 3, 7};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] > 5) count++;
//    $display(">5 Count = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 13: Replace All Zeros with Ones  
///**
//```systemverilog
//module replace_zero;
//  int arr[5] = '{0, 1, 0, 2, 3};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == 0) arr[i] = 1;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 14: Sum of Alternate Elements  
///**
//```systemverilog
//module alt_sum;
//  int arr[6] = '{1, 2, 3, 4, 5, 6};
//  int sum = 0;
//
//  initial begin
//    for (int i = 0; i < 6; i += 2)
//      sum += arr[i];
//    $display("Alt Sum = %0d", sum);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 15: Second Largest Element  
///**
//```systemverilog
//module second_largest;
//  int arr[6] = '{5, 2, 9, 1, 6, 3};
//  int max = -1, second = -1;
//
//  initial begin
//    foreach (arr[i]) begin
//      if (arr[i] > max) begin
//        second = max;
//        max = arr[i];
//      end else if (arr[i] > second && arr[i] != max)
//        second = arr[i];
//    end
//    $display("Second Max = %0d", second);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 16: Check for Duplicate Elements  
///**
//```systemverilog
//module check_duplicate;
//  int arr[5] = '{3, 1, 4, 3, 5};
//  bit found = 0;
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      for (int j = i+1; j < 5; j++)
//        if (arr[i] == arr[j]) found = 1;
//    $display("Duplicates? %0b", found);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 17: Count Elements Equal to Index  
///**
//```systemverilog
//module count_equal_index;
//  int arr[6] = '{0, 2, 2, 3, 5, 6};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == i) count++;
//    $display("Equal to index = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 18: All Elements Are Unique?  
///**
//```systemverilog
//module all_unique;
//  int arr[4] = '{1, 2, 3, 4};
//  bit unique = 1;
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      for (int j = i+1; j < 4; j++)
//        if (arr[i] == arr[j]) unique = 0;
//    $display("All Unique? %0b", unique);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 19: Shift Elements Right by 1  
///**
//```systemverilog
//module shift_right;
//  int arr[5] = '{1, 2, 3, 4, 5};
//  int temp;
//
//  initial begin
//    temp = arr[4];
//    for (int i = 4; i > 0; i--)
//      arr[i] = arr[i-1];
//    arr[0] = temp;
//    $display("Right Shift = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 20: Find First Even Number  
///**
//```systemverilog
//module first_even;
//  int arr[5] = '{1, 3, 5, 4, 6};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2 == 0) begin
//        $display("First Even = %0d", arr[i]);
//        break;
//      end
//  end
//endmodule
//*/
//
////===========================================
//// Code 21: Find First and Last Element
///*\*\*
//
//````systemverilog
//module first_last;
//  int arr[5] = '{4, 2, 7, 3, 9};
//  initial $display("First = %0d, Last = %0d", arr[0], arr[4]);
//endmodule
//*/
//*/
////===========================================  
//// Code 22: Product of All Elements  
///**
//```systemverilog
//module product_all;
//  int arr[4] = '{2, 3, 4, 5};
//  int prod = 1;
//
//  initial begin
//    foreach (arr[i])
//      prod *= arr[i];
//    $display("Product = %0d", prod);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 23: Replace Negative Numbers with 0  
///**
//```systemverilog
//module replace_negative;
//  int arr[5] = '{-1, 3, -4, 2, -6};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] < 0) arr[i] = 0;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 24: Count Elements Divisible by 3  
///**
//```systemverilog
//module count_div3;
//  int arr[6] = '{3, 5, 6, 9, 11, 12};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 3 == 0) count++;
//    $display("Div by 3 = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 25: Count Elements Greater Than Average  
///**
//```systemverilog
//module gt_avg;
//  int arr[5] = '{2, 4, 6, 8, 10};
//  int sum = 0, avg, count = 0;
//
//  initial begin
//    foreach (arr[i]) sum += arr[i];
//    avg = sum / 5;
//    foreach (arr[i])
//      if (arr[i] > avg) count++;
//    $display("Above Avg = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 26: Create Array of Squares  
///**
//```systemverilog
//module square_array;
//  int arr[4] = '{2, 3, 4, 5};
//  int sq[4];
//
//  initial begin
//    foreach (arr[i])
//      sq[i] = arr[i] * arr[i];
//    $display("Squares = %p", sq);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 27: Difference Between Max and Min  
///**
//```systemverilog
//module max_min_diff;
//  int arr[5] = '{3, 1, 9, 6, 2};
//  int max = arr[0], min = arr[0];
//
//  initial begin
//    foreach (arr[i]) begin
//      if (arr[i] > max) max = arr[i];
//      if (arr[i] < min) min = arr[i];
//    end
//    $display("Diff = %0d", max - min);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 28: Replace All Odd with Even  
///**
//```systemverilog
//module odd_to_even;
//  int arr[5] = '{1, 2, 3, 4, 5};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2 != 0) arr[i]++;
//    $display("Even Only = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 29: Print Array in Zig-Zag Order  
///**
//```systemverilog
//module zig_zag;
//  int arr[6] = '{1, 2, 3, 4, 5, 6};
//
//  initial begin
//    for (int i = 0; i < 3; i++) begin
//      $write("%0d ", arr[i]);
//      $write("%0d ", arr[5-i]);
//    end
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 30: Replace All Elements with Their Index  
///**
//```systemverilog
//module index_array;
//  int arr[6];
//
//  initial begin
//    foreach (arr[i])
//      arr[i] = i;
//    $display("Index Fill = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 31: Reverse Odd Indexed Elements Only  
///**
//```systemverilog
//module reverse_odds;
//  int arr[6] = '{1, 3, 5, 7, 9, 11};
//
//  initial begin
//    for (int i = 1, j = 5; i < j; i += 2, j -= 2) begin
//      int temp = arr[i];
//      arr[i] = arr[j];
//      arr[j] = temp;
//    end
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 32: Create Binary Array for Even/Odd  
///**
//```systemverilog
//module even_odd_binary;
//  int arr[5] = '{2, 5, 8, 7, 6};
//  bit bin[5];
//
//  initial begin
//    foreach (arr[i])
//      bin[i] = (arr[i] % 2 == 0);
//    $display("Binary = %p", bin);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 33: Sum of First Half and Second Half  
///**
//```systemverilog
//module sum_halves;
//  int arr[6] = '{1,2,3,4,5,6};
//  int sum1 = 0, sum2 = 0;
//
//  initial begin
//    for (int i = 0; i < 3; i++) sum1 += arr[i];
//    for (int i = 3; i < 6; i++) sum2 += arr[i];
//    $display("First Half = %0d, Second Half = %0d", sum1, sum2);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 34: Shift Zeros to End  
///**
//```systemverilog
//module shift_zeros;
//  int arr[6] = '{0, 1, 0, 2, 3, 0};
//  int temp[6], j = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] != 0) temp[j++] = arr[i];
//    while (j < 6) temp[j++] = 0;
//    $display("Shifted = %p", temp);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 35: Count Frequency of Each Digit 0-9  
///**
//```systemverilog
//module digit_freq;
//  int arr[10] = '{1,2,2,3,3,3,4,4,4,4};
//  int count[10] = '{default:0};
//
//  initial begin
//    foreach (arr[i])
//      count[arr[i]]++;
//    $display("Frequencies = %p", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 36: Sum of Elements at Even Indexes  
///**
//```systemverilog
//module sum_even_idx;
//  int arr[6] = '{5, 4, 3, 2, 1, 0};
//  int sum = 0;
//
//  initial begin
//    for (int i = 0; i < 6; i += 2)
//      sum += arr[i];
//    $display("Even Index Sum = %0d", sum);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 37: Sum of Squares of Odd Elements  
///**
//```systemverilog
//module sum_sq_odds;
//  int arr[5] = '{1, 2, 3, 4, 5};
//  int sum = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2) sum += arr[i]*arr[i];
//    $display("Sum = %0d", sum);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 38: Check for Palindromic Array  
///**
//```systemverilog
//module check_palindrome;
//  int arr[5] = '{1,2,3,2,1};
//  bit flag = 1;
//
//  initial begin
//    for (int i = 0; i < 2; i++)
//      if (arr[i] != arr[4-i]) flag = 0;
//    $display("Palindrome? %0b", flag);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 39: Find Duplicate Elements Only  
///**
//```systemverilog
//module find_duplicates;
//  int arr[6] = '{1,2,2,3,4,4};
//
//  initial begin
//    for (int i = 0; i < 5; i++)
//      for (int j = i+1; j < 6; j++)
//        if (arr[i] == arr[j]) $display("Duplicate: %0d", arr[i]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 40: Move All Ones to Start  
///**
//```systemverilog
//module ones_to_front;
//  int arr[6] = '{0,1,0,1,1,0};
//  int res[6], idx = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == 1) res[idx++] = 1;
//    foreach (arr[i])
//      if (arr[i] == 0) res[idx++] = 0;
//    $display("Rearranged = %p", res);
//  end
//endmodule
//*/
//
////===========================================
//// Code 41: Count Prime Numbers in Array
///*\*\*
//
//````systemverilog
//module count_primes;
//  int arr[6] = '{2, 3, 4, 5, 6, 7};
//  int count = 0;
//
//  function bit is_prime(int n);
//    if (n < 2) return 0;
//    for (int i = 2; i*i <= n; i++)
//      if (n % i == 0) return 0;
//    return 1;
//  endfunction
//
//  initial begin
//    foreach (arr[i])
//      if (is_prime(arr[i])) count++;
//    $display("Prime Count = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 42: Replace Multiples of 3 with -1  
///**
//```systemverilog
//module repl_mult3;
//  int arr[6] = '{3, 4, 6, 7, 9, 10};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 3 == 0) arr[i] = -1;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 43: Find Element Occurring Only Once  
///**
//```systemverilog
//module unique_once;
//  int arr[7] = '{2, 3, 4, 2, 3, 4, 5};
//  int res = 0;
//
//  initial begin
//    foreach (arr[i])
//      res ^= arr[i];
//    $display("Unique Element = %0d", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 44: Reverse Elements Between Two Indexes  
///**
//```systemverilog
//module reverse_range;
//  int arr[6] = '{1,2,3,4,5,6};
//  int l = 1, r = 4;
//
//  initial begin
//    while (l < r) begin
//      int t = arr[l];
//      arr[l] = arr[r];
//      arr[r] = t;
//      l++; r--;
//    end
//    $display("Partial Reverse = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 45: Print All Pairs with Given Sum  
///**
//```systemverilog
//module pair_sum;
//  int arr[6] = '{1,2,3,4,5,6};
//  int target = 7;
//
//  initial begin
//    for (int i = 0; i < 5; i++)
//      for (int j = i+1; j < 6; j++)
//        if (arr[i]+arr[j] == target)
//          $display("Pair: %0d, %0d", arr[i], arr[j]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 46: Replace Each Element with Sum of Neighbors  
///**
//```systemverilog
//module sum_neighbors;
//  int arr[5] = '{1, 2, 3, 4, 5};
//  int res[5];
//
//  initial begin
//    res[0] = arr[1];
//    res[4] = arr[3];
//    for (int i = 1; i < 4; i++)
//      res[i] = arr[i-1] + arr[i+1];
//    $display("New Array = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 47: Find Majority Element (>n/2 times)  
///**
//```systemverilog
//module majority_element;
//  int arr[7] = '{3,3,4,3,5,3,3};
//  int count = 0, cand;
//
//  initial begin
//    foreach (arr[i]) begin
//      if (count == 0) cand = arr[i];
//      count += (arr[i] == cand) ? 1 : -1;
//    end
//    $display("Majority = %0d", cand);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 48: Convert Array to Boolean Mask (nonzero=1)  
///**
//```systemverilog
//module bool_mask;
//  int arr[5] = '{0, 5, -1, 8, 0};
//  bit mask[5];
//
//  initial begin
//    foreach (arr[i])
//      mask[i] = (arr[i] != 0);
//    $display("Mask = %p", mask);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 49: Cumulative Sum Array  
///**
//```systemverilog
//module cum_sum;
//  int arr[5] = '{1,2,3,4,5};
//  int cum[5];
//
//  initial begin
//    cum[0] = arr[0];
//    for (int i = 1; i < 5; i++)
//      cum[i] = cum[i-1] + arr[i];
//    $display("Cumulative = %p", cum);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 50: Find 2nd Smallest Element  
///**
//```systemverilog
//module second_min;
//  int arr[6] = '{8, 3, 1, 5, 2, 4};
//  int min = 999, second = 999;
//
//  initial begin
//    foreach (arr[i]) begin
//      if (arr[i] < min) begin
//        second = min;
//        min = arr[i];
//      end else if (arr[i] < second && arr[i] != min)
//        second = arr[i];
//    end
//    $display("Second Min = %0d", second);
//  end
//endmodule
//*/
//
//
////===========================================
//// Code 41: Remove All Negative Elements
///* 
//
//````systemverilog
//module remove_negatives;
//  int arr[6] = '{2, -1, 4, -3, 5, -2};
//  int result[6], idx = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] >= 0) result[idx++] = arr[i];
//    $display("Filtered = %p", result);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 42: Copy Array in Reverse Order  
///**
//```systemverilog
//module copy_reverse;
//  int arr[5] = '{10, 20, 30, 40, 50};
//  int rev[5];
//
//  initial begin
//    foreach (arr[i])
//      rev[i] = arr[4 - i];
//    $display("Reversed = %p", rev);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 43: Find Frequency of Each Unique Element  
///**
//```systemverilog
//module frequency_map;
//  int arr[6] = '{1,2,2,3,1,4};
//  int count[10] = '{default:0};
//
//  initial begin
//    foreach (arr[i])
//      count[arr[i]]++;
//    for (int i = 0; i < 10; i++)
//      if (count[i] != 0) $display("%0d: %0d", i, count[i]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 44: Replace All Multiples of 3 With -1  
///**
//```systemverilog
//module replace_mult3;
//  int arr[6] = '{3, 5, 6, 9, 11, 12};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 3 == 0) arr[i] = -1;
//    $display("Replaced = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 45: Find Missing Number in 0 to 5 Range  
///**
//```systemverilog
//module missing_number;
//  int arr[5] = '{0, 1, 2, 3, 5};
//  bit found[6] = '{default:0};
//
//  initial begin
//    foreach (arr[i])
//      found[arr[i]] = 1;
//    foreach (found[i])
//      if (!found[i]) $display("Missing = %0d", i);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 46: Remove Duplicates from Array  
///**
//```systemverilog
//module remove_dups;
//  int arr[6] = '{1, 2, 2, 3, 4, 4};
//  bit seen[10] = '{default:0};
//
//  initial begin
//    foreach (arr[i])
//      if (!seen[arr[i]]) begin
//        $write("%0d ", arr[i]);
//        seen[arr[i]] = 1;
//      end
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 47: Print Pairs with Sum 10  
///**
//```systemverilog
//module pairs_sum10;
//  int arr[6] = '{1, 9, 2, 8, 3, 7};
//
//  initial begin
//    for (int i = 0; i < 5; i++)
//      for (int j = i+1; j < 6; j++)
//        if (arr[i] + arr[j] == 10)
//          $display("Pair: %0d + %0d", arr[i], arr[j]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 48: Replace Even Index with 0  
///**
//```systemverilog
//module even_idx_zero;
//  int arr[6] = '{5, 4, 3, 2, 1, 0};
//
//  initial begin
//    for (int i = 0; i < 6; i += 2)
//      arr[i] = 0;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 49: Check if Array is Monotonic Increasing  
///**
//```systemverilog
//module is_increasing;
//  int arr[5] = '{2, 4, 6, 7, 9};
//  bit increasing = 1;
//
//  initial begin
//    for (int i = 1; i < 5; i++)
//      if (arr[i] < arr[i-1]) increasing = 0;
//    $display("Increasing? %0b", increasing);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 50: Mirror First Half to Second Half  
///**
//```systemverilog
//module mirror_half;
//  int arr[6] = '{1, 2, 3, 0, 0, 0};
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      arr[5-i] = arr[i];
//    $display("Mirrored = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 51: Calculate Average of Array  
///**
//```systemverilog
//module avg_array;
//  int arr[5] = '{10, 20, 30, 40, 50};
//  int sum = 0;
//
//  initial begin
//    foreach (arr[i]) sum += arr[i];
//    $display("Average = %0d", sum/5);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 52: Replace Each Element With Its Square  
///**
//```systemverilog
//module square_replace;
//  int arr[4] = '{2, 3, 4, 5};
//
//  initial begin
//    foreach (arr[i])
//      arr[i] *= arr[i];
//    $display("Squared = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 53: Find Index of Maximum Element  
///**
//```systemverilog
//module index_max;
//  int arr[5] = '{5, 1, 9, 3, 7};
//  int max_idx = 0;
//
//  initial begin
//    for (int i = 1; i < 5; i++)
//      if (arr[i] > arr[max_idx]) max_idx = i;
//    $display("Max Index = %0d", max_idx);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 54: Swap Even and Odd Indexed Elements  
///**
//```systemverilog
//module swap_even_odd;
//  int arr[6] = '{10, 11, 20, 21, 30, 31};
//
//  initial begin
//    for (int i = 0; i < 6; i += 2) begin
//      int t = arr[i];
//      arr[i] = arr[i+1];
//      arr[i+1] = t;
//    end
//    $display("Swapped = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 55: Print All Unique Elements  
///**
//```systemverilog
//module print_unique;
//  int arr[6] = '{1,2,2,3,4,4};
//  int freq[10] = '{default:0};
//
//  initial begin
//    foreach (arr[i]) freq[arr[i]]++;
//    for (int i = 0; i < 10; i++)
//      if (freq[i] == 1) $write("%0d ", i);
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 56: Count Pairs With Even Sum  
///**
//```systemverilog
//module even_sum_pairs;
//  int arr[4] = '{1, 2, 3, 4};
//  int count = 0;
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      for (int j = i+1; j < 4; j++)
//        if ((arr[i] + arr[j]) % 2 == 0) count++;
//    $display("Even-Sum Pairs = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 57: Reverse Elements at Odd Indexes Only  
///**
//```systemverilog
//module reverse_odd_index;
//  int arr[6] = '{10,11,20,21,30,31};
//
//  initial begin
//    for (int i = 1, j = 5; i < j; i += 2, j -= 2) begin
//      int t = arr[i];
//      arr[i] = arr[j];
//      arr[j] = t;
//    end
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 58: Fill Array with Fibonacci Series  
///**
//```systemverilog
//module fib_array;
//  int arr[6];
//  initial begin
//    arr[0] = 0; arr[1] = 1;
//    for (int i = 2; i < 6; i++)
//      arr[i] = arr[i-1] + arr[i-2];
//    $display("Fibonacci = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 59: Print Alternate Elements from Start and End  
///**
//```systemverilog
//module alt_in_out;
//  int arr[6] = '{1,2,3,4,5,6};
//
//  initial begin
//    for (int i = 0; i < 3; i++) begin
//      $write("%0d %0d ", arr[i], arr[5-i]);
//    end
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 60: Sort Array Using Bubble Sort  
///**
//```systemverilog
//module bubble_sort;
//  int arr[5] = '{4, 1, 3, 2, 5};
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      for (int j = 0; j < 4-i; j++)
//        if (arr[j] > arr[j+1]) begin
//          int t = arr[j];
//          arr[j] = arr[j+1];
//          arr[j+1] = t;
//        end
//    $display("Sorted = %p", arr);
//  end
//endmodule
//*/
//
//
////===========================================
//// Code 51: Count Elements Smaller Than a Given Value
///*
//
//````systemverilog
//module count_smaller;
//  int arr[6] = '{3, 7, 1, 9, 2, 5};
//  int key = 5, count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] < key) count++;
//    $display("Smaller than %0d = %0d", key, count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 52: Find Difference Between Sums of Even and Odd Indexed Elements  
///**
//```systemverilog
//module diff_even_odd_idx;
//  int arr[6] = '{5, 4, 3, 2, 1, 6};
//  int se = 0, so = 0;
//
//  initial begin
//    for (int i = 0; i < 6; i++)
//      if (i % 2 == 0) se += arr[i]; else so += arr[i];
//    $display("Diff = %0d", se - so);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 53: Find Count of Distinct Elements  
///**
//```systemverilog
//module count_distinct;
//  int arr[5] = '{1,2,2,3,1};
//  bit seen[10];
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      seen[arr[i]] = 1;
//    foreach (seen[i])
//      if (seen[i]) count++;
//    $display("Distinct = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 54: Swap All Pairs in Array  
///**
//```systemverilog
//module swap_pairs;
//  int arr[6] = '{1,2,3,4,5,6};
//
//  initial begin
//    for (int i = 0; i < 5; i += 2)
//      {arr[i], arr[i+1]} = {arr[i+1], arr[i]};
//    $display("Swapped = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 55: Count Transitions from 0 to 1  
///**
//```systemverilog
//module count_transitions;
//  bit arr[8] = '{0,0,1,1,0,1,0,1};
//  int count = 0;
//
//  initial begin
//    for (int i = 1; i < 8; i++)
//      if (arr[i-1] == 0 && arr[i] == 1) count++;
//    $display("0→1 Transitions = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 56: Find Longest Sequence of Same Number  
///**
//```systemverilog
//module longest_repeat;
//  int arr[10] = '{1,1,1,2,2,3,3,3,3,1};
//  int maxlen = 1, cur = 1;
//
//  initial begin
//    for (int i = 1; i < 10; i++) begin
//      if (arr[i] == arr[i-1]) cur++;
//      else cur = 1;
//      if (cur > maxlen) maxlen = cur;
//    end
//    $display("Longest Same = %0d", maxlen);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 57: Check if Array is a Rotation of Sorted Array  
///**
//```systemverilog
//module rotated_sorted;
//  int arr[5] = '{3,4,5,1,2};
//  int count = 0;
//
//  initial begin
//    for (int i = 1; i < 5; i++)
//      if (arr[i] < arr[i-1]) count++;
//    $display("Rotation? %0b", (count <= 1));
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 58: Toggle Binary Elements (0 ↔ 1)  
///**
//```systemverilog
//module toggle_bits;
//  bit arr[6] = '{1,0,1,0,1,0};
//
//  initial begin
//    foreach (arr[i])
//      arr[i] = ~arr[i];
//    $display("Toggled = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 59: Print Diagonal Elements of 2D Array  
///**
//```systemverilog
//module diag_2d;
//  int arr[3][3] = '{'{1,2,3}, '{4,5,6}, '{7,8,9}};
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      $write("%0d ", arr[i][i]);
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 60: Swap Columns in 2D Array  
///**
//```systemverilog
//module swap_cols;
//  int arr[2][3] = '{'{1,2,3}, '{4,5,6}};
//
//  initial begin
//    for (int i = 0; i < 2; i++)
//      {arr[i][0], arr[i][2]} = {arr[i][2], arr[i][0]};
//    $display("Swapped = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 61: Find Maximum in Each Row of 2D Array  
///**
//```systemverilog
//module row_max;
//  int arr[2][3] = '{'{1,9,3}, '{7,5,6}};
//
//  initial begin
//    for (int i = 0; i < 2; i++) begin
//      int max = arr[i][0];
//      for (int j = 1; j < 3; j++)
//        if (arr[i][j] > max) max = arr[i][j];
//      $display("Row %0d Max = %0d", i, max);
//    end
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 62: Count Number of Zeros in 2D Array  
///**
//```systemverilog
//module count_zeros;
//  int arr[2][3] = '{'{1,0,3}, '{0,0,6}};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i,j])
//      if (arr[i][j] == 0) count++;
//    $display("Zeros = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 63: Transpose 2D Array  
///**
//```systemverilog
//module transpose_2d;
//  int arr[2][3] = '{'{1,2,3}, '{4,5,6}};
//  int trans[3][2];
//
//  initial begin
//    for (int i = 0; i < 2; i++)
//      for (int j = 0; j < 3; j++)
//        trans[j][i] = arr[i][j];
//    $display("Transposed = %p", trans);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 64: Flatten 2D Array to 1D  
///**
//```systemverilog
//module flatten_array;
//  int arr[2][3] = '{'{1,2,3}, '{4,5,6}};
//  int flat[6], k = 0;
//
//  initial begin
//    foreach (arr[i,j])
//      flat[k++] = arr[i][j];
//    $display("Flat = %p", flat);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 65: Replace Row Elements with Row Sum  
///**
//```systemverilog
//module row_sum_replace;
//  int arr[2][3] = '{'{1,2,3}, '{4,5,6}};
//
//  initial begin
//    for (int i = 0; i < 2; i++) begin
//      int sum = 0;
//      for (int j = 0; j < 3; j++) sum += arr[i][j];
//      for (int j = 0; j < 3; j++) arr[i][j] = sum;
//    end
//    $display("Row Replaced = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 66: Find the Most Frequent Element  
///**
//```systemverilog
//module most_frequent;
//  int arr[10] = '{1,2,2,3,3,3,4,4,4,4};
//  int freq[10] = '{default:0};
//
//  initial begin
//    foreach (arr[i]) freq[arr[i]]++;
//    int max_val = 0, max_freq = 0;
//    for (int i = 0; i < 10; i++)
//      if (freq[i] > max_freq) begin max_freq = freq[i]; max_val = i; end
//    $display("Most Frequent = %0d", max_val);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 67: Create 2D Array of Row+Col Sum  
///**
//```systemverilog
//module row_col_sum;
//  int arr[3][3];
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      for (int j = 0; j < 3; j++)
//        arr[i][j] = i + j;
//    $display("Sum Matrix = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 68: Detect Row with All Same Elements  
///**
//```systemverilog
//module same_row;
//  int arr[2][3] = '{'{7,7,7}, '{1,2,3}};
//  bit found = 0;
//
//  initial begin
//    for (int i = 0; i < 2; i++)
//      if ((arr[i][0] == arr[i][1]) && (arr[i][1] == arr[i][2])) found = 1;
//    $display("All Same Row? %0b", found);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 69: Find Common Elements in Two Arrays  
///**
//```systemverilog
//module common_elements;
//  int a[5] = '{1,2,3,4,5}, b[5] = '{3,4,5,6,7};
//
//  initial begin
//    foreach (a[i])
//      foreach (b[j])
//        if (a[i] == b[j]) $write("%0d ", a[i]);
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 70: Print Border of 2D Matrix  
///**
//```systemverilog
//module border_print;
//  int arr[3][3] = '{'{1,2,3}, '{4,5,6}, '{7,8,9}};
//
//  initial begin
//    for (int i = 0; i < 3; i++) $write("%0d ", arr[0][i]);
//    for (int i = 1; i < 3; i++) $write("%0d ", arr[i][2]);
//    for (int i = 1; i >= 0; i--) $write("%0d ", arr[2][i]);
//    for (int i = 1; i > 0; i--) $write("%0d ", arr[i][0]);
//    $display("");
//  end
//endmodule
//*/
//
////===========================================
//// Code 71: Replace Each Element with Sum of All Others
///*\*\*
//
//````systemverilog
//module sum_others;
//  int arr[4] = '{2, 3, 4, 5};
//  int res[4], total = 0;
//
//  initial begin
//    foreach (arr[i]) total += arr[i];
//    foreach (arr[i]) res[i] = total - arr[i];
//    $display("New = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 72: Print Elements at Prime Indexes  
///**
//```systemverilog
//module prime_index;
//  int arr[10] = '{0,1,2,3,4,5,6,7,8,9};
//
//  function bit is_prime(int n);
//    if (n < 2) return 0;
//    for (int i = 2; i*i <= n; i++)
//      if (n % i == 0) return 0;
//    return 1;
//  endfunction
//
//  initial begin
//    for (int i = 0; i < 10; i++)
//      if (is_prime(i)) $write("%0d ", arr[i]);
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 73: Create Array of Differences (i-th - (i+1)th)  
///**
//```systemverilog
//module diff_array;
//  int arr[5] = '{10, 7, 5, 3, 1};
//  int diff[4];
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      diff[i] = arr[i] - arr[i+1];
//    $display("Diff = %p", diff);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 74: Count Pairs with Even Sum  
///**
//```systemverilog
//module even_sum_pairs;
//  int arr[4] = '{1,2,3,4};
//  int count = 0;
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      for (int j = i+1; j < 4; j++)
//        if ((arr[i]+arr[j]) % 2 == 0) count++;
//    $display("Even Sum Pairs = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 75: Count Inversions (a[i] > a[j], i<j)  
///**
//```systemverilog
//module count_inversions;
//  int arr[5] = '{2, 3, 8, 6, 1};
//  int count = 0;
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      for (int j = i+1; j < 5; j++)
//        if (arr[i] > arr[j]) count++;
//    $display("Inversions = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 76: Rotate Array by k Steps (Right)  
///**
//```systemverilog
//module rotate_k;
//  int arr[5] = '{1,2,3,4,5};
//  int k = 2, temp[5];
//
//  initial begin
//    foreach (arr[i]) temp[(i + k) % 5] = arr[i];
//    $display("Rotated = %p", temp);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 77: Find Missing Number in 1 to N  
///**
//```systemverilog
//module missing_num;
//  int arr[5] = '{1,2,4,5,6}; // missing 3
//  int n = 6, sum = 0;
//
//  initial begin
//    foreach (arr[i]) sum += arr[i];
//    $display("Missing = %0d", (n*(n+1)/2 - sum));
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 78: Replace Each Element with Max to Right  
///**
//```systemverilog
//module max_right;
//  int arr[6] = '{4,3,2,5,1,0};
//  int res[6];
//
//  initial begin
//    int max = -1;
//    for (int i = 5; i >= 0; i--) begin
//      res[i] = max;
//      if (arr[i] > max) max = arr[i];
//    end
//    $display("Right Max = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 79: Count Total Digits in Array Elements  
///**
//```systemverilog
//module count_digits;
//  int arr[4] = '{12, 345, 7, 89};
//  int total = 0;
//
//  function int digits(int n);
//    int d = 0;
//    while (n > 0) begin
//      d++; n /= 10;
//    end
//    return d;
//  endfunction
//
//  initial begin
//    foreach (arr[i]) total += digits(arr[i]);
//    $display("Total Digits = %0d", total);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 80: Reverse Binary Bits of Each Element  
///**
//```systemverilog
//module reverse_bits;
//  bit [3:0] arr[4] = '{4'b1001, 4'b0101, 4'b0001, 4'b0010};
//  bit [3:0] res[4];
//
//  function bit [3:0] rev(bit [3:0] x);
//    bit [3:0] y = 0;
//    for (int i = 0; i < 4; i++) y[i] = x[3-i];
//    return y;
//  endfunction
//
//  initial begin
//    foreach (arr[i]) res[i] = rev(arr[i]);
//    $display("Reversed = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 81: Count Elements Smaller than Current  
///**
//```systemverilog
//module count_smaller_each;
//  int arr[4] = '{8, 1, 2, 2};
//  int res[4] = '{default:0};
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      for (int j = 0; j < 4; j++)
//        if (arr[j] < arr[i]) res[i]++;
//    $display("Result = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 82: Remove Duplicates (Mark as -1)  
///**
//```systemverilog
//module remove_dups;
//  int arr[6] = '{1,2,2,3,4,4};
//
//  initial begin
//    for (int i = 0; i < 5; i++)
//      for (int j = i+1; j < 6; j++)
//        if (arr[i] == arr[j]) arr[j] = -1;
//    $display("Removed = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 83: Count Even Digits in Each Number  
///**
//```systemverilog
//module even_digits;
//  int arr[4] = '{123, 456, 789, 22};
//  int count[4];
//
//  function int count_even(int n);
//    int c = 0, d;
//    while (n > 0) begin
//      d = n % 10;
//      if (d % 2 == 0) c++;
//      n /= 10;
//    end
//    return c;
//  endfunction
//
//  initial begin
//    foreach (arr[i]) count[i] = count_even(arr[i]);
//    $display("Even Digits = %p", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 84: Make Array Elements 0 or 1 Based on Sign  
///**
//```systemverilog
//module sign_binary;
//  int arr[5] = '{-2, 3, -5, 0, 8};
//  bit res[5];
//
//  initial begin
//    foreach (arr[i]) res[i] = (arr[i] > 0);
//    $display("Binary = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 85: Sort Array using One Loop (Only Adjacent Swaps)  
///**
//```systemverilog
//module sort_simple;
//  int arr[5] = '{4,3,2,1,5};
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      if (arr[i] > arr[i+1]) begin
//        int t = arr[i]; arr[i] = arr[i+1]; arr[i+1] = t;
//        i = -1;
//      end
//    $display("Sorted = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 86: Find Second Last Even Number  
///**
//```systemverilog
//module second_last_even;
//  int arr[6] = '{1, 4, 7, 6, 9, 2};
//  int count = 0, second = -1;
//
//  initial begin
//    for (int i = 5; i >= 0; i--) begin
//      if (arr[i] % 2 == 0) begin
//        count++;
//        if (count == 2) second = arr[i];
//      end
//    end
//    $display("Second Last Even = %0d", second);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 87: Maximum Sum of 2 Elements  
///**
//```systemverilog
//module max_sum_pair;
//  int arr[5] = '{1, 9, 3, 7, 5};
//  int max1 = -1, max2 = -1;
//
//  initial begin
//    foreach (arr[i]) begin
//      if (arr[i] > max1) begin
//        max2 = max1; max1 = arr[i];
//      end else if (arr[i] > max2) max2 = arr[i];
//    end
//    $display("Max Sum = %0d", max1 + max2);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 88: Create Binary Pattern Array (e.g., 0101)  
///**
//```systemverilog
//module binary_pattern;
//  bit arr[8];
//
//  initial begin
//    foreach (arr[i]) arr[i] = i % 2;
//    $display("Pattern = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 89: Shift All Negatives to Left  
///**
//```systemverilog
//module neg_left;
//  int arr[6] = '{-1,2,-3,4,-5,6};
//  int res[6], k = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] < 0) res[k++] = arr[i];
//    foreach (arr[i])
//      if (arr[i] >= 0) res[k++] = arr[i];
//    $display("Shifted = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 90: Find XOR of All Elements  
///**
//```systemverilog
//module xor_all;
//  int arr[5] = '{1,2,3,4,5};
//  int res = 0;
//
//  initial begin
//    foreach (arr[i]) res ^= arr[i];
//    $display("XOR = %0d", res);
//  end
//endmodule
//*/
//
//
////===========================================  
///*
//module count_neg;
//  int arr[6] = '{-2, 3, -1, 0, 5, -6};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] < 0) count++;
//    $display("Negative Count = %0d", count);
//  end
//endmodule
//*/
////===========================================  
//// Code 92: Find Max Difference arr[j] - arr[i] such that j > i  
///**
//```systemverilog
//module max_diff;
//  int arr[6] = '{2, 3, 10, 6, 4, 8};
//  int min_val = arr[0], max_diff = -1;
//
//  initial begin
//    for (int i = 1; i < 6; i++) begin
//      if (arr[i] - min_val > max_diff)
//        max_diff = arr[i] - min_val;
//      if (arr[i] < min_val)
//        min_val = arr[i];
//    end
//    $display("Max Diff = %0d", max_diff);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 93: Detect if Array is Sorted  
///**
//```systemverilog
//module is_sorted;
//  int arr[5] = '{1,2,3,4,5};
//  bit sorted = 1;
//
//  initial begin
//    for (int i = 1; i < 5; i++)
//      if (arr[i] < arr[i-1]) sorted = 0;
//    $display("Sorted? %0b", sorted);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 94: Replace Each Element with Left Max  
///**
//```systemverilog
//module left_max;
//  int arr[5] = '{2, 1, 3, 4, 0};
//  int res[5], max = arr[0];
//
//  initial begin
//    res[0] = 0;
//    for (int i = 1; i < 5; i++) begin
//      res[i] = max;
//      if (arr[i] > max) max = arr[i];
//    end
//    $display("Left Max = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 95: Create Frequency Map (0–9)  
///**
//```systemverilog
//module freq_map;
//  int arr[10] = '{1,3,4,3,2,1,5,2,4,4};
//  int count[10] = '{default:0};
//
//  initial begin
//    foreach (arr[i])
//      count[arr[i]]++;
//    $display("Freq Map = %p", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 96: Find Index of First Occurrence of Key  
///**
//```systemverilog
//module first_index;
//  int arr[5] = '{3,5,2,5,1};
//  int key = 5, idx = -1;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == key && idx == -1) idx = i;
//    $display("First Index of %0d = %0d", key, idx);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 97: Replace All Elements with 1 if Even  
///**
//```systemverilog
//module even_to_one;
//  int arr[6] = '{2,3,4,5,6,7};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2 == 0) arr[i] = 1;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 98: Count Numbers with Even Number of Digits  
///**
//```systemverilog
//module even_digit_count;
//  int arr[5] = '{123,44,7,9876,22};
//  int count = 0;
//
//  function int digit_count(int n);
//    int d = 0;
//    while (n > 0) begin d++; n /= 10; end
//    return d;
//  endfunction
//
//  initial begin
//    foreach (arr[i])
//      if (digit_count(arr[i]) % 2 == 0) count++;
//    $display("Even Digit Numbers = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 99: Print Elements Greater than All Left  
///**
//```systemverilog
//module greater_left;
//  int arr[6] = '{1,3,2,4,1,5};
//  int max = -1;
//
//  initial begin
//    foreach (arr[i]) begin
//      if (arr[i] > max) begin
//        $write("%0d ", arr[i]);
//        max = arr[i];
//      end
//    end
//    $display("");
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 100: Set Odd Indexed Elements to 0  
///**
//```systemverilog
//module odd_zero;
//  int arr[6] = '{1,2,3,4,5,6};
//
//  initial begin
//    for (int i = 1; i < 6; i += 2)
//      arr[i] = 0;
//    $display("Odd Index Zero = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 101: Find Median of Odd-Length Array  
///**
//```systemverilog
//module find_median;
//  int arr[5] = '{5,3,1,4,2};
//
//  function void bubble_sort(ref int a[]);
//    for (int i = 0; i < a.size(); i++)
//      for (int j = 0; j < a.size()-1; j++)
//        if (a[j] > a[j+1]) a.swap(j, j+1);
//  endfunction
//
//  initial begin
//    bubble_sort(arr);
//    $display("Median = %0d", arr[2]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 102: Print All Unique Pairs  
///**
//```systemverilog
//module unique_pairs;
//  int arr[3] = '{1,2,3};
//
//  initial begin
//    for (int i = 0; i < 2; i++)
//      for (int j = i+1; j < 3; j++)
//        $display("Pair: (%0d, %0d)", arr[i], arr[j]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 103: Toggle Array Between 0 and 1  
///**
//```systemverilog
//module toggle_bin;
//  bit arr[6] = '{1,0,1,0,1,0};
//
//  initial begin
//    foreach (arr[i])
//      arr[i] = ~arr[i];
//    $display("Toggled = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 104: Multiply Each Element by Its Index  
///**
//```systemverilog
//module mul_index;
//  int arr[5] = '{2,2,2,2,2};
//
//  initial begin
//    foreach (arr[i])
//      arr[i] *= i;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 105: Remove Negative Values (set to -999)  
///**
//```systemverilog
//module remove_neg;
//  int arr[6] = '{-1,2,-3,4,-5,6};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] < 0) arr[i] = -999;
//    $display("Removed Neg = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 106: Find Triplets Summing to 10  
///**
//```systemverilog
//module triplet_sum10;
//  int arr[5] = '{1,2,3,4,5};
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      for (int j = i+1; j < 4; j++)
//        for (int k = j+1; k < 5; k++)
//          if (arr[i]+arr[j]+arr[k]==10)
//            $display("Triplet: %0d %0d %0d", arr[i], arr[j], arr[k]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 107: Mirror Array (Append Reverse)  
///**
//```systemverilog
//module mirror_array;
//  int arr[3] = '{1,2,3};
//  int res[6];
//
//  initial begin
//    for (int i = 0; i < 3; i++) begin
//      res[i] = arr[i];
//      res[5-i] = arr[i];
//    end
//    $display("Mirror = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 108: Replace Even with Index Value  
///**
//```systemverilog
//module even_idx_val;
//  int arr[6] = '{4,1,6,3,8,5};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2 == 0) arr[i] = i;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 109: Print All Subarrays of Size 2  
///**
//```systemverilog
//module subarray2;
//  int arr[4] = '{1,2,3,4};
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      $display("[%0d %0d]", arr[i], arr[i+1]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 110: Reverse Array Without temp  
///**
//```systemverilog
//module reverse_inplace;
//  int arr[6] = '{1,2,3,4,5,6};
//
//  initial begin
//    for (int i = 0; i < 3; i++) begin
//      arr[i] = arr[i] + arr[5-i];
//      arr[5-i] = arr[i] - arr[5-i];
//      arr[i] = arr[i] - arr[5-i];
//    end
//    $display("Reversed = %p", arr);
//  end
//endmodule
//*/
//
////===========================================
//// Code 121: Multiply Adjacent Elements
///*\*\*
//
//````systemverilog
//module mul_adjacent;
//  int arr[5] = '{2,3,4,5,6};
//  int res[4];
//
//  initial begin
//    for (int i = 0; i < 4; i++)
//      res[i] = arr[i] * arr[i+1];
//    $display("Product = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 122: Count Odd Indexed Odd Elements  
///**
//```systemverilog
//module odd_index_odd;
//  int arr[6] = '{1,3,2,5,6,7};
//  int count = 0;
//
//  initial begin
//    for (int i = 1; i < 6; i += 2)
//      if (arr[i] % 2) count++;
//    $display("Odd @ Odd Index = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 123: Insert Element at Given Position  
///**
//```systemverilog
//module insert_pos;
//  int arr[6] = '{1,2,3,4,5,0};
//  int pos = 2, val = 99;
//
//  initial begin
//    for (int i = 5; i > pos; i--)
//      arr[i] = arr[i-1];
//    arr[pos] = val;
//    $display("Inserted = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 124: Remove Element by Value  
///**
//```systemverilog
//module remove_val;
//  int arr[6] = '{1,2,3,2,4,5};
//  int key = 2;
//
//  initial begin
//    int idx = 0;
//    int out[6];
//    foreach (arr[i])
//      if (arr[i] != key) out[idx++] = arr[i];
//    $display("Removed = %p", out);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 125: Replace All with Max So Far  
///**
//```systemverilog
//module max_so_far;
//  int arr[5] = '{1,3,2,5,4};
//  int max = arr[0];
//
//  initial begin
//    for (int i = 0; i < 5; i++) begin
//      if (arr[i] > max) max = arr[i];
//      arr[i] = max;
//    end
//    $display("Updated = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 126: Convert Decimal to Binary in Array  
///**
//```systemverilog
//module dec_to_bin;
//  int arr[4] = '{2, 5, 8, 15};
//
//  function [3:0] bin(int x);
//    return x[3:0];
//  endfunction
//
//  initial begin
//    foreach (arr[i])
//      $display("Bin of %0d = %b", arr[i], bin(arr[i]));
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 127: Count Total Ones in Binary Array  
///**
//```systemverilog
//module count_ones;
//  bit [3:0] arr[5] = '{4'b1010, 4'b1111, 4'b0001, 4'b1100, 4'b1001};
//  int count = 0;
//
//  function int ones(bit [3:0] x);
//    int c = 0;
//    for (int i = 0; i < 4; i++) c += x[i];
//    return c;
//  endfunction
//
//  initial begin
//    foreach (arr[i]) count += ones(arr[i]);
//    $display("Total 1s = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 128: Create Array of Index * Value  
///**
//```systemverilog
//module index_times_val;
//  int arr[5] = '{2,2,2,2,2};
//
//  initial begin
//    foreach (arr[i])
//      arr[i] *= i;
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 129: Reverse Only Even Numbers in Array  
///**
//```systemverilog
//module reverse_even;
//  int arr[6] = '{2,5,4,6,7,8};
//  int even[6], ei = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i]%2==0) even[ei++] = arr[i];
//
//    for (int i = 0; i < 6; i++)
//      if (arr[i]%2==0) arr[i] = even[--ei];
//
//    $display("Reversed Even = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 130: Sort Binary Array (0s then 1s)  
///**
//```systemverilog
//module sort_bin_arr;
//  bit arr[8] = '{1,0,1,0,1,0,0,1};
//  int zero = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == 0) zero++;
//    for (int i = 0; i < 8; i++)
//      arr[i] = (i < zero) ? 0 : 1;
//    $display("Sorted Bin = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 131: Find First Repeated Element  
///**
//```systemverilog
//module first_repeat;
//  int arr[6] = '{3,5,2,3,1,4};
//
//  initial begin
//    for (int i = 0; i < 6; i++)
//      for (int j = i+1; j < 6; j++)
//        if (arr[i] == arr[j]) begin
//          $display("First Repeat = %0d", arr[i]);
//          disable fork;
//        end
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 132: Create Alternating Odd and Even Array  
///**
//```systemverilog
//module alt_odd_even;
//  int odd[3] = '{1,3,5}, even[3] = '{2,4,6}, out[6];
//
//  initial begin
//    for (int i = 0; i < 3; i++) begin
//      out[2*i] = odd[i];
//      out[2*i+1] = even[i];
//    end
//    $display("Alternating = %p", out);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 133: Find Pair With Difference = k  
///**
//```systemverilog
//module pair_diff_k;
//  int arr[6] = '{1,7,5,9,2,12}, k = 2;
//
//  initial begin
//    foreach (arr[i])
//      foreach (arr[j])
//        if (i != j && arr[i]-arr[j] == k)
//          $display("Pair: %0d - %0d = %0d", arr[i], arr[j], k);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 134: Find Common Elements in 3 Arrays  
///**
//```systemverilog
//module common_3arr;
//  int a[4] = '{1,2,3,4}, b[4] = '{2,3,5,6}, c[4] = '{0,3,4,7};
//
//  initial begin
//    foreach (a[i])
//      foreach (b[j])
//        foreach (c[k])
//          if (a[i]==b[j] && b[j]==c[k])
//            $display("Common = %0d", a[i]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 135: Swap First Half and Second Half  
///**
//```systemverilog
//module swap_halves;
//  int arr[6] = '{1,2,3,4,5,6};
//  int temp;
//
//  initial begin
//    for (int i = 0; i < 3; i++) begin
//      temp = arr[i];
//      arr[i] = arr[i+3];
//      arr[i+3] = temp;
//    end
//    $display("Swapped Halves = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 136: Move All Zeros to End  
///**
//```systemverilog
//module zeros_end;
//  int arr[6] = '{1,0,2,0,3,0};
//  int res[6], idx = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] != 0) res[idx++] = arr[i];
//    $display("Zeros End = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 137: Find Peak Element (Greater than Neighbors)  
///**
//```systemverilog
//module peak_element;
//  int arr[6] = '{1,3,20,4,1,0};
//
//  initial begin
//    for (int i = 1; i < 5; i++)
//      if (arr[i] > arr[i-1] && arr[i] > arr[i+1])
//        $display("Peak = %0d", arr[i]);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 138: Find Index Where Sum Left == Sum Right  
///**
//```systemverilog
//module balance_index;
//  int arr[5] = '{1,2,3,4,6};
//
//  initial begin
//    for (int i = 0; i < 5; i++) begin
//      int left = 0, right = 0;
//      for (int j = 0; j < i; j++) left += arr[j];
//      for (int j = i+1; j < 5; j++) right += arr[j];
//      if (left == right) $display("Balance Index = %0d", i);
//    end
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 139: Replace Negative With Square of It  
///**
//```systemverilog
//module neg_square;
//  int arr[6] = '{-1,2,-3,4,5,-6};
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] < 0) arr[i] = arr[i]*arr[i];
//    $display("Modified = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 140: Print All Subsets of Size 2  
///**
//```systemverilog
//module subsets_size2;
//  int arr[4] = '{1,2,3,4};
//
//  initial begin
//    for (int i = 0; i < 3; i++)
//      for (int j = i+1; j < 4; j++)
//        $display("[%0d,%0d]", arr[i], arr[j]);
//  end
//endmodule
//*/
//
////===========================================
//// Code 161: Sum of Elements at Even Index
///*
//
//````systemverilog
//module sum_even_idx;
//  int arr[6] = '{1,2,3,4,5,6};
//  int sum = 0;
//
//  initial begin
//    for (int i = 0; i < 6; i += 2)
//      sum += arr[i];
//    $display("Sum = %0d", sum);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 162: Find Element Occurring Once (XOR all)  
///**
//```systemverilog
//module single_element;
//  int arr[7] = '{1,2,3,2,3,1,4};
//  int res = 0;
//
//  initial begin
//    foreach (arr[i]) res ^= arr[i];
//    $display("Single = %0d", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 163: Multiply All Elements Except Itself  
///**
//```systemverilog
//module mul_except_self;
//  int arr[4] = '{1,2,3,4};
//  int res[4];
//
//  initial begin
//    for (int i = 0; i < 4; i++) begin
//      res[i] = 1;
//      for (int j = 0; j < 4; j++)
//        if (i != j) res[i] *= arr[j];
//    end
//    $display("Result = %p", res);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 164: Replace 0s with 1s and vice versa  
///**
//```systemverilog
//module flip_bin;
//  bit arr[6] = '{1,0,1,1,0,0};
//
//  initial begin
//    foreach (arr[i]) arr[i] = ~arr[i];
//    $display("Flipped = %p", arr);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 165: Find Last Occurrence of Element  
///**
//```systemverilog
//module last_occurrence;
//  int arr[6] = '{1,2,3,2,4,2};
//  int key = 2, idx = -1;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == key) idx = i;
//    $display("Last Index = %0d", idx);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 166: Calculate Product of All Odd Elements  
///**
//```systemverilog
//module product_odd;
//  int arr[5] = '{1,2,3,4,5};
//  int prod = 1;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] % 2) prod *= arr[i];
//    $display("Product = %0d", prod);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 167: Find Index of Max Element  
///**
//```systemverilog
//module max_index;
//  int arr[5] = '{4,9,2,7,6};
//  int max = arr[0], idx = 0;
//
//  initial begin
//    for (int i = 1; i < 5; i++)
//      if (arr[i] > max) begin
//        max = arr[i];
//        idx = i;
//      end
//    $display("Max Index = %0d", idx);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 168: Count Elements Equal to Index  
///**
//```systemverilog
//module idx_equal_val;
//  int arr[6] = '{0,2,2,3,4,5};
//  int count = 0;
//
//  initial begin
//    foreach (arr[i])
//      if (arr[i] == i) count++;
//    $display("Count = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 169: Count Increasing Pairs  
///**
//```systemverilog
//module increasing_pairs;
//  int arr[6] = '{1,3,2,4,3,5};
//  int count = 0;
//
//  initial begin
//    for (int i = 0; i < 5; i++)
//      if (arr[i] < arr[i+1]) count++;
//    $display("Increasing Pairs = %0d", count);
//  end
//endmodule
//*/
//*/
////===========================================  
//// Code 170: Convert Binary Array to Decimal Value  
///**
//```systemverilog
//module bin_to_dec;
//  bit arr[4] = '{1,0,1,1};
//  int val = 0;
//
//  initial begin
//    foreach (arr[i])
//      val = (val << 1) | arr[i];
//    $display("Decimal = %0d", val);
//  end
//endmodule
//*/