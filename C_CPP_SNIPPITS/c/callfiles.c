//===========================================
// Code 10: #define Float Macro

/* 
#include <stdio.h>
#define PI 3.14
int main() {
    printf("%.2f", PI);
    return 0;
}
 */
//===========================================
// Code 11: #define String Macro
/**
#include <stdio.h>
#define GREETING "Welcome!"
int main() {
    printf("%s", GREETING);
    return 0;
} */

//===========================================
// Code 12: #define Expression Macro
/**

#include <stdio.h>
#define SQUARE(x) ((x)*(x))
int main() {
    printf("%d", SQUARE(5));
    return 0;
} */
//===========================================
// Code 13: Constant with const keyword (read-only)
/**
#include <stdio.h>
int main() {
    const int a = 10;
    printf("%d", a);
    return 0;
} */
//===========================================
// Code 14: Constant with #define (read-only)
/**
#include <stdio.h>
#define LIMIT 50
int main() {
    //LIMIT = 100;
    printf ("%d", LIMIT);
    return 0;
} */
//===========================================
// Code 15: Variable Declaration without Initialization
/**

#include <stdio.h>
int main() {
    int x;
    x = 25;
    printf("%d",x);
    return 0;
} */
//===========================================
// Code 16: Variable Initialization after Declaration
/**
#include <stdio.h>
int main() {
    int y;
    y = 30;
    printf("%d", y);
    return 0;
} */
//===========================================
// Code 17: Constant Array with const keyword
/**
#include <stdio.h>
int main() {
    const int arr[3] = {1, 2,3 };
    for (int i=0; i<3; i++) {
        printf("%d \n", arr[i]);
    }
    return 0;
} */
//===========================================
// Code 18: Macro for Array Size
/**
#include <stdio.h>
#define N 4 // 0 to 3 size 4
int main() {
    int arr[N] = {10, 20, 30, 40};
    for(int i = 0;  i < N; i++ ) {
        printf("%d \n", arr[i]);
    }
    return 0;
} */

//===========================================
// Code 19: Macro for Mathematical Constant
/**
#include <stdio.h>
#define E 2.71828
int main() {
    printf("%.5f", E);
    return 0;
}
*/
//===========================================
// Code 20: Using const with Pointers
/**
#include <stdio.h>
int main() {
    int x = 5;
    const int *ptr = &x;
    printf("%d", *ptr);
    return 0;
} */

//===========================================
//===========================================
// Code 4: getchar and putchar
/**
#include <stdio.h>
int main() {
    char ch;
    ch = getchar();
    putchar(ch);
    return 0;
}
*/
//===========================================
// Code 5: gets and puts
/**
#include <stdio.h>
int main() {
    char str[50];
    gets(str);
    puts(str);
    return 0;
}
*/
//===========================================
// Code 6: Print integer with format specifier
/**
#include <stdio.h>
int main() {
    int x = 42;
    printf("x = %d\n", x);
    return 0;
}
*/
//===========================================
// Code 7: Print float with format specifier
/**
#include <stdio.h>
int main() {
    float f = 3.14159;
    printf("f = %.2f\n", f);
    return 0;
}
*/
//===========================================
// Code 8: Print double with format specifier
/**
#include <stdio.h>
int main() {
    double d = 2.718281828;
    printf("d = %.5lf\n", d);
    return 0;
}
*/
//===========================================
// Code 9: Print character with format specifier
/**
#include <stdio.h>
int main() {
    char c = 'A';
    printf("c = %c\n", c);
    return 0;
}
*/
//===========================================
// Code 10: Print string with format specifier
/**
#include <stdio.h>
int main() {
    char str[] = "C Language";
    printf("str = %s\n", str);
    return 0;
}
*/
//===========================================
// Code 11: Print hexadecimal integer
/**
#include <stdio.h>
int main() {
    int x = 255;
    printf("Hex: %x\n", x);
    return 0;
}
*/
//===========================================
// Code 12: Print octal integer
/**
#include <stdio.h>
int main() {
    int x = 64;
    printf("Octal: %o\n", x);
    return 0;
}
*/
//===========================================
// Code 13: Print unsigned integer
/**
#include <stdio.h>
int main() {
    unsigned int x = 3000000000U;
    printf("Unsigned: %u\n", x);
    return 0;
}
*/
//===========================================
// Code 14: Print long integer
/**
#include <stdio.h>
int main() {
    long int x = 1234567890L;
    printf("Long: %ld\n", x);
    return 0;
}
*/
//===========================================
// Code 15: Print long long integer
/**
#include <stdio.h>
int main() {
    long long int x = 123456789012345LL;
    printf("Long Long: %lld\n", x);
    return 0;
}
*/
//===========================================
// Code 16: Print pointer address
/**
#include <stdio.h>
int main() {
    int x = 10;
    printf("Address: %p\n", (void*)&x);
    return 0;
}
*/
//===========================================
// Code 17: Print with field width
/**
#include <stdio.h>
int main() {
    int x = 7;
    printf("Value: %5d\n", x);
    return 0;
}
*/
//===========================================
// Code 18: Print with left alignment
/**
#include <stdio.h>
int main() {
    int x = 7;
    printf("Value: %-5dEnd\n", x);
    return 0;
}
*/
//===========================================
// Code 19: Print with leading zeros
/**
#include <stdio.h>
int main() {
    int x = 7;
    printf("Value: %05d\n", x);
    return 0;
}
*/
//===========================================
// Code 20: Print scientific notation
/**
#include <stdio.h>
int main() {
    double d = 12345.6789;
    printf("Scientific: %e\n", d);
    return 0;
}
*/
//===========================================
// Code 21: Print short integer
/**
#include <stdio.h>
int main() {
    short int x = 123;
    printf("Short: %hd\n", x);
    return 0;
}
*/
//===========================================
// Code 22: Print unsigned short integer
/**
#include <stdio.h>
int main() {
    unsigned short int x = 65535;
    printf("Unsigned Short: %hu\n", x);
    return 0;
}
*/
//===========================================
// Code 23: Print unsigned long integer
/**
#include <stdio.h>
int main() {
    unsigned long int x = 4294967295UL;
    printf("Unsigned Long: %lu\n", x);
    return 0;
}
*/
//===========================================
// Code 24: Print unsigned long long integer
/**
#include <stdio.h>
int main() {
    unsigned long long int x = 18446744073709551615ULL;
    printf("Unsigned Long Long: %llu\n", x);
    return 0;
}
*/
//===========================================
// Code 25: Print float with exponential notation
/**
#include <stdio.h>
int main() {
    float f = 0.000123f;
    printf("Exponential: %e\n", f);
    return 0;
}
*/
//===========================================
// Code 26: Print percent sign
/**
#include <stdio.h>
int main() {
    printf("100%% Complete\n");
    return 0;
}
*/
//===========================================
// Code 27: Print multiple values
/**
#include <stdio.h>
int main() {
    int a = 5, b = 10;
    printf("a = %d, b = %d\n", a, b);
    return 0;
}
*/
//===========================================
// Code 28: Print with tab and newline
/**
#include <stdio.h>
int main() {
    printf("Hello\tWorld\n");
    return 0;
}
*/
//===========================================
// Code 29: Print with escape characters
/**
#include <stdio.h>
int main() {
    printf("Line1\nLine2\n");
    return 0;
}
*/
//===========================================
// Code 30: Print and scan all basic types
/**
#include <stdio.h>
int main() {
    int i; float f; char c; char s[20];
    scanf("%d %f %c %s", &i, &f, &c, s);
    printf("i=%d, f=%.2f, c=%c, s=%s\n", i, f, c, s);
    return 0;
}
*/


//=======================================================================
//=======================================================================

// Code 1: Basic while loop
/**
#include <stdio.h>
int main() {
    int i = 0;
    while (i < 5) {
        printf("%d \n", i);
        i++;
    }
    return 0;
} */ 

//===========================================
// Code 2: Basic for loop
/**

#include <stdio.h>
int main() {
    for (int i=0; i<5; i++) {
        printf("%d \n", i);
    }
    return 0;
}  */

//===========================================
// Code 3: Basic do...while loop
/**
#include <stdio.h>
int main() {
    int i = 0;
    do {
        printf("%d ", i);
        i++;
    } while (i < 5);
    return 0;
}
*/

