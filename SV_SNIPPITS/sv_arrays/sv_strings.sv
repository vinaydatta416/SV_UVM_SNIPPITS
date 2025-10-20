//===========================================  
// Code 1: Reverse a String  
/*
module reverse_str;
  string s = "systemverilog";
  string r = "";

  initial begin
    for (int i = s.len()-1; i >= 0; i--)
      r = {r, s[i]};
    $display("Reverse = %s", r);
  end
endmodule
*/
//===========================================  
// Code 2: Check Palindrome String  
/*
module palindrome_check;
  string s = "madam";
  bit is_pal = 1;

  initial begin
    for (int i = 0; i < s.len()/2; i++)
      if (s[i] != s[s.len()-1-i]) is_pal = 0;
    $display("Palindrome? = %0b", is_pal);
  end
endmodule
*/
//======= ====================================  
// Code 3: Count Vowels in a String  
/*
module vowel_count;
  string s = "Verification";
  int count = 0;

  initial begin
    foreach (s[i])
      if (s[i] inside {"a","e","i","o","u","A","E","I","O","U"}) count++;
    $display("Vowels = %0d", count);
  end
endmodule
*/
//===========================================  
// Code 4: Remove Spaces from String  
/*
module remove_spaces;
  string s = " hello  sv world ";
  string no_space = "";

  initial begin
    foreach (s[i]) if (s[i] != " ") no_space = {no_space, s[i]};
    $display("Output = '%s'", no_space);
  end
endmodule
*/
//===========================================  
// Code 5: Count Frequency of Each Character  
/*
module char_freq;
  string s = "banana";
  int map[byte];

  initial begin
    foreach (s[i]) map[s[i]]++;
    foreach (map[k]) $display("%s = %0d", k, map[k]);
  end
endmodule
*/
//===========================================  
// Code 6: Check Anagram (Simple Sort Compare)  
/*
function string sort_str(string s);
  byte arr[$];
  foreach (s[i]) arr.push_back(s[i]);
  arr.sort();
  return arr.itoa();
endfunction

module anagram;
  string a = "listen", b = "silent";

  initial begin
    if (sort_str(a) == sort_str(b))
      $display("Anagram");
    else
      $display("Not Anagram");
  end
endmodule
*/
//===========================================  
// Code 7: Print Each Word in New Line  
/*
module word_split;
  string s = "Hello SV World";
  string w = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] != " ") w = {w, s[i]};
      else begin
        $display("%s", w);
        w = "";
      end
    end
    if (w != "") $display("%s", w);
  end
endmodule
*/
//===========================================  
// Code 8: Reverse Each Word  
/*
module reverse_words;
  string s = "abc def ghi";
  string w = "", result = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] != " ") w = {s[i], w};
      else begin
        result = {result, w, " "};
        w = "";
      end
    end
    result = {result, w};
    $display("Reversed words = %s", result);
  end
endmodule
*/
//===========================================  
// Code 9: Capitalize First Letter of Each Word  
/*
module capitalize;
  string s = "hello system verilog";
  string result = "";
  bit cap = 1;

  initial begin
    foreach(s[i]) begin
      if (cap && s[i] != " ")
        result = {result, s[i] - 32};
      else
        result = {result, s[i]};
      cap = (s[i] == " ");
    end
    $display("Capitalized = %s", result);
  end
endmodule
*/
//===========================================  
// Code 10: Count Words in a String  
/*
module word_count;
  string s = "Hi this is sv code";
  int count = 0;

  initial begin
    for (int i = 0; i < s.len(); i++)
      if (s[i] != " " && (i == 0 || s[i-1] == " ")) count++;
    $display("Word count = %0d", count);
  end
endmodule
*/


