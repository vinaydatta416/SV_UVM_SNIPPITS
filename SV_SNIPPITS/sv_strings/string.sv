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


