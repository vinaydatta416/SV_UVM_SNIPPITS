// Question 1: Write to a file using ofstream
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt");
    file << "Hello File";
    file.close();
    return 0;
}
*/
//===========================================
// Question 2: Read from a file using ifstream
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    std::string word;
    file >> word;
    std::cout << word;
    file.close();
    return 0;
}
*/
//===========================================
// Question 3: Append to a file using ios::app
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt", std::ios::app);
    file << "\nAppended Text";
    file.close();
    return 0;
}
*/
//===========================================
// Question 4: Check if file is open
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    if (file.is_open())
        std::cout << "File opened";
    file.close();
    return 0;
}
*/
//===========================================
// Question 5: Read file line by line
/**
#include <fstream>
#include <iostream>
#include <string>
int main() {
    std::ifstream file("test.txt");
    std::string line;
    while (std::getline(file, line))
        std::cout << line << "\n";
    file.close();
    return 0;
}
*/
//===========================================
// Question 6: Open file in binary mode for writing
/**
#include <fstream>
int main() {
    std::ofstream file("data.bin", std::ios::binary);
    int num = 1234;
    file.write(reinterpret_cast<char*>(&num), sizeof(num));
    file.close();
    return 0;
}
*/
//===========================================
// Question 7: Read binary file
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("data.bin", std::ios::binary);
    int num = 0;
    file.read(reinterpret_cast<char*>(&num), sizeof(num));
    std::cout << num;
    file.close();
    return 0;
}
*/
//===========================================
// Question 8: Open file for read and write using fstream
/**
#include <fstream>
int main() {
    std::fstream file("test.txt", std::ios::in | std::ios::out);
    file << "Hello";
    file.close();
    return 0;
}
*/
//===========================================
// Question 9: Use tellg to get current read position
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    file.seekg(0, std::ios::end);
    std::cout << file.tellg();
    file.close();
    return 0;
}
*/
//===========================================
// Question 10: Use seekg to set read position
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    file.seekg(5);
    char ch;
    file.get(ch);
    std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 11: Use tellp to get write position
/**
#include <fstream>
#include <iostream>
int main() {
    std::ofstream file("test.txt");
    file << "Hello";
    std::cout << file.tellp();
    file.close();
    return 0;
}
*/
//===========================================
// Question 12: Use seekp to move write position
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt");
    file.seekp(0);
    file << "Hi";
    file.close();
    return 0;
}
*/
//===========================================
// Question 13: Check EOF while reading file
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    char ch;
    while (file.get(ch))
        std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 14: Use fail() to check file open failure
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("nofile.txt");
    if (file.fail())
        std::cout << "Failed to open file";
    return 0;
}
*/
//===========================================
// Question 15: Write multiple lines to file
/**
#include <fstream>
int main() {
    std::ofstream file("lines.txt");
    file << "Line1\nLine2\nLine3\n";
    file.close();
    return 0;
}
*/
//===========================================
// Question 16: Read file char by char
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("lines.txt");
    char ch;
    while (file.get(ch))
        std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 17: Open file using default ios::in mode
/**
#include <fstream>
int main() {
    std::ifstream file("test.txt");
    file.close();
    return 0;
}
*/
//===========================================
// Question 18: Open file using default ios::out mode
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt");
    file.close();
    return 0;
}
*/
//===========================================
// Question 19: Write and read int array to binary file
/**
#include <fstream>
int main() {
    int arr[] = {1, 2, 3};
    std::ofstream file("arr.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(arr), sizeof(arr));
    file.close();
    return 0;
}
*/
//===========================================
// Question 20: Read int array from binary file
/**
#include <fstream>
#include <iostream>
int main() {
    int arr[3] = {0};
    std::ifstream file("arr.bin", std::ios::binary);
    file.read(reinterpret_cast<char*>(arr), sizeof(arr));
    for (int i : arr)
        std::cout << i << " ";
    file.close();
    return 0;
}
*/
//===========================================
// Question 21: Use flush() to flush output buffer
/**
#include <fstream>
int main() {
    std::ofstream file("flush.txt");
    file << "Data";
    file.flush();
    file.close();
    return 0;
}
*/
//===========================================
// Question 22: Write bool to binary file
/**
#include <fstream>
int main() {
    bool flag = true;
    std::ofstream file("flag.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(&flag), sizeof(flag));
    file.close();
    return 0;
}
*/
//===========================================
// Question 23: Read bool from binary file
/**
#include <fstream>
#include <iostream>
int main() {
    bool flag = false;
    std::ifstream file("flag.bin", std::ios::binary);
    file.read(reinterpret_cast<char*>(&flag), sizeof(flag));
    std::cout << flag;
    file.close();
    return 0;
}
*/
//===========================================
// Question 24: Open file in truncate mode (default for ofstream)
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt", std::ios::trunc);
    file << "New content";
    file.close();
    return 0;
}
*/
//===========================================
// Question 25: Write and read struct to binary file
/**
#include <fstream>
#include <iostream>
struct Point {
    int x, y;
};
int main() {
    Point p = {1, 2};
    std::ofstream file("point.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(&p), sizeof(p));
    file.close();

    Point r;
    std::ifstream infile("point.bin", std::ios::binary);
    infile.read(reinterpret_cast<char*>(&r), sizeof(r));
    std::cout << r.x << " " << r.y;
    infile.close();
    return 0;
}
*/
//===========================================
// Question 26: Use ios::binary | ios::in for binary reading
/**
#include <fstream>
int main() {
    std::ifstream file("point.bin", std::ios::binary | std::ios::in);
    file.close();
    return 0;
}
*/
//===========================================
// Question 27: File pointer at beginning with seekg
/**
#include <fstream>
int main() {
    std::ifstream file("test.txt");
    file.seekg(0, std::ios::beg);
    file.close();
    return 0;
}
*/
//===========================================
// Question 28: Use eof() to check end of file
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    while (!file.eof()) {
        char ch;
        file.get(ch);
        std::cout << ch;
    }
    file.close();
    return 0;
}
*/
//===========================================
// Question 29: Check good() state of file stream
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    if (file.good())
        std::cout << "Stream is good";
    file.close();
    return 0;
}
*/
//===========================================
// Question 30: Use peek() to look next char
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    char ch = file.peek();
    std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 31: Use ignore() to skip chars
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    file.ignore(5);
    char ch;
    file.get(ch);
    std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 32: Use putback() to return char to stream
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    char ch;
    file.get(ch);
    file.putback(ch);
    file.get(ch);
    std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 33: Open file with ios::nocreate (not standard in C++)
