//// Question 1: char[] vs string (STL)
// What is the output of the following code?
/**
#include <iostream>
#include <string>
int main() {
    char a[] = "hi";
    std::string b = "hi";
    std::cout << a << " " << b;
    return 0;
}
*/
//===========================================

//// Question 2: String Input (cin)
// What is the output if user enters: hello
/**
#include <iostream>
#include <string>
int main() {
    std::string s;
    std::cin >> s;
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 3: String Input (getline)
// What is the output if user enters: hello world
/**
#include <iostream>
#include <string>
int main() {
    std::string s;
    std::getline(std::cin, s);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 4: Char Array Input
// What is the output if user enters: abc
/**
#include <iostream>
int main() {
    char s[10];
    std::cin >> s;
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 5: String Concatenation (+)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "hi", b = "bye";
    std::cout << a + b;
    return 0;
}
*/
//===========================================

//// Question 6: Char Array Concatenation (strcat)
// What is the output?
/**
#include <iostream>
#include <cstring>
int main() {
    char a[10] = "hi";
    strcat(a, "bye");
    std::cout << a;
    return 0;
}
*/
//===========================================

//// Question 7: String Comparison (==)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "abc", b = "abc";
    if(a == b) std::cout << "Equal";
    else std::cout << "Not Equal";
    return 0;
}
*/
//===========================================

//// Question 8: Char Array Comparison (strcmp)
// What is the output?
/**
#include <iostream>
#include <cstring>
int main() {
    char a[] = "abc", b[] = "abc";
    if(strcmp(a, b) == 0) std::cout << "Equal";
    else std::cout << "Not Equal";
    return 0;
}
*/
//===========================================

//// Question 9: String Length (.length())
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    std::cout << s.length();
    return 0;
}
*/
//===========================================

//// Question 10: Char Array Length (strlen)
// What is the output?
/**
#include <iostream>
#include <cstring>
int main() {
    char s[] = "hello";
    std::cout << strlen(s);
    return 0;
}
*/
//===========================================

//// Question 11: Traversing String (for loop)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    for(int i=0;i<s.length();i++) std::cout << s[i] << " ";
    return 0;
}
*/
//===========================================

//// Question 12: Traversing Char Array (for loop)
// What is the output?
/**
#include <iostream>
int main() {
    char s[] = "xyz";
    for(int i=0;s[i]!='\0';i++) std::cout << s[i] << " ";
    return 0;
}
*/
//===========================================

//// Question 13: Array of Strings (char[][])
// What is the output?
/**
#include <iostream>
int main() {
    char arr[2][5] = {"one", "two"};
    std::cout << arr[0] << " " << arr[1];
    return 0;
}
*/
//===========================================

//// Question 14: Array of Strings (std::string[])
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string arr[] = {"apple", "banana"};
    std::cout << arr[1];
    return 0;
}
*/
//===========================================

//// Question 15: String Append (.append())
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hi";
    s.append(" there");
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 16: String Insert
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.insert(1, "X");
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 17: String Erase
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    s.erase(1,2);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 18: String Replace
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.replace(1,1,"X");
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 19: String Substring
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abcdef";
    std::cout << s.substr(2,3);
    return 0;
}
*/
//===========================================

//// Question 20: String Find
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "banana";
    std::cout << s.find("na");
    return 0;
}
*/
//===========================================

//// Question 21: String rfind
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "banana";
    std::cout << s.rfind("na");
    return 0;
}
*/
//===========================================

//// Question 22: String front and back
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "xyz";
    std::cout << s.front() << s.back();
    return 0;
}
*/
//===========================================

//// Question 23: String at()
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    std::cout << s.at(1);
    return 0;
}
*/
//===========================================

//// Question 24: String empty()
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "";
    std::cout << s.empty();
    return 0;
}
*/
//===========================================

//// Question 25: String clear()
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.clear();
    std::cout << s.length();
    return 0;
}
*/
//===========================================

//// Question 26: String push_back
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hi";
    s.push_back('!');
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 27: String pop_back
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.pop_back();
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 28: Char Array to String
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    char a[] = "test";
    std::string s(a);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 29: String to Char Array
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hi";
    char a[3];
    strcpy(a, s.c_str());
    std::cout << a;
    return 0;
}
*/
//===========================================

//// Question 30: String Comparison (>)
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "abc", b = "abd";
    std::cout << (a > b);
    return 0;
}
*/
//===========================================

//// Question 31: Char Array Comparison (strcmp > 0)
// What is the output?
/**
#include <iostream>
#include <cstring>
int main() {
    char a[] = "abd", b[] = "abc";
    std::cout << (strcmp(a, b) > 0);
    return 0;
}
*/
//===========================================

//// Question 32: String find not found
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    std::cout << (s.find("z") == std::string::npos);
    return 0;
}
*/
//===========================================