//===========================================  
// Code 11: Replace All Spaces with Underscore  
/*
module replace_space;
  string s = "sv is cool";
  string out = "";

  initial begin
    foreach(s[i])
      out = {out, (s[i] == " ") ? "_" : s[i]};
    $display("Output = %s", out);
  end
endmodule
*/
//===========================================  
// Code 12: Count Uppercase and Lowercase Letters  
/*
module case_count;
  string s = "SysTemVeriLog";
  int upper = 0, lower = 0;

  initial begin
    foreach(s[i])
      if (s[i] >= "A" && s[i] <= "Z") upper++;
      else if (s[i] >= "a" && s[i] <= "z") lower++;
    $display("Upper = %0d, Lower = %0d", upper, lower);
  end
endmodule
*/
//===========================================  
// Code 13: Toggle Case of Each Character  
/*
module toggle_case;
  string s = "SvCoDe";
  string out = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] >= "A" && s[i] <= "Z")
        out = {out, s[i] + 32};
      else if (s[i] >= "a" && s[i] <= "z")
        out = {out, s[i] - 32};
      else
        out = {out, s[i]};
    end
    $display("Toggled = %s", out);
  end
endmodule
*/
//===========================================  
// Code 14: Remove Duplicate Characters  
/*
module remove_duplicates;
  string s = "programming";
  string out = "";
  bit seen[256];

  initial begin
    foreach(s[i])
      if (!seen[s[i]]) begin
        out = {out, s[i]};
        seen[s[i]] = 1;
      end
    $display("Unique = %s", out);
  end
endmodule
*/
//===========================================  
// Code 15: Find First Non-Repeating Character  
/*
module first_unique;
  string s = "swiss";
  int map[byte];
  byte result;

  initial begin
    foreach(s[i]) map[s[i]]++;
    foreach(s[i])
      if (map[s[i]] == 1) begin
        result = s[i];
        break;
      end
    $display("First unique = %s", result);
  end
endmodule
*/
//===========================================  
// Code 16: Reverse Only Letters  
/*
module reverse_letters;
  string s = "a1b2c3d";
  string out = "";
  byte letters[$];

  initial begin
    foreach(s[i]) if (s[i] >= "a" && s[i] <= "z") letters.push_front(s[i]);
    foreach(s[i])
      if (s[i] >= "a" && s[i] <= "z") out = {out, letters.pop_front()};
      else out = {out, s[i]};
    $display("Reversed letters = %s", out);
  end
endmodule
*/
//===========================================  
// Code 17: Remove Digits from String  
/*
module remove_digits;
  string s = "abc123def456";
  string out = "";

  initial begin
    foreach(s[i])
      if (!(s[i] >= "0" && s[i] <= "9"))
        out = {out, s[i]};
    $display("Output = %s", out);
  end
endmodule
*/
//===========================================  
// Code 18: Extract Numbers from String  
/*
module extract_digits;
  string s = "abc123x45";
  string digits = "";

  initial begin
    foreach(s[i])
      if (s[i] >= "0" && s[i] <= "9")
        digits = {digits, s[i]};
    $display("Digits = %s", digits);
  end
endmodule
*/
//===========================================  
// Code 19: Remove Special Characters  
/*
module remove_special;
  string s = "h@ll#o$wo^r&ld!";
  string out = "";

  initial begin
    foreach(s[i])
      if ((s[i] >= "a" && s[i] <= "z") || (s[i] >= "A" && s[i] <= "Z"))
        out = {out, s[i]};
    $display("Clean = %s", out);
  end
endmodule
*/
//===========================================  
// Code 20: Count Digit Characters  
/*
module count_digits;
  string s = "verilog1234";
  int count = 0;

  initial begin
    foreach(s[i])
      if (s[i] >= "0" && s[i] <= "9") count++;
    $display("Digits = %0d", count);
  end
endmodule
*/
//===========================================  
// Code 21: Shift Each Letter by 1  
/*
module shift_letters;
  string s = "abcxyz";
  string out = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] == "z") out = {out, "a"};
      else if (s[i] == "Z") out = {out, "A"};
      else out = {out, s[i]+1};
    end
    $display("Shifted = %s", out);
  end
endmodule
*/
//===========================================  
// Code 22: Compress String (Run-Length Encoding)  
/*
module compress_string;
  string s = "aaabbccc";
  string out = "";
  int i = 0;

  initial begin
    while (i < s.len()) begin
      int count = 1;
      while (i+1 < s.len() && s[i] == s[i+1]) begin
        count++;
        i++;
      end
      out = {out, s[i], count.itoa()};
      i++;
    end
    $display("Compressed = %s", out);
  end
endmodule
*/
//===========================================  
// Code 23: Check if Two Strings are Rotations  
/*
module rotation_check;
  string s1 = "abcd", s2 = "cdab";

  initial begin
    string temp = {s1, s1};
    if (temp.find(s2) != -1)
      $display("Rotation");
    else
      $display("Not Rotation");
  end
endmodule
*/
//===========================================  
// Code 24: Reverse String Without Built-ins  
/*
module reverse_manual;
  string s = "system";
  string rev = "";

  initial begin
    for (int i = s.len()-1; i >= 0; i--)
      rev = {rev, s[i]};
    $display("Reversed = %s", rev);
  end
endmodule
*/
//===========================================  
// Code 25: Find Most Frequent Character  
/*
module most_freq;
  string s = "aabbbcccc";
  int map[byte];
  byte max_c;
  int max = 0;

  initial begin
    foreach(s[i]) map[s[i]]++;
    foreach(map[k]) if (map[k] > max) begin max = map[k]; max_c = k; end
    $display("Most Frequent = %s (%0d times)", max_c, max);
  end
endmodule
*/
//===========================================  
// Code 26: Reverse Words Order  
/*
module reverse_words_order;
  string s = "one two three";
  string word = "", out = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] != " ") word = {word, s[i]};
      else begin out = {" ", word, out}; word = ""; end
    end
    out = {word, out};
    $display("Reversed order = %s", out);
  end
endmodule
*/
//===========================================  
// Code 27: Convert String to Uppercase  
/*
module to_uppercase;
  string s = "hello world";
  string out = "";

  initial begin
    foreach(s[i])
      out = {out, (s[i] >= "a" && s[i] <= "z") ? s[i] - 32 : s[i]};
    $display("Uppercase = %s", out);
  end
endmodule
*/
//===========================================  
// Code 28: Convert String to Lowercase  
/*
module to_lowercase;
  string s = "HELLO WORLD";
  string out = "";

  initial begin
    foreach(s[i])
      out = {out, (s[i] >= "A" && s[i] <= "Z") ? s[i] + 32 : s[i]};
    $display("Lowercase = %s", out);
  end
endmodule
*/
//===========================================  
// Code 29: Count Consonants  
/*
module count_consonants;
  string s = "Verification";
  int count = 0;

  initial begin
    foreach(s[i])
      if ((s[i] >= "a" && s[i] <= "z" || s[i] >= "A" && s[i] <= "Z") &&
         !(s[i] inside {"a","e","i","o","u","A","E","I","O","U"})) count++;
    $display("Consonants = %0d", count);
  end
endmodule
*/
//===========================================  
// Code 30: Check Pangram (All Letters Present)  
/*
module pangram_check;
  string s = "The quick brown fox jumps over the lazy dog";
  bit letters[26];

  initial begin
    foreach(s[i])
      if (s[i] >= "a" && s[i] <= "z")
        letters[s[i]-"a"] = 1;
      else if (s[i] >= "A" && s[i] <= "Z")
        letters[s[i]-"A"] = 1;

    bit is_pangram = 1;
    foreach(letters[i]) if (!letters[i]) is_pangram = 0;
    $display("Pangram? %0b", is_pangram);
  end
endmodule
*/

