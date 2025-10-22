//// Question 1: 1D Array Basic Access
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[3] = {1,2,3};
    std::cout << a[0];
    return 0;
}
*/
//===========================================

//// Question 2: 1D Array Print All
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[3] = {4,5,6};
    for(int i=0;i<3;i++) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 3: 1D Array Partial Init
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[5] = {1,2};
    for(int i=0;i<5;i++) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 4: Sizeof Array Elements
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[4] = {1,2,3,4};
    std::cout << sizeof(a)/sizeof(a[0]);
    return 0;
}
*/
//===========================================

//// Question 5: Sum of Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2,3,4};
    int s=0;
    for(int x: a) s+=x;
    std::cout<<s;
    return 0;
}
*/
//===========================================

//// Question 6: Max in Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {5,2,9,1};
    int m=a[0];
    for(int i=1;i<4;i++) if(a[i]>m) m=a[i];
    std::cout<<m;
    return 0;
}
*/
//===========================================

//// Question 7: Min in Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {5,2,9,1};
    int m=a[0];
    for(int i=1;i<4;i++) if(a[i]<m) m=a[i];
    std::cout<<m;
    return 0;
}
*/
//===========================================

//// Question 8: Reverse Print Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2,3};
    for(int i=2;i>=0;i--) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 9: Modify Array Element
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[3]={1,2,3};
    a[1]=10;
    std::cout<<a[1];
    return 0;
}
*/
//===========================================

//// Question 10: Array of Zeroes (default init static)
// What is the output of the following code?
/**
#include <iostream>
int arr[4];
int main() {
    std::cout<<arr[0]<<" "<<arr[3];
    return 0;
}
*/
//===========================================

//// Question 11: Char Array (C-string)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char s[] = "hi";
    std::cout << s;
    return 0;
}
*/
//===========================================

//// Question 12: Char Array Individual Chars
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char s[] = "ab";
    std::cout << s[0] << " " << (int)s[2];
    return 0;
}
*/
//===========================================

//// Question 13: Array Initialization with loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[4];
    for(int i=0;i<4;i++) a[i]=i+1;
    for(int i=0;i<4;i++) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 14: 2D Array Basic Access
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][2] = {{1,2},{3,4}};
    std::cout<<m[1][0];
    return 0;
}
*/
//===========================================

//// Question 15: 2D Array Print All
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][3] = {{1,2,3},{4,5,6}};
    for(int i=0;i<2;i++) for(int j=0;j<3;j++) std::cout<<m[i][j]<<" ";
    return 0;
}
*/
//===========================================

//// Question 16: Sum of 2D Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][2]={{1,1},{1,1}};
    int s=0;
    for(int i=0;i<2;i++) for(int j=0;j<2;j++) s+=m[i][j];
    std::cout<<s;
    return 0;
}
*/
//===========================================

//// Question 17: Row Sum 2D
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][3]={{1,2,3},{4,5,6}};
    for(int i=0;i<2;i++){
        int rs=0;
        for(int j=0;j<3;j++) rs+=m[i][j];
        std::cout<<rs<<" ";
    }
    return 0;
}
*/
//===========================================

//// Question 18: Column Sum 2D
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][2]={{1,2},{3,4}};
    for(int j=0;j<2;j++){
        int cs=0;
        for(int i=0;i<2;i++) cs+=m[i][j];
        std::cout<<cs<<" ";
    }
    return 0;
}
*/
//===========================================

//// Question 19: 2D Access Linearized
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][2]={{1,2},{3,4}};
    int *p = &m[0][0];
    std::cout<<p[2];
    return 0;
}
*/
//===========================================

//// Question 20: 3D Array Basic
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[2][1][2]={{{1,2}},{{3,4}}};
    std::cout<<a[1][0][1];
    return 0;
}
*/
//===========================================

//// Question 21: std::array Basic
// What is the output of the following code?
/**
#include <iostream>
#include <array>
int main() {
    std::array<int,3> a = {7,8,9};
    std::cout<<a[1];
    return 0;
}
*/
//===========================================

//// Question 22: std::array size()
// What is the output of the following code?
/**
#include <iostream>
#include <array>
int main() {
    std::array<int,4> a{};
    std::cout<<a.size();
    return 0;
}
*/
//===========================================