//===========================================
// Code 4: Nested while loops (pattern)
/**
#include <stdio.h>
int main() {
    int i = 1;
    while (i <= 3) {
        int j = 1;
        while (j <= i) {
            printf("*");
            j++;
        }
        printf("\n");
        i++;
    }
    return 0;
}
*/
//===========================================
// Code 5: Nested for loops (multiplication table)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 3; i++) {
        for (int j = 1; j <= 3; j++) {
            printf("%d ", i * j);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 6: Nested do...while loops
/**
#include <stdio.h>
int main() {
    int i = 1;
    do {
        int j = 1;
        do {
            printf("%d ", j);
            j++;
        } while (j <= 3);
        printf("\n");
        i++;
    } while (i <= 3);
    return 0;
}
*/
//===========================================
// Code 7: Infinite while loop (with break)
/**
#include <stdio.h>
int main() {
    int i =0;
    while (1) {
        printf("%d \n", i);
        if (i==4) break;
        i++;
    }
    return 0;
} */

//===========================================
// Code 8: Infinite for loop (with break)
/**
#include <stdio.h>
int main() {
    int i=0;
    for (;;) {
        printf("%d \n", i);
        if (i == 10) break;
        i++;
    }
    return 0;
} */

//===========================================
// Code 9: Infinite do...while loop (with break)
/**
#include <stdio.h>
int main() {
    int i = 0;
    do {
        printf("%d \n", i);
        if (i == 10) break;
        i++;
    } while (1);
    return 0;
} */ 

//===========================================
// Code 10: while loop with continue
/**
#include <stdio.h>
int main() {
    int i=0;
    while (i<5) {
        i++;
        if (i == 3) continue;
        printf("%d \n", i);
    }
    return 0;
} */
//===========================================
// Code 11: for loop with continue
/**
#include <stdio.h>
int main() {
    for (int i = 0; i < 5; i++) {
        if (i == 2) continue;
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 12: do...while loop with continue
/**
#include <stdio.h>
int main() {
    int i = 0;
    do {
        i++;
        if (i == 3) continue;
        printf("%d ", i);
    } while (i < 5);
    return 0;
}
*/
//===========================================
// Code 13: break in nested loops
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 3; i++) {
        for (int j = 1; j <= 3; j++) {
            if (j == 2) break;
            printf("%d ", j);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 14: continue in nested loops
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 3; i++) {
        for (int j = 1; j <= 3; j++) {
            if (j == 2) continue;
            printf("%d ", j);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 15: goto statement (simple jump)
/* 
#include <stdio.h>
int main() {
    printf("Start\n");
    goto end;
    printf("This will not print\n");
end:
    printf("End\n");
    return 0;
} */

//===========================================
// Code 16: goto to break nested loops
/**
#include <stdio.h>
int main() {
    for (int i=1; i <=3; i++) {
        for (int j=1; i<=3; j++) {
            if (j == 2) goto out;
            printf("%d \n", j);
        }
    }
    out: 
    printf("Exited loops:");
    return 0;
}  */

//===========================================
// Code 17: while loop counting down
/**
#include <stdio.h>
int main() {
    int i=5;
    while (i > 0) {
        printf("%d \n", i);
        i--;
    }
    return 0;
} */

//===========================================
// Code 18: for loop counting down
/**
#include <stdio.h>
int main() {
    for (int i = 5; i > 0; i--) {
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 19: do...while loop counting down
/**
#include <stdio.h>
int main() {
    int i = 5;
    do {
        printf("%d ", i);
        i--;
    } while (i > 0);
    return 0;
}
*/
//===========================================
// Code 20: while loop sum of numbers
/**
#include <stdio.h>
int main() {
    int i = 1, sum = 0;
    while (i <= 5) {
        sum += i;
        i++;
    }
    printf("%d", sum);
    return 0;
}
*/
//===========================================
// Code 21: for loop sum of numbers
/**
#include <stdio.h>
int main() {
    int sum = 0;
    for (int i = 1; i <= 5; i++) {
        sum += i;
    }
    printf("%d", sum);
    return 0;
}
*/
//===========================================
// Code 22: do...while loop sum of numbers
/**
#include <stdio.h>
int main() {
    int i = 1, sum = 0;
    do {
        sum += i;
        i++;
    } while (i <= 5);
    printf("%d", sum);
    return 0;
}
*/
//===========================================
// Code 23: while loop even numbers
/**
#include <stdio.h>
int main() {
    int i = 2;
    while (i <= 10) {
        printf("%d ", i);
        i += 2;
    }
    return 0;
}
*/
//===========================================
// Code 24: for loop odd numbers
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 9; i += 2) {
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 25: do...while loop print alphabets
/**
#include <stdio.h>
int main() {
    char ch = 'A';
    do {
        printf("%c ", ch);
        ch++;
    } while (ch <= 'Z');
    return 0;
}
*/
//===========================================
// Code 26: Nested for loops (pattern)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 4; i++) {
        for (int j = 1; j <= i; j++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 27: Nested while loops (reverse pattern)
/**
#include <stdio.h>
int main() {
    int i = 4;
    while (i >= 1) {
        int j = 1;
        while (j <= i) {
            printf("*");
            j++;
        }
        printf("\n");
        i--;
    }
    return 0;
}
*/
//===========================================
// Code 28: Nested do...while loops (number pattern)
/**
#include <stdio.h>
int main() {
    int i = 1;
    do {
        int j = 1;
        do {
            printf("%d ", j);
            j++;
        } while (j <= i);
        printf("\n");
        i++;
    } while (i <= 4);
    return 0;
}
*/
//===========================================
// Code 29: Infinite while loop (user exit)
/**
#include <stdio.h>
int main() {
    char ch;
    while (1) {
        printf("Enter x to exit: ");
        scanf(" %c", &ch);
        if (ch == 'x') break;
    }
    return 0;
}
*/
//===========================================
// Code 30: Infinite for loop (user exit)
/**
#include <stdio.h>
int main() {
    char ch;
    for (;;) {
        printf("Enter x to exit: ");
        scanf(" %c", &ch);
        if (ch == 'x') break;
    }
    return 0;
}
*/
//===========================================
// Code 31: Infinite do...while loop (user exit)
/**
#include <stdio.h>
int main() {
    char ch;
    do {
        printf("Enter x to exit: ");
        scanf(" %c", &ch);
    } while (ch != 'x');
    return 0;
}
*/
//===========================================
// Code 32: while loop with break (find first even)
/**
#include <stdio.h>
int main() {
    int arr[5] = {1 , 3 , 5 , 7 , 2}, i = 0;
    while (i < 20) {
        if (arr[i] % 2 == 0) {
        printf ("First even: %d", arr[i]);
        break;
        }
        i++;
    }
    return 0;

} */

//===========================================
// Code 33: for loop with continue (skip multiples of 3)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i<= 50; i++) {
        if (i % 3 == 0) continue;
        printf ("skip multiples of 3 =  %d \n", i);
    }
    return 0;
} */

//===========================================
// Code 34: do...while loop with break (stop at 5)
/**
#include <stdio.h>
int main() {
    int i = 1;
    do {
        if ( i == 5) break;
        printf ("%d \n", i);
        i++;
    } while (i <= 10);
    return 0;
} */

//===========================================
// Code 35: Nested for loops (multiplication table 1-3)
/**
#include <stdio.h>
int main() {
    for (int i = 0; i <= 20; i++) {  // 
        for (int j = 0; j <=5; j++) {
            printf("%d x %d = %d \n", i,j, i*j);
        }
        printf("\n");
    }
    return 0;
}  */

//===========================================
// Code 36: Nested while loops (sum of matrix)
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,2}, {3,4}}, sum = 0, i = 0, j;
    while (i<2) {
        j = 0;
        while (j<2) {
            sum += arr[i][j];
            j++;
        }
        i++;
    }
    printf("%d", sum);
    return 0;
} */
//===========================================
// Code 37: Nested do...while loops (print matrix)
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1 , 2},{3 , 4}}, i = 0, j;
    do {
        j = 0;
        do {
            printf(" %d ", arr[i][j]);
            j++;
        } while (j < 2);
        printf("\n");
        i++;
    } while (i < 2);
    return 0;
}  */

//===========================================
// Code 38: for loop with goto (skip 5)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) goto skip;
        printf(" loop %d \n", i);
        continue;
    skip: 
        printf (" 5 is Skipped \n");
        continue;
    }
    return 0;
}  */

//===========================================
// Code 39: while loop with goto (exit on 7)
/*
#include <stdio.h>
int main() {
    int i = 1;
    while (i <= 10) {
        if (i == 7) goto end;
        printf ("%d \n",i);
        i++;
    }
    end: 
    printf("%d \n", i);
    return 0;
}  */