// (No direct equivalent; just attempt to open)
/**
#include <fstream>
int main() {
    std::ifstream file("exists.txt");
    return 0;
}
*/
//===========================================
// Question 34: Use std::fstream for reading and writing text
/**
#include <fstream>
int main() {
    std::fstream file("test.txt", std::ios::in | std::ios::out);
    file << "Hi";
    file.seekg(0);
    char ch;
    file.get(ch);
    file.close();
    return 0;
}
*/
//===========================================
// Question 35: Use binary flag with fstream
/**
#include <fstream>
int main() {
    std::fstream file("data.bin", std::ios::in | std::ios::out | std::ios::binary);
    file.close();
    return 0;
}
*/
//===========================================
// Question 36: Write floating point to binary file
/**
#include <fstream>
int main() {
    float val = 3.14f;
    std::ofstream file("float.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(&val), sizeof(val));
    file.close();
    return 0;
}
*/
//===========================================
// Question 37: Read floating point from binary file
/**
#include <fstream>
#include <iostream>
int main() {
    float val;
    std::ifstream file("float.bin", std::ios::binary);
    file.read(reinterpret_cast<char*>(&val), sizeof(val));
    std::cout << val;
    file.close();
    return 0;
}
*/
//===========================================
// Question 38: Write string to text file
/**
#include <fstream>
int main() {
    std::ofstream file("string.txt");
    std::string s = "Hello World";
    file << s;
    file.close();
    return 0;
}
*/
//===========================================
// Question 39: Read string from text file
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("string.txt");
    std::string s;
    file >> s;
    std::cout << s;
    file.close();
    return 0;
}
*/
//===========================================
// Question 40: Clear error flags on file stream
/**
#include <fstream>
int main() {
    std::ifstream file("nofile.txt");
    if (file.fail())
        file.clear();
    return 0;
}
*/
//===========================================
// Question 41: Use std::getline with file stream
/**
#include <fstream>
#include <iostream>
#include <string>
int main() {
    std::ifstream file("string.txt");
    std::string line;
    std::getline(file, line);
    std::cout << line;
    file.close();
    return 0;
}
*/
//===========================================
// Question 42: Write struct with padding to binary file
/**
#include <fstream>
struct Data {
    char a;
    int b;
};
int main() {
    Data d = {'x', 10};
    std::ofstream file("pad.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(&d), sizeof(d));
    file.close();
    return 0;
}
*/
//===========================================
// Question 43: Read struct with padding from binary file
/**
#include <fstream>
#include <iostream>
struct Data {
    char a;
    int b;
};
int main() {
    Data d;
    std::ifstream file("pad.bin", std::ios::binary);
    file.read(reinterpret_cast<char*>(&d), sizeof(d));
    std::cout << d.a << " " << d.b;
    file.close();
    return 0;
}
*/
//===========================================
// Question 44: Use ios::ate to open and seek end immediately
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt", std::ios::ate);
    std::cout << file.tellg();
    file.close();
    return 0;
}
*/
//===========================================
// Question 45: Use ios::trunc to clear file before writing
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt", std::ios::trunc);
    file << "Clear content";
    file.close();
    return 0;
}
*/
//===========================================
// Question 46: Open non-existent file with ios::in
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("noexist.txt", std::ios::in);
    if (!file.is_open())
        std::cout << "File not found";
    file.close();
    return 0;
}
*/
//===========================================
// Question 47: Use ios::binary with ios::app
/**
#include <fstream>
int main() {
    std::ofstream file("append.bin", std::ios::binary | std::ios::app);
    int val = 5;
    file.write(reinterpret_cast<char*>(&val), sizeof(val));
    file.close();
    return 0;
}
*/
//===========================================
// Question 48: Use ios::in | ios::out | ios::trunc with fstream
/**
#include <fstream>
int main() {
    std::fstream file("test.txt", std::ios::in | std::ios::out | std::ios::trunc);
    file << "Truncate file";
    file.close();
    return 0;
}
*/
//===========================================
// Question 49: Write to file using std::endl
/**
#include <fstream>
int main() {
    std::ofstream file("endl.txt");
    file << "Line 1" << std::endl << "Line 2";
    file.close();
    return 0;
}
*/
//===========================================
// Question 50: Check if file is empty after opening
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    if (file.peek() == std::ifstream::traits_type::eof())
        std::cout << "File is empty";
    file.close();
    return 0;
}
*/