//// Question 33: String to upper (manual)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    for(char &c : s) c = c - 32;
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 34: String to lower (manual)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "ABC";
    for(char &c : s) c = c + 32;
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 35: String reverse (std::reverse)
// What is the output?
/**
#include <iostream>
#include <string>
#include <algorithm>
int main() {
    std::string s = "abc";
    std::reverse(s.begin(), s.end());
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 36: Char Array reverse (manual)
// What is the output?
/**
#include <iostream>
#include <cstring>
int main() {
    char s[] = "abc";
    int n = strlen(s);
    for(int i=0;i<n/2;i++) std::swap(s[i], s[n-1-i]);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 37: String find first of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    std::cout << s.find_first_of("el");
    return 0;
}
*/
//===========================================

//// Question 38: String find last of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    std::cout << s.find_last_of("el");
    return 0;
}
*/
//===========================================

//// Question 39: String compare method
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "abc", b = "abd";
    std::cout << a.compare(b);
    return 0;
}
*/
//===========================================

//// Question 40: String swap
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "hi", b = "bye";
    a.swap(b);
    std::cout << a << " " << b;
    return 0;
}
*/
//===========================================

//// Question 41: String resize
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.resize(5, 'x');
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 42: String capacity
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    std::cout << s.capacity();
    return 0;
}
*/
//===========================================

//// Question 43: String shrink_to_fit
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.reserve(100);
    s.shrink_to_fit();
    std::cout << s.capacity() >= 3;
    return 0;
}
*/
//===========================================

//// Question 44: String find first not of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "aabbcc";
    std::cout << s.find_first_not_of("a");
    return 0;
}
*/
//===========================================

//// Question 45: String find last not of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "aabbcc";
    std::cout << s.find_last_not_of("c");
    return 0;
}
*/
//===========================================

//// Question 46: String c_str
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hi";
    const char* p = s.c_str();
    std::cout << p;
    return 0;
}
*/
//===========================================

//// Question 47: String assign
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s;
    s.assign("abc");
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 48: String find with position
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "banana";
    std::cout << s.find("na", 3);
    return 0;
}
*/
//===========================================

//// Question 49: String substr out of range
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    std::cout << s.substr(1, 10);
    return 0;
}
*/
//===========================================

//// Question 50: String erase all
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.erase();
    std::cout << s.length();
    return 0;
}
*/
//===========================================

//// Question 51: String insert at end
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hi";
    s.insert(s.length(), "!");
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 52: String insert at begin
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hi";
    s.insert(0, "!");
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 53: String replace all
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abcabc";
    size_t pos = 0;
    while((pos = s.find("a", pos)) != std::string::npos) {
        s.replace(pos, 1, "x");
        pos++;
    }
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 54: String find and count
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "banana";
    int count = 0, pos = 0;
    while((pos = s.find("na", pos)) != std::string::npos) {
        count++; pos++;
    }
    std::cout << count;
    return 0;
}
*/
//===========================================

//// Question 55: String compare ignore case (manual)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "abc", b = "ABC";
    bool eq = true;
    for(int i=0;i<a.length();i++)
        if(tolower(a[i]) != tolower(b[i])) eq = false;
    std::cout << eq;
    return 0;
}
*/
//===========================================

//// Question 56: String to int (stoi)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "123";
    std::cout << std::stoi(s) + 1;
    return 0;
}
*/
//===========================================

//// Question 57: Int to string (to_string)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    int n = 42;
    std::cout << std::to_string(n);
    return 0;
}
*/
//===========================================

//// Question 58: String stream input
// What is the output?
/**
#include <iostream>
#include <sstream>
#include <string>
int main() {
    std::string s = "123 456";
    std::istringstream iss(s);
    int a, b;
    iss >> a >> b;
    std::cout << a + b;
    return 0;
}
*/
//===========================================

//// Question 59: String stream output
// What is the output?
/**
#include <iostream>
#include <sstream>
#include <string>
int main() {
    int a = 5, b = 6;
    std::ostringstream oss;
    oss << a << "," << b;
    std::cout << oss.str();
    return 0;
}
*/
//===========================================

//// Question 60: String find char
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    std::cout << s.find('l');
    return 0;
}
*/
//===========================================

//// Question 61: String find last char
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    std::cout << s.rfind('l');
    return 0;
}
*/
//===========================================

//// Question 62: String compare with c_str
// What is the output?
/**
#include <iostream>
#include <string>
#include <cstring>
int main() {
    std::string s = "abc";
    std::cout << strcmp(s.c_str(), "abc");
    return 0;
}
*/
//===========================================

