
// Code 1: Local Scope
/**
#include <stdio.h>
void func() {
    int x = 10; // Local variable
    printf("%d\n", x);
}
int main() {
    func();
    // printf("%d", x); // Error: x not visible here
    return 0;
}
*/


//===========================================
// Code 2: Global Scope
/**
#include <stdio.h>
int g = 100; // Global variable
void show() {
    printf("%d\n", g);
}
int main() {
    show();
    printf("%d\n", g);
    return 0;
}
*/
//===========================================
// Code 3: Block Scope
/**
#include <stdio.h>
int main() {
    int x = 5;
    {
        int y = 10; // Block scope
        printf("%d %d\n", x, y);
    }
    // printf("%d", y); // Error: y not visible here
    return 0;
}
*/
//===========================================
// Code 4: Static Scope (static local variable)
 /**
#include <stdio.h>
void counter() {
    static int c = 0;
    c++;
    printf("%d ", c);
}
int main() {
    counter();
    counter();
    counter();
    return 0;
}
*/
//===========================================
// Code 5: auto Storage Class (default for local variables)
/**
#include <stdio.h>
int main() {
    auto int x = 10; // 'auto' is optional
    printf("%d\n", x);
    return 0;
}
*/
//===========================================
// Code 6: register Storage Class
/**
#include <stdio.h>
int main() {
    register int i = 5;
    printf("%d\n", i);
    return 0;
}
*/
//===========================================
// Code 7: static Storage Class (local static)
/**
#include <stdio.h>
void demo() {
    static int x = 0;
    x++;
    printf("%d ", x);
}
int main() {
    demo();
    demo();
    demo();
    return 0;
}
*/
//===========================================
// Code 8: static Storage Class (global static)
/**
#include <stdio.h>
static int g = 50; // Only visible in this file
void show() {
    printf("%d\n", g);
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 9: extern Storage Class (variable defined elsewhere)
/**
// File1.c
#include <stdio.h>
int x = 42;
// File2.c
#include <stdio.h>
extern int x;
int main() {
    printf("%d\n", x);
    return 0;
}
*/
//===========================================
// Code 10: volatile Storage Class
/**
#include <stdio.h>
int main() {
    volatile int flag = 1;
    printf("%d\n", flag);
    return 0;
}
*/


///==================================================

// Code 1: One-Dimensional Array Declaration
/**
#include <stdio.h>
int main() {
    int arr[5];
    printf ("%d", arr);
    return 0;
} */
//===========================================
// Code 2: One-Dimensional Array Initialization
/**
#include <stdio.h>
int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    printf("%d \n", arr[5]);
    return 0;
} */

//===========================================
// Code 3: Print One-Dimensional Array
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5};
    for (int i=0; i<5; i++)
        printf("%d \n", arr[i]);
        return 0;
} */
//===========================================
// Code 4: Input Elements in Array
/**
#include <stdio.h>
int main() {
    int arr[3];
    for (int i = 0; i < 3; i++)
        scanf("%d", &arr[i]);
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
} */

//===========================================
// Code 5: Sum of Array Elements
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5} , sum = 0;
    for (int i = 0; i<5; i++)
    sum += arr[i];
    printf("%d", sum);
    return 0;
}   */

//===========================================
// Code 6: Find Maximum in Array
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, 8 ,55,40, 6 , 3}, max = arr[0];
    for (int i = 1; i<5; i++) 
        if(arr[i] > max ) max = arr[i];
        printf("%d \n", max);
        return 0;
} */

//===========================================
// Code 7: Find Minimum in Array
/**
#include <stdio.h>
int main() {
    int arr[5] = {2,8,1,6,3}, min = arr[0];
    for (int i =1; i<5; i++)
    if (arr[i] < min ) 
    min = arr[i];
    printf("%d", min);
    return 0;
}   */

//===========================================
// Code 8: Reverse Array
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5};
    for (int i=4; i>=0; i--) {
        printf("%d \n", arr[i]);
    }
    return 0;
} */
//===========================================
// Code 9: Copy Array
/**
#include <stdio.h>
int main() {
    int arr1[5] = {1,2,3,4,5}, arr2[5];
    for (int i=0; i<5; i++)
    arr2[i] = arr1[i];

    for(int i=0; i < 5; i++)
    printf("%d \n", arr2[i]);
    return 0;
}   */

