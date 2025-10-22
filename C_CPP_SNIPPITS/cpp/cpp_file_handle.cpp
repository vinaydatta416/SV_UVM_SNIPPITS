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





// Question 51: Write and read double in binary file
/**
#include <fstream>
#include <iostream>
int main() {
    double val = 9.99;
    std::ofstream out("double.bin", std::ios::binary);
    out.write(reinterpret_cast<char*>(&val), sizeof(val));
    out.close();

    double readVal = 0;
    std::ifstream in("double.bin", std::ios::binary);
    in.read(reinterpret_cast<char*>(&readVal), sizeof(readVal));
    std::cout << readVal;
    in.close();
    return 0;
}
*/
//===========================================
// Question 52: Use std::ios::in to open file for reading only
/**
#include <fstream>
int main() {
    std::ifstream file("test.txt", std::ios::in);
    file.close();
    return 0;
}
*/
//===========================================
// Question 53: Write char array to file
/**
#include <fstream>
int main() {
    char arr[] = "Hello!";
    std::ofstream file("chararray.txt");
    file << arr;
    file.close();
    return 0;
}
*/
//===========================================
// Question 54: Read entire file into std::string
/**
#include <fstream>
#include <iostream>
#include <sstream>
int main() {
    std::ifstream file("test.txt");
    std::stringstream buffer;
    buffer << file.rdbuf();
    std::cout << buffer.str();
    file.close();
    return 0;
}
*/
//===========================================
// Question 55: Check if file stream is bad()
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    if (file.bad())
        std::cout << "Stream is bad";
    file.close();
    return 0;
}
*/
//===========================================
// Question 56: Open file in ios::out | ios::app mode
/**
#include <fstream>
int main() {
    std::ofstream file("append.txt", std::ios::out | std::ios::app);
    file << "Appending more\n";
    file.close();
    return 0;
}
*/
//===========================================
// Question 57: Write const char* to file
/**
#include <fstream>
int main() {
    const char* msg = "Hello World";
    std::ofstream file("constchar.txt");
    file << msg;
    file.close();
    return 0;
}
*/
//===========================================
// Question 58: Read from file till EOF using get()
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
// Question 59: Use ios::binary and ios::in to open file for binary reading
/**
#include <fstream>
int main() {
    std::ifstream file("binarydata.bin", std::ios::binary | std::ios::in);
    file.close();
    return 0;
}
*/
//===========================================
// Question 60: Use std::getline and std::cin with file stream
/**
#include <fstream>
#include <iostream>
#include <string>
int main() {
    std::ofstream file("input.txt");
    file << "First Line\nSecond Line\n";
    file.close();

    std::ifstream infile("input.txt");
    std::string line;
    while (std::getline(infile, line))
        std::cout << line << "\n";
    infile.close();
    return 0;
}
*/
//===========================================
// Question 61: Write to a file and flush immediately
/**
#include <fstream>
int main() {
    std::ofstream file("flushfile.txt");
    file << "Flushed content";
    file.flush();
    file.close();
    return 0;
}
*/
//===========================================
// Question 62: Use fstream to read and write simultaneously
/**
#include <fstream>
#include <iostream>
int main() {
    std::fstream file("test.txt", std::ios::in | std::ios::out);
    file << "Overwrite text";
    file.seekg(0);
    std::string str;
    file >> str;
    std::cout << str;
    file.close();
    return 0;
}
*/
//===========================================
// Question 63: Use tellg after reading some chars
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    char ch;
    file.get(ch);
    std::cout << file.tellg();
    file.close();
    return 0;
}
*/
//===========================================
// Question 64: Use ios::binary | ios::out to write binary file
/**
#include <fstream>
int main() {
    std::ofstream file("binfile.bin", std::ios::binary | std::ios::out);
    int val = 777;
    file.write(reinterpret_cast<char*>(&val), sizeof(val));
    file.close();
    return 0;
}
*/
//===========================================
// Question 65: Use ios::binary | ios::in to read binary file
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("binfile.bin", std::ios::binary | std::ios::in);
    int val;
    file.read(reinterpret_cast<char*>(&val), sizeof(val));
    std::cout << val;
    file.close();
    return 0;
}
*/
//===========================================
// Question 66: Open file with ios::app to append text
/**
#include <fstream>
int main() {
    std::ofstream file("append.txt", std::ios::app);
    file << "Appending line\n";
    file.close();
    return 0;
}
*/
//===========================================
// Question 67: Use std::ifstream with std::string filename
/**
#include <fstream>
int main() {
    std::string filename = "test.txt";
    std::ifstream file(filename);
    file.close();
    return 0;
}
*/
//===========================================
// Question 68: Use ios::out | ios::trunc to overwrite file
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt", std::ios::out | std::ios::trunc);
    file << "Overwrite all";
    file.close();
    return 0;
}
*/
//===========================================
// Question 69: Use ios::in to read and seekg to reset pointer
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    file.seekg(0);
    char ch;
    file.get(ch);
    std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 70: Use ios::out | ios::binary to write file