//===========================================  
// Code 31: Remove All Vowels from String  
/*
module remove_vowels;
  string s = "SystemVerilog";
  string out = "";

  initial begin
    foreach (s[i])
      if (!(s[i] inside {"a","e","i","o","u","A","E","I","O","U"}))
        out = {out, s[i]};
    $display("No vowels = %s", out);
  end
endmodule
*/
//===========================================  
// Code 32: Convert Digit Characters to Integer Sum  
/*
module digit_sum;
  string s = "a1b2c3";
  int sum = 0;

  initial begin
    foreach (s[i])
      if (s[i] >= "0" && s[i] <= "9")
        sum += s[i] - "0";
    $display("Digit Sum = %0d", sum);
  end
endmodule
*/
//===========================================  
// Code 33: Remove First Occurrence of Character  
/*
module remove_first;
  string s = "banana";
  byte ch = "a";
  bit found = 0;
  string out = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] == ch && !found) found = 1;
      else out = {out, s[i]};
    end
    $display("After removal = %s", out);
  end
endmodule
*/
//===========================================  
// Code 34: Count Specific Character Occurrences  
/*
module count_char;
  string s = "verification";
  byte target = "i";
  int count = 0;

  initial begin
    foreach(s[i]) if (s[i] == target) count++;
    $display("'%s' occurred %0d times", target, count);
  end
endmodule
*/
//===========================================  
// Code 35: Swap First and Last Characters  
/*
module swap_first_last;
  string s = "hello";
  byte tmp;

  initial begin
    if (s.len() > 1) begin
      tmp = s[0];
      s[0] = s[s.len()-1];
      s[s.len()-1] = tmp;
    end
    $display("Swapped = %s", s);
  end
endmodule
*/
//===========================================  
// Code 36: Replace All Vowels with '*'  
/*
module star_vowels;
  string s = "OpenAI GPT";
  string out = "";

  initial begin
    foreach(s[i])
      out = {out, (s[i] inside {"a","e","i","o","u","A","E","I","O","U"}) ? "*" : s[i]};
    $display("Masked = %s", out);
  end
endmodule
*/
//===========================================  
// Code 37: Count Letters, Digits, Special Characters  
/*
module count_mix;
  string s = "A1!b2@C";
  int l=0, d=0, sp=0;

  initial begin
    foreach(s[i]) begin
      if ((s[i]>="A"&&s[i]<="Z")||(s[i]>="a"&&s[i]<="z")) l++;
      else if (s[i]>="0" && s[i]<="9") d++;
      else sp++;
    end
    $display("Letters=%0d, Digits=%0d, Special=%0d", l,d,sp);
  end
endmodule
*/
//===========================================  
// Code 38: Concatenate 2 Strings Manually  
/*
module concat_manual;
  string a = "System";
  string b = "Verilog";
  string c = "";

  initial begin
    foreach(a[i]) c = {c, a[i]};
    foreach(b[i]) c = {c, b[i]};
    $display("Concat = %s", c);
  end
endmodule
*/
//===========================================  
// Code 39: Check if String Ends With Substring  
/*
module ends_with;
  string s = "verification";
  string suffix = "tion";
  bit match = 1;

  initial begin
    if (suffix.len() > s.len()) match = 0;
    else
      for (int i = 0; i < suffix.len(); i++)
        if (s[s.len()-suffix.len()+i] != suffix[i]) match = 0;
    $display("Ends with? %0b", match);
  end
endmodule
*/
//===========================================  
// Code 40: Count Total Alphabet Characters  
/*
module alpha_count;
  string s = "VLSI@2024!SV";
  int count = 0;

  initial begin
    foreach (s[i])
      if ((s[i] >= "A" && s[i] <= "Z") || (s[i] >= "a" && s[i] <= "z"))
        count++;
    $display("Alphabet Count = %0d", count);
  end
endmodule
*/
//===========================================  
// Code 41: Check If All Characters Are Unique  
/*
module unique_chars;
  string s = "abcdefg";
  bit seen[256], unique = 1;

  initial begin
    foreach (s[i]) begin
      if (seen[s[i]]) begin
        unique = 0; break;
      end
      seen[s[i]] = 1;
    end
    $display("All Unique? %0b", unique);
  end
endmodule
*/
//===========================================  
// Code 42: Reverse Letters in Each Word  
/*
module rev_letters_each_word;
  string s = "abc def ghi";
  string w = "", out = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] != " ") w = {s[i], w};
      else begin out = {out, w, " "}; w = ""; end
    end
    out = {out, w};
    $display("Result = %s", out);
  end
endmodule
*/
//===========================================  
// Code 43: Replace All Characters with '#'  
/*
module hash_replace;
  string s = "secret123";
  string out = "";

  initial begin
    foreach(s[i]) out = {out, "#"};
    $display("Masked = %s", out);
  end
endmodule
*/
//===========================================  
// Code 44: Count Words Ending with a Specific Letter  
/*
module count_word_end;
  string s = "this is a test";
  byte target = "s";
  int count = 0;
  string word = "";

  initial begin
    foreach(s[i]) begin
      if (s[i] != " ") word = {word, s[i]};
      else begin
        if (word[word.len()-1] == target) count++;
        word = "";
      end
    end
    if (word[word.len()-1] == target) count++;
    $display("Ends with '%s': %0d", target, count);
  end
endmodule
*/
//===========================================  
// Code 45: Convert Hex String to Decimal  
/*
module hex_to_dec;
  string hex = "1A";
  int dec;

  initial begin
    $sscanf(hex, "%h", dec);
    $display("Decimal = %0d", dec);
  end
endmodule
*/
//===========================================  
// Code 46: Repeat String N Times  
/*
module repeat_str;
  string s = "Hi ";
  string out = "";
  int n = 3;

  initial begin
    repeat(n) out = {out, s};
    $display("Repeated = %s", out);
  end
endmodule
*/
//===========================================  
// Code 47: Compare Two Strings Without ==  
/*
module compare_strs;
  string a = "verilog", b = "verilog";
  bit match = 1;

  initial begin
    if (a.len() != b.len()) match = 0;
    else
      foreach(a[i]) if (a[i] != b[i]) match = 0;
    $display("Equal? %0b", match);
  end
endmodule
*/
//===========================================  
// Code 48: Print Characters with Index  
/*
module char_index;
  string s = "logic";

  initial begin
    foreach(s[i])
      $display("Index[%0d] = %s", i, s[i]);
  end
endmodule
*/
//===========================================  
// Code 49: Find Index of First Vowel  
/*
module index_vowel;
  string s = "bcdfghello";
  int idx = -1;

  initial begin
    foreach(s[i]) begin
      if (s[i] inside {"a","e","i","o","u"}) begin idx = i; break; end
    end
    $display("First vowel index = %0d", idx);
  end
endmodule
*/
//===========================================  
// Code 50: Find Longest Word Length  
/*
module longest_word_len;
  string s = "hi this is sv string";
  string w = "";
  int max = 0;

  initial begin
    foreach(s[i]) begin
      if (s[i] != " ") w = {w, s[i]};
      else begin if (w.len() > max) max = w.len(); w = ""; end
    end
    if (w.len() > max) max = w.len();
    $display("Longest word length = %0d", max);
  end
endmodule
*/