//===========================================
// Code 10: Search Element in Array
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5}, x=3, found = 0;
    for (int i = 0; i <5 ; i++)
    if (arr[i] == x) found = 1;
    printf(found ? "Found" : "Not Found");
    return 0; 
} */

//===========================================
// Code 11: Count Occurrences in Array
/**
#include <stdio.h>
int main() {
    int arr[6] = {1,2,3,3,5,2}, x = 3, count = 0;
    for (int i= 0; i<6; i++)
    if (arr[i] == x) count++; {
        printf("%d", count);
    }
    return 0;
}   */

//===========================================
// Code 12: Two-Dimensional Array Declaration

//===========================================
// Code 14: Print Two-Dimensional Array
/**
#include <stdio.h>
int main() {
    int arr[2][3] = {{1,2,3} , {4,5,6}};
    for (int i=0; i<2; i++) 
    for (int j=0; j<3; j++)
    printf("%d \n", arr[i][j]);
    return 0;
} */
//===========================================
// Code 15: Input Elements in 2D Array
/**
#include <stdio.h>
int main() {
    int arr[2][2];
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            scanf("%d", &arr[i][j]);
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            printf("%d ", arr[i][j]);
    return 0;
}
*/

//===========================================
// Code 16: Sum of 2D Array Elements
/**
#include <stdio.h>
int main() {
    int arr[5][5] = {{11,21, 20} , {10,12,21}}, sum = 0;
    for (int i = 0; i < 5; i++)
        for (int j = 0; j < 5; j++ )
        sum += arr[i][j];
        printf("%d", sum);
        return 0;
}   */

//===========================================
// Code 17: Row-wise Sum of 2D Array
/*
#include <stdio.h>
int main() {
    int arr[2][3] = {{1,2,3},{4,5,6}};
    for (int i=0; i< 2; i++) {
    int sum = 0;

    for(int j=0; j<3; j++) 
    sum += arr[i][j];
    printf("%d ", sum);
    }
    return 0;
} */
//===========================================
// Code 18: Column-wise Sum of 2D Array
/**
#include <stdio.h>
int main() {
    int arr[2][3] = {{1, 2, 3}, {4, 5, 6}};
    for (int j = 0; j < 3; j++) {
        int sum = 0;
        for (int i = 0; i < 2; i++)
            sum += arr[i][j];
        printf("%d ", sum);
    }
    return 0;
}
*/

//===========================================
// Code 19: Transpose of 2D Array
/**
#include <stdio.h>
int main() {
    int arr[2][3] = {{1,2,3},{4,5,6}};
    for (int j =0; j < 3; j++)
        for (int i=0; i<2; i++)
            printf(" %d \n", arr[i][j]);
            return 0;
}   */

//===========================================
// Code 22: Print Multi-Dimensional Array
/**
#include <stdio.h>
int main() {
    int arr[2][2][2] = {{{1,2},{3,4}},{{5,6},{7,8}}};
    for (int i=0; i<2; i++)
        for (int j=0; j<2; j++)
            for (int k=0; k<2; k++)
                printf("%d ",arr[i][j][k]);
                return 0;
} */
//===========================================
// Code 23: Array Initialization with Partial Values
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2};
    for (int i=0; i<6; i++)
        printf("%d \n", arr[i]);
        return 0;
} */

//===========================================
// Code 24: Array Initialization with All Zeros
/**
#include <stdio.h>
int main() {
    int arr[5] = {0};
    for (int i=0; i<5; i++)
    printf("%d", arr[i]);
    return 0;
}   */
//===========================================
// Code 25: Array Properties - Sizeof Array
/**
#include <stdio.h>
int main() {
    int arr[10];
    printf(" %lu Byte", sizeof(arr));
    return 0;
    // output 40 due to int is 4 bytes * 10 = 40 bytes
} */
//===========================================
// Code 26: Array Properties - Number of Elements
/**
#include <stdio.h>
int main() {
    int arr[10];
    printf(" %lu ", sizeof(arr)/sizeof(arr[0]));
    return 0;
}   */

