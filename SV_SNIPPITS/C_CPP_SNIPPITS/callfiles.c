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

//=======================================================================


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

//=======================================================================

//=======================================================================


// Code 1: Function Declaration & Definition
/**
#include <stdio.h>
void greet() {
    printf("\n Hello! \t World ");
}
int main() {
    greet();
    return 0;
}   */


//===========================================
// Code 2: Function with Return Value
/**
#include <stdio.h>
int add(int a, int b) {
    return a+b;
}
int main() {
    printf("%d\n", add(2,3));
    return 0;
}   */

//===========================================
// Code 3: Function with Parameters, No Return
/**
#include <stdio.h>
void printfsum(int a, int b) {
    printf("%d\n", a+b);
}
int main() {
    printfsum(4, 5);
    return 0;
}  *///////////

//===========================================
// Code 4: Function with No Parameters, No Return
/**
#include <stdio.h>
void hello() {
    printf("Hello, World! \n");
}
int main() {
    hello();
    return 0;
}   */
//===========================================
// Code 5: Call by Value
/**
#include <stdio.h>
void change(int x) {
    x = 100;
}
int main() {
    int a = 10;
    change(a);
    printf("%d\n", a); // Output: 10
    return 0;
}   */
//===========================================
// Code 6: Call by Reference
/**
#include <stdio.h>
void change (int *x) {
    *x = 100;
}
int main() {
    int a=10;
    change(&a);
    printf("%d\n", a);
    return 0;
}   */
//===========================================
// Code 7: Function with Return, No Parameters
/**
#include <stdio.h>
int getNumber() {
    return 42;
}
int main() {
    printf("%d\n", getNumber());
    return 0;
}
//===============================
#include <stdio.h>
int getnumber() {
    return 0;
}
int main() {
    printf("%d\n", getnumber());
    return 0;
}
*/
//===========================================
// Code 8: Function with Parameters, Return
/**
#include <stdio.h>
int multiply(int a, int b) {
    return a * b;
}
int main() {
    printf("%d\n", multiply(3, 4));
    return 0;
}
*/
//===========================================
// Code 9: main() Function Example
/**
#include <stdio.h>
int main() {
    printf("This is main function\n");
    return 0;
}
*/
//===========================================
// Code 10: Nested Functions (GCC only)
/**
// Only works in GCC
#include <stdio.h>
int main() {
    void inner() {
        printf("Nested function\n");
    }
    inner();
    return 0;
}
*/
//===========================================
// Code 11: Variadic Function (sum)
/**
#include <stdio.h>
#include <stdarg.h>
int sum(int count, ...) {
    va_list args;
    va_start(args, count);
    int total = 0;
    for (int i = 0; i < count; i++)
        total += va_arg(args, int);
    va_end(args);
    return total;
}
int main() {
    printf("%d\n", sum(3, 1, 2, 3));
    return 0;
}
*/
//===========================================
// Code 12: User-defined Function (factorial)
/**
#include <stdio.h>
int factorial(int n) {
    int f = 1;
    for (int i = 1; i <= n; i++)
        f *= i;
    return f;
}
int main() {
    printf("%d\n", factorial(5));
    return 0;
}
*/
//===========================================
// Code 13: Callback Function
/**
#include <stdio.h>
void call(void (*fptr)()) {
    fptr();
}
void hello() {
    printf("Hello from callback!\n");
}
int main() {
    call(hello);
    return 0;
}
*/
//===========================================
// Code 14: Recursion (factorial)
/**
#include <stdio.h>
int fact(int n) {
    if (n == 0) return 1;
    return n * fact(n-1);
}
int main() {
    printf("%d\n", fact(5));
    return 0;
}
*/
//===========================================
// Code 15: Recursion (Fibonacci)
/**
#include <stdio.h>
int fib(int n) {
    if (n <= 1) return n;
    return fib(n-1) + fib(n-2);
}
int main() {
    printf("%d\n", fib(6));
    return 0;
}
*/
//===========================================
// Code 16: Function Returning Pointer
/**
#include <stdio.h>
int* getPtr(int *x) {
    return x;
}
int main() {
    int a = 10;
    int *p = getPtr(&a);
    printf("%d\n", *p);
    return 0;
}
*/
//===========================================
// Code 17: Function Returning Array (static)
/**
#include <stdio.h>
int* getArr() {
    static int arr[3] = {1,2,3};
    return arr;
}
int main() {
    int *a = getArr();
    for (int i = 0; i < 3; i++)
        printf("%d ", a[i]);
    return 0;
}
*/
//===========================================
// Code 18: Function with Array Parameter
/**
#include <stdio.h>
void printArr(int arr[], int n) {
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(arr, 3);
    return 0;
}
*/
//===========================================
// Code 19: Function Pointer as Parameter
/**
#include <stdio.h>
void greet() {
    printf("Hi!\n");
}
void run(void (*f)()) {
    f();
}
int main() {
    run(greet);
    return 0;
}
*/
//===========================================
// Code 20: Function Pointer Returning Value
/**
#include <stdio.h>
int add(int a, int b) {
    return a + b;
}
int main() {
    int (*fptr)(int, int) = add;
    printf("%d\n", fptr(2,3));
    return 0;
}
*/
//===========================================
// Code 21: Inline Function (GCC extension)
/**
// GCC only
#include <stdio.h>
inline int square(int x) { return x*x; }
int main() {
    printf("%d\n", square(4));
    return 0;
}
*/
//===========================================
// Code 22: Function Overloading (Not in C, but with macros)
/**
#include <stdio.h>
#define add(a, b) ((a)+(b))
int main() {
    printf("%d\n", add(2,3));
    printf("%.2f\n", add(2.5,3.5));
    return 0;
}
*/
//===========================================
// Code 23: Function with Struct Parameter
/**
#include <stdio.h>
struct Point { int x, y; };
void printPoint(struct Point p) {
    printf("(%d, %d)\n", p.x, p.y);
}
int main() {
    struct Point pt = {3,4};
    printPoint(pt);
    return 0;
}
*/
//===========================================
// Code 24: Function Returning Struct
/**
#include <stdio.h>
struct Point { int x, y; };
struct Point makePoint(int x, int y) {
    struct Point p = {x, y};
    return p;
}
int main() {
    struct Point pt = makePoint(5,6);
    printf("(%d, %d)\n", pt.x, pt.y);
    return 0;
}
*/
//===========================================
// Code 25: Function with Union Parameter
/**
#include <stdio.h>
union Data { int i; float f; };
void printData(union Data d) {
    printf("%d %.2f\n", d.i, d.f);
}
int main() {
    union Data d;
    d.i = 10;
    d.f = 3.14;
    printData(d);
    return 0;
}
*/
//===========================================
// Code 26: Function with Enum Parameter
/**
#include <stdio.h>
enum Color { RED, GREEN, BLUE };
void printColor(enum Color c) {
    if (c == RED) printf("Red\n");
    else if (c == GREEN) printf("Green\n");
    else printf("Blue\n");
}
int main() {
    printColor(GREEN);
    return 0;
}
*/
//===========================================
// Code 27: Function with Typedef Parameter
/**
#include <stdio.h>
typedef int myint;
void printNum(myint n) {
    printf("%d\n", n);
}
int main() {
    printNum(10);
    return 0;
}
*/
//===========================================
// Code 28: Function with Default Arguments (Not in C, but simulated)
/**
#include <stdio.h>
void show(int x, int y) {
    printf("%d %d\n", x, y);
}
int main() {
    show(1, 2);
    // No default arguments in C
    return 0;
}
*/
//===========================================
// Code 29: Function with Variable Length Array Parameter
/**
#include <stdio.h>
void printVLA(int n, int arr[n]) {
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
}
int main() {
    int arr[4] = {1,2,3,4};
    printVLA(4, arr);
    return 0;
}
*/
//===========================================
// Code 30: Function with const Parameter
/**
#include <stdio.h>
void printConst(const int x) {
    printf("%d\n", x);
}
int main() {
    printConst(10);
    return 0;
}
*/
//===========================================
// Code 31: Function with Static Variable
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
// Code 32: Function with Volatile Parameter
/**
#include <stdio.h>
void printVolatile(volatile int x) {
    printf("%d\n", x);
}
int main() {
    volatile int a = 5;
    printVolatile(a);
    return 0;
}
*/
//===========================================
// Code 33: Function with Register Variable
/**
#include <stdio.h>
void printReg(register int x) {
    printf("%d\n", x);
}
int main() {
    printReg(7);
    return 0;
}
*/
//===========================================
// Code 34: Function with extern Variable
/**
#include <stdio.h>
int x = 10;
void printExtern() {
    extern int x;
    printf("%d\n", x);
}
int main() {
    printExtern();
    return 0;
}
*/
//===========================================
// Code 35: Function with Global Variable
/**
#include <stdio.h>
int g = 20;
void show() {
    printf("%d\n", g);
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 36: Function with Local Variable
/**
#include <stdio.h>
void show() {
    int x = 5;
    printf("%d\n", x);
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 37: Function with Block Scope
/**
#include <stdio.h>
void show() {
    {
        int x = 10;
        printf("%d\n", x);
    }
}
int main() {
    show();
    return 0;
}
*/
//===========================================
// Code 38: Function with Multiple Returns
/**
#include <stdio.h>
int check(int x) {
    if (x > 0) return 1;
    else if (x < 0) return -1;
    return 0;
}
int main() {
    printf("%d\n", check(-5));
    return 0;
}
*/
//===========================================
// Code 39: Function with Early Return
/**
#include <stdio.h>
void test(int x) {
    if (x < 0) return;
    printf("x is non-negative\n");
}
int main() {
    test(-1);
    test(2);
    return 0;
}
*/
//===========================================
// Code 40: Function with Multiple Parameters
/**
#include <stdio.h>
void printAll(int a, float b, char c) {
    printf("%d %.2f %c\n", a, b, c);
}
int main() {
    printAll(5, 3.14, 'A');
    return 0;
}
*/
//===========================================
// Code 41: Function with Array of Pointers
/**
#include <stdio.h>
void printPtrs(int *arr[], int n) {
    for (int i = 0; i < n; i++)
        printf("%d ", *arr[i]);
}
int main() {
    int a = 1, b = 2, c = 3;
    int *arr[3] = {&a, &b, &c};
    printPtrs(arr, 3);
    return 0;
}
*/
//===========================================
// Code 42: Function with Pointer to Array
/**
#include <stdio.h>
void printArr(int (*arr)[3]) {
    for (int i = 0; i < 3; i++)
        printf("%d ", (*arr)[i]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(&arr);
    return 0;
}
*/
//===========================================
// Code 43: Function with Pointer to Function
/**
#include <stdio.h>
void hello() {
    printf("Hello!\n");
}
void call(void (*f)()) {
    f();
}
int main() {
    call(hello);
    return 0;
}
*/
//===========================================
// Code 44: Function with Function Pointer Array
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
// Code 45: Function with Recursion (sum of digits)
/**
#include <stdio.h>
int sumDigits(int n) {
    if (n == 0) return 0;
    return n % 10 + sumDigits(n/10);
}
int main() {
    printf("%d\n", sumDigits(1234));
    return 0;
}
*/
//===========================================
// Code 46: Function with Recursion (reverse number)
/**
#include <stdio.h>
int reverse(int n, int rev) {
    if (n == 0) return rev;
    return reverse(n/10, rev*10 + n%10);
}
int main() {
    printf("%d\n", reverse(123, 0));
    return 0;
}
*/
//===========================================
// Code 47: Function with Recursion (GCD)
/**
#include <stdio.h>
int gcd(int a, int b) {
    if (b == 0) return a;
    return gcd(b, a % b);
}
int main() {
    printf("%d\n", gcd(24, 18));
    return 0;
}
*/
//===========================================
// Code 48: Function with Recursion (Power)
/**
#include <stdio.h>
int power(int x, int y) {
    if (y == 0) return 1;
    return x * power(x, y-1);
}
int main() {
    printf("%d\n", power(2, 5));
    return 0;
}
*/
//===========================================
// Code 49: Function with Recursion (Sum N numbers)
/**
#include <stdio.h>
int sumN(int n) {
    if (n == 0) return 0;
    return n + sumN(n-1);
}
int main() {
    printf("%d\n", sumN(10));
    return 0;
}
*/
//===========================================
// Code 50: Function with Recursion (Print N to 1)
/**
#include <stdio.h>
void printNto1(int n) {
    if (n == 0) return;
    printf("%d ", n);
    printNto1(n-1);
}
int main() {
    printNto1(5);
    return 0;
}
*/
//===========================================
// Code 51: Function with Recursion (Print 1 to N)
/**
#include <stdio.h>
void print1toN(int n) {
    if (n == 0) return;
    print1toN(n-1);
    printf("%d ", n);
}
int main() {
    print1toN(5);
    return 0;
}
*/
//===========================================
// Code 52: Function with Recursion (Sum Array)
/**
#include <stdio.h>
int sumArr(int arr[], int n) {
    if (n == 0) return 0;
    return arr[n-1] + sumArr(arr, n-1);
}
int main() {
    int arr[3] = {1,2,3};
    printf("%d\n", sumArr(arr, 3));
    return 0;
}
*/
//===========================================
// Code 53: Function with Recursion (Palindrome)
/**
#include <stdio.h>
int isPalindrome(char *str, int l, int r) {
    if (l >= r) return 1;
    if (str[l] != str[r]) return 0;
    return isPalindrome(str, l+1, r-1);
}
int main() {
    char s[] = "madam";
    printf("%d\n", isPalindrome(s, 0, 4));
    return 0;
}
*/
//===========================================
// Code 54: Function with Recursion (Binary Search)
/**
#include <stdio.h>
int binarySearch(int arr[], int l, int r, int x) {
    if (l > r) return -1;
    int m = (l + r) / 2;
    if (arr[m] == x) return m;
    if (arr[m] > x) return binarySearch(arr, l, m-1, x);
    return binarySearch(arr, m+1, r, x);
}
int main() {
    int arr[5] = {1,2,3,4,5};
    printf("%d\n", binarySearch(arr, 0, 4, 3));
    return 0;
}
*/
//===========================================
// Code 55: Function with Recursion (Tower of Hanoi)
/**
#include <stdio.h>
void hanoi(int n, char from, char to, char aux) {
    if (n == 1) {
        printf("Move disk 1 from %c to %c\n", from, to);
        return;
    }
    hanoi(n-1, from, aux, to);
    printf("Move disk %d from %c to %c\n", n, from, to);
    hanoi(n-1, aux, to, from);
}
int main() {
    hanoi(3, 'A', 'C', 'B');
    return 0;
}
*/
//===========================================
// Code 56: Function with Recursion (Sum of Digits)
/**
#include <stdio.h>
int sumDigits(int n) {
    if (n == 0) return 0;
    return n % 10 + sumDigits(n/10);
}
int main() {
    printf("%d\n", sumDigits(12345));
    return 0;
}
*/
//===========================================
// Code 57: Function with Recursion (Print Even Numbers)
/**
#include <stdio.h>
void printEven(int n) {
    if (n == 0) return;
    printEven(n-1);
    if (n % 2 == 0) printf("%d ", n);
}
int main() {
    printEven(10);
    return 0;
}
*/
//===========================================
// Code 58: Function with Recursion (Print Odd Numbers)
/**
#include <stdio.h>
void printOdd(int n) {
    if (n == 0) return;
    printOdd(n-1);
    if (n % 2 != 0) printf("%d ", n);
}
int main() {
    printOdd(10);
    return 0;
}
*/
//===========================================
// Code 59: Function with Recursion (Sum of Even Numbers)
/**
#include <stdio.h>
int sumEven(int n) {
    if (n == 0) return 0;
    if (n % 2 == 0) return n + sumEven(n-1);
    return sumEven(n-1);
}
int main() {
    printf("%d\n", sumEven(10));
    return 0;
}
*/
//===========================================
// Code 60: Function with Recursion (Sum of Odd Numbers)
/**
#include <stdio.h>
int sumOdd(int n) {
    if (n == 0) return 0;
    if (n % 2 != 0) return n + sumOdd(n-1);
    return sumOdd(n-1);
}
int main() {
    printf("%d\n", sumOdd(10));
    return 0;
}
*/
//===========================================
// Code 61: Function with Recursion (Find Max in Array)
/**
#include <stdio.h>
int findMax(int arr[], int n) {
    if (n == 1) return arr[0];
    int max = findMax(arr, n-1);
    return arr[n-1] > max ? arr[n-1] : max;
}
int main() {
    int arr[5] = {1, 5, 3, 9, 2};
    printf("%d\n", findMax(arr, 5));
    return 0;
}
*/
//===========================================
// Code 62: Function with Recursion (Find Min in Array)
/**
#include <stdio.h>
int findMin(int arr[], int n) {
    if (n == 1) return arr[0];
    int min = findMin(arr, n-1);
    return arr[n-1] < min ? arr[n-1] : min;
}
int main() {
    int arr[5] = {1, 5, 3, 9, 2};
    printf("%d\n", findMin(arr, 5));
    return 0;
}
*/
//===========================================
// Code 63: Function with Recursion (Count Digits)
/**
#include <stdio.h>
int countDigits(int n) {
    if (n == 0) return 0;
    return 1 + countDigits(n/10);
}
int main() {
    printf("%d\n", countDigits(12345));
    return 0;
}
*/
//===========================================
// Code 64: Function with Recursion (Sum of Series)
/**
#include <stdio.h>
int sumSeries(int n) {
    if (n == 0) return 0;
    return n*n + sumSeries(n-1);
}
int main() {
    printf("%d\n", sumSeries(3));
    return 0;
}
*/
//===========================================
// Code 65: Function with Recursion (Print Array)
/**
#include <stdio.h>
void printArr(int arr[], int n) {
    if (n == 0) return;
    printArr(arr, n-1);
    printf("%d ", arr[n-1]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(arr, 3);
    return 0;
}
*/
//===========================================
// Code 66: Function with Recursion (Reverse String)
/**
#include <stdio.h>
void reverse(char *str, int l, int r) {
    if (l >= r) return;
    char t = str[l];
    str[l] = str[r];
    str[r] = t;
    reverse(str, l+1, r-1);
}
int main() {
    char s[] = "hello";
    reverse(s, 0, 4);
    printf("%s\n", s);
    return 0;
}
*/
//===========================================
// Code 67: Function with Recursion (Sum of Natural Numbers)
/**
#include <stdio.h>
int sumN(int n) {
    if (n == 0) return 0;
    return n + sumN(n-1);
}
int main() {
    printf("%d\n", sumN(100));
    return 0;
}
*/
//===========================================
// Code 68: Function with Recursion (Print Reverse Array)
/**
#include <stdio.h>
void printReverse(int arr[], int n) {
    if (n == 0) return;
    printf("%d ", arr[n-1]);
    printReverse(arr, n-1);
}
int main() {
    int arr[3] = {1,2,3};
    printReverse(arr, 3);
    return 0;
}
*/
//===========================================
// Code 69: Function with Recursion (Sum of Digits Even)
/**
#include <stdio.h>
int sumEvenDigits(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 2 == 0) return d + sumEvenDigits(n/10);
    return sumEvenDigits(n/10);
}
int main() {
    printf("%d\n", sumEvenDigits(123456));
    return 0;
}
*/
//===========================================
// Code 70: Function with Recursion (Sum of Digits Odd)
/**
#include <stdio.h>
int sumOddDigits(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 2 != 0) return d + sumOddDigits(n/10);
    return sumOddDigits(n/10);
}
int main() {
    printf("%d\n", sumOddDigits(123456));
    return 0;
}
*/
//===========================================
// Code 71: Function with Recursion (Print String)
/**
#include <stdio.h>
void printStr(char *str, int i) {
    if (str[i] == '\0') return;
    printf("%c ", str[i]);
    printStr(str, i+1);
}
int main() {
    char s[] = "abc";
    printStr(s, 0);
    return 0;
}
*/
//===========================================
// Code 72: Function with Recursion (Print String Reverse)
/**
#include <stdio.h>
void printStrRev(char *str, int i) {
    if (str[i] == '\0') return;
    printStrRev(str, i+1);
    printf("%c ", str[i]);
}
int main() {
    char s[] = "abc";
    printStrRev(s, 0);
    return 0;
}
*/
//===========================================
// Code 73: Function with Recursion (Sum of Array Even)
/**
#include <stdio.h>
int sumEvenArr(int arr[], int n) {
    if (n == 0) return 0;
    if (arr[n-1] % 2 == 0) return arr[n-1] + sumEvenArr(arr, n-1);
    return sumEvenArr(arr, n-1);
}
int main() {
    int arr[4] = {1,2,3,4};
    printf("%d\n", sumEvenArr(arr, 4));
    return 0;
}
*/
//===========================================
// Code 74: Function with Recursion (Sum of Array Odd)
/**
#include <stdio.h>
int sumOddArr(int arr[], int n) {
    if (n == 0) return 0;
    if (arr[n-1] % 2 != 0) return arr[n-1] + sumOddArr(arr, n-1);
    return sumOddArr(arr, n-1);
}
int main() {
    int arr[4] = {1,2,3,4};
    printf("%d\n", sumOddArr(arr, 4));
    return 0;
}
*/
//===========================================
// Code 75: Function with Recursion (Find Element in Array)
/**
#include <stdio.h>
int find(int arr[], int n, int x) {
    if (n == 0) return 0;
    if (arr[n-1] == x) return 1;
    return find(arr, n-1, x);
}
int main() {
    int arr[4] = {1,2,3,4};
    printf("%d\n", find(arr, 4, 3));
    return 0;
}
*/
//===========================================
// Code 76: Function with Recursion (Count Occurrences)
/**
#include <stdio.h>
int count(int arr[], int n, int x) {
    if (n == 0) return 0;
    return (arr[n-1] == x) + count(arr, n-1, x);
}
int main() {
    int arr[5] = {1,2,3,2,2};
    printf("%d\n", count(arr, 5, 2));
    return 0;
}
*/
//===========================================
// Code 77: Function with Recursion (Sum of Digits Product)
/**
#include <stdio.h>
int prodDigits(int n) {
    if (n == 0) return 1;
    return (n % 10) * prodDigits(n/10);
}
int main() {
    printf("%d\n", prodDigits(123));
    return 0;
}
*/
//===========================================
// Code 78: Function with Recursion (Print All Subsets)
/**
#include <stdio.h>
void printSubsets(char *set, char *subset, int i, int j) {
    if (set[i] == '\0') {
        subset[j] = '\0';
        printf("%s\n", subset);
        return;
    }
    subset[j] = set[i];
    printSubsets(set, subset, i+1, j+1);
    printSubsets(set, subset, i+1, j);
}
int main() {
    char set[] = "ab", subset[3];
    printSubsets(set, subset, 0, 0);
    return 0;
}
*/
//===========================================
// Code 79: Function with Recursion (Sum of Series 1+2+...+n)
/**
#include <stdio.h>
int sumSeries(int n) {
    if (n == 1) return 1;
    return n + sumSeries(n-1);
}
int main() {
    printf("%d\n", sumSeries(10));
    return 0;
}
*/
//===========================================
// Code 80: Function with Recursion (Print Binary)
/**
#include <stdio.h>
void printBinary(int n) {
    if (n == 0) return;
    printBinary(n/2);
    printf("%d", n%2);
}
int main() {
    printBinary(10);
    return 0;
}
*/
//===========================================
// Code 81: Function with Recursion (Sum of Digits to Single Digit)
/**
#include <stdio.h>
int digitalRoot(int n) {
    if (n < 10) return n;
    int sum = 0;
    while (n) {
        sum += n % 10;
        n /= 10;
    }
    return digitalRoot(sum);
}
int main() {
    printf("%d\n", digitalRoot(9875));
    return 0;
}
*/
//===========================================
// Code 82: Function with Recursion (Print Permutations)
/**
#include <stdio.h>
void swap(char *x, char *y) {
    char t = *x; *x = *y; *y = t;
}
void permute(char *str, int l, int r) {
    if (l == r) {
        printf("%s\n", str);
        return;
    }
    for (int i = l; i <= r; i++) {
        swap(&str[l], &str[i]);
        permute(str, l+1, r);
        swap(&str[l], &str[i]);
    }
}
int main() {
    char s[] = "abc";
    permute(s, 0, 2);
    return 0;
}
*/
//===========================================
// Code 83: Function with Recursion (Sum of Squares)
/**
#include <stdio.h>
int sumSquares(int n) {
    if (n == 0) return 0;
    return n*n + sumSquares(n-1);
}
int main() {
    printf("%d\n", sumSquares(3));
    return 0;
}
*/
//===========================================
// Code 84: Function with Recursion (Sum of Cubes)
/**
#include <stdio.h>
int sumCubes(int n) {
    if (n == 0) return 0;
    return n*n*n + sumCubes(n-1);
}
int main() {
    printf("%d\n", sumCubes(3));
    return 0;
}
*/
//===========================================
// Code 85: Function with Recursion (Print All Paths in Maze)
/**
#include <stdio.h>
#define N 2
void printMaze(int maze[N][N], int x, int y, char *path, int idx) {
    if (x == N-1 && y == N-1) {
        path[idx] = '\0';
        printf("%s\n", path);
        return;
    }
    if (x+1 < N && maze[x+1][y]) {
        path[idx] = 'D';
        printMaze(maze, x+1, y, path, idx+1);
    }
    if (y+1 < N && maze[x][y+1]) {
        path[idx] = 'R';
        printMaze(maze, x, y+1, path, idx+1);
    }
}
int main() {
    int maze[N][N] = {{1,1},{1,1}};
    char path[10];
    printMaze(maze, 0, 0, path, 0);
    return 0;
}
*/
//===========================================
// Code 86: Function with Recursion (Sum of Digits Even Position)
/**
#include <stdio.h>
int sumEvenPos(int n, int pos) {
    if (n == 0) return 0;
    int d = n % 10;
    if (pos % 2 == 0) return d + sumEvenPos(n/10, pos+1);
    return sumEvenPos(n/10, pos+1);
}
int main() {
    printf("%d\n", sumEvenPos(123456, 1));
    return 0;
}
*/
//===========================================
// Code 87: Function with Recursion (Sum of Digits Odd Position)
/**
#include <stdio.h>
int sumOddPos(int n, int pos) {
    if (n == 0) return 0;
    int d = n % 10;
    if (pos % 2 != 0) return d + sumOddPos(n/10, pos+1);
    return sumOddPos(n/10, pos+1);
}
int main() {
    printf("%d\n", sumOddPos(123456, 1));
    return 0;
}
*/
//===========================================
// Code 88: Function with Recursion (Print All Combinations)
/**
#include <stdio.h>
void combine(char *set, char *out, int i, int j) {
    if (set[i] == '\0') {
        out[j] = '\0';
        printf("%s\n", out);
        return;
    }
    out[j] = set[i];
    combine(set, out, i+1, j+1);
    combine(set, out, i+1, j);
}
int main() {
    char set[] = "ab", out[3];
    combine(set, out, 0, 0);
    return 0;
}
*/
//===========================================
// Code 89: Function with Recursion (Print All Substrings)
/**
#include <stdio.h>
void substr(char *str, int start, int end) {
    if (str[end] == '\0') return;
    for (int i = start; i <= end; i++)
        printf("%c", str[i]);
    printf("\n");
    substr(str, start, end+1);
}
int main() {
    char s[] = "abc";
    for (int i = 0; s[i] != '\0'; i++)
        substr(s, i, i);
    return 0;
}
*/
//===========================================
// Code 90: Function with Recursion (Sum of Digits to Even/Odd)
/**
#include <stdio.h>
int sumEvenOdd(int n, int even) {
    if (n == 0) return 0;
    int d = n % 10;
    if ((d % 2 == 0) == even) return d + sumEvenOdd(n/10, even);
    return sumEvenOdd(n/10, even);
}
int main() {
    printf("%d\n", sumEvenOdd(123456, 1)); // even
    printf("%d\n", sumEvenOdd(123456, 0)); // odd
    return 0;
}
*/
//===========================================
// Code 91: Function with Recursion (Sum of Digits Divisible by 3)
/**
#include <stdio.h>
int sumDiv3(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 3 == 0) return d + sumDiv3(n/10);
    return sumDiv3(n/10);
}
int main() {
    printf("%d\n", sumDiv3(123456));
    return 0;
}
*/
//===========================================
// Code 92: Function with Recursion (Sum of Digits Not Divisible by 3)
/**
#include <stdio.h>
int sumNotDiv3(int n) {
    if (n == 0) return 0;
    int d = n % 10;
    if (d % 3 != 0) return d + sumNotDiv3(n/10);
    return sumNotDiv3(n/10);
}
int main() {
    printf("%d\n", sumNotDiv3(123456));
    return 0;
}
*/
//===========================================
// Code 93: Function with Recursion (Print All Palindromic Substrings)
/**
#include <stdio.h>
int isPal(char *str, int l, int r) {
    if (l >= r) return 1;
    if (str[l] != str[r]) return 0;
    return isPal(str, l+1, r-1);
}
void palSubs(char *str, int n) {
    for (int i = 0; i < n; i++)
        for (int j = i; j < n; j++)
            if (isPal(str, i, j)) {
                for (int k = i; k <= j; k++)
                    printf("%c", str[k]);
                printf("\n");
            }
}
int main() {
    char s[] = "aba";
    palSubs(s, 3);
    return 0;
}
*/
//===========================================
// Code 94: Function with Recursion (Sum of Digits to Nth Power)
/**
#include <stdio.h>
int sumPow(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    return pow + sumPow(n/10, p);
}
int main() {
    printf("%d\n", sumPow(123, 2));
    return 0;
}
*/
//===========================================
// Code 95: Function with Recursion (Print All Permutations of Numbers)
/**
#include <stdio.h>
void swap(int *x, int *y) {
    int t = *x; *x = *y; *y = t;
}
void permute(int *arr, int l, int r) {
    if (l == r) {
        for (int i = 0; i <= r; i++)
            printf("%d ", arr[i]);
        printf("\n");
        return;
    }
    for (int i = l; i <= r; i++) {
        swap(&arr[l], &arr[i]);
        permute(arr, l+1, r);
        swap(&arr[l], &arr[i]);
    }
}
int main() {
    int arr[] = {1,2,3};
    permute(arr, 0, 2);
    return 0;
}
*/
//===========================================
// Code 96: Function with Recursion (Sum of Digits to Nth Power Even)
/**
#include <stdio.h>
int sumPowEven(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 2 == 0) return pow + sumPowEven(n/10, p);
    return sumPowEven(n/10, p);
}
int main() {
    printf("%d\n", sumPowEven(1234, 2));
    return 0;
}
*/
//===========================================
// Code 97: Function with Recursion (Sum of Digits to Nth Power Odd)
/**
#include <stdio.h>
int sumPowOdd(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 2 != 0) return pow + sumPowOdd(n/10, p);
    return sumPowOdd(n/10, p);
}
int main() {
    printf("%d\n", sumPowOdd(1234, 2));
    return 0;
}
*/
//===========================================
// Code 98: Function with Recursion (Sum of Digits to Nth Power Divisible by 3)
/**
#include <stdio.h>
int sumPowDiv3(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 3 == 0) return pow + sumPowDiv3(n/10, p);
    return sumPowDiv3(n/10, p);
}
int main() {
    printf("%d\n", sumPowDiv3(1236, 2));
    return 0;
}
*/
//===========================================
// Code 99: Function with Recursion (Sum of Digits to Nth Power Not Divisible by 3)
/**
#include <stdio.h>
int sumPowNotDiv3(int n, int p) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (d % 3 != 0) return pow + sumPowNotDiv3(n/10, p);
    return sumPowNotDiv3(n/10, p);
}
int main() {
    printf("%d\n", sumPowNotDiv3(1236, 2));
    return 0;
}
*/
//===========================================
// Code 100: Function with Recursion (Sum of Digits to Nth Power Even Position)
/**
#include <stdio.h>
int sumPowEvenPos(int n, int p, int pos) {
    if (n == 0) return 0;
    int d = n % 10, pow = 1;
    for (int i = 0; i < p; i++) pow *= d;
    if (pos % 2 == 0) return pow + sumPowEvenPos(n/10, p, pos+1);
    return sumPowEvenPos(n/10, p, pos+1);
}
int main() {
    printf("%d\n", sumPowEvenPos(1234, 2, 1));
    return 0;
}
*/
//=======================================================================
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
//               Pointer
//===========================================