//// Question 23: std::vector as dynamic array
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v={1,2,3};
    std::cout<<v[2];
    return 0;
}
*/
//===========================================

//// Question 24: vector push_back
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    std::vector<int> v;
    v.push_back(5);
    std::cout<<v[0];
    return 0;
}
*/
//===========================================

//// Question 25: Passing array to function (pointer)
// What is the output of the following code?
/**
#include <iostream>
void f(int *a){ a[0]=9; }
int main() {
    int a[1]={1};
    f(a);
    std::cout<<a[0];
    return 0;
}
*/
//===========================================

//// Question 26: Passing array with size to function
// What is the output of the following code?
/**
#include <iostream>
void sum(int *a,int n){int s=0;for(int i=0;i<n;i++) s+=a[i]; std::cout<<s;}
int main() {
    int a[]={1,2,3};
    sum(a,3);
    return 0;
}
*/
//===========================================

//// Question 27: Return array pointer to static
// What is the output of the following code?
/**
#include <iostream>
int* make() { static int a[2]={1,2}; return a; }
int main() {
    int *p = make();
    std::cout<<p[1];
    return 0;
}
*/
//===========================================

//// Question 28: Array of Pointers
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a=1,b=2;
    int *p[2] = {&a,&b};
    std::cout<<*p[1];
    return 0;
}
*/
//===========================================

//// Question 29: Pointer to Array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[3]={1,2,3};
    int (*pa)[3] = &a;
    std::cout<<(*pa)[2];
    return 0;
}
*/
//===========================================

//// Question 30: Multidimensional with missing braces
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][2] = {1,2,3,4};
    std::cout<<m[0][1]<<" "<<m[1][0];
    return 0;
}
*/
//===========================================

//// Question 31: Character array length via sizeof
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char s[] = "abc";
    std::cout<<sizeof(s)<<" "<<s[0];
    return 0;
}
*/
//===========================================

//// Question 32: Modify string char
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char s[] = "dog";
    s[0]='c';
    std::cout<<s;
    return 0;
}
*/
//===========================================

//// Question 33: Const char* literal print
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const char *s = "hi";
    std::cout<<s;
    return 0;
}
*/
//===========================================

//// Question 34: Zero-length remainder elements
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[5]={0};
    std::cout<<a[4];
    return 0;
}
*/
//===========================================

//// Question 35: Array copying via loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={1,2,3}, b[3];
    for(int i=0;i<3;i++) b[i]=a[i];
    for(int i=0;i<3;i++) std::cout<<b[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 36: Over-indexing (undefined) -- show compile-safe sentinel
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[2]={1,2};
    int idx = 2;
    if(idx<2) std::cout<<a[idx];
    else std::cout<<"Out";
    return 0;
}
*/
//===========================================

//// Question 37: Fill array with loop
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[4];
    for(int i=0;i<4;i++) a[i]=i*i;
    for(int i=0;i<4;i++) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 38: Array and pointer increment
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={10,20};
    int *p=a;
    p++;
    std::cout<<*p;
    return 0;
}
*/
//===========================================

//// Question 39: Multidimensional initializer defaults
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][3] = {{1},{4,5}};
    for(int i=0;i<2;i++) for(int j=0;j<3;j++) std::cout<<m[i][j]<<" ";
    return 0;
}
*/
//===========================================

//// Question 40: Variable length (not standard) - use runtime vector
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    int n=3;
    std::vector<int> a(n,1);
    for(int x: a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 41: 2D array row-major linear index
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][3]={{1,2,3},{4,5,6}};
    int i=1,j=2;
    std::cout<<m[0][0 + i*3 + j - 3];
    return 0;
}
*/
//===========================================