//===========================================
// Code 27: Array of Arrays (2D Array)
 /**
#include <stdio.h>
int main() {
    int arr[3][3] = {{1,2,3},{4,5,6},{7,8,9}};
    for (int i=0; i<3; i++) 
        for (int j=0; j<3; j++)
        printf("%d \n", arr[i][j]);
        return 0;
}   */

//===========================================
// Code 28: Array of Pointers
/**
#include <stdio.h>
int main() {
    int a=10, b=20, c=30;
    int *arr[3] = {&a, &b, &c};
    for (int i=0; i<3; i++) {
        printf("%d \n", *arr[i]);
    }
    return 0;
}   */
//===========================================
// Code 29: Passing Array to Function
/**
#include <stdio.h>
void printArr (int arr[], int n) {
    for (int i=0; i<n; i++ ) {
        printf ("%d \n", arr[i]);
    }
}

int main() {
    int arr[3] = {1,2,3};
    printArr (arr, 3);
    return 0;
}   */
//===========================================
// Code 30: Returning Array from Function (static)
/**
#include <stdio.h>
int* getArr() {
    static int arr[3] = {1,2,3};
    return arr;
}
int main() {
    int *p = getArr();
    for (int i=0; i<3; i++) {
        printf("%d \n", p[i]);
    }
            return 0;
}   */
//===========================================
// Code 31: Variable Length Array (VLA)
/**
#include <stdio.h>
int main() {
    int n;
    scanf("%d", &n);
    int arr[n];
    for (int i = 0; i < n; i++)
        arr[i] = i + 1;
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
    return 0;
} */


//===========================================
// Code 32: Sum of Diagonal Elements in 2D Array
/**
#include <stdio.h>
int main() {
    int arr[3][3] = {{1,2,3},{4,5,6},{7,8,9}}, sum = 0;
    for (int i=0; i<3; i++ )
    sum += arr[i][i];
    printf("%d \n", sum);
    return 0;
}   */

//===========================================
// Code 33: Sum of Anti-Diagonal Elements in 2D Array
/**
#include <stdio.h>
int main() {
    int arr[3][3] = {{1,2,3},{4,5,6},{7,8,9}}, sum = 0;
    for (int i = 0; i < 3; i++)
        sum += arr[i][2-i];
    printf("%d", sum);
    return 0;
}
*/
//===========================================
// Code 34: Find Largest Element in 2D Array
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,35}, {3,43}}, max = arr[0][0];
    for (int i=0; i<2; i++ ) 
        for (int j=0; j<2; j++ )
            if (arr[i][j] > max) max = arr[i][j];
            printf("%d", max);
    return 0;
} */
//===========================================
// Code 35: Find Smallest Element in 2D Array
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{2,5}, {3,4}}, min = arr[0][0];
    for (int i=0; i<2; i++) 
        for (int j=0; j<2; j++)
            if (arr[i][j] < min) min = arr[i][j];
            printf("%d", min);
            return 0;
} */

//===========================================
// Code 36: Swap Elements in Array
/**
#include <stdio.h>
int main() {
    int arr[2] = {1,2} ,temp;
    temp = arr[0];
    arr[0] = arr[1];
    arr[0]= temp;
    printf("arr[0] = %d , arr[1] = %d ", arr[0], arr[1]);
    return 0;
}   */

//===========================================
// Code 37: Insert Element in Array
/**
#include <stdio.h>
int main() {
    int arr[6] = {1,2,3,4,5}, n=5,pos = 2, val =99;
    for (int i = n; i > pos; i--)
        arr[i] = arr[i-1];
    arr[pos] = val;
    for (int i = 0; i < n+1; i++)
        printf("%d", arr[i]);
        return 0;
}   */
//===========================================
// Code 38: Delete Element from Array
/**
#include <stdio.h>
int main() {
    int arr[5] = {10, 20 , 30 , 40 , 50}, n=5, pos=2;
    for (int i=pos; i<n-1; i++)
        arr[i] = arr[i+1];
    for (int i=0; i<n-1; i++)
    printf (" %d ", arr[i]);
    return 0;
}   */