// Code 1: Pointer Basics - Print value using pointer
/**
#include <stdio.h>
int main() {
    int x = 10;          // Declare an integer variable
    int *p = &x;         // Declare a pointer and assign address of x
    printf("%d\n", *p);  // Dereference pointer to print value of x
    return 0;
}
*/
//===========================================
// Code 2: Pointer Basics - Change value using pointer
/**
#include <stdio.h>
int main() {
    int x = 5;           // Declare an integer variable
    int *p = &x;         // Pointer points to x
    *p = 20;             // Change value of x using pointer
    printf("%d\n", x);   // Prints 20
    return 0;
}
*/
//===========================================
// Code 3: Pointer Arithmetic - Increment pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3}; // Array of integers
    int *p = arr;         // Pointer to first element
    printf("%d ", *p);    // Prints 1
    p++;                  // Move pointer to next element
    printf("%d\n", *p);   // Prints 2
    return 0;
}
*/
//===========================================
// Code 4: Pointer Arithmetic - Decrement pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {10,20,30};
    int *p = &arr[2];     // Pointer to last element
    printf("%d ", *p);    // Prints 30
    p--;                  // Move pointer to previous element
    printf("%d\n", *p);   // Prints 20
    return 0;
}
*/
//===========================================
// Code 5: Pointer Arithmetic - Difference between pointers
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5};
    int *p1 = &arr[1];    // Pointer to arr[1]
    int *p2 = &arr[4];    // Pointer to arr[4]
    printf("%ld\n", p2 - p1); // Prints 3 (number of elements between)
    return 0;
}
*/
//===========================================
// Code 6: Pointers & Arrays - Access array using pointer
/**
#include <stdio.h>
int main() {
    int arr[4] = {2,4,6,8};
    int *p = arr;         // Pointer to first element
    for(int i=0; i<4; i++)
        printf("%d ", *(p+i)); // Access elements using pointer arithmetic
    return 0;
}
*/
//===========================================
// Code 7: Pointers & Arrays - Modify array using pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    *(p+1) = 10;          // Change arr[1] to 10
    for(int i=0; i<3; i++)
        printf("%d ", arr[i]);
    return 0;
}
*/
//===========================================
// Code 8: Array of Pointers - Print values
/**
#include <stdio.h>
int main() {
    int a=5, b=10, c=15;
    int *arr[3] = {&a, &b, &c}; // Array of pointers to int
    for(int i=0; i<3; i++)
        printf("%d ", *arr[i]); // Print values using pointers
    return 0;
}
*/
//===========================================
// Code 9: Array of Pointers - Change values
/**
#include <stdio.h>
int main() {
    int a=1, b=2, c=3;
    int *arr[3] = {&a, &b, &c};
    *arr[0] = 100;        // Change value of a using pointer
    printf("%d\n", a);    // Prints 100
    return 0;
}
*/
//===========================================
// Code 10: Pointer to Pointer - Print value
/**
#include <stdio.h>
int main() {
    int x = 50;
    int *p = &x;          // Pointer to x
    int **pp = &p;        // Pointer to pointer
    printf("%d\n", **pp); // Prints 50
    return 0;
}
*/
//===========================================
// Code 11: Pointer to Pointer - Change value
/**
#include <stdio.h>
int main() {
    int x = 7;
    int *p = &x;
    int **pp = &p;
    **pp = 99;            // Change value of x using double pointer
    printf("%d\n", x);    // Prints 99
    return 0;
}
*/
//===========================================
// Code 12: Passing Pointer to Function - Set value
/**
#include <stdio.h>
void set100(int *p) { *p = 100; } // Function sets value to 100
int main() {
    int x = 0;
    set100(&x);           // Pass address of x
    printf("%d\n", x);    // Prints 100
    return 0;
}
*/
//===========================================
// Code 13: Passing Pointer to Function - Swap values
/**
#include <stdio.h>
void swap(int *a, int *b) {
    int t = *a;
    *a = *b;
    *b = t;
}
int main() {
    int x = 1, y = 2;
    swap(&x, &y);         // Swap values using pointers
    printf("%d %d\n", x, y); // Prints 2 1
    return 0;
}
*/
//===========================================
// Code 14: Returning Pointer from Function - Return address
/**
#include <stdio.h>
int* getPtr(int *x) { return x; } // Function returns pointer
int main() {
    int a = 42;
    int *p = getPtr(&a);
    printf("%d\n", *p);   // Prints 42
    return 0;
}
*/
//===========================================
// Code 15: Returning Pointer from Function - Return static array
/**
#include <stdio.h>
int* getArr() {
    static int arr[3] = {1,2,3}; // Static array persists after function returns
    return arr;
}
int main() {
    int *p = getArr();
    for(int i=0; i<3; i++)
        printf("%d ", p[i]); // Prints 1 2 3
    return 0;
}
*/
//===========================================
// Code 16: Character Pointer - Print string
/**
#include <stdio.h>
int main() {
    char *str = "Hello";  // Pointer to string literal
    printf("%s\n", str);  // Prints Hello
    return 0;
}
*/
//===========================================
// Code 17: Character Pointer - Change character
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    *p = 'B';             // Change first character to 'B'
    printf("%s\n", str);  // Prints Bi
    return 0;
}
*/
//===========================================
// Code 18: NULL Pointer - Check for NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;        // Initialize pointer to NULL
    if(p == NULL)
        printf("Pointer is NULL\n");
    return 0;
}
*/
//===========================================
// Code 19: NULL Pointer - Avoid dereferencing NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    if(p)
        printf("%d\n", *p); // Won't print
    else
        printf("Safe from crash\n");
    return 0;
}
*/
//===========================================
// Code 20: void Pointer - Store address of int
/**
#include <stdio.h>
int main() {
    int x = 42;
    void *p = &x;         // void pointer can point to any type
    printf("%d\n", *(int*)p); // Cast to int* before dereferencing
    return 0;
}
*/
//===========================================
// Code 21: void Pointer - Store address of float
/**
#include <stdio.h>
int main() {
    float f = 3.14;
    void *p = &f;
    printf("%.2f\n", *(float*)p); // Cast to float* before dereferencing
    return 0;
}
*/
//===========================================
// Code 22: Dereference Pointer - Print value
/**
#include <stdio.h>
int main() {
    int x = 5;
    int *p = &x;
    printf("%d\n", *p);   // Prints 5
    return 0;
}
*/
//===========================================
// Code 23: Dereference Pointer - Change value
/**
#include <stdio.h>
int main() {
    int x = 8;
    int *p = &x;
    *p = 20;              // Change value using pointer
    printf("%d\n", x);    // Prints 20
    return 0;
}
*/
//===========================================
// Code 24: Pointer Initialization - Initialize to NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;        // Good practice to initialize pointer
    printf("%p\n", p);    // Prints 0x0 or (nil)
    return 0;
}
*/
//===========================================
// Code 25: Pointer Initialization - Assign address later
/**
#include <stdio.h>
int *p;                  // Uninitialized pointer
int main() {
    int x = 10;
    p = &x;              // Assign address to pointer
    printf("%d\n", *p);  // Prints 10
    return 0;
}
*/
//===========================================
// Code 26: Pointers to Structures - Access members
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {1,2};
    struct Point *p = &pt;
    printf("%d %d\n", p->x, p->y); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 27: Pointers to Structures - Change member value
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {3,4};
    struct Point *p = &pt;
    p->x = 10;            // Change x member using pointer
    printf("%d\n", pt.x); // Prints 10
    return 0;
}
*/
//=========================================== 