//// Question 42: Using std::fill on array
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main() {
    int a[3];
    std::fill(a,a+3,7);
    for(int i=0;i<3;i++) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 43: Array of bools
// What is the output of the following code?
/**
#include <iostream>
int main() {
    bool b[3]={true,false,true};
    for(int i=0;i<3;i++) std::cout<<b[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 44: Array of doubles
// What is the output of the following code?
/**
#include <iostream>
int main() {
    double d[3]={0.1,0.2,0.3};
    std::cout<<d[1];
    return 0;
}
*/
//===========================================

//// Question 45: Array of structs
// What is the output of the following code?
/**
#include <iostream>
struct P{int x;};
int main() {
    P a[2]={{1},{2}};
    std::cout<<a[1].x;
    return 0;
}
*/
//===========================================

//// Question 46: Multi-dimensional larger access
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[3][3] = {{1,2,3},{4,5,6},{7,8,9}};
    std::cout<<a[2][2];
    return 0;
}
*/
//===========================================

//// Question 47: Jagged via array of pointers
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int r1[]={1,2}, r2[]={3,4,5};
    int *rows[2] = {r1,r2};
    std::cout<<rows[1][2];
    return 0;
}
*/
//===========================================

//// Question 48: Array initialization with braces omitted
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[] = {1,2,3};
    std::cout<<a[2];
    return 0;
}
*/
//===========================================

//// Question 49: Two arrays compare by elements
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={1,2}, b[]={1,3};
    for(int i=0;i<2;i++){
        if(a[i]==b[i]) std::cout<<"=";
        else std::cout<< (a[i]<b[i] ? "<" : ">");
    }
    return 0;
}
*/
//===========================================

//// Question 50: Using nullptr in pointer array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a=1;
    int *p[2]={&a,nullptr};
    std::cout<<(p[1]==nullptr);
    return 0;
}
*/
//===========================================

//// Question 51: Array and auto range
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]{2,4,6};
    for(auto x: a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 52: Increment inside loop modifies array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={1,1,1};
    for(int i=0;i<3;i++) a[i]+=i;
    for(int x:a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 53: Using references in range loop
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    int a[3]={1,2,3};
    for(int &x: a) x*=2;
    for(int x: a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 54: Multidimensional with const sizes
// What is the output of the following code?
/**
#include <iostream>
const int R=2,C=2;
int main(){
    int m[R][C]={{1,2},{3,4}};
    std::cout<<m[R-1][C-1];
    return 0;
}
*/
//===========================================

//// Question 55: Using std::begin/std::end on raw array
// What is the output of the following code?
/**
#include <iostream>
#include <iterator>
int main() {
    int a[]={9,8};
    std::cout<<*(std::begin(a)+1);
    return 0;
}
*/
//===========================================

//// Question 56: Using memset (byte-wise) for zero
// What is the output of the following code?
/**
#include <iostream>
#include <cstring>
int main() {
    int a[3]={1,2,3};
    std::memset(a,0,sizeof(a));
    std::cout<<a[1];
    return 0;
}
*/
//===========================================

//// Question 57: Using memset for -1 bytes (not recommended for int but illustration)
// What is the output of the following code?
/**
#include <iostream>
#include <cstring>
int main() {
    int a[2];
    std::memset(a,-1,sizeof(a));
    std::cout<<a[0]<<" "<<a[1];
    return 0;
}
*/
//===========================================

//// Question 58: Using std::swap on elements
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main() {
    int a[]={1,2};
    std::swap(a[0],a[1]);
    std::cout<<a[0]<<" "<<a[1];
    return 0;
}
*/
//===========================================

//// Question 59: Find index of value
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={3,5,7};
    int idx=-1;
    for(int i=0;i<3;i++) if(a[i]==5) idx=i;
    std::cout<<idx;
    return 0;
}
*/
//===========================================

//// Question 60: Rotate left by one (simple)
/**
#include <iostream>
int main() {
    int a[]={1,2,3};
    int t=a[0];
    a[0]=a[1]; a[1]=a[2]; a[2]=t;
    for(int x:a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 61: Copy 2D row to 1D
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][3]={{1,2,3},{4,5,6}};
    int r[3];
    for(int j=0;j<3;j++) r[j]=m[1][j];
    for(int j=0;j<3;j++) std::cout<<r[j]<<" ";
    return 0;
}
*/
//===========================================

//// Question 62: Using sizeof with pointer vs array
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[4];
    int *p=a;
    std::cout<<sizeof(a)<<" "<<sizeof(p);
    return 0;
}
*/
//===========================================

//// Question 63: Using reinterpret_cast to view bytes (print first byte)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[1]={1};
    unsigned char *b = reinterpret_cast<unsigned char*>(a);
    std::cout<<int(b[0]);
    return 0;
}
*/
//===========================================