//// Question 63: String with escape chars
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "a\nb";
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 64: String with tab
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "a\tb";
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 65: String with unicode
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = u8"hi";
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 66: String with raw literal
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = R"(a\nb)";
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 67: String with spaces
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "a b c";
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 68: String with trailing spaces
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc ";
    std::cout << s.length();
    return 0;
}
*/
//===========================================

//// Question 69: String with leading spaces
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = " abc";
    std::cout << s[0];
    return 0;
}
*/
//===========================================

//// Question 70: String with null char
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc\0def";
    std::cout << s.length();
    return 0;
}
*/
//===========================================

//// Question 71: String with embedded null
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "a\0b";
    std::cout << s.size();
    return 0;
}
*/
//===========================================

//// Question 72: String with repeated chars
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s(5, 'x');
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 73: String with initializer list
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s{'a','b','c'};
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 74: String with assign count
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s;
    s.assign(3, 'z');
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 75: String with reserve
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s;
    s.reserve(100);
    std::cout << s.capacity() >= 100;
    return 0;
}
*/
//===========================================

//// Question 76: String with shrink_to_fit
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s(100, 'a');
    s.shrink_to_fit();
    std::cout << s.capacity() >= 100;
    return 0;
}
*/
//===========================================

//// Question 77: String with swap
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "abc", b = "xyz";
    a.swap(b);
    std::cout << a;
    return 0;
}
*/
//===========================================

//// Question 78: String with operator[]
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s[1] = 'x';
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 79: String with at() out of range
// What happens?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    // std::cout << s.at(5); // Throws exception
    return 0;
}
*/
//===========================================

//// Question 80: String with find and substr
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abcdef";
    std::cout << s.substr(s.find("cd"), 2);
    return 0;
}
*/
//===========================================

//// Question 81: String with erase range
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abcdef";
    s.erase(2, 3);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 82: String with insert range
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    s.insert(1, "xyz", 2);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 83: String with replace range
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abcdef";
    s.replace(1, 3, "X");
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 84: String with push_back and pop_back
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "ab";
    s.push_back('c');
    s.pop_back();
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 85: String with find_first_of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abcdef";
    std::cout << s.find_first_of("de");
    return 0;
}
*/
//===========================================

//// Question 86: String with find_last_of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abcdef";
    std::cout << s.find_last_of("de");
    return 0;
}
*/
//===========================================

//// Question 87: String with find_first_not_of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "aaabbb";
    std::cout << s.find_first_not_of("a");
    return 0;
}
*/
//===========================================

//// Question 88: String with find_last_not_of
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "aaabbb";
    std::cout << s.find_last_not_of("b");
    return 0;
}
*/
//===========================================

//// Question 89: String with compare (partial)
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string a = "abcdef";
    std::cout << a.compare(2, 2, "cd");
    return 0;
}
*/
//===========================================

//// Question 90: String with find and npos
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    std::cout << (s.find("z") == std::string::npos);
    return 0;
}
*/
//===========================================

//// Question 91: String with copy to char array
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hello";
    char a[6];
    s.copy(a, 5);
    a[5] = '\0';
    std::cout << a;
    return 0;
}
*/
//===========================================

//// Question 92: String with data()
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "hi";
    std::cout << s.data();
    return 0;
}
*/
//===========================================

//// Question 93: String with std::getline and spaces
// What is the output if user enters: hello world
/**
#include <iostream>
#include <string>
int main() {
    std::string s;
    std::getline(std::cin, s);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 94: String with std::getline and cin before
// What is the output if user enters: 123<Enter>hello world
/**
#include <iostream>
#include <string>
int main() {
    int n;
    std::cin >> n;
    std::string s;
    std::getline(std::cin, s);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 95: String with std::getline and ignore
// What is the output if user enters: 123<Enter>hello world
/**
#include <iostream>
#include <string>
int main() {
    int n;
    std::cin >> n;
    std::cin.ignore();
    std::string s;
    std::getline(std::cin, s);
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 96: String with std::string::npos
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::cout << (std::string::npos > 1000);
    return 0;
}
*/
//===========================================

//// Question 97: String with std::string::iterator
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    for(std::string::iterator it = s.begin(); it != s.end(); ++it)
        std::cout << *it;
    return 0;
}
*/
//===========================================

//// Question 98: String with std::reverse_iterator
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string s = "abc";
    for(auto it = s.rbegin(); it != s.rend(); ++it)
        std::cout << *it;
    return 0;
}
*/
//===========================================

//// Question 99: String with array of strings
// What is the output?
/**
#include <iostream>
#include <string>
int main() {
    std::string arr[] = {"hi", "bye"};
    std::cout << arr[0] << " " << arr[1];
    return 0;
}
*/
//===========================================

//// Question 100: String with array of char*
// What is the output?
/**
#include <iostream>
int main() {
    const char* arr[] = {"hi", "bye"};
    std::cout << arr[1];
    return 0;
}
*/
//===========================================