//-------------------------------------------------------------
// Q1: String assignment and display
//-------------------------------------------------------------
/*
module q1;
  string s = "Hello";
  initial $display("Q1 -> %s", s);
endmodule
*/

//-------------------------------------------------------------
// Q2: String concatenation
//-------------------------------------------------------------
/*
module q2;
  string s1 = "Hello", s2 = "World";
  initial $display("Q2 -> %s", {s1," ",s2});
endmodule
*/

//-------------------------------------------------------------
// Q3: String length using len()
//-------------------------------------------------------------
/*
module q3;
  string s = "SystemVerilog";
  initial $display("Q3 -> Length = %0d", s.len());
endmodule
*/

//-------------------------------------------------------------
// Q4: String compare using strcmp()
//-------------------------------------------------------------
/*
module q4;
  string a = "abc", b = "abc";
  initial $display("Q4 -> Compare = %0d", a.compare(b));
endmodule
*/

//-------------------------------------------------------------
// Q5: String compare unequal
//-------------------------------------------------------------
/*
module q5;
  string a = "abc", b = "xyz";
  initial $display("Q5 -> Compare = %0d", a.compare(b));
endmodule
*/

//-------------------------------------------------------------
// Q6: String equal using ==
//-------------------------------------------------------------
/*
module q6;
  string a = "test", b = "test";
  initial $display("Q6 -> Equal = %0d", (a == b));
endmodule
*/

//-------------------------------------------------------------
// Q7: String substring extraction
//-------------------------------------------------------------
/*
module q7;
  string s = "SystemVerilog";
  initial $display("Q7 -> Sub = %s", s.substr(0,5));
endmodule
*/

//-------------------------------------------------------------
// Q8: String index() method
//-------------------------------------------------------------
/*
module q8;
  string s = "Verification";
  initial $display("Q8 -> Index of 'i' = %0d", s.index("i"));
endmodule
*/

//-------------------------------------------------------------
// Q9: String to uppercase
//-------------------------------------------------------------
/*
module q9;
  string s = "abc";
  initial $display("Q9 -> Upper = %s", s.toupper());
endmodule
*/

//-------------------------------------------------------------
// Q10: String to lowercase
//-------------------------------------------------------------
/*
module q10;
  string s = "HELLO";
  initial $display("Q10 -> Lower = %s", s.tolower());
endmodule
*/

//-------------------------------------------------------------
// Q11: String putc() and getc()
//-------------------------------------------------------------
/*
module q11;
  string s = "Test";
  initial begin
    s.putc(0,"B");
    $display("Q11 -> Modified = %s", s);
    $display("Q11 -> First char = %s", s.getc(0));
  end
endmodule
*/

//-------------------------------------------------------------
// Q12: Empty string check
//-------------------------------------------------------------
/*
module q12;
  string s = "";
  initial $display("Q12 -> Empty = %0d", (s.len()==0));
endmodule
*/

//-------------------------------------------------------------
// Q13: Append characters in loop
//-------------------------------------------------------------
/*
module q13;
  string s = "";
  initial begin
    repeat(3) s = {s, "A"};
    $display("Q13 -> %s", s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q14: Compare ignoring case
//-------------------------------------------------------------
/*
module q14;
  string s1="ABC", s2="abc";
  initial $display("Q14 -> icompare = %0d", s1.icompare(s2));
endmodule
*/

//-------------------------------------------------------------
// Q15: String find last index
//-------------------------------------------------------------
/*
module q15;
  string s="banana";
  initial $display("Q15 -> Last index of a = %0d", s.rindex("a"));
endmodule
*/

//-------------------------------------------------------------
// Q16: Replace character manually
//-------------------------------------------------------------
/*
module q16;
  string s="vlsi";
  initial begin
    s.putc(0,"V");
    $display("Q16 -> %s", s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q17: Compare greater than
//-------------------------------------------------------------
/*
module q17;
  string a="apple", b="banana";
  initial $display("Q17 -> %0d", (a>b));
endmodule
*/

//-------------------------------------------------------------
// Q18: Reverse string display
//-------------------------------------------------------------
/*
module q18;
  string s="abc";
  initial begin
    for(int i=s.len()-1;i>=0;i--) $write("%s",s.getc(i));
    $display();
  end
endmodule
*/