//// Question 64: Two arrays concatenation into vector
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main() {
    int a[]={1,2}, b[]={3,4};
    std::vector<int> v;
    for(int x:a) v.push_back(x);
    for(int x:b) v.push_back(x);
    for(int x:v) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 65: Using std::copy for arrays
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main() {
    int a[]={1,2,3}, b[3];
    std::copy(a,a+3,b);
    for(int x:b) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 66: Sorting small array
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main() {
    int a[]={3,1,2};
    std::sort(a,a+3);
    for(int x:a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 67: Binary search on sorted array (std::binary_search)
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main() {
    int a[]={1,2,3};
    std::cout<<std::binary_search(a,a+3,2);
    return 0;
}
*/
//===========================================

//// Question 68: Using std::find on array
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main() {
    int a[]={5,6,7};
    auto it = std::find(a,a+3,6);
    std::cout<<(it!=a+3);
    return 0;
}
*/
//===========================================

//// Question 69: Multi-dim zero initialization
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int m[2][2]={0};
    std::cout<<m[1][1];
    return 0;
}
*/
//===========================================

//// Question 70: Array with long long
// What is the output of the following code?
/**
#include <iostream>
int main() {
    long long a[]={10000000000LL,2};
    std::cout<<a[0]<<" "<<a[1];
    return 0;
}
*/
//===========================================

//// Question 71: Using array in switch (index)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={10,20,30};
    int i=1;
    switch(i){case 1: std::cout<<a[i]; break;}
    return 0;
}
*/
//===========================================

//// Question 72: Using array of char to build string
// What is the output of the following code?
/**
#include <iostream>
int main() {
    char s[6] = {'h','e','l','l','o','\0'};
    std::cout<<s;
    return 0;
}
*/
//===========================================

//// Question 73: Using array in condition (decay to pointer)
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[1]={0};
    if(a) std::cout<<"Ptr";
    else std::cout<<"Null";
    return 0;
}
*/
//===========================================

//// Question 74: Length via template helper (compile-time)
// What is the output of the following code?
/**
#include <iostream>
template<typename T, size_t N> constexpr size_t len(T (&)[N]){return N;}
int main(){ int a[5]; std::cout<<len(a); return 0; }
*/
 //===========================================

//// Question 75: Using std::array and fill
// What is the output of the following code?
/**
#include <iostream>
#include <array>
int main() {
    std::array<int,3> a;
    a.fill(4);
    for(int x: a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 76: Using multidimensional std::array
// What is the output of the following code?
/**
#include <iostream>
#include <array>
int main() {
    std::array<std::array<int,2>,2> m = {{{1,2},{3,4}}};
    std::cout<<m[1][0];
    return 0;
}
*/
//===========================================

//// Question 77: Using char array and strlen (requires cstring)
// What is the output of the following code?
/**
#include <iostream>
#include <cstring>
int main(){ char s[]="abc"; std::cout<<std::strlen(s); return 0; }
*/
//===========================================

//// Question 78: Array used with range-for and break
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={1,2,3};
    for(int x: a){ if(x==2) break; std::cout<<x<<" "; }
    return 0;
}
*/
//===========================================

//// Question 79: Two arrays element-wise sum
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={1,2}, b[]={3,4}, c[2];
    for(int i=0;i<2;i++) c[i]=a[i]+b[i];
    for(int x:c) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 80: Using array of pointers to strings
// What is the output of the following code?
/**
#include <iostream>
int main() {
    const char* a[] = {"one","two"};
    std::cout<<a[0]<<" "<<a[1];
    return 0;
}
*/
//===========================================

//// Question 81: Using auto with array reference
// What is the output of the following code?
/**
#include <iostream>
int main() {
    int a[]={2,3,4};
    auto &r = a;
    std::cout<<r[1];
    return 0;
}
*/
//===========================================