// Code 28: Pointer Arithmetic - Add integer to pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    printf("%d\n", *(p+2)); // Prints 3
    return 0;
}
*/
//===========================================
// Code 29: Pointer Arithmetic - Subtract integer from pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {5,6,7};
    int *p = &arr[2];
    printf("%d\n", *(p-1)); // Prints 6
    return 0;
}
*/
//===========================================
// Code 30: Pointer Arithmetic - Difference between two pointers
/**
#include <stdio.h>
int main() {
    int arr[5] = {1,2,3,4,5};
    int *p1 = &arr[0];
    int *p2 = &arr[3];
    printf("%ld\n", p2 - p1); // Prints 3
    return 0;
}
*/
//===========================================
// Code 31: Pointers & Arrays - Print array using pointer
/**
#include <stdio.h>
int main() {
    int arr[4] = {10,20,30,40};
    int *p = arr;
    for(int i=0; i<4; i++)
        printf("%d ", *(p+i)); // Prints 10 20 30 40
    return 0;
}
*/
//===========================================
// Code 32: Pointers & Arrays - Modify array using pointer
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    *(p+2) = 99; // Change arr[2] to 99
    for(int i=0; i<3; i++)
        printf("%d ", arr[i]); // Prints 1 2 99
    return 0;
}
*/
//===========================================
// Code 33: Pointers & Arrays - Pointer as array index
/**
#include <stdio.h>
int main() {
    int arr[3] = {4,5,6};
    int *p = arr;
    printf("%d\n", p[1]); // Prints 5
    return 0;
}
*/
//===========================================
// Code 34: Array of Pointers - Array of string literals
/**
#include <stdio.h>
int main() {
    char *arr[] = {"one", "two", "three"};
    for(int i=0; i<3; i++)
        printf("%s ", arr[i]); // Prints one two three
    return 0;
}
*/
//===========================================
// Code 35: Array of Pointers - Array of int pointers
/**
#include <stdio.h>
int main() {
    int a=1, b=2, c=3;
    int *arr[3] = {&a, &b, &c};
    for(int i=0; i<3; i++)
        printf("%d ", *arr[i]); // Prints 1 2 3
    return 0;
}
*/
//===========================================
// Code 36: Array of Pointers - Change value via pointer array
/**
#include <stdio.h>
int main() {
    int a=10, b=20;
    int *arr[2] = {&a, &b};
    *arr[1] = 99; // Change b to 99
    printf("%d\n", b); // Prints 99
    return 0;
}
*/
//===========================================
// Code 37: Pointer to Pointer - Array of pointers to int
/**
#include <stdio.h>
int main() {
    int a=5, b=10;
    int *arr[2] = {&a, &b};
    int **pp = arr;
    printf("%d %d\n", **pp, *(*(pp+1))); // Prints 5 10
    return 0;
}
*/
//===========================================
// Code 38: Pointer to Pointer - Change value via double pointer
/**
#include <stdio.h>
int main() {
    int x = 7;
    int *p = &x;
    int **pp = &p;
    **pp = 42; // Change x to 42
    printf("%d\n", x); // Prints 42
    return 0;
}
*/
//===========================================
// Code 39: Passing Pointer to Function - Print array
/**
#include <stdio.h>
void printArr(int *arr, int n) {
    for(int i=0; i<n; i++)
        printf("%d ", arr[i]);
}
int main() {
    int arr[3] = {1,2,3};
    printArr(arr, 3); // Prints 1 2 3
    return 0;
}
*/
//===========================================
// Code 40: Passing Pointer to Function - Increment value
/**
#include <stdio.h>
void inc(int *p) {
    (*p)++;
}
int main() {
    int x = 9;
    inc(&x);
    printf("%d\n", x); // Prints 10
    return 0;
}
*/
//===========================================
// Code 41: Passing Pointer to Function - Swap two numbers
/**
#include <stdio.h>
void swap(int *a, int *b) {
    int t = *a;
    *a = *b;
    *b = t;
}
int main() {
    int x = 3, y = 4;
    swap(&x, &y);
    printf("%d %d\n", x, y); // Prints 4 3
    return 0;
}
*/
//===========================================
// Code 42: Passing Pointer to Function - Set array elements
/**
#include <stdio.h>
void setArr(int *arr, int n, int val) {
    for(int i=0; i<n; i++)
        arr[i] = val;
}
int main() {
    int arr[3];
    setArr(arr, 3, 7);
    for(int i=0; i<3; i++)
        printf("%d ", arr[i]); // Prints 7 7 7
    return 0;
}
*/
//===========================================
// Code 43: Returning Pointer from Function - Return pointer to int
/**
#include <stdio.h>
int* getAddr(int *x) {
    return x;
}
int main() {
    int a = 55;
    int *p = getAddr(&a);
    printf("%d\n", *p); // Prints 55
    return 0;
}
*/
//===========================================
// Code 44: Returning Pointer from Function - Return pointer to static int
/**
#include <stdio.h>
int* getStatic() {
    static int x = 123;
    return &x;
}
int main() {
    int *p = getStatic();
    printf("%d\n", *p); // Prints 123
    return 0;
}
*/
//===========================================
// Code 45: Returning Pointer from Function - Return pointer to static array
/**
#include <stdio.h>
int* getArr() {
    static int arr[2] = {9,8};
    return arr;
}
int main() {
    int *p = getArr();
    printf("%d %d\n", p[0], p[1]); // Prints 9 8
    return 0;
}
*/
//===========================================
// Code 46: Returning Pointer from Function - Return NULL pointer
/**
#include <stdio.h>
int* getNull() {
    return NULL;
}
int main() {
    int *p = getNull();
    if(p == NULL)
        printf("NULL pointer\n");
    return 0;
}
*/
//===========================================
// Code 47: Function Pointer - Call function using pointer
/**
#include <stdio.h>
void hello() { printf("Hello\n"); }
int main() {
    void (*fptr)() = hello;
    fptr(); // Calls hello
    return 0;
}
*/
//===========================================
// Code 48: Function Pointer - Pointer to function with arguments
/**
#include <stdio.h>
int add(int a, int b) { return a+b; }
int main() {
    int (*fptr)(int, int) = add;
    printf("%d\n", fptr(2,3)); // Prints 5
    return 0;
}
*/
//===========================================
// Code 49: Function Pointer - Array of function pointers
/**
#include <stdio.h>
void f1() { printf("A "); }
void f2() { printf("B "); }
int main() {
    void (*arr[2])() = {f1, f2};
    arr[0](); // Prints A
    arr[1](); // Prints B
    return 0;
}
*/
//===========================================
// Code 50: Function Pointer - Pass function pointer to another function
/**
#include <stdio.h>
void greet() { printf("Hi!\n"); }
void run(void (*f)()) { f(); }
int main() {
    run(greet); // Prints Hi!
    return 0;
}
*/
//===========================================
// Code 51: Pointer to Array - Access elements using pointer to array
/**
#include <stdio.h>
int main() {
    int arr[3] = {7,8,9};
    int (*p)[3] = &arr;
    printf("%d %d\n", (*p)[0], (*p)[2]); // Prints 7 9
    return 0;
}
*/
//===========================================
// Code 52: Pointer to Array - Loop through array using pointer to array
/**
#include <stdio.h>
int main() {
    int arr[4] = {1,2,3,4};
    int (*p)[4] = &arr;
    for(int i=0; i<4; i++)
        printf("%d ", (*p)[i]); // Prints 1 2 3 4
    return 0;
}
*/
//===========================================
// Code 53: Pointer to Array - Pass pointer to array to function
/**
#include <stdio.h>
void printArr(int (*p)[3]) {
    for(int i=0; i<3; i++)
        printf("%d ", (*p)[i]);
}
int main() {
    int arr[3] = {5,6,7};
    printArr(&arr); // Prints 5 6 7
    return 0;
}
*/
//===========================================
// Code 54: Pointers to Structures - Print structure members
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {1,2};
    struct Point *p = &pt;
    printf("%d %d\n", p->x, p->y); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 55: Pointers to Structures - Change structure member
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {3,4};
    struct Point *p = &pt;
    p->y = 99;
    printf("%d\n", pt.y); // Prints 99
    return 0;
}
*/
//===========================================
// Code 56: Pointers to Structures - Array of structures and pointers
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point arr[2] = {{1,2},{3,4}};
    struct Point *p = arr;
    printf("%d %d\n", (p+1)->x, (p+1)->y); // Prints 3 4
    return 0;
}
*/
//===========================================
// Code 57: Pointers to Structures - Pass structure pointer to function
/**
#include <stdio.h>
struct Point { int x, y; };
void print(struct Point *p) {
    printf("%d %d\n", p->x, p->y);
}
int main() {
    struct Point pt = {7,8};
    print(&pt); // Prints 7 8
    return 0;
}
*/
//===========================================
// Code 58: Pointer vs Array - Print using both
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    printf("%d %d\n", arr[1], *(p+1)); // Prints 2 2
    return 0;
}
*/
//===========================================
// Code 59: Pointer vs Array - Modify using pointer
/**
#include <stdio.h>
int main() {
    int arr[2] = {5,6};
    int *p = arr;
    *(p+1) = 10;
    printf("%d\n", arr[1]); // Prints 10
    return 0;
}
*/
//===========================================
// Code 60: Pointer vs Array - Sizeof difference
/**
#include <stdio.h>
int main() {
    int arr[5];
    int *p = arr;
    printf("%lu %lu\n", sizeof(arr), sizeof(p)); // Prints 20 8 (on 64-bit)
    return 0;
}
*/
//===========================================
// Code 61: Chain of Pointers - Double pointer to int
/**
#include <stdio.h>
int main() {
    int x = 11;
    int *p = &x;
    int **pp = &p;
    printf("%d\n", **pp); // Prints 11
    return 0;
}
*/
//===========================================
// Code 62: Chain of Pointers - Change value via double pointer
/**
#include <stdio.h>
int main() {
    int x = 22;
    int *p = &x;
    int **pp = &p;
    **pp = 33;
    printf("%d\n", x); // Prints 33
    return 0;
}
*/
//===========================================
// Code 63: Character Pointers - Print string using pointer
/**
#include <stdio.h>
int main() {
    char *str = "Pointer";
    printf("%s\n", str); // Prints Pointer
    return 0;
}
*/
//===========================================
// Code 64: Character Pointers - Print each character
/**
#include <stdio.h>
int main() {
    char *str = "C Lang";
    while(*str)
        printf("%c ", *str++);
    return 0;
}
*/
//===========================================
// Code 65: Character Pointers - Modify character array
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    *(p+1) = 'o';
    printf("%s\n", str); // Prints Ho
    return 0;
}
*/
//===========================================
// Code 66: NULL Pointer - Initialize and check
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    if(p == NULL)
        printf("Pointer is NULL\n");
    return 0;
}
*/
//===========================================
// Code 67: NULL Pointer - Avoid dereferencing
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    if(p)
        printf("%d\n", *p);
    else
        printf("Safe\n");
    return 0;
}
*/
//===========================================
// Code 68: void Pointer - Assign int and print
/**
#include <stdio.h>
int main() {
    int x = 77;
    void *p = &x;
    printf("%d\n", *(int*)p); // Prints 77
    return 0;
}
*/
//===========================================
// Code 69: void Pointer - Assign float and print
/**
#include <stdio.h>
int main() {
    float f = 2.5;
    void *p = &f;
    printf("%.1f\n", *(float*)p); // Prints 2.5
    return 0;
}
*/
//===========================================
// Code 70: Dangling Pointer - Local variable address returned
/**
#include <stdio.h>
int* getDangling() {
    int x = 10;
    return &x; // Dangling pointer
}
int main() {
    int *p = getDangling();
    // printf("%d\n", *p); // Undefined behavior
    printf("Dangling pointer example\n");
    return 0;
}
*/
//===========================================
// Code 71: Dangling Pointer - Freed memory
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *p = malloc(sizeof(int));
    *p = 5;
    free(p);
    // printf("%d\n", *p); // Dangling pointer
    printf("Dangling pointer after free\n");
    return 0;
}
*/
//===========================================
// Code 72: Dereference Pointer - Print value
/**
#include <stdio.h>
int main() {
    int x = 15;
    int *p = &x;
    printf("%d\n", *p); // Prints 15
    return 0;
}
*/
//===========================================
// Code 73: Dereference Pointer - Change value
/**
#include <stdio.h>
int main() {
    int x = 21;
    int *p = &x;
    *p = 42;
    printf("%d\n", x); // Prints 42
    return 0;
}
*/
//===========================================
// Code 74: Pointer Initialization - Assign address after declaration
/**
#include <stdio.h>
int main() {
    int *p;
    int x = 100;
    p = &x;
    printf("%d\n", *p); // Prints 100
    return 0;
}
*/
//===========================================
// Code 75: Pointer Initialization - Initialize to NULL
/**
#include <stdio.h>
int main() {
    int *p = NULL;
    printf("%p\n", p); // Prints 0x0 or (nil)
    return 0;
}
*/
//===========================================
// Code 76: Pointer Initialization - Assign address in function
/**
#include <stdio.h>
void setPtr(int **pp, int *x) {
    *pp = x;
}
int main() {
    int x = 9;
    int *p = NULL;
    setPtr(&p, &x);
    printf("%d\n", *p); // Prints 9
    return 0;
}
*/
//===========================================
// Code 77: Pointers vs Multi-D Arrays - Access 2D array with pointer
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int *p = &arr[0][0];
    for(int i=0; i<4; i++)
        printf("%d ", *(p+i)); // Prints 1 2 3 4
    return 0;
}
*/
//===========================================
// Code 78: Pointers vs Multi-D Arrays - Pointer to array row
/**
#include <stdio.h>
int main() {
    int arr[2][3] = {{1,2,3},{4,5,6}};
    int (*p)[3] = arr;
    for(int i=0; i<2; i++)
        for(int j=0; j<3; j++)
            printf("%d ", p[i][j]); // Prints 1 2 3 4 5 6
    return 0;
}
*/
//===========================================
// Code 79: Pointers vs Multi-D Arrays - Pass 2D array to function
/**
#include <stdio.h>
void print2D(int arr[2][2]) {
    for(int i=0; i<2; i++)
        for(int j=0; j<2; j++)
            printf("%d ", arr[i][j]);
}
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    print2D(arr); // Prints 1 2 3 4
    return 0;
}
*/
//===========================================
// Code 80: Pointers vs Multi-D Arrays - Pointer arithmetic on 2D array
/**
#include <stdio.h>
int main() {
    int arr[2][2] = {{1,2},{3,4}};
    int *p = &arr[0][0];
    printf("%d %d\n", *(p+1), *(p+3)); // Prints 2 4
    return 0;
}
*/
//===========================================
// Code 81: Pointer to Pointer - Array of string pointers
/**
#include <stdio.h>
int main() {
    char *arr[] = {"one", "two"};
    char **pp = arr;
    printf("%s %s\n", *pp, *(pp+1)); // Prints one two
    return 0;
}
*/
//===========================================
// Code 82: Pointer to Pointer - Pointer to pointer to structure
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {3,4};
    struct Point *p = &pt;
    struct Point **pp = &p;
    printf("%d %d\n", (*pp)->x, (*pp)->y); // Prints 3 4
    return 0;
}
*/
//===========================================
// Code 83: Pointer to Pointer - Pass double pointer to function
/**
#include <stdio.h>
void setVal(int **pp) {
    **pp = 77;
}
int main() {
    int x = 0;
    int *p = &x;
    setVal(&p);
    printf("%d\n", x); // Prints 77
    return 0;
}
*/
//===========================================
// Code 84: Pointer to Pointer - Return double pointer from function
/**
#include <stdio.h>
int** getPP(int **pp) { return pp; }
int main() {
    int x = 5;
    int *p = &x;
    int **pp = &p;
    int **res = getPP(pp);
    printf("%d\n", **res); // Prints 5
    return 0;
}
*/
//===========================================
// Code 85: Pointer to Pointer - Change pointer address
/**
#include <stdio.h>
int main() {
    int a = 1, b = 2;
    int *p = &a;
    int **pp = &p;
    *pp = &b; // Now p points to b
    printf("%d\n", *p); // Prints 2
    return 0;
}
*/
//===========================================
// Code 86: Pointer to Pointer - Array of pointers to int
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    int *arr[2] = {&a, &b};
    int **pp = arr;
    printf("%d %d\n", **pp, *(*(pp+1))); // Prints 10 20
    return 0;
}
*/
//===========================================
// Code 87: Pointer to Pointer - Array of pointers to char
/**
#include <stdio.h>
int main() {
    char *arr[] = {"A", "B"};
    char **pp = arr;
    printf("%s %s\n", *pp, *(pp+1)); // Prints A B
    return 0;
}
*/
//===========================================
// Code 88: Pointer to Pointer - Pass array of pointers to function
/**
#include <stdio.h>
void printPtrs(int **pp, int n) {
    for(int i=0; i<n; i++)
        printf("%d ", **(pp+i));
}
int main() {
    int a=1, b=2;
    int *arr[2] = {&a, &b};
    printPtrs(arr, 2); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 89: Pointer to Pointer - Pointer to pointer to array
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    int *p = arr;
    int **pp = &p;
    printf("%d\n", **pp); // Prints 1
    return 0;
}
*/
//===========================================
// Code 90: Pointer to Pointer - Pointer to pointer to char array
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    char **pp = &p;
    printf("%s\n", *pp); // Prints Hi
    return 0;
}
*/
//===========================================
// Code 91: Pointer to Pointer - Change string via double pointer
/**
#include <stdio.h>
int main() {
    char str[] = "Hi";
    char *p = str;
    char **pp = &p;
    **pp = 'B';
    printf("%s\n", str); // Prints Bi
    return 0;
}
*/
//===========================================
// Code 92: Pointer to Pointer - Double pointer to structure
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point pt = {5,6};
    struct Point *p = &pt;
    struct Point **pp = &p;
    (*pp)->y = 77;
    printf("%d\n", pt.y); // Prints 77
    return 0;
}
*/
//===========================================
// Code 93: Pointer to Pointer - Double pointer to array of pointers
/**
#include <stdio.h>
int main() {
    int a=1, b=2;
    int *arr[2] = {&a, &b};
    int **pp = arr;
    printf("%d %d\n", **pp, *(*(pp+1))); // Prints 1 2
    return 0;
}
*/
//===========================================
// Code 94: Pointer to Pointer - Double pointer to array of strings
/**
#include <stdio.h>
int main() {
    char *arr[] = {"X", "Y"};
    char **pp = arr;
    printf("%s %s\n", *pp, *(pp+1)); // Prints X Y
    return 0;
}
*/
//===========================================
// Code 95: Pointer to Pointer - Double pointer to array of structures
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point a = {1,2}, b = {3,4};
    struct Point *arr[2] = {&a, &b};
    struct Point **pp = arr;
    printf("%d %d\n", (*pp)->x, (*(pp+1))->y); // Prints 1 4
    return 0;
}
*/
//===========================================
// Code 96: Pointer to Pointer - Double pointer to array of arrays
/**
#include <stdio.h>
int main() {
    int a[2] = {1,2}, b[2] = {3,4};
    int *arr[2] = {a, b};
    int **pp = arr;
    printf("%d %d\n", pp[0][1], pp[1][0]); // Prints 2 3
    return 0;
}
*/
//===========================================
// Code 97: Pointer to Pointer - Double pointer to array of char arrays
/**
#include <stdio.h>
int main() {
    char a[] = "ab", b[] = "cd";
    char *arr[2] = {a, b};
    char **pp = arr;
    printf("%s %s\n", pp[0], pp[1]); // Prints ab cd
    return 0;
}
*/
//===========================================
// Code 98: Pointer to Pointer - Double pointer to array of int arrays
/**
#include <stdio.h>
int main() {
    int a[2] = {1,2}, b[2] = {3,4};
    int *arr[2] = {a, b};
    int **pp = arr;
    printf("%d %d\n", pp[0][0], pp[1][1]); // Prints 1 4
    return 0;
}
*/
//===========================================
// Code 99: Pointer to Pointer - Double pointer to array of float arrays
/**
#include <stdio.h>
int main() {
    float a[2] = {1.1,2.2}, b[2] = {3.3,4.4};
    float *arr[2] = {a, b};
    float **pp = arr;
    printf("%.1f %.1f\n", pp[0][1], pp[1][0]); // Prints 2.2 3.3
    return 0;
}
*/
//===========================================
// Code 100: Pointer to Pointer - Double pointer to array of pointers to structures
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point a = {1,2}, b = {3,4};
    struct Point *arr[2] = {&a, &b};
    struct Point **pp = arr;
    printf("%d %d\n", (*pp)->x, (*(pp+1))->y); // Prints 1 4
    return 0;
}
*/
//===========================================
//               String
//===========================================