//-------------------------------------------------------------
// Q19: String inside array
//-------------------------------------------------------------
/*
module q19;
  string arr[3] = '{"A","B","C"};
  initial foreach(arr[i]) $display("Q19 -> %s", arr[i]);
endmodule
*/

//-------------------------------------------------------------
// Q20: Combine string and integer
//-------------------------------------------------------------
/*
module q20;
  string s;
  int a=10;
  initial begin
    s = $sformatf("Value=%0d",a);
    $display("Q20 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q21: Using sprintf
//-------------------------------------------------------------
/*
module q21;
  string s;
  initial begin
    $sformat(s,"Q21 -> %s %0d","Count",5);
    $display(s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q22: Join multiple strings in loop
//-------------------------------------------------------------
/*
module q22;
  string s="";
  initial begin
    foreach({1,2,3}) s = {s,"X"};
    $display("Q22 -> %s", s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q23: String with escape chars
//-------------------------------------------------------------
/*
module q23;
  string s="Line1\nLine2\tTabbed";
  initial $display("Q23 -> %s",s);
endmodule
*/

//-------------------------------------------------------------
// Q24: Remove first character
//-------------------------------------------------------------
/*
module q24;
  string s="Hello";
  initial begin
    s = s.substr(1,s.len()-1);
    $display("Q24 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q25: String array concatenation
//-------------------------------------------------------------
/*
module q25;
  string arr[2] = '{"abc","xyz"};
  initial $display("Q25 -> %s", {arr[0],arr[1]});
endmodule
*/

//-------------------------------------------------------------
// Q26: Dynamic string assignment
//-------------------------------------------------------------
/*
module q26;
  string s;
  initial begin
    s = "Dynamic";
    $display("Q26 -> %s", s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q27: String slicing middle
//-------------------------------------------------------------
/*
module q27;
  string s="verification";
  initial $display("Q27 -> %s", s.substr(2,5));
endmodule
*/

//-------------------------------------------------------------
// Q28: Compare using relational operator
//-------------------------------------------------------------
/*
module q28;
  string s1="cat", s2="dog";
  initial $display("Q28 -> %0d", s1 < s2);
endmodule
*/

//-------------------------------------------------------------
// Q29: Convert int to string
//-------------------------------------------------------------
/*
module q29;
  string s;
  int val=123;
  initial begin
    s = $sformatf("%0d",val);
    $display("Q29 -> %s", s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q30: Combine string and time
//-------------------------------------------------------------
/*
module q30;
  string s;
  initial begin
    s = $sformatf("Time=%0t",$time);
    $display("Q30 -> %s", s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q31: Concatenate loop index to string
//-------------------------------------------------------------
/*
module q31;
  string s="";
  initial begin
    for(int i=0;i<3;i++) s = {s,$sformatf("%0d",i)};
    $display("Q31 -> %s", s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q32: String array iteration with display
//-------------------------------------------------------------
/*
module q32;
  string fruits[] = '{"apple","banana","cherry"};
  initial foreach(fruits[i]) $display("Q32 -> %s", fruits[i]);
endmodule
*/

//-------------------------------------------------------------
// Q33: Append integer to string
//-------------------------------------------------------------
/*
module q33;
  string s="Count=";
  int x=5;
  initial begin
    s = {s,$sformatf("%0d",x)};
    $display("Q33 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q34: Create string using repeat operator
//-------------------------------------------------------------
/*
module q34;
  string s;
  initial begin
    s = {"A" * 3};
    $display("Q34 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q35: Compare two different length strings
//-------------------------------------------------------------
/*
module q35;
  string a="abc", b="abcd";
  initial $display("Q35 -> %0d", a.compare(b));
endmodule
*/

//-------------------------------------------------------------
// Q36: Combine special characters
//-------------------------------------------------------------
/*
module q36;
  string s="!@#$%^&*()";
  initial $display("Q36 -> %s", s);
endmodule
*/

//-------------------------------------------------------------
// Q37: String trim simulation (manual)
//-------------------------------------------------------------
/*
module q37;
  string s=" test ";
  initial begin
    s = s.substr(1,4);
    $display("Q37 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q38: Check substring presence
//-------------------------------------------------------------
/*
module q38;
  string s="hardware verification";
  initial $display("Q38 -> Found=%0d",(s.index("ware")!=-1));
endmodule
*/

//-------------------------------------------------------------
// Q39: Reverse order concat
//-------------------------------------------------------------
/*
module q39;
  string s1="abc", s2="xyz";
  initial $display("Q39 -> %s",{s2,s1});
endmodule
*/

//-------------------------------------------------------------
// Q40: Create formatted string with float
//-------------------------------------------------------------
/*
module q40;
  string s;
  real r=3.14;
  initial begin
    s = $sformatf("Value=%0.2f",r);
    $display("Q40 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q41: String repeat using loop
//-------------------------------------------------------------
/*
module q41;
  string s="";
  initial begin
    repeat(4) s = {s,"X"};
    $display("Q41 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q42: Combine string and bit vector
//-------------------------------------------------------------
/*
module q42;
  string s;
  bit [3:0] val=4'b1010;
  initial begin
    s = $sformatf("Binary=%b",val);
    $display("Q42 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q43: Assign substring to another string
//-------------------------------------------------------------
/*
module q43;
  string s1="Verification", s2;
  initial begin
    s2 = s1.substr(0,4);
    $display("Q43 -> %s",s2);
  end
endmodule
*/

//-------------------------------------------------------------
// Q44: Combine dynamic values
//-------------------------------------------------------------
/*
module q44;
  string name="Vinay";
  int id=101;
  initial $display("Q44 -> %s_%0d",name,id);
endmodule
*/