//// Question 82: Using std::vector assign from array
// What is the output of the following code?
/**
#include <iostream>
#include <vector>
int main(){
    int a[]={1,2,3};
    std::vector<int> v(std::begin(a), std::end(a));
    for(int x:v) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 83: Using multidimensional dynamic allocation (new)
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int **p = new int*[2];
    for(int i=0;i<2;i++) p[i]=new int[2]{i+1,i+2};
    std::cout<<p[1][0];
    for(int i=0;i<2;i++) delete[] p[i];
    delete[] p;
    return 0;
}
*/
//===========================================

//// Question 84: Using placement of braces for single dimension
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[3] = { [0]=5, [2]=7 }; // GCC extension; may not be portable
    std::cout<<a[0]<<" "<<a[1]<<" "<<a[2];
    return 0;
}
*/
//===========================================

//// Question 85: Using std::copy_backward
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main(){
    int a[]={1,2,3,0,0};
    std::copy_backward(a,a+3,a+5);
    for(int x: a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 86: Using std::reverse on array
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main(){
    int a[]={1,2,3};
    std::reverse(a,a+3);
    for(int x:a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 87: Using multidimensional initializer with missing rows
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[3][3] = { {1}, {0,2}, {0} };
    std::cout<<a[1][1]<<" "<<a[0][2];
    return 0;
}
*/
//===========================================

//// Question 88: Array alignment & address difference
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[3];
    std::cout<< (long long)(&a[1]) - (long long)(&a[0]);
    return 0;
}
*/
//===========================================

//// Question 89: Using std::rotate on array
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main(){
    int a[]={1,2,3,4};
    std::rotate(a,a+1,a+4);
    for(int x:a) std::cout<<x<<" ";
    return 0;
}
*/
//===========================================

//// Question 90: Using array of bool specialization (vector<bool> avoided)
// What is the output of the following code?
/**
#include <iostream>
int main(){
    bool a[3]={1,0,1};
    for(int i=0;i<3;i++) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 91: Using two-dimensional char array (array of strings)
// What is the output of the following code?
/**
#include <iostream>
int main(){
    char s[2][4] = {"hi","ok"};
    std::cout<<s[0]<<" "<<s[1];
    return 0;
}
*/
//===========================================

//// Question 92: Zero-length in-between default init verify
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[4]={0,1};
    std::cout<<a[2]<<" "<<a[3];
    return 0;
}
*/
//===========================================

//// Question 93: Using array in lambda capture by reference
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[2]={1,2};
    auto f = [&](){ a[0]=9; };
    f();
    std::cout<<a[0]<<" "<<a[1];
    return 0;
}
*/
//===========================================

//// Question 94: Using const array
// What is the output of the following code?
/**
#include <iostream>
int main(){
    const int a[]={3,4,5};
    std::cout<<a[1];
    return 0;
}
*/
//===========================================

//// Question 95: Using array element as switch case value
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[]={0,1};
    switch(a[1]){ case 1: std::cout<<"One"; break; default: std::cout<<"X";}
    return 0;
}
*/
//===========================================

//// Question 96: Array-of-arrays and pointer arithmetic
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[2][2]={{1,2},{3,4}};
    int *p = &a[0][0];
    std::cout<<*(p+3);
    return 0;
}
*/
//===========================================

//// Question 97: Using std::equal on arrays
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main(){
    int a[]={1,2,3}, b[]={1,2,3};
    std::cout<<std::equal(a,a+3,b);
    return 0;
}
*/
//===========================================

//// Question 98: Using multidimensional with different types (char + int)
// What is the output of the following code?
/**
#include <iostream>
int main(){
    struct R{ char c; int v; };
    R a[2] = {{'a',1},{'b',2}};
    std::cout<<a[1].c<<" "<<a[1].v;
    return 0;
}
*/
//===========================================

//// Question 99: Using std::swap_ranges on arrays
// What is the output of the following code?
/**
#include <iostream>
#include <algorithm>
int main(){
    int a[]={1,2,3,4}, b[]={5,6,7,8};
    std::swap_ranges(a,a+2,b);
    for(int i=0;i<4;i++) std::cout<<a[i]<<" ";
    return 0;
}
*/
//===========================================

//// Question 100: Final simple array check
// What is the output of the following code?
/**
#include <iostream>
int main(){
    int a[3]={1,2,3};
    std::cout<<a[0]<<" "<<a[2];
    return 0;
}
*/
//===========================================