//===========================================
// Code 40: do...while loop with goto (print till 3)
/**
#include <stdio.h>
int main() {
    int i = 1;
    do {
        if (i > 10) goto done;
        printf(" loop %d \n", i);
        i++;
    } while (1);
    done:
    printf("Done");
    return 0;
} */

//===========================================
// Code 41: for loop with multiple variables
/**
#include <stdio.h>
int main() {
    for (int i = 0, j = 20; i <= j; i++, j--) {
        printf("i = %d  ||  j = %d\n", i,j);
    }
    return 0;
}   */

//===========================================
// Code 42: while loop with decrement
/**
#include <stdio.h>
int main() {
    int i = 10;
    while (i > 0) {
        printf ("loop %d \n", i);
        i--;
    }
    return 0;
} */
//===========================================
// Code 43: for loop with no body
/**
#include <stdio.h>
int main() {
    int i;
    for (i = 0; i < 10; printf("%d \n", i), i++);
    return 0;
}  */
//===========================================
// Code 44: while loop with no body
/**
#include <stdio.h>
int main() {
    int i = 0;
    while (i++ < 10)
        ;
    printf("%d \n", i);
    return 0;
} */ 

//===========================================
// Code 45: do...while loop with no body
/**
#include <stdio.h>
int main() {
    int i = 0;
    do ; while (++i < 5);
    printf ("%d \n", i);
    return 0;
} */
    

//===========================================
// Code 46: Nested for loops (triangle pattern)
/**
#include <stdio.h>
int main() {
    for (int i = 0; i <= 5; i++) {
        for (int j = 0; j <= i; j++) {
            printf(" * ");
        }
        printf("\n");
    }
    return 0;
} */

//===========================================
// Code 47: Nested for loops (reverse triangle)
/**
#include <stdio.h>
int main() {
    for (int i = 5; i >= 1; i--) {
        for (int j = 1; j <= i; j++) {
            printf (" * ");
        }
        printf("\n");
    }
    return 0;
}   */

//===========================================
// Code 48: Nested for loops (number pyramid)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i<= 10; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%d", j);
        }
        printf("\n");
    }
    return 0;
} */

//===========================================
// Code 49: Nested for loops (alphabet pattern)
/**
#include <stdio.h>
int main() {
    char ch = 'A';
    for (int i = 1; i <= 5; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%c ", ch++);
        }
        printf("\n");
    }
    return 0;
} */
//===========================================
// Code 50: Infinite while loop (print forever)
/**
#include <stdio.h>
int main() {
    while (1) {
        printf("Looping\n");
    }
    return 0;
} */

//===========================================
// Code 51: Infinite for loop (print forever)
/**
#include <stdio.h>
int main() {
    for (;;) {
        printf("Looping\n");
    }
    return 0;
}
*/
//===========================================
// Code 52: Infinite do...while loop (print forever)
/**
#include <stdio.h>
int main() {
    do {
        printf("Looping\n");
    } while (1);
    return 0;
}
*/
//===========================================
// Code 53: while loop with user break
/**
#include <stdio.h>
int main() {
    int n;
    while (1) {
            printf("Enter a Number (0 to exit): ");
            scanf("%d" , &n);
            if (n == 0) break;
            printf("You entered : %d\n", n);
    }
    return 0;
}   */

//===========================================
// Code 54: for loop with user break
/**
#include <stdio.h>
int main() {
    int n;
    for (;;) {
        printf("Enter A Number (0 to exit): ");
        scanf("%d", &n);
        if ( n == 0) break;
        printf("You entered: %d\n", n);
    }
    return 0;
} */

//===========================================
// Code 55: do...while loop with user break
/**
#include <stdio.h>
int main() {
    int n;
    do {
        printf("Enter a number (0 to exit): ");
        scanf("%d", &n);
        if (n == 0) break;
        printf("You entered: %d\n", n);
    } while (1);
    return 0;
}
*/
//===========================================
// Code 56: while loop with continue (skip even)
/**
#include <stdio.h>
int main() {
    int i = 0;
    while (i < 10) {
        i++;
        if (i % 2 == 0) continue;
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 57: for loop with continue (skip odd)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 10; i++) {
        if (i % 2 != 0) continue;
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 58: do...while loop with continue (skip 5)
/**
#include <stdio.h>
int main() {
    int i = 0;
    do {
        i++;
        if (i == 5) continue;
        printf("%d ", i);
    } while (i < 10);
    return 0;
}
*/
//===========================================
// Code 59: Nested for loops (hollow square)
/* 
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            if (i == 1 || i == n || j == 1 || j == n)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    return 0;
} */

//===========================================
// Code 60: Nested for loops (diamond pattern)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = i; j < n; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++)
            printf("*");
        printf("\n");
    }
    for (int i = n-1; i >= 1; i--) {
        for (int j = n; j > i; j--)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++)
            printf("*");
        printf("\n");
    }
    return 0;
}
*/

//===========================================
// Code 61: while loop with multiple variables
/**
#include <stdio.h>
int main() {
    int i = 0, j = 10;
    while (i < j) {
        printf("%d %d\n", i, j);
        i++; j--;
    }
    return 0;
}
*/
//===========================================
// Code 62: for loop with step size 2
/* 
#include <stdio.h>
int main() {
    for (int i = 0; i < 100; i += 3) {
        printf(" Three Multiples %d \n", i);
    }
    return 0;
}  */

//===========================================
// Code 63: while loop with step size 3
/**
#include <stdio.h>
int main() {
    int i = 0;
    while (i < 100) {
        printf("%d \n", i);
        i += 3;
    }
    return 0;
}  */

//===========================================
// Code 64: for loop with negative step
/**
#include <stdio.h>
int main() {
    for (int i = 100; i > 0; i -= 2) {
        printf("%d \n", i);
    }
    return 0;
}  */

//===========================================
// Code 65: while loop with negative step
/**
#include <stdio.h>
int main() {
    int i = 100;
    while (i > 0) {
        printf("%d \n",i);
        i -= 3;
    }
    return 0;
} */

//===========================================
// Code 66: Nested for loops (checkerboard)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1 ; j <= n; j++) {
            if ((i+j) % 2 == 0)
                    printf("1");
            else    
                    printf("0");
        }
        printf("\n");
    }
    return 0;
}   */

//===========================================
// Code 67: Nested for loops (multiplication table 1-5)
/**
#include <stdio.h>
int main() {
    for (int i =1; i <= 5; i++) {
        for (int j =1; j<= 5; j++) {
            printf("%2d", i*j);
        }
        printf("\n");
    }
    return 0;
} */