//-------------------------------------------------------------
// Q45: String with double quotes
//-------------------------------------------------------------
/*
module q45;
  string s="He said \"Hi\"";
  initial $display("Q45 -> %s",s);
endmodule
*/

//-------------------------------------------------------------
// Q46: Combine string and hex number
//-------------------------------------------------------------
/*
module q46;
  string s;
  int val=255;
  initial begin
    s = $sformatf("Hex=%0h",val);
    $display("Q46 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q47: Compare substring extracted
//-------------------------------------------------------------
/*
module q47;
  string s="SystemVerilog";
  initial $display("Q47 -> %0d",(s.substr(0,5)=="System"));
endmodule
*/

//-------------------------------------------------------------
// Q48: Combine string and boolean
//-------------------------------------------------------------
/*
module q48;
  string s;
  bit flag=1;
  initial begin
    s = $sformatf("Flag=%0d",flag);
    $display("Q48 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q49: Print string length dynamically
//-------------------------------------------------------------
/*
module q49;
  string s="HelloWorld";
  initial $display("Q49 -> Length=%0d", s.len());
endmodule
*/

//-------------------------------------------------------------
// Q50: Use string in function
//-------------------------------------------------------------
/*
module q50;
  function string greet(string n);
    return {"Hello ",n};
  endfunction
  initial $display("Q50 -> %s", greet("Vinay"));
endmodule
*/



//-------------------------------------------------------------
// Q51: String split manually using index()
//-------------------------------------------------------------
/*
module q51;
  string s="UVM-TestBench";
  int idx;
  initial begin
    idx = s.index("-");
    $display("Q51 -> Left=%s Right=%s", s.substr(0,idx-1), s.substr(idx+1,s.len()-1));
  end
endmodule
*/

//-------------------------------------------------------------
// Q52: Convert string to int using $sscanf
//-------------------------------------------------------------
/*
module q52;
  string s="123";
  int num;
  initial begin
    $sscanf(s,"%d",num);
    $display("Q52 -> %0d",num);
  end
endmodule
*/

//-------------------------------------------------------------
// Q53: Combine string and time format
//-------------------------------------------------------------
/*
module q53;
  string s;
  initial begin
    s = $sformatf("CurrentTime=%0t",$time);
    $display("Q53 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q54: Replace substring manually
//-------------------------------------------------------------
/*
module q54;
  string s="abc123xyz";
  initial begin
    s = {s.substr(0,2),"000",s.substr(6,s.len()-1)};
    $display("Q54 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q55: Reverse words manually
//-------------------------------------------------------------
/*
module q55;
  string s="VLSI DV";
  initial begin
    int space = s.index(" ");
    $display("Q55 -> %s %s", s.substr(space+1,s.len()-1), s.substr(0,space-1));
  end
endmodule
*/

//-------------------------------------------------------------
// Q56: Join strings dynamically
//-------------------------------------------------------------
/*
module q56;
  string arr[3] = '{"UVM","TB","Env"};
  string total="";
  initial foreach(arr[i]) total={total,arr[i],"-"};
  initial $display("Q56 -> %s",total);
endmodule
*/

//-------------------------------------------------------------
// Q57: Check palindrome
//-------------------------------------------------------------
/*
module q57;
  string s="madam";
  bit flag=1;
  initial begin
    for(int i=0;i<s.len()/2;i++)
      if(s.getc(i)!=s.getc(s.len()-1-i)) flag=0;
    $display("Q57 -> Palindrome=%0d",flag);
  end
endmodule
*/

//-------------------------------------------------------------
// Q58: Remove spaces manually
//-------------------------------------------------------------
/*
module q58;
  string s="V L S I";
  string t="";
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)!=" ") t={t,s.getc(i)};
    $display("Q58 -> %s",t);
  end
endmodule
*/

//-------------------------------------------------------------
// Q59: Compare partial substring
//-------------------------------------------------------------
/*
module q59;
  string s="Verification";
  initial $display("Q59 -> %0d",(s.substr(0,4)=="Veri"));
endmodule
*/

//-------------------------------------------------------------
// Q60: Convert binary string to int
//-------------------------------------------------------------
/*
module q60;
  string s="1010";
  int val;
  initial begin
    $sscanf(s,"%b",val);
    $display("Q60 -> %0d",val);
  end
endmodule
*/

//-------------------------------------------------------------
// Q61: Check string starts with prefix
//-------------------------------------------------------------
/*
module q61;
  string s="UVMTest";
  initial $display("Q61 -> Starts=%0d",(s.substr(0,2)=="UVM"));
endmodule
*/

//-------------------------------------------------------------
// Q62: String pattern count
//-------------------------------------------------------------
/*
module q62;
  string s="banana";
  int count=0;
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)=="a") count++;
    $display("Q62 -> Count=%0d",count);
  end
endmodule
*/

//-------------------------------------------------------------
// Q63: Replace all vowels with '*'
//-------------------------------------------------------------
/*
module q63;
  string s="Verification";
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i) inside {"a","e","i","o","u"}) s.putc(i,"*");
    $display("Q63 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q64: String reverse using function
//-------------------------------------------------------------
/*
module q64;
  function string rev(string s);
    string r="";
    for(int i=s.len()-1;i>=0;i--) r={r,s.getc(i)};
    return r;
  endfunction
  initial $display("Q64 -> %s",rev("System"));
endmodule
*/

//-------------------------------------------------------------
// Q65: Split by multiple spaces
//-------------------------------------------------------------
/*
module q65;
  string s="VLSI   DV";
  int idx=s.index(" ");
  initial $display("Q65 -> Left=%s Right=%s", s.substr(0,idx-1), s.substr(idx+3,s.len()-1));
endmodule
*/