// Code 1: String Declaration and Initialization
/**
#include <stdio.h>
int main() {
    char str1[10] = "Hello";
    char str2[] = "World";
    printf("%s %s\n", str1, str2); // Prints Hello World
    return 0;
}
*/
//===========================================
// Code 2: Input a String using scanf
/**
#include <stdio.h>
int main() {
    char name[20];
    printf("Enter your name: ");
    scanf("%s", name); // Reads until space
    printf("Hello, %s!\n", name);
    return 0;
}
*/
//===========================================
// Code 3: Input a String with spaces using fgets
/**
#include <stdio.h>
int main() {
    char line[50];
    printf("Enter a line: ");
    fgets(line, sizeof(line), stdin);
    printf("You entered: %s", line);
    return 0;
}
*/
//===========================================
// Code 4: String Length using strlen
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "C Programming";
    printf("Length: %lu\n", strlen(str)); // Prints 13
    return 0;
}
*/
//===========================================
// Code 5: Copy String using strcpy
/**
#include <stdio.h>
#include <string.h>
int main() {
    char src[] = "Copy me";
    char dest[20];
    strcpy(dest, src);
    printf("%s\n", dest); // Prints Copy me
    return 0;
}
*/
//===========================================
// Code 6: Concatenate Strings using strcat
/**
#include <stdio.h>
#include <string.h>
int main() {
    char s1[20] = "Hello, ";
    char s2[] = "World!";
    strcat(s1, s2);
    printf("%s\n", s1); // Prints Hello, World!
    return 0;
}
*/
//===========================================
// Code 7: Compare Strings using strcmp
/**
#include <stdio.h>
#include <string.h>
int main() {
    char a[] = "abc";
    char b[] = "abd";
    if(strcmp(a, b) < 0)
        printf("a < b\n");
    else
        printf("a >= b\n");
    return 0;
}
*/
//===========================================
// Code 8: Convert String to Uppercase
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "hello";
    for(int i=0; str[i]; i++)
        str[i] = toupper(str[i]);
    printf("%s\n", str); // Prints HELLO
    return 0;
}
*/
//===========================================
// Code 9: Convert String to Lowercase
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "HeLLo";
    for(int i=0; str[i]; i++)
        str[i] = tolower(str[i]);
    printf("%s\n", str); // Prints hello
    return 0;
}
*/
//===========================================
// Code 10: Reverse a String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "reverse";
    int n = strlen(str);
    for(int i=0; i<n/2; i++) {
        char t = str[i];
        str[i] = str[n-1-i];
        str[n-1-i] = t;
    }
    printf("%s\n", str); // Prints esrever
    return 0;
}
*/
//===========================================
// Code 11: Palindrome Check
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "madam";
    int n = strlen(str), flag = 1;
    for(int i=0; i<n/2; i++)
        if(str[i] != str[n-1-i]) flag = 0;
    printf(flag ? "Palindrome\n" : "Not Palindrome\n");
    return 0;
}
*/
//===========================================
// Code 12: Count Vowels in a String
/**
#include <stdio.h>
int main() {
    char str[] = "education";
    int count = 0;
    for(int i=0; str[i]; i++)
        if(str[i]=='a'||str[i]=='e'||str[i]=='i'||str[i]=='o'||str[i]=='u')
            count++;
    printf("Vowels: %d\n", count); // Prints 5
    return 0;
}
*/
//===========================================
// Code 13: Remove Spaces from String
/**
#include <stdio.h>
int main() {
    char str[] = "a b c d";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(str[i] != ' ')
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints abcd
    return 0;
}
*/
//===========================================
// Code 14: Find Substring using strstr
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "embedded systems";
    char *p = strstr(str, "sys");
    if(p)
        printf("Found at index %ld\n", p-str); // Prints index
    else
        printf("Not found\n");
    return 0;
}
*/
//===========================================
// Code 15: Replace Character in String
/**
#include <stdio.h>
int main() {
    char str[] = "banana";
    for(int i=0; str[i]; i++)
        if(str[i] == 'a') str[i] = 'o';
    printf("%s\n", str); // Prints bonono
    return 0;
}
*/
//===========================================
// Code 16: Count Words in a String
/**
#include <stdio.h>
int main() {
    char str[] = "count the words";
    int count = 1;
    for(int i=0; str[i]; i++)
        if(str[i] == ' ' && str[i+1] != ' ' && str[i+1] != '\0')
            count++;
    printf("Words: %d\n", count); // Prints 3
    return 0;
}
*/
//===========================================
// Code 17: Remove Duplicate Characters
/**
#include <stdio.h>
int main() {
    char str[] = "programming";
    int hash[256] = {0}, j = 0;
    for(int i=0; str[i]; i++)
        if(!hash[(unsigned char)str[i]]) {
            hash[(unsigned char)str[i]] = 1;
            str[j++] = str[i];
        }
    str[j] = '\0';
    printf("%s\n", str); // Prints progamin
    return 0;
}
*/
//===========================================
// Code 18: Copy N Characters using strncpy
/**
#include <stdio.h>
#include <string.h>
int main() {
    char src[] = "abcdef";
    char dest[10];
    strncpy(dest, src, 3);
    dest[3] = '\0';
    printf("%s\n", dest); // Prints abc
    return 0;
}
*/
//===========================================
// Code 19: Concatenate N Characters using strncat
/**
#include <stdio.h>
#include <string.h>
int main() {
    char s1[20] = "abc";
    char s2[] = "defgh";
    strncat(s1, s2, 2);
    printf("%s\n", s1); // Prints abcde
    return 0;
}
*/
//===========================================
// Code 20: Compare N Characters using strncmp
/**
#include <stdio.h>
#include <string.h>
int main() {
    char a[] = "abcdef";
    char b[] = "abcxyz";
    if(strncmp(a, b, 3) == 0)
        printf("First 3 chars match\n");
    else
        printf("No match\n");
    return 0;
}
*/
//===========================================
// Code 21: Find First Occurrence using strchr
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "banana";
    char *p = strchr(str, 'a');
    if(p)
        printf("First 'a' at %ld\n", p-str); // Prints 1
    return 0;
}
*/
//===========================================
// Code 22: Find Last Occurrence using strrchr
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "banana";
    char *p = strrchr(str, 'a');
    if(p)
        printf("Last 'a' at %ld\n", p-str); // Prints 5
    return 0;
}
*/
//===========================================
// Code 23: Remove Newline from fgets
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[20];
    fgets(str, sizeof(str), stdin);
    str[strcspn(str, "\n")] = '\0';
    printf("No newline: %s\n", str);
    return 0;
}
*/
//===========================================
// Code 24: Print ASCII Values of String
/**
#include <stdio.h>
int main() {
    char str[] = "abc";
    for(int i=0; str[i]; i++)
        printf("%c:%d ", str[i], str[i]);
    return 0;
}
*/
//===========================================
// Code 25: Toggle Case of String
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "AbC";
    for(int i=0; str[i]; i++)
        str[i] = islower(str[i]) ? toupper(str[i]) : tolower(str[i]);
    printf("%s\n", str); // Prints aBc
    return 0;
}
*/
//===========================================
// Code 26: Count Digits, Letters, Others
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "C123@!";
    int d=0, l=0, o=0;
    for(int i=0; str[i]; i++) {
        if(isdigit(str[i])) d++;
        else if(isalpha(str[i])) l++;
        else o++;
    }
    printf("Digits:%d Letters:%d Others:%d\n", d, l, o);
    return 0;
}
*/
//===========================================
// Code 27: Remove All Digits from String
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "a1b2c3";
    int j=0;
    for(int i=0; str[i]; i++)
        if(!isdigit(str[i]))
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints abc
    return 0;
}
*/
//===========================================
// Code 28: Insert Character at Position
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[20] = "abcd";
    int pos = 2;
    char ch = 'X';
    int n = strlen(str);
    for(int i=n; i>=pos; i--)
        str[i+1] = str[i];
    str[pos] = ch;
    printf("%s\n", str); // Prints abXcd
    return 0;
}
*/
//===========================================
// Code 29: Delete Character at Position
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "hello";
    int pos = 1;
    int n = strlen(str);
    for(int i=pos; i<n; i++)
        str[i] = str[i+1];
    printf("%s\n", str); // Prints hllo
    return 0;
}
*/
//===========================================
// Code 30: Remove All Occurrences of Character
/**
#include <stdio.h>
int main() {
    char str[] = "banana";
    char ch = 'a';
    int j=0;
    for(int i=0; str[i]; i++)
        if(str[i] != ch)
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints bnn
    return 0;
}
*/
//===========================================
// Code 31: Find Frequency of Each Character
/**
#include <stdio.h>
int main() {
    char str[] = "apple";
    int freq[256] = {0};
    for(int i=0; str[i]; i++)
        freq[(unsigned char)str[i]]++;
    for(int i=0; i<256; i++)
        if(freq[i])
            printf("%c:%d ", i, freq[i]);
    return 0;
}
*/
//===========================================
// Code 32: Find Longest Word in String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "find the longest word";
    int max=0, len=0, start=0, maxStart=0;
    for(int i=0; ; i++) {
        if(str[i]!=' ' && str[i]!='\0') {
            if(len==0) start=i;
            len++;
        } else {
            if(len>max) { max=len; maxStart=start; }
            len=0;
            if(str[i]=='\0') break;
        }
    }
    for(int i=0; i<max; i++)
        putchar(str[maxStart+i]);
    return 0;
}
*/
//===========================================
// Code 33: Print Each Word on New Line
/**
#include <stdio.h>
int main() {
    char str[] = "print each word";
    for(int i=0; str[i]; i++) {
        if(str[i]==' ')
            putchar('\n');
        else
            putchar(str[i]);
    }
    return 0;
}
*/
//===========================================
// Code 34: Check if All Characters Unique
/**
#include <stdio.h>
int main() {
    char str[] = "abcde";
    int hash[256] = {0}, flag=1;
    for(int i=0; str[i]; i++)
        if(hash[(unsigned char)str[i]]++)
            flag=0;
    printf(flag ? "Unique\n" : "Not Unique\n");
    return 0;
}
*/
//===========================================
// Code 35: Find First Non-Repeating Character
/**
#include <stdio.h>
int main() {
    char str[] = "swiss";
    int freq[256] = {0};
    for(int i=0; str[i]; i++)
        freq[(unsigned char)str[i]]++;
    for(int i=0; str[i]; i++)
        if(freq[(unsigned char)str[i]]==1) {
            printf("%c\n", str[i]);
            break;
        }
    return 0;
}
*/
//===========================================
// Code 36: Remove Consecutive Duplicates
/**
#include <stdio.h>
int main() {
    char str[] = "aaabbcdd";
    int j=0;
    for(int i=0; str[i]; i++)
        if(i==0 || str[i]!=str[i-1])
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints abcd
    return 0;
}
*/
//===========================================
// Code 37: Replace All Spaces with Underscore
/**
#include <stdio.h>
int main() {
    char str[] = "a b c";
    for(int i=0; str[i]; i++)
        if(str[i]==' ')
            str[i]='_';
    printf("%s\n", str); // Prints a_b_c
    return 0;
}
*/
//===========================================
// Code 38: Find All Occurrences of Character
/**
#include <stdio.h>
int main() {
    char str[] = "banana";
    char ch = 'a';
    for(int i=0; str[i]; i++)
        if(str[i]==ch)
            printf("%d ", i); // Prints 1 3 5
    return 0;
}
*/
//===========================================
// Code 39: Print String in Reverse Order (without modifying)
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "reverse";
    int n = strlen(str);
    for(int i=n-1; i>=0; i--)
        putchar(str[i]);
    return 0;
}
*/
//===========================================
// Code 40: Check if Two Strings are Anagrams
/**
#include <stdio.h>
#include <string.h>
int main() {
    char a[] = "listen", b[] = "silent";
    int freq[256] = {0}, flag=1;
    for(int i=0; a[i]; i++) freq[(unsigned char)a[i]]++;
    for(int i=0; b[i]; i++) freq[(unsigned char)b[i]]--;
    for(int i=0; i<256; i++)
        if(freq[i]!=0) flag=0;
    printf(flag ? "Anagrams\n" : "Not Anagrams\n");
    return 0;
}
*/