//===========================================
// Code 39: Merge Two Arrays
/**
#include <stdio.h>
int main() {
    int arr1[3] = {1,2,3}, arr2[2] = {4,5}, arr3[5];
    for (int i = 0; i<3; i++)
    arr3[i] = arr1[i];

    for (int i=0; i<2; i++ )
    arr3[3+i] = arr2[i];

    for (int i=0; i<5; i++ )
    printf("%d ", arr3[i]);
}   */
//===========================================
// Code 40: Split Array into Two
/**
#include <stdio.h>
int main() {
    int arr[6] = {1,2,3,4,5,6}, arr1[3], arr2[3];
    for (int i=0; i<3; i++ )
        arr1[i] = arr[i];
    
    for (int i=0; i<3; i++ )
    arr2[i] = arr[i+3];

    for (int i=0; i<3; i++ )
    printf("%d \n", arr[i]);

    for (int i=0; i<3; i++ )
   printf("%d \n", arr2[i]);
    return 0;
}   */
//===========================================
// Code 41: Sort Array (Bubble Sort)
/**
#include <stdio.h>
int main() {
    int arr[5] = {5,3,4,1,2}, n=5;
    for (int i=0; i < n-1; i++ )
        for (int j=0; j<n-i-1; j++) // corrected here
            if (arr[j] > arr[j+1] ) {
                int t = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = t;
            }
    for (int i=0; i<n; i++)
        printf("%d ", arr[i]);
    return 0;
}   */ 
//===========================================
// Code 42: Array of Strings (Array of Arrays)
/**
#include <stdio.h>
int main() {
    char arr[3][10] = {"one", "two", "three"};
    for (int i=0; i<3; i++ )
    printf("%s \n", arr[i]);
    return 0;
}   */
//===========================================
// Code 43: Array of Pointers to Strings
/**
#include <stdio.h>
int main() {
    char *arr[3] = {"apple", "banana", "cherry"};
    for (int i = 0; i < 3; i++)
        printf("%s\n", arr[i]);
    return 0;
}

#include <stdio.h>
int main() {
    char *arr = {"apple", "banana", "cherry"};
    for (int i=0; i<3; i++) 
    printf("%s \n", arr[i]);
    return 0;
}
*/
//===========================================
// Code 44: Jagged Array using Array of Pointers
/**
#include <stdio.h>
int main() {
    int r1[] = {1, 2};
    int r2[] = {3, 4, 5};
    int *arr[2] = {r1, r2};
    printf("%d %d\n", arr[0][1], arr[1][2]);
    return 0;
}
*/
//===========================================
// Code 45: Array as Function Argument (2D)
/**
#include <stdio.h>
void print2D(int arr[2][2]) {
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            printf("%d ", arr[i][j]);
}
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    print2D(arr);
    return 0;
}
*/
//===========================================
// Code 46: Array as Function Argument (VLA)
/**
#include <stdio.h>
void printVLA(int n, int arr[n]) {
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
}
int main() {
    int n = 4, arr[4] = {1,2,3,4};
    printVLA(n, arr);
    return 0;
}
*/
//===========================================
// Code 47: Returning Array from Function (VLA, C99)
/**
#include <stdio.h>
int* makeVLA(int n) {
    int *arr = malloc(n * sizeof(int));
    for (int i = 0; i < n; i++)
        arr[i] = i + 1;
    return arr;
}
int main() {
    int n = 3;
    int *arr = makeVLA(n);
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
    free(arr);
    return 0;
}
*/
//===========================================
// Code 48: Array of Structures
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point arr[2] = {{1,2},{3,4}};
    for (int i = 0; i < 2; i++)
        printf("%d %d\n", arr[i].x, arr[i].y);
    return 0;
}
*/
//===========================================
// Code 49: Array of Unions
/**
#include <stdio.h>
union Data { int i; float f; };
int main() {
    union Data arr[2];
    arr[0].i = 10;
    arr[1].f = 3.14;
    printf("%d %.2f", arr[0].i, arr[1].f);
    return 0;
}
*/
//===========================================
// Code 50: Array of Enums
/**
#include <stdio.h>
enum Color { RED, GREEN, BLUE };
int main() {
    enum Color arr[3] = {RED, GREEN, BLUE};
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 51: Array of Typedefs
/**
#include <stdio.h>
typedef int myint;
int main() {
    myint arr[3] = {1, 2, 3};
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 52: Array of Function Pointers
/**
#include <stdio.h>
void f1() { printf("A "); }
void f2() { printf("B "); }
int main() {
    void (*arr[2])() = {f1, f2};
    for (int i = 0; i < 2; i++)
        arr[i]();
    return 0;
}
*/
//===========================================
// Code 53: Array Index Out of Bounds (Undefined Behavior)
/**
#include <stdio.h>
int main() {
    int arr[3] = {1, 2, 3};
    printf("%d", arr[5]); // UB
    return 0;
}
*/
//===========================================
// Code 54: Array Initialization with Loop
/**
#include <stdio.h>
int main() {
    int arr[5];
    for (int i = 0; i < 5; i++)
        arr[i] = i * i;
    for (int i = 0; i < 5; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 55: Array as Global Variable
/**
#include <stdio.h>
int arr[3] = {1, 2, 3};
int main() {
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 56: Array as Static Variable
/**
#include <stdio.h>
void show() {
    static int arr[2] = {5, 10};
    for (int i = 0; i < 2; i++)
        printf("%d ", arr[i]);
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 57: Array with const Elements
/**
#include <stdio.h>
int main() {
    const int arr[3] = {1, 2, 3};
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 58: Array with #define Size
/**
#include <stdio.h>
#define SIZE 4
int main() {
    int arr[SIZE] = {1, 2, 3, 4};
    for (int i = 0; i < SIZE; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 59: Array with typedef Size
/**
#include <stdio.h>
typedef int size_t;
int main() {
    size_t n = 3;
    int arr[3] = {1, 2, 3};
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 60: Array with Negative Index (UB)
/**
#include <stdio.h>
int main() {
    int arr[3] = {1, 2, 3};
    printf("%d", arr[-1]); // UB
    return 0;
}
*/
//===========================================
// Code 61: Array with Pointer Arithmetic
/**
#include <stdio.h>
int main() {
    int arr[3] = {1, 2, 3};
    int *p = arr;
    printf("%d %d", *(p+1), *(p+2));
    return 0;
}
*/
//===========================================
// Code 62: Array with sizeof Operator
/**
#include <stdio.h>
int main() {
    int arr[5];
    printf("%lu", sizeof(arr));
    return 0;
}
*/
//===========================================
// Code 63: Array with memset (needs string.h)
/**
#include <stdio.h>
#include <string.h>
int main() {
    int arr[5];
    memset(arr, 0, sizeof(arr));
    for (int i = 0; i < 5; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 64: Array with memcpy (needs string.h)
/**
#include <stdio.h>
#include <string.h>
int main() {
    int arr1[3] = {1, 2, 3}, arr2[3];
    memcpy(arr2, arr1, sizeof(arr1));
    for (int i = 0; i < 3; i++)
        printf("%d ", arr2[i]);
    return 0;
}
*/
//===========================================
// Code 65: Array with Pointer to Array
/**
#include <stdio.h>
int main() {
    int arr[3] = {1, 2, 3};
    int (*p)[3] = &arr;
    for (int i = 0; i < 3; i++)
        printf("%d ", (*p)[i]);
    return 0;
}
*/
//===========================================
// Code 66: Array with Pointer to Array of Pointers
/**
#include <stdio.h>
int main() {
    int a = 1, b = 2, c = 3;
    int *arr[3] = {&a, &b, &c};
    int **p = arr;
    for (int i = 0; i < 3; i++)
        printf("%d ", **(p+i));
    return 0;
}
*/
//===========================================
// Code 67: Array with Pointer to Array of Arrays
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int (*p)[2] = arr;
    for (int i = 0; i < 2; i++)
        for (int j = 0; j < 2; j++)
            printf("%d ", p[i][j]);
    return 0;
}
*/
//===========================================
// Code 68: Array with Dynamic Memory Allocation
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *arr = malloc(3 * sizeof(int));
    for (int i = 0; i < 3; i++)
        arr[i] = i + 1;
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    free(arr);
    return 0;
}
*/
//===========================================
// Code 69: Array with calloc
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *arr = calloc(3, sizeof(int));
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    free(arr);
    return 0;
}
*/
//===========================================
// Code 70: Array with realloc
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *arr = malloc(2 * sizeof(int));
    arr[0] = 1; arr[1] = 2;
    arr = realloc(arr, 4 * sizeof(int));
    arr[2] = 3; arr[3] = 4;
    for (int i = 0; i < 4; i++)
        printf("%d ", arr[i]);
    free(arr);
    return 0;
}
*/
//===========================================
// Code 71: Array with Freeing Memory
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *arr = malloc(3 * sizeof(int));
    free(arr);
    return 0;
}
*/
//===========================================
// Code 72: Array with Double Pointer
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int **p;
    int *q[2] = {arr[0], arr[1]};
    p = q;
    printf("%d %d", p[0][1], p[1][0]);
    return 0;
}
*/
//===========================================
// Code 73: Array with Pointer to Function
/**
#include <stdio.h>
void print(int x) { printf("%d ", x); }
int main() {
    void (*fptr)(int) = print;
    int arr[3] = {1,2,3};
    for (int i = 0; i < 3; i++)
        fptr(arr[i]);
    return 0;
}
*/
//===========================================
// Code 74: Array with Pointer to Array of Function Pointers
/**
#include <stdio.h>
void f1() { printf("A "); }
void f2() { printf("B "); }
int main() {
    void (*arr[2])() = {f1, f2};
    void (**p)() = arr;
    for (int i = 0; i < 2; i++)
        p[i]();
    return 0;
}
*/
//===========================================
// Code 75: Array with Enum as Index
/**
#include <stdio.h>
enum {A, B, C};
int main() {
    int arr[3] = {10, 20, 30};
    printf("%d", arr[B]);
    return 0;
}
*/
//===========================================
// Code 76: Array with Structure as Element
/**
#include <stdio.h>
struct S { int x; };
int main() {
    struct S arr[2] = {{1}, {2}};
    for (int i = 0; i < 2; i++)
        printf("%d ", arr[i].x);
    return 0;
}
*/
//===========================================
// Code 77: Array with Union as Element
/**
#include <stdio.h>
union U { int x; float y; };
int main() {
    union U arr[2];
    arr[0].x = 5;
    arr[1].y = 3.14;
    printf("%d %.2f", arr[0].x, arr[1].y);
    return 0;
}
*/
//===========================================
// Code 78: Array with Bit-fields in Structure
/**
#include <stdio.h>
struct S { unsigned int x:3; };
int main() {
    struct S arr[2] = {{5}, {7}};
    for (int i = 0; i < 2; i++)
        printf("%u ", arr[i].x);
    return 0;
}
*/
//===========================================
// Code 79: Array with Volatile Keyword
/**
#include <stdio.h>
int main() {
    volatile int arr[2] = {1, 2};
    for (int i = 0; i < 2; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 80: Array with extern Keyword
/**
// File1.c
int arr[2] = {1, 2};
// File2.c
#include <stdio.h>
extern int arr[2];
int main() {
    for (int i = 0; i < 2; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 81: Array with static Keyword
/**
#include <stdio.h>
static int arr[2] = {1, 2};
int main() {
    for (int i = 0; i < 2; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 82: Array with register Keyword (not allowed)
/**
// Not allowed: register int arr[2];
*/
//===========================================
// Code 83: Array with const Pointer
/**
#include <stdio.h>
int main() {
    int arr[2] = {1, 2};
    int *const p = arr;
    printf("%d %d", p[0], p[1]);
    return 0;
}
*/
//===========================================
// Code 84: Array with Pointer to const
/**
#include <stdio.h>
int main() {
    int arr[2] = {1, 2};
    const int *p = arr;
    printf("%d %d", p[0], p[1]);
    return 0;
}
*/
//===========================================
// Code 85: Array with const Array
/**
#include <stdio.h>
int main() {
    const int arr[2] = {1, 2};
    printf("%d %d", arr[0], arr[1]);
    return 0;
}
*/
//===========================================
// Code 86: Array with Macro for Initialization
/**
#include <stdio.h>
#define INIT {1, 2, 3}
int main() {
    int arr[3] = INIT;
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 87: Array with Macro for Size
/**
#include <stdio.h>
#define SIZE 3
int main() {
    int arr[SIZE] = {1, 2, 3};
    for (int i = 0; i < SIZE; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 88: Array with Macro for Access
/**
#include <stdio.h>
#define GET(arr, i) arr[i]
int main() {
    int arr[3] = {1, 2, 3};
    printf("%d", GET(arr, 1));
    return 0;
}
*/
//===========================================
// Code 89: Array with Macro for Loop
/**
#include <stdio.h>
#define LOOP(n) for (int i = 0; i < n; i++)
int main() {
    int arr[3] = {1, 2, 3};
    LOOP(3) printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 90: Array with Macro for Swap
/**
#include <stdio.h>
#define SWAP(a, b) { int t = a; a = b; b = t; }
int main() {
    int arr[2] = {1, 2};
    SWAP(arr[0], arr[1]);
    printf("%d %d", arr[0], arr[1]);
    return 0;
}
*/
//===========================================
// Code 91: Array with Macro for Sum
/**
#include <stdio.h>
#define SUM(arr, n) ({ int s = 0; for (int i = 0; i < n; i++) s += arr[i]; s; })
int main() {
    int arr[3] = {1, 2, 3};
    printf("%d", SUM(arr, 3));
    return 0;
}
*/
//===========================================
// Code 92: Array with Macro for Max
/**
#include <stdio.h>
#define MAX(a, b) ((a) > (b) ? (a) : (b))
int main() {
    int arr[2] = {1, 2};
    printf("%d", MAX(arr[0], arr[1]));
    return 0;
}
*/
//===========================================
// Code 93: Array with Macro for Min
/**
#include <stdio.h>
#define MIN(a, b) ((a) < (b) ? (a) : (b))
int main() {
    int arr[2] = {1, 2};
    printf("%d", MIN(arr[0], arr[1]));
    return 0;
}
*/
//===========================================
// Code 94: Array with Macro for Print
/**
#include <stdio.h>
#define PRINT(arr, n) for (int i = 0; i < n; i++) printf("%d ", arr[i])
int main() {
    int arr[3] = {1, 2, 3};
    PRINT(arr, 3);
    return 0;
}
*/
//===========================================
// Code 95: Array with Macro for Reverse Print
/**
#include <stdio.h>
#define REVERSE(arr, n) for (int i = n-1; i >= 0; i--) printf("%d ", arr[i])
int main() {
    int arr[3] = {1, 2, 3};
    REVERSE(arr, 3);
    return 0;
}
*/
//===========================================
// Code 96: Array with Macro for Copy
/**
#include <stdio.h>
#define COPY(src, dest, n) for (int i = 0; i < n; i++) dest[i] = src[i]
int main() {
    int arr1[3] = {1, 2, 3}, arr2[3];
    COPY(arr1, arr2, 3);
    for (int i = 0; i < 3; i++)
        printf("%d ", arr2[i]);
    return 0;
}
*/
//===========================================
// Code 97: Array with Macro for Find
/**
#include <stdio.h>
#define FIND(arr, n, x) ({ int f = 0; for (int i = 0; i < n; i++) if (arr[i] == x) f = 1; f; })
int main() {
    int arr[3] = {1, 2, 3};
    printf("%d", FIND(arr, 3, 2));
    return 0;
}
*/
//===========================================
// Code 98: Array with Macro for Count
/**
#include <stdio.h>
#define COUNT(arr, n, x) ({ int c = 0; for (int i = 0; i < n; i++) if (arr[i] == x) c++; c; })
int main() {
    int arr[3] = {1, 2, 2};
    printf("%d", COUNT(arr, 3, 2));
    return 0;
}
*/
//===========================================
// Code 99: Array with Macro for Set All
/**
#include <stdio.h>
#define SETALL(arr, n, v) for (int i = 0; i < n; i++) arr[i] = v
int main() {
    int arr[3];
    SETALL(arr, 3, 7);
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 100: Array with Macro for Zero All
/**
#include <stdio.h>
#define ZEROALL(arr, n) for (int i = 0; i < n; i++) arr[i] = 0
int main() {
    int arr[3];
    ZEROALL(arr, 3);
    for (int i = 0; i < 3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/