//-------------------------------------------------------------
// Q66: Check if string contains digit
//-------------------------------------------------------------
/*
module q66;
  string s="abc9xyz";
  bit hasDigit=0;
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)>="0" && s.getc(i)<="9") hasDigit=1;
    $display("Q66 -> HasDigit=%0d",hasDigit);
  end
endmodule
*/

//-------------------------------------------------------------
// Q67: Swap first and last char
//-------------------------------------------------------------
/*
module q67;
  string s="VLSI";
  byte first,last;
  initial begin
    first=s.getc(0);
    last=s.getc(s.len()-1);
    s.putc(0,last);
    s.putc(s.len()-1,first);
    $display("Q67 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q68: Merge array of strings into one
//-------------------------------------------------------------
/*
module q68;
  string s[3] = '{"One","Two","Three"};
  string res="";
  initial foreach(s[i]) res={res,s[i],","};
  initial $display("Q68 -> %s",res);
endmodule
*/

//-------------------------------------------------------------
// Q69: Count uppercase letters
//-------------------------------------------------------------
/*
module q69;
  string s="VLSIDv";
  int count=0;
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)>="A" && s.getc(i)<="Z") count++;
    $display("Q69 -> %0d",count);
  end
endmodule
*/

//-------------------------------------------------------------
// Q70: Random string generation
//-------------------------------------------------------------
/*
module q70;
  string s="";
  initial begin
    repeat(5) s={s,$sformatf("%c",$urandom_range(65,90))};
    $display("Q70 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q71: Count lowercase letters
//-------------------------------------------------------------
/*
module q71;
  string s="VlsiDesign";
  int c=0;
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)>="a" && s.getc(i)<="z") c++;
    $display("Q71 -> %0d",c);
  end
endmodule
*/

//-------------------------------------------------------------
// Q72: Convert space separated digits to sum
//-------------------------------------------------------------
/*
module q72;
  string s="10 20 30";
  int a,b,c;
  initial begin
    $sscanf(s,"%d %d %d",a,b,c);
    $display("Q72 -> Sum=%0d",a+b+c);
  end
endmodule
*/

//-------------------------------------------------------------
// Q73: Count characters excluding space
//-------------------------------------------------------------
/*
module q73;
  string s="V L S I";
  int count=0;
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)!=" ") count++;
    $display("Q73 -> %0d",count);
  end
endmodule
*/

//-------------------------------------------------------------
// Q74: Convert first char to uppercase
//-------------------------------------------------------------
/*
module q74;
  string s="vlsi";
  initial begin
    s.putc(0,$sformatf("%c",s.getc(0)-32));
    $display("Q74 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q75: Print ASCII values of chars
//-------------------------------------------------------------
/*
module q75;
  string s="ABC";
  initial begin
    for(int i=0;i<s.len();i++) $display("Q75 -> %c = %0d", s.getc(i), s.getc(i));
  end
endmodule
*/

//-------------------------------------------------------------
// Q76: Reverse words order
//-------------------------------------------------------------
/*
module q76;
  string s="System Verilog Test";
  int i1=s.index(" "), i2=s.rindex(" ");
  initial $display("Q76 -> %s %s %s", s.substr(i2+1,s.len()-1), s.substr(i1+1,i2-1), s.substr(0,i1-1));
endmodule
*/

//-------------------------------------------------------------
// Q77: Extract digits only
//-------------------------------------------------------------
/*
module q77;
  string s="VLSI2025";
  string d="";
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)>="0" && s.getc(i)<="9") d={d,s.getc(i)};
    $display("Q77 -> %s",d);
  end
endmodule
*/

//-------------------------------------------------------------
// Q78: Check if all chars unique
//-------------------------------------------------------------
/*
module q78;
  string s="abcda";
  bit uniq=1;
  initial begin
    for(int i=0;i<s.len();i++)
      for(int j=i+1;j<s.len();j++)
        if(s.getc(i)==s.getc(j)) uniq=0;
    $display("Q78 -> Unique=%0d",uniq);
  end
endmodule
*/

//-------------------------------------------------------------
// Q79: Join string and date format
//-------------------------------------------------------------
/*
module q79;
  string s;
  int d=16,m=10,y=2025;
  initial begin
    s=$sformatf("%0d-%0d-%0d",d,m,y);
    $display("Q79 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q80: Remove vowels
//-------------------------------------------------------------
/*
module q80;
  string s="Verification";
  string r="";
  initial begin
    for(int i=0;i<s.len();i++)
      if(!(s.getc(i) inside {"a","e","i","o","u"})) r={r,s.getc(i)};
    $display("Q80 -> %s",r);
  end
endmodule
*/

//-------------------------------------------------------------
// Q81: Extract substring after symbol
//-------------------------------------------------------------
/*
module q81;
  string s="tb_top.env.drv";
  int i=s.rindex(".");
  initial $display("Q81 -> %s",s.substr(i+1,s.len()-1));
endmodule
*/

//-------------------------------------------------------------
// Q82: Repeat given string n times
//-------------------------------------------------------------
/*
module q82;
  string s="UVM";
  string res="";
  initial begin
    repeat(3) res={res,s};
    $display("Q82 -> %s",res);
  end
endmodule
*/