/**
#include <fstream>
int main() {
    std::ofstream file("binaryout.bin", std::ios::out | std::ios::binary);
    int n = 42;
    file.write(reinterpret_cast<char*>(&n), sizeof(n));
    file.close();
    return 0;
}
*/
//===========================================
// Question 71: Write struct with constructor and write/read file
/**
#include <fstream>
#include <iostream>
struct Person {
    char name[20];
    int age;
};
int main() {
    Person p = {"John", 25};
    std::ofstream out("person.bin", std::ios::binary);
    out.write(reinterpret_cast<char*>(&p), sizeof(p));
    out.close();

    Person r;
    std::ifstream in("person.bin", std::ios::binary);
    in.read(reinterpret_cast<char*>(&r), sizeof(r));
    std::cout << r.name << " " << r.age;
    in.close();
    return 0;
}
*/
//===========================================
// Question 72: Use ios::in | ios::out with fstream to read & write
/**
#include <fstream>
#include <iostream>
int main() {
    std::fstream file("test.txt", std::ios::in | std::ios::out);
    file << "Hello World";
    file.seekg(0);
    char ch;
    file.get(ch);
    std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 73: Use ios::in | ios::out | ios::app with fstream
/**
#include <fstream>
int main() {
    std::fstream file("test.txt", std::ios::in | std::ios::out | std::ios::app);
    file << " Appended text";
    file.close();
    return 0;
}
*/
//===========================================
// Question 74: Use file stream with std::vector
/**
#include <fstream>
#include <vector>
int main() {
    std::vector<int> v = {1, 2, 3};
    std::ofstream file("vec.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(v.data()), v.size() * sizeof(int));
    file.close();
    return 0;
}
*/
//===========================================
// Question 75: Read vector from binary file
/**
#include <fstream>
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v(3);
    std::ifstream file("vec.bin", std::ios::binary);
    file.read(reinterpret_cast<char*>(v.data()), v.size() * sizeof(int));
    for (auto i : v) std::cout << i << " ";
    file.close();
    return 0;
}
*/
//===========================================
// Question 76: Use ios::binary to write bool array
/**
#include <fstream>
int main() {
    bool arr[] = {true, false, true};
    std::ofstream file("bools.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(arr), sizeof(arr));
    file.close();
    return 0;
}
*/
//===========================================
// Question 77: Read bool array from binary file
/**
#include <fstream>
#include <iostream>
int main() {
    bool arr[3];
    std::ifstream file("bools.bin", std::ios::binary);
    file.read(reinterpret_cast<char*>(arr), sizeof(arr));
    for (bool b : arr) std::cout << b << " ";
    file.close();
    return 0;
}
*/
//===========================================
// Question 78: Use ios::in | ios::out to modify file content
/**
#include <fstream>
int main() {
    std::fstream file("test.txt", std::ios::in | std::ios::out);
    file.seekp(0);
    file << "Hi";
    file.close();
    return 0;
}
*/
//===========================================
// Question 79: Use ios::binary | ios::in to read file
/**
#include <fstream>
int main() {
    std::ifstream file("binaryfile.bin", std::ios::binary | std::ios::in);
    file.close();
    return 0;
}
*/
//===========================================
// Question 80: Write multiple lines using std::endl
/**
#include <fstream>
int main() {
    std::ofstream file("lines.txt");
    file << "First line" << std::endl << "Second line" << std::endl;
    file.close();
    return 0;
}
*/
//===========================================
// Question 81: Use ios::out to overwrite file contents
/**
#include <fstream>
int main() {
    std::ofstream file("test.txt", std::ios::out);
    file << "Overwrite!";
    file.close();
    return 0;
}
*/
//===========================================
// Question 82: Use ios::ate to open and append at end
/**
#include <fstream>
int main() {
    std::ofstream file("append.txt", std::ios::ate | std::ios::app);
    file << "Added line\n";
    file.close();
    return 0;
}
*/
//===========================================
// Question 83: Use std::ifstream to read a file till EOF
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
// Question 84: Check if file exists before opening
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("exists.txt");
    if (!file)
        std::cout << "File not found";
    file.close();
    return 0;
}
*/
//===========================================
// Question 85: Use ios::binary with ios::trunc to clear and write
/**
#include <fstream>
int main() {
    std::ofstream file("clear.bin", std::ios::binary | std::ios::trunc);
    file << "Cleared and wrote";
    file.close();
    return 0;
}
*/
//===========================================
// Question 86: Use tellp() and seekp() for write position
/**
#include <fstream>
#include <iostream>
int main() {
    std::ofstream file("test.txt");
    file << "Hello";
    std::cout << file.tellp() << "\n";
    file.seekp(0);
    file << "Hi";
    file.close();
    return 0;
}
*/
//===========================================
// Question 87: Use tellg() and seekg() for read position
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    file.seekg(2);
    std::cout << file.tellg() << "\n";
    char ch;
    file.get(ch);
    std::cout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 88: Write wchar_t string to file