//===========================================
// Code 68: while loop with scanf (sum until 0)
/**
#include <stdio.h>
int main() {
    int n, sum = 0;
    while (1) {
        scanf("%d", &n);
        if (n == 0) break;
        sum += n;
    }
    printf("%d", sum);
    return 0;
}
*/
//===========================================
// Code 69: for loop with scanf (sum n numbers)
/**
#include <stdio.h>
int main() {
    int n, sum = 0, x;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &x);
        sum += x;
    }
    printf("%d", sum);
    return 0;
}
*/
//===========================================
// Code 70: do...while loop with scanf (sum until 0)
/**
#include <stdio.h>
int main() {
    int n, sum = 0;
    do {
        scanf("%d", &n);
        sum += n;
    } while (n != 0);
    printf("%d", sum);
    return 0;
}
*/
//===========================================
// Code 71: Nested for loops (Pascal's triangle)
/**
#include <stdio.h>
int main() {
    int n = 5, coef;
    for (int i = 0; i < n; i++) {
        for (int space = 1; space <= n-i; space++)
            printf(" ");
        for (int j = 0; j <= i; j++) {
            if (j == 0 || i == 0)
                coef = 1;
            else
                coef = coef * (i - j + 1) / j;
            printf("%4d", coef);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 72: Nested for loops (Floyd's triangle)
/**
#include <stdio.h>
int main() {
    int n = 5, num = 1;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%d ", num++);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 73: for loop with break (find first negative)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, 4, -1, 5, 7};
    for (int i = 0; i < 5; i++) {
        if (arr[i] < 0) {
            printf("First negative: %d", arr[i]);
            break;
        }
    }
    return 0;
}
*/
//===========================================
// Code 74: while loop with break (find first multiple of 7)
/**
#include <stdio.h>
int main() {
    int arr[5] = {3, 5, 14, 8, 9}, i = 0;
    while (i < 5) {
        if (arr[i] % 7 == 0) {
            printf("First multiple of 7: %d", arr[i]);
            break;
        }
        i++;
    }
    return 0;
}
*/
//===========================================
// Code 75: do...while loop with break (find first > 10)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, 4, 11, 5, 7}, i = 0;
    do {
        if (arr[i] > 10) {
            printf("First > 10: %d", arr[i]);
            break;
        }
        i++;
    } while (i < 5);
    return 0;
}
*/
//===========================================
// Code 76: for loop with continue (skip negative)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, -4, 3, -1, 5};
    for (int i = 0; i < 5; i++) {
        if (arr[i] < 0) continue;
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 77: while loop with continue (skip zero)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, 0, 3, 0, 5}, i = 0;
    while (i < 5) {
        if (arr[i] == 0) {
            i++;
            continue;
        }
        printf("%d ", arr[i]);
        i++;
    }
    return 0;
}
*/
//===========================================
// Code 78: do...while loop with continue (skip odd)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, 3, 4, 5, 6}, i = 0;
    do {
        if (arr[i] % 2 != 0) {
            i++;
            continue;
        }
        printf("%d ", arr[i]);
        i++;
    } while (i < 5);
    return 0;
}
*/
//===========================================
// Code 79: goto for error handling
/**
#include <stdio.h>
int main() {
    int n;
    scanf("%d", &n);
    if (n < 0) goto error;
    printf("Positive number: %d", n);
    return 0;
error:
    printf("Negative number entered!");
    return 1;
}
*/
//===========================================
// Code 80: goto for retry input
/**
#include <stdio.h>
int main() {
    int n;
retry:
    printf("Enter a positive number: ");
    scanf("%d", &n);
    if (n < 0) goto retry;
    printf("You entered: %d", n);
    return 0;
}
*/
//===========================================
// Code 81: Nested for loops (right triangle numbers)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%d ", j);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 82: Nested for loops (right triangle stars)
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        for (int j = 1; j <= i; j++) {
            printf("* ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 83: Nested for loops (inverted right triangle)
/**
#include <stdio.h>
int main() {
    for (int i = 5; i >= 1; i--) {
        for (int j = 1; j <= i; j++) {
            printf("* ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 84: Nested for loops (pyramid)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n-i; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++)
            printf("*");
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 85: Nested for loops (reverse pyramid)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = n; i >= 1; i--) {
        for (int j = 1; j <= n-i; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++)
            printf("*");
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 86: Nested for loops (diamond numbers)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n-i; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++)
            printf("%d", i);
        printf("\n");
    }
    for (int i = n-1; i >= 1; i--) {
        for (int j = 1; j <= n-i; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++)
            printf("%d", i);
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 87: Nested for loops (hollow pyramid)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n-i; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++) {
            if (j == 1 || j == 2*i-1 || i == n)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 88: Nested for loops (hollow diamond)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n-i; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++) {
            if (j == 1 || j == 2*i-1)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    for (int i = n-1; i >= 1; i--) {
        for (int j = 1; j <= n-i; j++)
            printf(" ");
        for (int j = 1; j <= 2*i-1; j++) {
            if (j == 1 || j == 2*i-1)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 89: for loop with break (find first odd)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, 4, 6, 7, 8};
    for (int i = 0; i < 5; i++) {
        if (arr[i] % 2 != 0) {
            printf("First odd: %d", arr[i]);
            break;
        }
    }
    return 0;
}
*/
//===========================================
// Code 90: while loop with continue (skip negative)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, -3, 4, -1, 5}, i = 0;
    while (i < 5) {
        if (arr[i] < 0) {
            i++;
            continue;
        }
        printf("%d ", arr[i]);
        i++;
    }
    return 0;
}
*/
//===========================================
// Code 91: do...while loop with continue (skip zero)
/**
#include <stdio.h>
int main() {
    int arr[5] = {2, 0, 4, 0, 6}, i = 0;
    do {
        if (arr[i] == 0) {
            i++;
            continue;
        }
        printf("%d ", arr[i]);
        i++;
    } while (i < 5);
    return 0;
}
*/
//===========================================
// Code 92: goto for skipping code
/**
#include <stdio.h>
int main() {
    int i = 0;
    if (i == 0) goto skip;
    printf("This will not print\n");
skip:
    printf("Skipped to here\n");
    return 0;
}
*/
//===========================================
// Code 93: goto for loop exit
/**
#include <stdio.h>
int main() {
    for (int i = 0; i < 10; i++) {
        if (i == 5) goto end;
        printf("%d ", i);
    }
end:
    printf("Exited loop");
    return 0;
}
*/
//===========================================
// Code 94: Nested for loops (rectangle)
/**
#include <stdio.h>
int main() {
    int rows = 3, cols = 5;
    for (int i = 1; i <= rows; i++) {
        for (int j = 1; j <= cols; j++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 95: Nested for loops (checkerboard numbers)
/**
#include <stdio.h>
int main() {
    int n = 4;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            printf("%d ", (i+j)%2);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 96: Nested for loops (border pattern)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            if (i == 1 || i == n || j == 1 || j == n)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 97: Nested for loops (X pattern)
/**
#include <stdio.h>
int main() {
    int n = 5;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            if (i == j || j == n-i+1)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 98: Nested for loops (number square)
/**
#include <stdio.h>
int main() {
    int n = 4;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            printf("%d ", i);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 99: Nested for loops (number rectangle)
/**
#include <stdio.h>
int main() {
    int rows = 3, cols = 5;
    for (int i = 1; i <= rows; i++) {
        for (int j = 1; j <= cols; j++) {
            printf("%d ", j);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 100: Nested for loops (alphabet rectangle)
/**
#include <stdio.h>
int main() {
    int rows = 3, cols = 5;
    for (int i = 1; i <= rows; i++) {
        char ch = 'A';
        for (int j = 1; j <= cols; j++) {
            printf("%c ", ch++);
        }
        printf("\n");
    }
    return 0;
}
*/


//=======================================================================
// Code 1: Local Scope Example
/**
#include <stdio.h>
void func() {
    int x = 10; // Local variable
    printf("x = %d\n", x);
}
int main() {
    func();
    // printf("%d", x); // Error: x not visible here
    return 0;
}
*/
//===========================================
// Code 2: Global Scope Example
/**
#include <stdio.h>
int g = 100; // Global variable
void show() {
    printf("g = %d\n", g);
}
int main() {
    show();
    printf("g = %d\n", g);
    return 0;
}
*/
//===========================================
// Code 3: Block Scope Example
/**
#include <stdio.h>
int main() {
    int x = 5;
    {
        int y = 10;
        printf("x = %d, y = %d\n", x, y);
    }
    // printf("%d", y); // Error: y not visible here
    return 0;
}
*/
//===========================================
// Code 4: Static Scope Example
/**
#include <stdio.h>
void counter() {
    static int count = 0;
    count++;
    printf("count = %d\n", count);
}
int main() {
    counter();
    counter();
    counter();
    return 0;
}
*/
//===========================================
// Code 5: auto Storage Class
/**
#include <stdio.h>
int main() {
    auto int x = 10; // auto is default for local variables
    printf("x = %d\n", x);
    return 0;
}
*/
//===========================================
// Code 6: register Storage Class
/**
#include <stdio.h>
int main() {
    register int i;
    for (i = 0; i < 5; i++)
        printf("%d ", i);
    return 0;
}
*/
//===========================================
// Code 7: static Storage Class in Function
/**
#include <stdio.h>
void demo() {
    static int x = 0;
    x++;
    printf("x = %d\n", x);
}
int main() {
    demo();
    demo();
    return 0;
}
*/
//===========================================
// Code 8: static Storage Class in File Scope
/**
#include <stdio.h>
static int x = 50; // File scope, not visible in other files
int main() {
    printf("x = %d\n", x);
    return 0;
}
*/
//===========================================
// Code 9: extern Storage Class
/**
#include <stdio.h>
int x = 10;
void print();
int main() {
    extern int x;
    print();
    return 0;
}
void print() {
    printf("x = %d\n", x);
}
*/
//===========================================
// Code 10: extern Variable in Multiple Files
/**
// File1.c
#include <stdio.h>
int x = 20;

// File2.c
extern int x;
int main() {
    printf("x = %d\n", x);
    return 0;
}
*/
//===========================================
// Code 11: volatile Storage Class
/**
#include <stdio.h>
int main() {
    volatile int x = 5;
    printf("x = %d\n", x);
    return 0;
}
*/
//===========================================
// Code 12: Local vs Global Variable
/**
#include <stdio.h>
int x = 100;
int main() {
    int x = 10;
    printf("Local x = %d\n", x);
    printf("Global x = %d\n", ::x); // Not valid in C, only in C++
    return 0;
}
*/
//===========================================
// Code 13: Shadowing Global Variable
/**
#include <stdio.h>
int x = 100;
int main() {
    int x = 50;
    printf("x = %d\n", x); // Prints local x
    return 0;
}
*/
//===========================================
// Code 14: Static Variable Retains Value
/**
#include <stdio.h>
void fun() {
    static int x = 0;
    x++;
    printf("%d ", x);
}
int main() {
    fun();
    fun();
    fun();
    return 0;
}
*/
//===========================================
// Code 15: auto Variable Re-initialized
/**
#include <stdio.h>
void fun() {
    auto int x = 0;
    x++;
    printf("%d ", x);
}
int main() {
    fun();
    fun();
    fun();
    return 0;
}
*/
//===========================================
// Code 16: register Variable for Fast Access
/**
#include <stdio.h>
int main() {
    register int i;
    for (i = 0; i < 3; i++)
        printf("%d ", i);
    return 0;
}
*/
//===========================================
// Code 17: extern Variable Declaration
/**
#include <stdio.h>
extern int x;
int main() {
    printf("x = %d\n", x);
    return 0;
}
// int x = 10; // Should be defined in another file
*/
//===========================================
// Code 18: static Variable in Block Scope
/**
#include <stdio.h>
int main() {
    {
        static int x = 1;
        printf("%d\n", x);
        x++;
    }
    {
        static int x = 10;
        printf("%d\n", x);
        x++;
    }
    return 0;
}
*/
//===========================================
// Code 19: volatile with Hardware Register (concept)
/**
#include <stdio.h>
int main() {
    volatile int *ptr = (int*)0x1234; // Example hardware address
    // *ptr = 10; // Simulated hardware write
    return 0;
}
*/
//===========================================
// Code 20: static Variable in Multiple Functions
/**
#include <stdio.h>
void fun1() {
    static int x = 1;
    printf("fun1: %d\n", x++);
}
void fun2() {
    static int x = 100;
    printf("fun2: %d\n", x++);
}
int main() {
    fun1();
    fun2();
    fun1();
    fun2();
    return 0;
}
*/
//===========================================
// Code 21: Global Variable Modified in Function
/**
#include <stdio.h>
int g = 0;
void inc() { g++; }
int main() {
    inc();
    printf("%d\n", g);
    return 0;
}
*/
//===========================================
// Code 22: Local Variable Hides Global Variable
/**
#include <stdio.h>
int x = 20;
int main() {
    int x = 5;
    printf("%d\n", x); // Prints 5
    return 0;
}
*/
//===========================================
// Code 23: static Variable Lifetime
/**
#include <stdio.h>
void fun() {
    static int x = 0;
    x++;
    printf("%d ", x);
}
int main() {
    for (int i = 0; i < 5; i++)
        fun();
    return 0;
}
*/
//===========================================
// Code 24: auto Variable Lifetime
/**
#include <stdio.h>
void fun() {
    auto int x = 0;
    x++;
    printf("%d ", x);
}
int main() {
    for (int i = 0; i < 5; i++)
        fun();
    return 0;
}
*/
//===========================================
// Code 25: register Variable Address Error
/**
#include <stdio.h>
int main() {
    register int x = 10;
    // printf("%p", &x); // Error: address of register variable
    return 0;
}
*/
//===========================================
// Code 26: extern Variable Usage
/**
// File1.c
int x = 10;

// File2.c
#include <stdio.h>
extern int x;
int main() {
    printf("%d\n", x);
    return 0;
}
*/
//===========================================
// Code 27: static Variable Not Visible Outside File
/**
// file1.c
static int x = 10;

// file2.c
#include <stdio.h>
extern int x; // Error: x not visible here
int main() {
    printf("%d\n", x);
    return 0;
}
*/
//===========================================
// Code 28: volatile Variable with Loop
/**
#include <stdio.h>
int main() {
    volatile int flag = 0;
    while (!flag) {
        // Wait for flag to change (e.g., by interrupt)
        break; // For demo
    }
    printf("Exited loop\n");
    return 0;
}
*/
//===========================================
// Code 29: static Variable in Recursive Function
/**
#include <stdio.h>
void recur(int n) {
    static int count = 0;
    if (n == 0) return;
    count++;
    printf("%d ", count);
    recur(n-1);
}
int main() {
    recur(3);
    return 0;
}
*/
//===========================================
// Code 30: Global, Local, Static, and Extern Together
/**
#include <stdio.h>
int g = 1;
static int s = 2;
extern int e;
void fun() {
    int l = 3;
    printf("g=%d s=%d l=%d e=%d\n", g, s, l, e);
}
int e = 4;
int main() {
    fun();
    return 0;
}
*/

//===========================================
////========🔹 13. **Structures**
//===========================================

// Code 1: Structure Declaration and Initialization
/**
#include <stdio.h>
struct Point {
    int x;
    int y;
};
int main() {
    struct Point p = {10, 20}; // Structure initialization
    printf("x=%d, y=%d\n", p.x, p.y); // Access members
    return 0;
}
*/
//===========================================
// Code 2: Accessing Members using Dot Operator
/**
#include <stdio.h>
struct Student {
    int roll;
    char grade;
};
int main() {
    struct Student s;
    s.roll = 101; // Using dot operator
    s.grade = 'A';
    printf("Roll=%d, Grade=%c\n", s.roll, s.grade);
    return 0;
}
*/
//===========================================
// Code 3: Accessing Members using Arrow Operator
/**
#include <stdio.h>
struct Point {
    int x, y;
};
int main() {
    struct Point p = {5, 6};
    struct Point *ptr = &p;
    printf("%d %d\n", ptr->x, ptr->y); // Using arrow operator
    return 0;
}
*/
//===========================================
// Code 4: Array of Structures
/**
#include <stdio.h>
struct Book {
    char title[20];
    int pages;
};
int main() {
    struct Book books[2] = {{"C Book", 200}, {"DSA", 300}};
    for(int i=0; i<2; i++)
        printf("%s %d\n", books[i].title, books[i].pages);
    return 0;
}
*/
//===========================================
// Code 5: Structure with Functions (pass by value)
/**
#include <stdio.h>
struct Point {
    int x, y;
};
void print(struct Point p) {
    printf("x=%d, y=%d\n", p.x, p.y);
}
int main() {
    struct Point pt = {1, 2};
    print(pt); // Pass structure to function
    return 0;
}
*/
//===========================================
// Code 6: Structure with Functions (pass by pointer)
/**
#include <stdio.h>
struct Point {
    int x, y;
};
void move(struct Point *p, int dx, int dy) {
    p->x += dx;
    p->y += dy;
}
int main() {
    struct Point pt = {0, 0};
    move(&pt, 3, 4); // Pass pointer to structure
    printf("%d %d\n", pt.x, pt.y);
    return 0;
}
*/
//===========================================
// Code 7: Nested Structures
/**
#include <stdio.h>
struct Date {
    int day, month, year;
};
struct Student {
    char name[20];
    struct Date dob; // Nested structure
};
int main() {
    struct Student s = {"Alice", {1, 1, 2000}};
    printf("%s %02d-%02d-%d\n", s.name, s.dob.day, s.dob.month, s.dob.year);
    return 0;
}
*/
//===========================================
// Code 8: Self-referential Structure (for Linked List)
/**
#include <stdio.h>
struct Node {
    int data;
    struct Node *next; // Pointer to same structure type
};
int main() {
    struct Node n1 = {10, NULL};
    struct Node n2 = {20, NULL};
    n1.next = &n2;
    printf("%d -> %d\n", n1.data, n1.next->data);
    return 0;
}
*/
//===========================================
// Code 9: Lookup Table using Array of Structures
/**
#include <stdio.h>
struct Command {
    char name[10];
    int code;
};
int main() {
    struct Command cmds[] = {{"ADD", 1}, {"SUB", 2}, {"MUL", 3}};
    for(int i=0; i<3; i++)
        printf("%s: %d\n", cmds[i].name, cmds[i].code);
    return 0;
}
*/
//===========================================
// Code 10: Structure Padding Example
/**
#include <stdio.h>
struct A {
    char c;
    int i;
};
int main() {
    printf("Size: %zu\n", sizeof(struct A)); // Padding may increase size
    return 0;
}
*/
//===========================================
// Code 11: Structure Packing using pragma pack
/**
#include <stdio.h>
#pragma pack(1)
struct B {
    char c;
    int i;
};
int main() {
    printf("Packed Size: %zu\n", sizeof(struct B)); // No padding
    return 0;
}
*/
//===========================================
// Code 12: Anonymous Structure Declaration
/**
#include <stdio.h>
struct {
    int x, y;
} pt;
int main() {
    pt.x = 5; pt.y = 6;
    printf("%d %d\n", pt.x, pt.y);
    return 0;
}
*/
//===========================================
// Code 13: Structure Initialization with Designators
/**
#include <stdio.h>
struct Point {
    int x, y;
};
int main() {
    struct Point p = {.y = 10, .x = 5}; // Designated initializers
    printf("%d %d\n", p.x, p.y);
    return 0;
}
*/
//===========================================
// Code 14: Array of Structures - Input and Output
/**
#include <stdio.h>
struct Student {
    char name[20];
    int marks;
};
int main() {
    struct Student arr[2];
    for(int i=0; i<2; i++) {
        scanf("%s %d", arr[i].name, &arr[i].marks);
    }
    for(int i=0; i<2; i++)
        printf("%s %d\n", arr[i].name, arr[i].marks);
    return 0;
}
*/
//===========================================
// Code 15: Structure Assignment
/**
#include <stdio.h>
struct Point {
    int x, y;
};
int main() {
    struct Point a = {1, 2}, b;
    b = a; // Structure assignment
    printf("%d %d\n", b.x, b.y);
    return 0;
}
*/
//===========================================
// Code 16: Structure as Function Return Type
/**
#include <stdio.h>
struct Point {
    int x, y;
};
struct Point makePoint(int x, int y) {
    struct Point p = {x, y};
    return p;
}
int main() {
    struct Point pt = makePoint(3, 4);
    printf("%d %d\n", pt.x, pt.y);
    return 0;
}
*/
//===========================================
// Code 17: Pointer to Structure Array
/**
#include <stdio.h>
struct Point {
    int x, y;
};
int main() {
    struct Point arr[2] = {{1,2},{3,4}};
    struct Point *p = arr;
    printf("%d %d\n", (p+1)->x, (p+1)->y); // Access second element
    return 0;
}
*/
//===========================================
// Code 18: Structure with Array Member
/**
#include <stdio.h>
struct Student {
    char name[20];
    int marks[3];
};
int main() {
    struct Student s = {"Bob", {80, 85, 90}};
    printf("%s %d\n", s.name, s.marks[1]);
    return 0;
}
*/
//===========================================
// Code 19: Structure with Structure Member
/**
#include <stdio.h>
struct Address {
    char city[20];
    int pin;
};
struct Student {
    char name[20];
    struct Address addr;
};
int main() {
    struct Student s = {"Eve", {"Delhi", 110001}};
    printf("%s %s %d\n", s.name, s.addr.city, s.addr.pin);
    return 0;
}
*/
//===========================================
// Code 20: Structure Pointer as Function Argument
/**
#include <stdio.h>
struct Point {
    int x, y;
};
void print(const struct Point *p) {
    printf("%d %d\n", p->x, p->y);
}
int main() {
    struct Point pt = {7, 8};
    print(&pt);
    return 0;
}
*/
//===========================================
// Code 21: Array of Pointers to Structures
/**
#include <stdio.h>
struct Point {
    int x, y;
};
int main() {
    struct Point a = {1,2}, b = {3,4};
    struct Point *arr[2] = {&a, &b};
    printf("%d %d\n", arr[1]->x, arr[1]->y);
    return 0;
}
*/
//===========================================
// Code 22: Structure with Function Pointer Member
/**
#include <stdio.h>
struct MathOp {
    int (*op)(int, int);
};
int add(int a, int b) { return a + b; }
int main() {
    struct MathOp m;
    m.op = add;
    printf("%d\n", m.op(2, 3)); // Prints 5
    return 0;
}
*/
//===========================================
// Code 23: Structure with Bit Fields
/**
#include <stdio.h>
struct Flags {
    unsigned int a:1;
    unsigned int b:2;
};
int main() {
    struct Flags f = {1, 3};
    printf("%u %u\n", f.a, f.b);
    return 0;
}
*/
//===========================================
// Code 24: Structure with Enum Member
/**
#include <stdio.h>
enum Color { RED, GREEN, BLUE };
struct Box {
    int size;
    enum Color color;
};
int main() {
    struct Box b = {10, GREEN};
    printf("%d %d\n", b.size, b.color);
    return 0;
}
*/
//===========================================
// Code 25: Structure with Typedef
/**
#include <stdio.h>
typedef struct {
    int x, y;
} Point;
int main() {
    Point p = {4, 5};
    printf("%d %d\n", p.x, p.y);
    return 0;
}
*/
//===========================================
// Code 26: Anonymous Structure Array
/**
#include <stdio.h>
struct {
    int id;
    char name[10];
} arr[2] = {{1, "A"}, {2, "B"}};
int main() {
    for(int i=0; i<2; i++)
        printf("%d %s\n", arr[i].id, arr[i].name);
    return 0;
}
*/
//===========================================
// Code 27: Structure Comparison (Manual)
 /**
#include <stdio.h>
#include <string.h>
struct Student {
    char name[10];
    int marks;
};
int main() {
    struct Student a = {"Tom", 90}, b = {"Tom", 90};
    if(strcmp(a.name, b.name)==0 && a.marks==b.marks)
        printf("Equal\n");
    else
        printf("Not Equal\n");
    return 0;
}
*/
//===========================================
// Code 28: Structure Array Sorting by Member
/**
#include <stdio.h>
#include <string.h>
struct Student {
    char name[10];
    int marks;
};
int main() {
    struct Student arr[2] = {{"Bob", 80}, {"Alice", 90}};
    if(arr[0].marks > arr[1].marks) {
        struct Student temp = arr[0];
        arr[0] = arr[1];
        arr[1] = temp;
    }
    for(int i=0; i<2; i++)
        printf("%s %d\n", arr[i].name, arr[i].marks);
    return 0;
}
*/
//===========================================
// Code 29: Structure Pointer Array Input/Output
/**
#include <stdio.h>
struct Point {
    int x, y;
};
int main() {
    struct Point a = {1,2}, b = {3,4};
    struct Point *arr[2] = {&a, &b};
    for(int i=0; i<2; i++)
        printf("%d %d\n", arr[i]->x, arr[i]->y);
    return 0;
}
*/
//===========================================
// Code 30: Structure with Static Member (not allowed)
/**
// C does not allow static data members in structures
// This code is for concept only, will not compile
// struct Test {
//     static int x; // Not allowed in C
// };
*/
//===========================================
// Code 31: Structure with Union Member
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
struct Box {
    union Data d;
    char type;
};
int main() {
    struct Box b;
    b.d.i = 10;
    b.type = 'i';
    printf("%d %c\n", b.d.i, b.type);
    return 0;
}
*/
//===========================================
// Code 32: Structure with Flexible Array Member
/**
#include <stdio.h>
#include <stdlib.h>
struct Flex {
    int n;
    int arr[];
};
int main() {
    struct Flex *f = malloc(sizeof(struct Flex) + 3*sizeof(int));
    f->n = 3;
    for(int i=0; i<3; i++) f->arr[i] = i+1;
    for(int i=0; i<3; i++) printf("%d ", f->arr[i]);
    free(f);
    return 0;
}
*/
//===========================================
// Code 33: Structure with Nested Anonymous Structure
/**
#include <stdio.h>
struct Outer {
    int x;
    struct {
        int y;
    };
};
int main() {
    struct Outer o = {1, {2}};
    printf("%d %d\n", o.x, o.y);
    return 0;
}
*/
//===========================================
// Code 34: Structure with Array of Pointers
/**
#include <stdio.h>
struct Student {
    char *subjects[3];
};
int main() {
    struct Student s = {{"Math", "C", "DS"}};
    for(int i=0; i<3; i++)
        printf("%s ", s.subjects[i]);
    return 0;
}
*/
//===========================================
// Code 35: Structure with Pointer to Array
/**
#include <stdio.h>
struct Data {
    int (*arr)[3];
};
int main() {
    int nums[3] = {1,2,3};
    struct Data d;
    d.arr = &nums;
    for(int i=0; i<3; i++)
        printf("%d ", (*d.arr)[i]);
    return 0;
}
*/
//===========================================
// Code 36: Structure with Constant Member
/**
#include <stdio.h>
struct Point {
    const int x;
    int y;
};
int main() {
    struct Point p = {5, 6};
    printf("%d %d\n", p.x, p.y);
    return 0;
}
*/
//===========================================
// Code 37: Structure with Array of Structures
/**
#include <stdio.h>
struct Point {
    int x, y;
};
struct Polygon {
    struct Point pts[3];
};
int main() {
    struct Polygon poly = {{{1,2},{3,4},{5,6}}};
    for(int i=0; i<3; i++)
        printf("%d %d\n", poly.pts[i].x, poly.pts[i].y);
    return 0;
}
*/
//===========================================
// Code 38: Structure with Pointer to Function
/**
#include <stdio.h>
struct Callback {
    void (*cb)(void);
};
void hello() { printf("Hello\n"); }
int main() {
    struct Callback c;
    c.cb = hello;
    c.cb();
    return 0;
}
*/
//===========================================
// Code 39: Structure with Array of Function Pointers
/**
#include <stdio.h>
struct Ops {
    int (*f[2])(int, int);
};
int add(int a, int b) { return a+b; }
int sub(int a, int b) { return a-b; }
int main() {
    struct Ops o = {add, sub};
    printf("%d %d\n", o.f[0](2,3), o.f[1](5,2));
    return 0;
}
*/
//===========================================
// Code 40: Structure with Enum and Union Members
/**
#include <stdio.h>
enum Type { INT, FLOAT };
union Value { int i; float f; };
struct Data {
    enum Type t;
    union Value v;
};
int main() {
    struct Data d;
    d.t = INT;
    d.v.i = 42;
    printf("%d\n", d.v.i);
    return 0;
}
*/
//===========================================
// Code 41: Structure with Pointer to Self
/**
#include <stdio.h>
struct Node {
    int data;
    struct Node *next;
};
int main() {
    struct Node n1 = {1, NULL};
    struct Node n2 = {2, NULL};
    n1.next = &n2;
    printf("%d -> %d\n", n1.data, n1.next->data);
    return 0;
}
*/
//===========================================
// Code 42: Structure with Array of Self-referential Pointers
/**
#include <stdio.h>
struct Node {
    int data;
    struct Node *links[2];
};
int main() {
    struct Node n1 = {1, {NULL, NULL}};
    struct Node n2 = {2, {NULL, NULL}};
    n1.links[0] = &n2;
    printf("%d -> %d\n", n1.data, n1.links[0]->data);
    return 0;
}
*/
//===========================================
// Code 43: Structure with Nested Structure Array
/**
#include <stdio.h>
struct Point {
    int x, y;
};
struct Shape {
    struct Point pts[2];
};
int main() {
    struct Shape s = {{{1,2},{3,4}}};
    for(int i=0; i<2; i++)
        printf("%d %d\n", s.pts[i].x, s.pts[i].y);
    return 0;
}
*/
//===========================================
// Code 44: Structure with Array of Anonymous Structures
/**
#include <stdio.h>
struct {
    struct { int x, y; } pts[2];
} poly = {{{1,2},{3,4}}};
int main() {
    for(int i=0; i<2; i++)
        printf("%d %d\n", poly.pts[i].x, poly.pts[i].y);
    return 0;
}
*/
//===========================================
// Code 45: Structure with Array of Unions
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
struct Box {
    union Data arr[2];
};
int main() {
    struct Box b;
    b.arr[0].i = 10;
    b.arr[1].f = 3.14f;
    printf("%d %.2f\n", b.arr[0].i, b.arr[1].f);
    return 0;
}
*/
//===========================================
// Code 46: Structure with Array of Enum Members
/**
#include <stdio.h>
enum Color { RED, GREEN, BLUE };
struct Palette {
    enum Color colors[3];
};
int main() {
    struct Palette p = {RED, GREEN, BLUE};
    for(int i=0; i<3; i++)
        printf("%d ", p.colors[i]);
    return 0;
}
*/
//===========================================
// Code 47: Structure with Array of Anonymous Unions
/**
#include <stdio.h>
struct {
    union {
        int i;
        float f;
    } arr[2];
} box;
int main() {
    box.arr[0].i = 10;
    box.arr[1].f = 2.5f;
    printf("%d %.1f\n", box.arr[0].i, box.arr[1].f);
    return 0;
}
*/
//===========================================
// Code 48: Structure with Nested Anonymous Union
/**
#include <stdio.h>
struct {
    union {
        int i;
        float f;
    };
} data;
int main() {
    data.i = 42;
    printf("%d\n", data.i);
    return 0;
}
*/
//===========================================
// Code 49: Difference: struct vs union
/**
#include <stdio.h>
struct S { int a; float b; };
union U { int a; float b; };
int main() {
    struct S s = {1, 2.5f};
    union U u;
    u.a = 1;
    u.b = 2.5f; // Overwrites a
    printf("Struct: %d %.1f\n", s.a, s.b); // Both valid
    printf("Union: %d %.1f\n", u.a, u.b); // Only last assigned valid
    return 0;
}
*/
//===========================================
// Code 50: Structure with Nested Structure and Union
/**
#include <stdio.h>
struct Inner {
    int x;
    union {
        int i;
        float f;
    } u;
};
struct Outer {
    struct Inner in;
    char name[10];
};
int main() {
    struct Outer o = {{5, {.f = 3.14f}}, "test"};
    printf("%d %.2f %s\n", o.in.x, o.in.u.f, o.name);
    return 0;
}
*/
//===========================================
//============ ### 🔹 14. **Unions**
//===========================================

// Code 1: Union Declaration and Initialization
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data d;
    d.i = 10; // Assign integer
    printf("d.i = %d\n", d.i); // Prints 10
    return 0;
}
*/
//===========================================
// Code 2: Accessing Union Members
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data d;
    d.f = 3.14f; // Assign float
    printf("d.f = %.2f\n", d.f); // Prints 3.14
    return 0;
}
*/
//===========================================
// Code 3: Memory Sharing Concept in Union
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data d;
    d.i = 100;
    d.f = 1.23f; // Overwrites i
    printf("d.i = %d, d.f = %.2f\n", d.i, d.f); // Only last assigned is valid
    return 0;
}
*/
//===========================================
// Code 4: Size of Union
/**
#include <stdio.h>
union Data {
    int i;
    float f;
    char c;
};
int main() {
    printf("Size: %zu\n", sizeof(union Data)); // Size is max of members
    return 0;
}
*/
//===========================================
// Code 5: Anonymous Union in Structure
/**
#include <stdio.h>
struct Box {
    union {
        int i;
        float f;
    }; // Anonymous union
    char type;
};
int main() {
    struct Box b;
    b.i = 42;
    b.type = 'i';
    printf("%d %c\n", b.i, b.type); // Prints 42 i
    return 0;
}
*/
//===========================================
// Code 6: Assign and Access All Union Members
/**
#include <stdio.h>
union Data {
    int i;
    float f;
    char c;
};
int main() {
    union Data d;
    d.i = 65;
    printf("As int: %d\n", d.i);
    d.c = 'A';
    printf("As char: %c\n", d.c);
    return 0;
}
*/
//===========================================
// Code 7: Union with Array Member
/**
#include <stdio.h>
union Data {
    int i;
    char str[4];
};
int main() {
    union Data d;
    d.str[0] = 'A';
    d.str[1] = 'B';
    d.str[2] = 'C';
    d.str[3] = '\0';
    printf("%s\n", d.str); // Prints ABC
    return 0;
}
*/
//===========================================
// Code 8: Union Initialization at Declaration
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data d = {.f = 2.5f}; // Designated initializer
    printf("%.1f\n", d.f); // Prints 2.5
    return 0;
}
*/
//===========================================
// Code 9: Union in Structure Example
/**
#include <stdio.h>
struct Value {
    char type;
    union {
        int i;
        float f;
    } data;
};
int main() {
    struct Value v;
    v.type = 'i';
    v.data.i = 99;
    printf("%d\n", v.data.i); // Prints 99
    return 0;
}
*/
//===========================================
// Code 10: Union with Enum for Type Tagging
/**
#include <stdio.h>
enum Type { INT, FLOAT };
union Data {
    int i;
    float f;
};
struct Value {
    enum Type t;
    union Data d;
};
int main() {
    struct Value v;
    v.t = INT;
    v.d.i = 123;
    printf("%d\n", v.d.i); // Prints 123
    return 0;
}
*/
//===========================================
// Code 11: Union Assignment (Memberwise)
 /**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data a, b;
    a.i = 10;
    b = a; // Valid: union assignment
    printf("%d\n", b.i); // Prints 10
    return 0;
}
*/
//===========================================
// Code 12: Union with Structure Member
/**
#include <stdio.h>
struct Point {
    int x, y;
};
union Data {
    int i;
    struct Point pt;
};
int main() {
    union Data d;
    d.pt.x = 1;
    d.pt.y = 2;
    printf("%d %d\n", d.pt.x, d.pt.y); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 13: Union with Array of Unions
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data arr[2];
    arr[0].i = 5;
    arr[1].f = 3.14f;
    printf("%d %.2f\n", arr[0].i, arr[1].f); // Prints 5 3.14
    return 0;
}
*/
//===========================================
// Code 14: Pointer to Union
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data d;
    union Data *p = &d;
    p->i = 77;
    printf("%d\n", p->i); // Prints 77
    return 0;
}
*/
//===========================================
// Code 15: Union with Bit Fields (not allowed directly)
/**
// Bit fields are not allowed in unions in standard C
// union Data {
//     int i:4; // Not allowed
// };
*/
//===========================================
// Code 16: Union with Anonymous Structure
/**
#include <stdio.h>
union {
    struct {
        int x, y;
    };
    float f;
} data;
int main() {
    data.x = 1;
    data.y = 2;
    printf("%d %d\n", data.x, data.y); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 17: Union Typecasting Example
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
int main() {
    union Data d;
    d.i = 1065353216; // Bit pattern for 1.0f as float
    printf("%f\n", d.f); // Prints 1.000000 (may vary by system)
    return 0;
}
*/
//===========================================
// Code 18: Union with Character Array and Integer
/**
#include <stdio.h>
union Data {
    int i;
    char c[4];
};
int main() {
    union Data d;
    d.i = 0x41424344; // ASCII for 'ABCD'
    printf("%c%c%c%c\n", d.c[0], d.c[1], d.c[2], d.c[3]);
    return 0;
}
*/
//===========================================
// Code 19: Union Size with Largest Member
/**
#include <stdio.h>
union Data {
    char c;
    int i;
    double d;
};
int main() {
    printf("Size: %zu\n", sizeof(union Data)); // Size of largest member
    return 0;
}
*/
//===========================================
// Code 20: Union as Function Argument
/**
#include <stdio.h>
union Data {
    int i;
    float f;
};
void printInt(union Data d) {
    printf("%d\n", d.i);
}
int main() {
    union Data d;
    d.i = 55;
    printInt(d); // Prints 55
    return 0;
}
*/
//===========================================
/// ### 🔹 15. **Enums and Typedef**
//===========================================