//-------------------------------------------------------------
// Q83: Remove last character
//-------------------------------------------------------------
/*
module q83;
  string s="Verification";
  initial begin
    s=s.substr(0,s.len()-2);
    $display("Q83 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q84: Swap case
//-------------------------------------------------------------
/*
module q84;
  string s="AbC";
  initial begin
    for(int i=0;i<s.len();i++) begin
      if(s.getc(i)>="A" && s.getc(i)<="Z") s.putc(i,$sformatf("%c",s.getc(i)+32));
      else if(s.getc(i)>="a" && s.getc(i)<="z") s.putc(i,$sformatf("%c",s.getc(i)-32));
    end
    $display("Q84 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q85: Count special characters
//-------------------------------------------------------------
/*
module q85;
  string s="UVM@2025!";
  int c=0;
  initial begin
    for(int i=0;i<s.len();i++)
      if(!(s.getc(i)>="A"&&s.getc(i)<="Z") && !(s.getc(i)>="a"&&s.getc(i)<="z") && !(s.getc(i)>="0"&&s.getc(i)<="9")) c++;
    $display("Q85 -> %0d",c);
  end
endmodule
*/

//-------------------------------------------------------------
// Q86: Remove numeric chars
//-------------------------------------------------------------
/*
module q86;
  string s="D123V";
  string r="";
  initial begin
    for(int i=0;i<s.len();i++)
      if(!(s.getc(i)>="0"&&s.getc(i)<="9")) r={r,s.getc(i)};
    $display("Q86 -> %s",r);
  end
endmodule
*/

//-------------------------------------------------------------
// Q87: Extract string before symbol
//-------------------------------------------------------------
/*
module q87;
  string s="drv_agent";
  int idx=s.index("_");
  initial $display("Q87 -> %s",s.substr(0,idx-1));
endmodule
*/

//-------------------------------------------------------------
// Q88: Replace space with underscore
//-------------------------------------------------------------
/*
module q88;
  string s="System Verilog DV";
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)==" ") s.putc(i,"_");
    $display("Q88 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q89: Count word occurrences manually
//-------------------------------------------------------------
/*
module q89;
  string s="uvm uvm test";
  int c=0,idx=0;
  initial begin
    while((idx=s.index("uvm",idx))!=-1) begin c++; idx+=3; end
    $display("Q89 -> %0d",c);
  end
endmodule
*/

//-------------------------------------------------------------
// Q90: Reverse every word
//-------------------------------------------------------------
/*
module q90;
  string s="abc def";
  int space=s.index(" ");
  string a=s.substr(0,space-1), b=s.substr(space+1,s.len()-1);
  initial begin
    for(int i=b.len()-1;i>=0;i--) $write("%s",b.getc(i));
    $write(" ");
    for(int i=a.len()-1;i>=0;i--) $write("%s",a.getc(i));
    $display();
  end
endmodule
*/

//-------------------------------------------------------------
// Q91: Convert string digits to binary
//-------------------------------------------------------------
/*
module q91;
  string s="15";
  int val;
  initial begin
    $sscanf(s,"%d",val);
    $display("Q91 -> %b",val);
  end
endmodule
*/

//-------------------------------------------------------------
// Q92: Concatenate reversed substrings
//-------------------------------------------------------------
/*
module q92;
  string s="abcd";
  string r="";
  initial begin
    for(int i=s.len()-1;i>=0;i--) r={r,s.getc(i)};
    $display("Q92 -> %s",r);
  end
endmodule
*/

//-------------------------------------------------------------
// Q93: Extract domain from email
//-------------------------------------------------------------
/*
module q93;
  string s="user@gmail.com";
  int i=s.index("@");
  initial $display("Q93 -> %s",s.substr(i+1,s.len()-1));
endmodule
*/

//-------------------------------------------------------------
// Q94: Replace '.' with '/'
 //-------------------------------------------------------------
/*
module q94;
  string s="tb.env.agent";
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)==".") s.putc(i,"/");
    $display("Q94 -> %s",s);
  end
endmodule
*/

//-------------------------------------------------------------
// Q95: Count words using spaces
//-------------------------------------------------------------
/*
module q95;
  string s="VLSI DV Engineer";
  int count=1;
  initial begin
    for(int i=0;i<s.len();i++)
      if(s.getc(i)==" ") count++;
    $display("Q95 -> %0d",count);
  end
endmodule
*/

//-------------------------------------------------------------
// Q96: Swap two strings
//-------------------------------------------------------------
/*
module q96;
  string a="A",b="B",t;
  initial begin
    t=a; a=b; b=t;
    $display("Q96 -> a=%s b=%s",a,b);
  end
endmodule
*/

//-------------------------------------------------------------
// Q97: Compare string ignoring case
//-------------------------------------------------------------
/*
module q97;
  string s1="Test",s2="test";
  initial $display("Q97 -> %0d",s1.icompare(s2));
endmodule
*/

//-------------------------------------------------------------
// Q98: Extract extension from filename
//-------------------------------------------------------------
/*
module q98;
  string s="design.v";
  int i=s.rindex(".");
  initial $display("Q98 -> %s",s.substr(i+1,s.len()-1));
endmodule
*/

//-------------------------------------------------------------
// Q99: Count digits, letters separately
//-------------------------------------------------------------
/*
module q99;
  string s="VLSI2025";
  int d=0,l=0;
  initial begin
    for(int i=0;i<s.len();i++) begin
      if(s.getc(i)>="0"&&s.getc(i)<="9") d++;
      else if((s.getc(i)>="A"&&s.getc(i)<="Z")||(s.getc(i)>="a"&&s.getc(i)<="z")) l++;
    end
    $display("Q99 -> letters=%0d digits=%0d",l,d);
  end
endmodule
*/

//-------------------------------------------------------------
// Q100: Remove duplicate characters
//-------------------------------------------------------------
/*
module q100;
  string s="aabbcc";
  string r="";
  bit exist;
  initial begin
    for(int i=0;i<s.len();i++) begin
      exist=0;
      for(int j=0;j<r.len();j++)
        if(s.getc(i)==r.getc(j)) exist=1;
      if(!exist) r={r,s.getc(i)};
    end
    $display("Q100 -> %s",r);
  end
endmodule
*/