/**
#include <fstream>
int main() {
    std::wofstream file("wide.txt");
    file << L"Wide char string";
    file.close();
    return 0;
}
*/
//===========================================
// Question 89: Read wchar_t string from file
/**
#include <fstream>
#include <iostream>
int main() {
    std::wifstream file("wide.txt");
    wchar_t ch;
    while (file.get(ch))
        std::wcout << ch;
    file.close();
    return 0;
}
*/
//===========================================
// Question 90: Open file with ios::in | ios::binary and read char array
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("chararr.bin", std::ios::binary | std::ios::in);
    char arr[10];
    file.read(arr, sizeof(arr));
    for (char c : arr) std::cout << c;
    file.close();
    return 0;
}
*/
//===========================================
// Question 91: Write and read std::string length before actual string
/**
#include <fstream>
#include <iostream>
#include <string>
int main() {
    std::string s = "Hello File";
    std::ofstream out("string.bin", std::ios::binary);
    size_t len = s.size();
    out.write(reinterpret_cast<char*>(&len), sizeof(len));
    out.write(s.c_str(), len);
    out.close();

    std::ifstream in("string.bin", std::ios::binary);
    size_t rlen;
    in.read(reinterpret_cast<char*>(&rlen), sizeof(rlen));
    char* buffer = new char[rlen + 1];
    in.read(buffer, rlen);
    buffer[rlen] = '\0';
    std::cout << buffer;
    delete[] buffer;
    in.close();
    return 0;
}
*/
//===========================================
// Question 92: Open file in ios::out | ios::binary | ios::trunc mode
/**
#include <fstream>
int main() {
    std::ofstream file("binfile.bin", std::ios::out | std::ios::binary | std::ios::trunc);
    int x = 100;
    file.write(reinterpret_cast<char*>(&x), sizeof(x));
    file.close();
    return 0;
}
*/
//===========================================
// Question 93: Open ifstream and check eof() after reading
/**
#include <fstream>
#include <iostream>
int main() {
    std::ifstream file("test.txt");
    char ch;
    while (file.get(ch)) {
        std::cout << ch;
    }
    if (file.eof())
        std::cout << "\nReached EOF";
    file.close();
    return 0;
}
*/
//===========================================
// Question 94: Use std::fstream to read and write integers
/**
#include <fstream>
#include <iostream>
int main() {
    std::fstream file("ints.bin", std::ios::in | std::ios::out | std::ios::binary | std::ios::trunc);
    int arr[3] = {10, 20, 30};
    file.write(reinterpret_cast<char*>(arr), sizeof(arr));
    file.seekg(0);
    int val;
    file.read(reinterpret_cast<char*>(&val), sizeof(val));
    std::cout << val;
    file.close();
    return 0;
}
*/
//===========================================
// Question 95: Use std::ofstream with std::endl and flush
/**
#include <fstream>
int main() {
    std::ofstream file("lines.txt");
    file << "Line 1" << std::endl;
    file.flush();
    file << "Line 2" << std::endl;
    file.close();
    return 0;
}
*/
//===========================================
// Question 96: Use ios::app with std::ofstream to append text
/**
#include <fstream>
int main() {
    std::ofstream file("log.txt", std::ios::app);
    file << "New log entry\n";
    file.close();
    return 0;
}
*/
//===========================================
// Question 97: Use ios::binary to write float array
/**
#include <fstream>
int main() {
    float arr[3] = {1.1f, 2.2f, 3.3f};
    std::ofstream file("floats.bin", std::ios::binary);
    file.write(reinterpret_cast<char*>(arr), sizeof(arr));
    file.close();
    return 0;
}
*/
//===========================================
// Question 98: Read float array from binary file
/**
#include <fstream>
#include <iostream>
int main() {
    float arr[3];
    std::ifstream file("floats.bin", std::ios::binary);
    file.read(reinterpret_cast<char*>(arr), sizeof(arr));
    for (float f : arr)
        std::cout << f << " ";
    file.close();
    return 0;
}
*/
//===========================================
// Question 99: Use std::ofstream to write and std::ifstream to read
/**
#include <fstream>
#include <iostream>
int main() {
    std::ofstream out("text.txt");
    out << "Hello File";
    out.close();

    std::ifstream in("text.txt");
    std::string s;
    in >> s;
    std::cout << s;
    in.close();
    return 0;
}
*/
//===========================================
// Question 100: Use ios::binary | ios::in | ios::out for fstream
/**
#include <fstream>
int main() {
    std::fstream file("data.bin", std::ios::binary | std::ios::in | std::ios::out | std::ios::trunc);
    int x = 42;
    file.write(reinterpret_cast<char*>(&x), sizeof(x));
    file.seekg(0);
    int y;
    file.read(reinterpret_cast<char*>(&y), sizeof(y));
    file.close();
    return 0;
}
*/