// Code 1: enum Declaration and Usage
/**
#include <stdio.h>
enum Color { RED, GREEN, BLUE };
int main() {
    enum Color c = GREEN; // Assign enum value
    printf("%d\n", c);    // Prints 1
    return 0;
}
*/
//===========================================
// Code 2: enum with Explicit Values
/**
#include <stdio.h>
enum Weekday { MON=1, TUE, WED, THU, FRI, SAT, SUN };
int main() {
    enum Weekday d = FRI;
    printf("%d\n", d); // Prints 5
    return 0;
}
*/
//===========================================
// Code 3: enum in Switch Statement
/**
#include <stdio.h>
enum State { OFF, ON };
int main() {
    enum State s = ON;
    switch(s) {
        case OFF: printf("Off\n"); break;
        case ON: printf("On\n"); break;
    }
    return 0;
}
*/
//===========================================
// Code 4: enum as Function Argument
/**
#include <stdio.h>
enum Level { LOW, MEDIUM, HIGH };
void printLevel(enum Level l) {
    if(l == LOW) printf("Low\n");
    else if(l == MEDIUM) printf("Medium\n");
    else printf("High\n");
}
int main() {
    printLevel(HIGH); // Prints High
    return 0;
}
*/
//===========================================
// Code 5: typedef for Basic Type
/**
#include <stdio.h>
typedef unsigned int uint;
int main() {
    uint a = 10;
    printf("%u\n", a); // Prints 10
    return 0;
}
*/
//===========================================
// Code 6: typedef for Array Type
/**
#include <stdio.h>
typedef int IntArray[5];
int main() {
    IntArray arr = {1,2,3,4,5};
    for(int i=0; i<5; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 7: typedef with struct
/**
#include <stdio.h>
typedef struct {
    int x, y;
} Point;
int main() {
    Point p = {3, 4};
    printf("%d %d\n", p.x, p.y);
    return 0;
}
*/
//===========================================
// Code 8: typedef with struct and pointer
/**
#include <stdio.h>
typedef struct Node {
    int data;
    struct Node *next;
} Node;
int main() {
    Node n1 = {1, NULL};
    Node n2 = {2, NULL};
    n1.next = &n2;
    printf("%d -> %d\n", n1.data, n1.next->data);
    return 0;
}
*/
//===========================================
// Code 9: typedef for Function Pointer
/**
#include <stdio.h>
typedef int (*OpFunc)(int, int);
int add(int a, int b) { return a+b; }
int main() {
    OpFunc f = add;
    printf("%d\n", f(2,3)); // Prints 5
    return 0;
}
*/
//===========================================
// Code 10: typedef for Pointer Type
/**
#include <stdio.h>
typedef int* IntPtr;
int main() {
    int x = 5;
    IntPtr p = &x;
    printf("%d\n", *p); // Prints 5
    return 0;
}
*/
//===========================================
// Code 11: enum with Multiple Variables
/**
#include <stdio.h>
enum Status { OK, ERROR };
int main() {
    enum Status s1 = OK, s2 = ERROR;
    printf("%d %d\n", s1, s2); // Prints 0 1
    return 0;
}
*/
//===========================================
// Code 12: typedef with enum
/**
#include <stdio.h>
typedef enum { MALE, FEMALE } Gender;
int main() {
    Gender g = FEMALE;
    printf("%d\n", g); // Prints 1
    return 0;
}
*/
//===========================================
// Code 13: typedef for struct with Array Member
/**
#include <stdio.h>
typedef struct {
    char name[20];
    int age;
} Person;
int main() {
    Person p = {"Alice", 22};
    printf("%s %d\n", p.name, p.age);
    return 0;
}
*/
//===========================================
// Code 14: typedef for struct with Pointer Member
/**
#include <stdio.h>
typedef struct Node {
    int data;
    struct Node *next;
} Node;
int main() {
    Node n = {10, NULL};
    printf("%d\n", n.data);
    return 0;
}
*/
//===========================================
// Code 15: typedef for Array of Pointers
/**
#include <stdio.h>
typedef int* IntPtrArr[3];
int main() {
    int a=1, b=2, c=3;
    IntPtrArr arr = {&a, &b, &c};
    for(int i=0; i<3; i++)
        printf("%d ", *arr[i]);
    return 0;
}
*/
//===========================================
// Code 16: typedef for 2D Array
/**
#include <stdio.h>
typedef int Matrix[2][2];
int main() {
    Matrix m = {{1,2},{3,4}};
    printf("%d\n", m[1][1]); // Prints 4
    return 0;
}
*/
//===========================================
// Code 17: typedef for struct with typedef pointer
/**
#include <stdio.h>
typedef struct Node Node;
struct Node {
    int data;
    Node *next;
};
int main() {
    Node n = {5, NULL};
    printf("%d\n", n.data);
    return 0;
}
*/
//===========================================
// Code 18: typedef for struct with enum member
/**
#include <stdio.h>
typedef enum { RED, GREEN, BLUE } Color;
typedef struct {
    int id;
    Color c;
} Item;
int main() {
    Item it = {1, GREEN};
    printf("%d %d\n", it.id, it.c);
    return 0;
}
*/
//===========================================
// Code 19: typedef for struct with union member
/**
#include <stdio.h>
typedef union {
    int i;
    float f;
} Data;
typedef struct {
    char type;
    Data d;
} Box;
int main() {
    Box b;
    b.type = 'i';
    b.d.i = 42;
    printf("%d\n", b.d.i);
    return 0;
}
*/
//===========================================
// Code 20: typedef for struct with function pointer
/**
#include <stdio.h>
typedef struct {
    int (*op)(int, int);
} MathOp;
int add(int a, int b) { return a+b; }
int main() {
    MathOp m;
    m.op = add;
    printf("%d\n", m.op(3,4)); // Prints 7
    return 0;
}
*/