// Code 41: Count Occurrences of a Substring
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "ababab";
    char sub[] = "ab";
    int count = 0;
    char *p = str;
    while ((p = strstr(p, sub)) != NULL) { // Find substring
        count++;
        p += strlen(sub); // Move pointer forward
    }
    printf("Occurrences: %d\n", count); // Prints 3
    return 0;
}
*/
//===========================================
// Code 42: Remove All Vowels from String
/**
#include <stdio.h>
int main() {
    char str[] = "education";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(str[i]!='a' && str[i]!='e' && str[i]!='i' && str[i]!='o' && str[i]!='u')
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints dctn
    return 0;
}
*/
//===========================================
// Code 43: Find and Replace Substring
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[50] = "abcabcabc";
    char *pos = strstr(str, "ab");
    if(pos) {
        strncpy(pos, "xy", 2); // Replace first "ab" with "xy"
    }
    printf("%s\n", str); // Prints xycabcabc
    return 0;
}
*/
//===========================================
// Code 44: Remove Punctuation from String
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "Hello, world!";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(!ispunct(str[i]))
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints Hello world
    return 0;
}
*/
//===========================================
// Code 45: Find Smallest and Largest Character
/**
#include <stdio.h>
int main() {
    char str[] = "zebra";
    char min = str[0], max = str[0];
    for(int i=1; str[i]; i++) {
        if(str[i] < min) min = str[i];
        if(str[i] > max) max = str[i];
    }
    printf("Min: %c, Max: %c\n", min, max); // Prints Min: a, Max: z
    return 0;
}
*/
//===========================================
// Code 46: Remove Leading and Trailing Spaces
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "   hello world   ";
    int start = 0, end = strlen(str) - 1;
    while(str[start] == ' ') start++;
    while(end > start && str[end] == ' ') end--;
    for(int i=start; i<=end; i++)
        putchar(str[i]);
    putchar('\n'); // Prints hello world
    return 0;
}
*/
//===========================================
// Code 47: Capitalize First Letter of Each Word
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "hello world";
    int newWord = 1;
    for(int i=0; str[i]; i++) {
        if(str[i] == ' ')
            newWord = 1;
        else if(newWord && isalpha(str[i])) {
            str[i] = toupper(str[i]);
            newWord = 0;
        }
    }
    printf("%s\n", str); // Prints Hello World
    return 0;
}
*/
//===========================================
// Code 48: Find Longest Palindromic Substring (Brute Force)
 /**
#include <stdio.h>
#include <string.h>
int isPal(char *s, int l, int r) {
    while(l < r)
        if(s[l++] != s[r--]) return 0;
    return 1;
}
int main() {
    char str[] = "babad";
    int maxLen = 1, start = 0, n = strlen(str);
    for(int i=0; i<n; i++)
        for(int j=i; j<n; j++)
            if(isPal(str, i, j) && (j-i+1) > maxLen) {
                start = i;
                maxLen = j-i+1;
            }
    for(int i=0; i<maxLen; i++)
        putchar(str[start+i]);
    putchar('\n'); // Prints bab or aba
    return 0;
}
*/
//===========================================
// Code 49: Remove All Uppercase Letters
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "HeLLo";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(!isupper(str[i]))
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints eo
    return 0;
}
*/
//===========================================
// Code 50: Remove All Lowercase Letters
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "HeLLo";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(!islower(str[i]))
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints HLL
    return 0;
}
*/
//===========================================
// Code 51: Print All Permutations of String (Recursive)
/**
#include <stdio.h>
#include <string.h>
void swap(char *x, char *y) { char t = *x; *x = *y; *y = t; }
void permute(char *str, int l, int r) {
    if(l == r) { printf("%s\n", str); return; }
    for(int i=l; i<=r; i++) {
        swap(&str[l], &str[i]);
        permute(str, l+1, r);
        swap(&str[l], &str[i]);
    }
}
int main() {
    char s[] = "abc";
    permute(s, 0, strlen(s)-1); // Prints all permutations
    return 0;
}
*/
//===========================================
// Code 52: Print All Substrings
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "abc";
    int n = strlen(str);
    for(int i=0; i<n; i++)
        for(int j=i; j<n; j++) {
            for(int k=i; k<=j; k++)
                putchar(str[k]);
            putchar('\n');
        }
    return 0;
}
*/
//===========================================
// Code 53: Find Most Frequent Character
/**
#include <stdio.h>
int main() {
    char str[] = "banana";
    int freq[256] = {0}, max = 0;
    char res = 0;
    for(int i=0; str[i]; i++)
        if(++freq[(unsigned char)str[i]] > max) {
            max = freq[(unsigned char)str[i]];
            res = str[i];
        }
    printf("Most frequent: %c\n", res); // Prints a
    return 0;
}
*/
//===========================================
// Code 54: Remove All Non-Alphabetic Characters
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "C123@!abc";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(isalpha(str[i]))
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints Cabc
    return 0;
}
*/
//===========================================
// Code 55: Find All Palindromic Substrings
/**
#include <stdio.h>
#include <string.h>
int isPal(char *s, int l, int r) {
    while(l < r)
        if(s[l++] != s[r--]) return 0;
    return 1;
}
int main() {
    char str[] = "aba";
    int n = strlen(str);
    for(int i=0; i<n; i++)
        for(int j=i; j<n; j++)
            if(isPal(str, i, j)) {
                for(int k=i; k<=j; k++)
                    putchar(str[k]);
                putchar('\n');
            }
    return 0;
}
*/
//===========================================
// Code 56: Remove All Non-Digit Characters
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "a1b2c3";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(isdigit(str[i]))
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints 123
    return 0;
}
*/
//===========================================
// Code 57: Print Words in Reverse Order
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "one two three";
    char *words[10];
    int n = 0;
    char *tok = strtok(str, " ");
    while(tok) {
        words[n++] = tok;
        tok = strtok(NULL, " ");
    }
    for(int i=n-1; i>=0; i--)
        printf("%s ", words[i]); // Prints three two one
    return 0;
}
*/
//===========================================
// Code 58: Remove Duplicate Words
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "cat dog cat bird";
    char *words[10];
    int n = 0, unique;
    char *tok = strtok(str, " ");
    while(tok) {
        unique = 1;
        for(int i=0; i<n; i++)
            if(strcmp(words[i], tok) == 0)
                unique = 0;
        if(unique)
            words[n++] = tok;
        tok = strtok(NULL, " ");
    }
    for(int i=0; i<n; i++)
        printf("%s ", words[i]); // Prints cat dog bird
    return 0;
}
*/
//===========================================
// Code 59: Find Shortest Word in String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "find the shortest word";
    int min=100, len=0, start=0, minStart=0;
    for(int i=0; ; i++) {
        if(str[i]!=' ' && str[i]!='\0') {
            if(len==0) start=i;
            len++;
        } else {
            if(len && len<min) { min=len; minStart=start; }
            len=0;
            if(str[i]=='\0') break;
        }
    }
    for(int i=0; i<min; i++)
        putchar(str[minStart+i]);
    return 0;
}
*/
//===========================================
// Code 60: Remove All Spaces (In-Place)
/**
#include <stdio.h>
int main() {
    char str[] = "a b c d";
    int j = 0;
    for(int i=0; str[i]; i++)
        if(str[i] != ' ')
            str[j++] = str[i];
    str[j] = '\0';
    printf("%s\n", str); // Prints abcd
    return 0;
}
*/
//===========================================
// Code 61: Print Each Character with Index
/**
#include <stdio.h>
int main() {
    char str[] = "abc";
    for(int i=0; str[i]; i++)
        printf("str[%d]=%c\n", i, str[i]);
    return 0;
}
*/
//===========================================
// Code 62: Find All Unique Characters
/**
#include <stdio.h>
int main() {
    char str[] = "banana";
    int freq[256] = {0};
    for(int i=0; str[i]; i++)
        freq[(unsigned char)str[i]]++;
    for(int i=0; str[i]; i++)
        if(freq[(unsigned char)str[i]] == 1)
            printf("%c ", str[i]); // Prints b
    return 0;
}
*/
//===========================================
// Code 63: Print ASCII Sum of String
/**
#include <stdio.h>
int main() {
    char str[] = "abc";
    int sum = 0;
    for(int i=0; str[i]; i++)
        sum += str[i];
    printf("%d\n", sum); // Prints 294
    return 0;
}
*/
//===========================================
// Code 64: Print String Backwards Using Recursion
/**
#include <stdio.h>
void printRev(char *str, int i) {
    if(str[i] == '\0') return;
    printRev(str, i+1);
    putchar(str[i]);
}
int main() {
    char s[] = "hello";
    printRev(s, 0); // Prints olleh
    return 0;
}
*/
//===========================================
// Code 65: Find All Words Starting with a Vowel
/**
#include <stdio.h>
#include <string.h>
int isVowel(char c) {
    return c=='a'||c=='e'||c=='i'||c=='o'||c=='u'||
           c=='A'||c=='E'||c=='I'||c=='O'||c=='U';
}
int main() {
    char str[] = "apple orange banana egg";
    char *tok = strtok(str, " ");
    while(tok) {
        if(isVowel(tok[0]))
            printf("%s ", tok); // Prints apple orange egg
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 66: Print All Prefixes of String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "abcd";
    int n = strlen(str);
    for(int i=1; i<=n; i++) {
        for(int j=0; j<i; j++)
            putchar(str[j]);
        putchar('\n');
    }
    return 0;
}
*/
//===========================================
// Code 67: Print All Suffixes of String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "abcd";
    int n = strlen(str);
    for(int i=0; i<n; i++) {
        for(int j=i; j<n; j++)
            putchar(str[j]);
        putchar('\n');
    }
    return 0;
}
*/
//===========================================
// Code 68: Find All Words Ending with a Vowel
/**
#include <stdio.h>
#include <string.h>
int isVowel(char c) {
    return c=='a'||c=='e'||c=='i'||c=='o'||c=='u'||
           c=='A'||c=='E'||c=='I'||c=='O'||c=='U';
}
int main() {
    char str[] = "apple orange banana egg";
    char *tok = strtok(str, " ");
    while(tok) {
        int n = strlen(tok);
        if(isVowel(tok[n-1]))
            printf("%s ", tok); // Prints apple orange
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 69: Find All Words with Length > 3
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "cat dog elephant bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(strlen(tok) > 3)
            printf("%s ", tok); // Prints elephant
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 70: Replace All Digits with '*'
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[] = "a1b2c3";
    for(int i=0; str[i]; i++)
        if(isdigit(str[i]))
            str[i] = '*';
    printf("%s\n", str); // Prints a*b*c*
    return 0;
}
*/
//===========================================
// Code 71: Print All Palindromic Words
/**
#include <stdio.h>
#include <string.h>
int isPal(char *s) {
    int l = 0, r = strlen(s)-1;
    while(l < r)
        if(s[l++] != s[r--]) return 0;
    return 1;
}
int main() {
    char str[] = "madam racecar apple";
    char *tok = strtok(str, " ");
    while(tok) {
        if(isPal(tok))
            printf("%s ", tok); // Prints madam racecar
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 72: Print All Words in Uppercase
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main() {
    char str[] = "hello world";
    char *tok = strtok(str, " ");
    while(tok) {
        for(int i=0; tok[i]; i++)
            putchar(toupper(tok[i]));
        putchar(' ');
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 73: Print All Words in Lowercase
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main() {
    char str[] = "HELLO WORLD";
    char *tok = strtok(str, " ");
    while(tok) {
        for(int i=0; tok[i]; i++)
            putchar(tolower(tok[i]));
        putchar(' ');
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 74: Print All Words with Even Length
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "cat dog elephant bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(strlen(tok) % 2 == 0)
            printf("%s ", tok); // Prints even length words
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 75: Print All Words with Odd Length
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "cat dog elephant bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(strlen(tok) % 2 != 0)
            printf("%s ", tok); // Prints odd length words
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 76: Print All Words Containing 'a'
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "cat dog apple bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(strchr(tok, 'a'))
            printf("%s ", tok); // Prints cat apple bat
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 77: Print All Words Not Containing 'a'
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "cat dog apple bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(!strchr(tok, 'a'))
            printf("%s ", tok); // Prints dog
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 78: Print All Words Starting with Capital Letter
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main() {
    char str[] = "Cat dog Apple Bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(isupper(tok[0]))
            printf("%s ", tok); // Prints Cat Apple Bat
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 79: Print All Words Ending with 't'
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "cat dog bat";
    char *tok = strtok(str, " ");
    while(tok) {
        int n = strlen(tok);
        if(tok[n-1] == 't')
            printf("%s ", tok); // Prints cat bat
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 80: Print All Words with Only Vowels
/**
#include <stdio.h>
#include <string.h>
int onlyVowels(char *s) {
    for(int i=0; s[i]; i++)
        if(strchr("aeiouAEIOU", s[i]) == NULL)
            return 0;
    return 1;
}
int main() {
    char str[] = "aei dog ou";
    char *tok = strtok(str, " ");
    while(tok) {
        if(onlyVowels(tok))
            printf("%s ", tok); // Prints aei ou
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 81: Print All Words with Only Consonants
/**
#include <stdio.h>
#include <string.h>
int onlyCons(char *s) {
    for(int i=0; s[i]; i++)
        if(strchr("aeiouAEIOU", s[i]) != NULL)
            return 0;
    return 1;
}
int main() {
    char str[] = "bcdfg dog xyz";
    char *tok = strtok(str, " ");
    while(tok) {
        if(onlyCons(tok))
            printf("%s ", tok); // Prints bcdfg xyz
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 82: Print All Words with Digits
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasDigit(char *s) {
    for(int i=0; s[i]; i++)
        if(isdigit(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "abc a1b2 123 xyz";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasDigit(tok))
            printf("%s ", tok); // Prints a1b2 123
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 83: Print All Words Without Digits
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasDigit(char *s) {
    for(int i=0; s[i]; i++)
        if(isdigit(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "abc a1b2 123 xyz";
    char *tok = strtok(str, " ");
    while(tok) {
        if(!hasDigit(tok))
            printf("%s ", tok); // Prints abc xyz
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 84: Print All Words with Special Characters
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasSpecial(char *s) {
    for(int i=0; s[i]; i++)
        if(!isalnum(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "abc a!b 123 x@y";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasSpecial(tok))
            printf("%s ", tok); // Prints a!b x@y
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 85: Print All Words Without Special Characters
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasSpecial(char *s) {
    for(int i=0; s[i]; i++)
        if(!isalnum(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "abc a!b 123 x@y";
    char *tok = strtok(str, " ");
    while(tok) {
        if(!hasSpecial(tok))
            printf("%s ", tok); // Prints abc 123
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 86: Print All Words with Repeated Characters
/**
#include <stdio.h>
#include <string.h>
int hasRepeat(char *s) {
    int freq[256] = {0};
    for(int i=0; s[i]; i++)
        if(freq[(unsigned char)s[i]]++)
            return 1;
    return 0;
}
int main() {
    char str[] = "apple dog noon";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasRepeat(tok))
            printf("%s ", tok); // Prints apple noon
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 87: Print All Words Without Repeated Characters
/**
#include <stdio.h>
#include <string.h>
int hasRepeat(char *s) {
    int freq[256] = {0};
    for(int i=0; s[i]; i++)
        if(freq[(unsigned char)s[i]]++)
            return 1;
    return 0;
}
int main() {
    char str[] = "apple dog noon";
    char *tok = strtok(str, " ");
    while(tok) {
        if(!hasRepeat(tok))
            printf("%s ", tok); // Prints dog
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 88: Print All Words with Same Start and End Letter
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "level dog noon";
    char *tok = strtok(str, " ");
    while(tok) {
        int n = strlen(tok);
        if(tok[0] == tok[n-1])
            printf("%s ", tok); // Prints level noon
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 89: Print All Words with Different Start and End Letter
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "level dog noon";
    char *tok = strtok(str, " ");
    while(tok) {
        int n = strlen(tok);
        if(tok[0] != tok[n-1])
            printf("%s ", tok); // Prints dog
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 90: Print All Words with Length Equal to 4
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "this test pass four";
    char *tok = strtok(str, " ");
    while(tok) {
        if(strlen(tok) == 4)
            printf("%s ", tok); // Prints this test pass four
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 91: Print All Words with Length Not Equal to 4
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[] = "this test pass four";
    char *tok = strtok(str, " ");
    while(tok) {
        if(strlen(tok) != 4)
            printf("%s ", tok); // Prints
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 92: Print All Words with More Than One Vowel
/**
#include <stdio.h>
#include <string.h>
int countVowels(char *s) {
    int c = 0;
    for(int i=0; s[i]; i++)
        if(strchr("aeiouAEIOU", s[i]))
            c++;
    return c;
}
int main() {
    char str[] = "apple dog elephant";
    char *tok = strtok(str, " ");
    while(tok) {
        if(countVowels(tok) > 1)
            printf("%s ", tok); // Prints apple elephant
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 93: Print All Words with No Vowels
/**
#include <stdio.h>
#include <string.h>
int hasVowel(char *s) {
    for(int i=0; s[i]; i++)
        if(strchr("aeiouAEIOU", s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "sky fly try";
    char *tok = strtok(str, " ");
    while(tok) {
        if(!hasVowel(tok))
            printf("%s ", tok); // Prints sky fly try
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 94: Print All Words with All Vowels
/**
#include <stdio.h>
#include <string.h>
int allVowels(char *s) {
    char *v = "aeiou";
    for(int i=0; v[i]; i++)
        if(!strchr(s, v[i]))
            return 0;
    return 1;
}
int main() {
    char str[] = "education sequoia";
    char *tok = strtok(str, " ");
    while(tok) {
        if(allVowels(tok))
            printf("%s ", tok); // Prints sequoia
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 95: Print All Words with At Least One Uppercase Letter
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasUpper(char *s) {
    for(int i=0; s[i]; i++)
        if(isupper(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "cat Dog Apple bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasUpper(tok))
            printf("%s ", tok); // Prints Dog Apple
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 96: Print All Words with At Least One Lowercase Letter
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasLower(char *s) {
    for(int i=0; s[i]; i++)
        if(islower(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "CAT DOG Apple bat";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasLower(tok))
            printf("%s ", tok); // Prints Apple bat
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 97: Print All Words with At Least One Special Character
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasSpecial(char *s) {
    for(int i=0; s[i]; i++)
        if(!isalnum(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "cat d@g apple b#t";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasSpecial(tok))
            printf("%s ", tok); // Prints d@g b#t
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 98: Print All Words with At Least One Digit
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int hasDigit(char *s) {
    for(int i=0; s[i]; i++)
        if(isdigit(s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "cat d0g apple b4t";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasDigit(tok))
            printf("%s ", tok); // Prints d0g b4t
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 99: Print All Words with At Least One Consonant
/**
#include <stdio.h>
#include <string.h>
int hasCons(char *s) {
    for(int i=0; s[i]; i++)
        if(strchr("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ", s[i]))
            return 1;
    return 0;
}
int main() {
    char str[] = "aei dog ou";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasCons(tok))
            printf("%s ", tok); // Prints dog
        tok = strtok(NULL, " ");
    }
    return 0;
}
*/
//===========================================
// Code 100: Print All Words with At Least One Repeated Character
/**
#include <stdio.h>
#include <string.h>
int hasRepeat(char *s) {
    int freq[256] = {0};
    for(int i=0; s[i]; i++)
        if(freq[(unsigned char)s[i]]++)
            return 1;
    return 0;
}
int main() {
    char str[] = "apple dog noon";
    char *tok = strtok(str, " ");
    while(tok) {
        if(hasRepeat(tok))
            printf("%s ", tok); // Prints apple noon
        tok = strtok(NULL, " ");
    }
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
//===========================================
//       🔹 16. **File Handling**
//===========================================

// Code 1: Open and Close a File
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w"); // Open file for writing
    if(fp) {
        printf("File opened successfully\n");
        fclose(fp); // Close file
    }
    return 0;
}
*/
//===========================================
// Code 2: Write a Character to File using fputc
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w");
    if(fp) {
        fputc('A', fp); // Write character
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 3: Read a Character from File using fgetc
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        char ch = fgetc(fp); // Read character
        printf("%c\n", ch); // Prints A
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 4: Write a String to File using fputs
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w");
    if(fp) {
        fputs("Hello, File!", fp); // Write string
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 5: Read a String from File using fgets
/**
#include <stdio.h>
int main() {
    char buf[50];
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fgets(buf, sizeof(buf), fp); // Read string
        printf("%s\n", buf);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 6: Write Formatted Data using fprintf
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w");
    if(fp) {
        int x = 10;
        fprintf(fp, "Value: %d\n", x); // Write formatted data
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 7: Read Formatted Data using fscanf
/**
#include <stdio.h>
int main() {
    int x;
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fscanf(fp, "Value: %d", &x); // Read formatted data
        printf("%d\n", x); // Prints 10
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 8: Append Data to File
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "a"); // Open in append mode
    if(fp) {
        fputs("Appended line\n", fp);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 9: Read File Character by Character
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        char ch;
        while((ch = fgetc(fp)) != EOF)
            putchar(ch);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 10: Read File Line by Line
/**
#include <stdio.h>
int main() {
    char buf[100];
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        while(fgets(buf, sizeof(buf), fp))
            printf("%s", buf);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 11: Write and Read Binary Data using fwrite/fread
/**
#include <stdio.h>
int main() {
    int arr[3] = {1,2,3};
    FILE *fp = fopen("data.bin", "wb");
    if(fp) {
        fwrite(arr, sizeof(int), 3, fp); // Write binary
        fclose(fp);
    }
    int brr[3] = {0};
    fp = fopen("data.bin", "rb");
    if(fp) {
        fread(brr, sizeof(int), 3, fp); // Read binary
        for(int i=0; i<3; i++) printf("%d ", brr[i]);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 12: File Modes Example
/**
#include <stdio.h>
int main() {
    FILE *fp1 = fopen("a.txt", "r");   // Read
    FILE *fp2 = fopen("b.txt", "w");   // Write
    FILE *fp3 = fopen("c.txt", "a");   // Append
    FILE *fp4 = fopen("d.txt", "rb");  // Read binary
    FILE *fp5 = fopen("e.txt", "wb");  // Write binary
    if(fp1) fclose(fp1);
    if(fp2) fclose(fp2);
    if(fp3) fclose(fp3);
    if(fp4) fclose(fp4);
    if(fp5) fclose(fp5);
    return 0;
}
*/
//===========================================
// Code 13: Check if File Exists
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        printf("File exists\n");
        fclose(fp);
    } else {
        printf("File does not exist\n");
    }
    return 0;
}
*/
//===========================================
// Code 14: Count Number of Lines in File
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    int lines = 0;
    char ch;
    if(fp) {
        while((ch = fgetc(fp)) != EOF)
            if(ch == '\n') lines++;
        fclose(fp);
    }
    printf("Lines: %d\n", lines);
    return 0;
}
*/
//===========================================
// Code 15: Count Number of Words in File
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    int words = 0, inWord = 0;
    char ch;
    if(fp) {
        while((ch = fgetc(fp)) != EOF) {
            if(isspace(ch))
                inWord = 0;
            else if(!inWord) {
                inWord = 1;
                words++;
            }
        }
        fclose(fp);
    }
    printf("Words: %d\n", words);
    return 0;
}
*/
//===========================================
// Code 16: Copy File Content
/**
#include <stdio.h>
int main() {
    FILE *src = fopen("test.txt", "r");
    FILE *dest = fopen("copy.txt", "w");
    char ch;
    if(src && dest) {
        while((ch = fgetc(src)) != EOF)
            fputc(ch, dest);
        fclose(src);
        fclose(dest);
    }
    return 0;
}
*/
//===========================================
// Code 17: Rename a File
/**
#include <stdio.h>
int main() {
    if(rename("old.txt", "new.txt") == 0)
        printf("File renamed\n");
    else
        printf("Rename failed\n");
    return 0;
}
*/
//===========================================
// Code 18: Delete a File
/**
#include <stdio.h>
int main() {
    if(remove("delete.txt") == 0)
        printf("File deleted\n");
    else
        printf("Delete failed\n");
    return 0;
}
*/
//===========================================
// Code 19: Get File Size using fseek/ftell
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fseek(fp, 0, SEEK_END); // Move to end
        long size = ftell(fp);  // Get position (size)
        printf("Size: %ld bytes\n", size);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 20: Random Access - fseek, ftell, rewind
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fseek(fp, 5, SEEK_SET); // Move to 5th byte
        printf("Position: %ld\n", ftell(fp));
        rewind(fp); // Go back to start
        printf("Position after rewind: %ld\n", ftell(fp));
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 21: Read Specific Line from File
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    char buf[100];
    int line = 3, count = 1;
    if(fp) {
        while(fgets(buf, sizeof(buf), fp)) {
            if(count++ == line) {
                printf("%s", buf);
                break;
            }
        }
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 22: Write Structure to File (Binary)
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point p = {10, 20};
    FILE *fp = fopen("point.bin", "wb");
    if(fp) {
        fwrite(&p, sizeof(p), 1, fp);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 23: Read Structure from File (Binary)
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point p;
    FILE *fp = fopen("point.bin", "rb");
    if(fp) {
        fread(&p, sizeof(p), 1, fp);
        printf("%d %d\n", p.x, p.y);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 24: Append Structure to File
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point p = {30, 40};
    FILE *fp = fopen("point.bin", "ab");
    if(fp) {
        fwrite(&p, sizeof(p), 1, fp);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 25: Read All Structures from File
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point p;
    FILE *fp = fopen("point.bin", "rb");
    if(fp) {
        while(fread(&p, sizeof(p), 1, fp))
            printf("%d %d\n", p.x, p.y);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 26: Check End of File using feof
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    char ch;
    if(fp) {
        while(!feof(fp)) {
            ch = fgetc(fp);
            if(ch != EOF) putchar(ch);
        }
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 27: Flush Output Buffer using fflush
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w");
    if(fp) {
        fputs("Hello", fp);
        fflush(fp); // Flush buffer to file
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 28: Use Temporary File with tmpfile
/**
#include <stdio.h>
int main() {
    FILE *fp = tmpfile(); // Create temporary file
    if(fp) {
        fputs("Temp data", fp);
        rewind(fp);
        char buf[20];
        fgets(buf, sizeof(buf), fp);
        printf("%s\n", buf); // Prints Temp data
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 29: File Pointer as Function Argument
/**
#include <stdio.h>
void writeHello(FILE *fp) {
    fputs("Hello\n", fp);
}
int main() {
    FILE *fp = fopen("test.txt", "w");
    if(fp) {
        writeHello(fp);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 30: Read File Backwards (last to first char)
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fseek(fp, 0, SEEK_END);
        long size = ftell(fp);
        for(long i=size-1; i>=0; i--) {
            fseek(fp, i, SEEK_SET);
            putchar(fgetc(fp));
        }
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 31: Write Multiple Lines to File
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("lines.txt", "w");
    if(fp) {
        for(int i=1; i<=5; i++)
            fprintf(fp, "Line %d\n", i);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 32: Read and Print File Until Specific Word
/**
#include <stdio.h>
#include <string.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    char buf[100];
    if(fp) {
        while(fgets(buf, sizeof(buf), fp)) {
            if(strstr(buf, "STOP")) break;
            printf("%s", buf);
        }
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 33: Count Characters in File
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    int count = 0;
    char ch;
    if(fp) {
        while((ch = fgetc(fp)) != EOF)
            count++;
        fclose(fp);
    }
    printf("Characters: %d\n", count);
    return 0;
}
*/
//===========================================
// Code 34: Overwrite File Content
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w");
    if(fp) {
        fputs("Overwritten\n", fp);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 35: Open File in Read/Write Mode ("r+")
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r+");
    if(fp) {
        fputs("Edit", fp);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 36: Open File in Write/Read Mode ("w+")
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w+");
    if(fp) {
        fputs("New Data", fp);
        rewind(fp);
        char buf[20];
        fgets(buf, sizeof(buf), fp);
        printf("%s\n", buf);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 37: Open File in Append/Read Mode ("a+")
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "a+");
    if(fp) {
        fputs("Appended\n", fp);
        rewind(fp);
        char buf[100];
        while(fgets(buf, sizeof(buf), fp))
            printf("%s", buf);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 38: Check File Pointer for NULL
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("nofile.txt", "r");
    if(fp == NULL)
        printf("File not found\n");
    else
        fclose(fp);
    return 0;
}
*/
//===========================================
// Code 39: Write and Read Float Data
/**
#include <stdio.h>
int main() {
    float f = 3.14f, g = 0.0f;
    FILE *fp = fopen("float.bin", "wb");
    if(fp) {
        fwrite(&f, sizeof(float), 1, fp);
        fclose(fp);
    }
    fp = fopen("float.bin", "rb");
    if(fp) {
        fread(&g, sizeof(float), 1, fp);
        printf("%.2f\n", g); // Prints 3.14
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 40: Write and Read String Array
/**
#include <stdio.h>
#include <string.h>
int main() {
    char *arr[] = {"one", "two", "three"};
    FILE *fp = fopen("strs.txt", "w");
    if(fp) {
        for(int i=0; i<3; i++)
            fprintf(fp, "%s\n", arr[i]);
        fclose(fp);
    }
    char buf[20];
    fp = fopen("strs.txt", "r");
    if(fp) {
        while(fgets(buf, sizeof(buf), fp))
            printf("%s", buf);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 41: Move File Pointer to Start, Middle, End
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fseek(fp, 0, SEEK_SET); // Start
        fseek(fp, 0, SEEK_END); // End
        fseek(fp, 5, SEEK_SET); // 5th byte
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 42: Print File Content in Uppercase
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    char ch;
    if(fp) {
        while((ch = fgetc(fp)) != EOF)
            putchar(toupper(ch));
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 43: Print File Content in Reverse Order (lines)
/**
#include <stdio.h>
#include <string.h>
int main() {
    char lines[100][100];
    int n = 0;
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        while(fgets(lines[n], 100, fp)) n++;
        fclose(fp);
        for(int i=n-1; i>=0; i--)
            printf("%s", lines[i]);
    }
    return 0;
}
*/
//===========================================
// Code 44: Write and Read Double Data
/**
#include <stdio.h>
int main() {
    double d = 2.718, e = 0.0;
    FILE *fp = fopen("double.bin", "wb");
    if(fp) {
        fwrite(&d, sizeof(double), 1, fp);
        fclose(fp);
    }
    fp = fopen("double.bin", "rb");
    if(fp) {
        fread(&e, sizeof(double), 1, fp);
        printf("%.3f\n", e); // Prints 2.718
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 45: Write and Read Array of Structures
/**
#include <stdio.h>
struct Point { int x, y; };
int main() {
    struct Point arr[2] = {{1,2},{3,4}}, brr[2];
    FILE *fp = fopen("points.bin", "wb");
    if(fp) {
        fwrite(arr, sizeof(arr), 1, fp);
        fclose(fp);
    }
    fp = fopen("points.bin", "rb");
    if(fp) {
        fread(brr, sizeof(brr), 1, fp);
        for(int i=0; i<2; i++)
            printf("%d %d\n", brr[i].x, brr[i].y);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 46: Truncate File using "w" Mode
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "w");
    if(fp) {
        fputs("Truncated\n", fp);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 47: Get Current File Position using ftell
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fgetc(fp);
        long pos = ftell(fp);
        printf("Position: %ld\n", pos);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 48: Set File Position using fseek
/**
#include <stdio.h>
int main() {
    FILE *fp = fopen("test.txt", "r");
    if(fp) {
        fseek(fp, 2, SEEK_SET);
        char ch = fgetc(fp);
        printf("%c\n", ch);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 49: Write and Read Struct with String Member
/**
#include <stdio.h>
struct Student { char name[20]; int marks; };
int main() {
    struct Student s = {"Alice", 90}, t;
    FILE *fp = fopen("stud.bin", "wb");
    if(fp) {
        fwrite(&s, sizeof(s), 1, fp);
        fclose(fp);
    }
    fp = fopen("stud.bin", "rb");
    if(fp) {
        fread(&t, sizeof(t), 1, fp);
        printf("%s %d\n", t.name, t.marks);
        fclose(fp);
    }
    return 0;
}
*/
//===========================================
// Code 50: Write and Read Multiple Data Types
/**
#include <stdio.h>
int main() {
    int a = 5;
    float b = 2.5f;
    char c = 'X';
    FILE *fp = fopen("multi.bin", "wb");
    if(fp) {
        fwrite(&a, sizeof(a), 1, fp);
        fwrite(&b, sizeof(b), 1, fp);
        fwrite(&c, sizeof(c), 1, fp);
        fclose(fp);
    }
    int x; float y; char z;
    fp = fopen("multi.bin", "rb");
    if(fp) {
        fread(&x, sizeof(x), 1, fp);
        fread(&y, sizeof(y), 1, fp);
        fread(&z, sizeof(z), 1, fp);
        printf("%d %.2f %c\n", x, y, z); // Prints 5 2.50 X
        fclose(fp);
    }
    return 0;
}
*/
//===========================================