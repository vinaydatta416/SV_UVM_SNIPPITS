//===========================================
// Code 1: What Is Programming?
/**
#include <stdio.h>
int main() {
    printf("Hello, World!");
    return 0;
}
*/
//===========================================
// Code 2: Programming Logic & Techniques
/**
#include <stdio.h>
int main() {
    int a = 5, b = 10, sum;
    sum = a + b;
    printf("Sum: %d", sum);
    return 0;
}
*/
//===========================================
// Code 3: Computer Basics
/**
#include <stdio.h>
int main() {
    printf("Computer Basics");
    return 0;
}
*/
//===========================================
// Code 4: Introduction to C Language
/**
#include <stdio.h>
int main() {
    printf("Introduction to C Language");
    return 0;
}
*/
//===========================================
// Code 5: Structure of C Program
/**
#include <stdio.h>
int main() {
    printf("Structure of C Program");
    return 0;
}
*/
//===========================================
// Code 6: Variables And Datatypes
/**
#include <stdio.h>
int main() {
    int a = 10;
    float b = 20.5;
    char c = 'A';
    printf("a: %d, b: %.2f, c: %c", a, b, c);
    return 0;
}
*/
//===========================================
// Code 7: Types of Statements & Constants in C
/**
#include <stdio.h>
int main() {
    const int a = 10;
    printf("a: %d", a);
    return 0;
}
*/
//===========================================
// Code 8: How To Install DOSBox | Setup Of TurboC2 IDE
/**
#include <stdio.h>
int main() {
    printf("Install DOSBox and TurboC2 IDE");
    return 0;
}
*/
//===========================================
// Code 9: Programming Using Turbo CPP IDE
/**
#include <stdio.h>
int main() {
    printf("Programming Using Turbo CPP IDE");
    return 0;
}
*/
//===========================================
// Code 10: Sample C Program Using Dev C++ IDE
/**
#include <stdio.h>
int main() {
    printf("Sample C Program Using Dev C++ IDE");
    return 0;
}
*/
//===========================================
// Code 11: Sample C Program Using Code Blocks IDE
/**
#include <stdio.h>
int main() {
    printf("Sample C Program Using Code Blocks IDE");
    return 0;
}
*/
//===========================================
// Code 12: Input-Output Statements in C Language
/**
#include <stdio.h>
int main() {
    int a;
    printf("Enter a number: ");
    scanf("%d", &a);
    printf("You entered: %d", a);
    return 0;
}
*/
//===========================================
// Code 13: Using online Compiler for Writing C Program
/**
#include <stdio.h>
int main() {
    printf("Using online Compiler for Writing C Program");
    return 0;
}
*/
//===========================================
// Code 14: Program To Add Two Numbers
/**
#include <stdio.h>
int main() {
    int a, b, sum;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    sum = a + b;
    printf("Sum: %d", sum);
    return 0;
}
*/
//===========================================
// Code 15: Program to Calculate Amount from the inputted Rate & Quantity
/**
#include <stdio.h>
int main() {
    int rate, quantity, amount;
    printf("Enter rate and quantity: ");
    scanf("%d %d", &rate, &quantity);
    amount = rate * quantity;
    printf("Amount: %d", amount);
    return 0;
}
*/
//===========================================
// Code 16: Program to Swap two numbers
/**
#include <stdio.h>
int main() {
    int a = 5, b = 10, temp;
    temp = a;
    a = b;
    b = temp;
    printf("a: %d, b: %d", a, b);
    return 0;
}
*/
//===========================================
// Code 17: Program to calculate Total & Average from the inputted marks
/**
#include <stdio.h>
int main() {
    int marks1, marks2, marks3, total;
    float average;
    printf("Enter three marks: ");
    scanf("%d %d %d", &marks1, &marks2, &marks3);
    total = marks1 + marks2 + marks3;
    average = total / 3.0;
    printf("Total: %d, Average: %.2f", total, average);
    return 0;
}
*/
//===========================================
// Code 18: Program to Convert Total minutes into Hours and Minutes
/**
#include <stdio.h>
int main() {
    int minutes, hours, mins;
    printf("Enter minutes: ");
    scanf("%d", &minutes);
    hours = minutes / 60;
    mins = minutes % 60;
    printf("Hours: %d, Minutes: %d", hours, mins);
    return 0;
}
*/
//===========================================
// Code 19: Program to Calculate Gross Salary & Net Salary
/**
#include <stdio.h>
int main() {
    float basic, da, hra, gross, net;
    printf("Enter basic salary: ");
    scanf("%f", &basic);
    da = 0.1 * basic;
    hra = 0.1 * basic;
    gross = basic + da + hra;
    net = gross - (0.1 * gross);
    printf("Gross Salary: %.2f, Net Salary: %.2f", gross, net);
    return 0;
}
*/
//===========================================
// Code 20: Conversion of Temperatures - Fahrenheit to Celsius
/**
#include <stdio.h>
int main() {
    float fahrenheit, celsius;
    printf("Enter temperature in Fahrenheit: ");
    scanf("%f", &fahrenheit);
    celsius = (fahrenheit - 32) * 5 / 9;
    printf("Temperature in Celsius: %.2f", celsius);
    return 0;
}
*/
//===========================================
// Code 21: Program to Calculate Simple Interest
/**
#include <stdio.h>
int main() {
    float principal, rate, time, si;
    printf("Enter principal, rate, and time: ");
    scanf("%f %f %f", &principal, &rate, &time);
    si = (principal * rate * time) / 100;
    printf("Simple Interest: %.2f", si);
    return 0;
}
*/
//===========================================
// Code 22: Difference Between Compilers & Interpreters
/**
#include <stdio.h>
int main() {
    printf("Difference Between Compilers & Interpreters");
    return 0;
}
*/
//===========================================
// Code 23: Program to read single character using scanf() function
/**
#include <stdio.h>
int main() {
    char c;
    printf("Enter a character: ");
    scanf("%c", &c);
    printf("You entered: %c", c);
    return 0;
}
*/
//===========================================
// Code 24: Program to read single word without space
/**
#include <stdio.h>
int main() {
    char word[20];
    printf("Enter a word: ");
    scanf("%s", word);
    printf("You entered: %s", word);
    return 0;
}
*/
//===========================================
// Code 25: Program to Read String with space
/**
#include <stdio.h>
int main() {
    char str[50];
    printf("Enter a string: ");
    gets(str);
    printf("You entered: %s", str);
    return 0;
}
*/
//===========================================
// Code 26: Example to Implement fflush(stdin) function | Keyboard Buffer
/**
#include <stdio.h>
int main() {
    char c;
    printf("Enter a character: ");
    scanf("%c", &c);
    fflush(stdin);
    printf("You entered: %c", c);
    return 0;
}
*/
//===========================================
// Code 27: Introduction to ASCII Codes
/**
#include <stdio.h>
int main() {
    printf("Introduction to ASCII Codes");
    return 0;
}
*/
//===========================================
// Code 28: ASCII Codes | Reading character & Printing its ASCII Code
/**
#include <stdio.h>
int main() {
    char c;
    printf("Enter a character: ");
    scanf("%c", &c);
    printf("ASCII code: %d", c);
    return 0;
}
*/
//===========================================
// Code 29: ASCII Codes | Reading ASCII code & Printing its value
/**
#include <stdio.h>
int main() {
    int code;
    printf("Enter ASCII code: ");
    scanf("%d", &code);
    printf("Character: %c", code);
    return 0;
}
*/
//===========================================
// Code 30: Different Types of Errors in C Programming
/**
#include <stdio.h>
int main() {
    printf("Different Types of Errors in C Programming");
    return 0;
}
*/
//===========================================
// Code 31: Variable Declaration, Initialization & Assignment
/**
#include <stdio.h>
int main() {
    int a;
    a = 10;
    printf("a: %d", a);
    return 0;
}
*/
//===========================================
// Code 32: What is Garbage value in C Language
/**
#include <stdio.h>
int main() {
    int a;
    printf("a: %d", a);
    return 0;
}
*/
//===========================================
// Code 33: const keyword in C Language
/**
#include <stdio.h>
int main() {
    const int a = 10;
    printf("a: %d", a);
    return 0;
}
*/
//===========================================
// Code 34: Const Keyword Example-1| Const Variables Default Values
/**
#include <stdio.h>
int main() {
    const int a;
    printf("a: %d", a);
    return 0;
}
*/
//===========================================
// Code 35: const keyword example - 2 | Converting Rupees into Paise
/**
#include <stdio.h>
int main() {
    const float rupees = 10.5;
    int paise = rupees * 100;
    printf("Paise: %d", paise);
    return 0;
}
*/
//===========================================
// Code 36: Const Keyword Example 3 | Electricity bill generation
/**
#include <stdio.h>
int main() {
    const float rate = 5.5;
    int units;
    float bill;
    printf("Enter units: ");
    scanf("%d", &units);
    bill = units * rate;
    printf("Electricity Bill: %.2f", bill);
    return 0;
}
*/
//===========================================
// Code 37: Escape Sequence Character in C Programming with Examples
/**
#include <stdio.h>
int main() {
    printf("Hello\nWorld");
    return 0;
}
*/
//===========================================
// Code 38: Data Types in C Programming | Data Types, Modifiers
/**
#include <stdio.h>
int main() {
    printf("Data Types in C Programming");
    return 0;
}
*/
//===========================================
// Code 39: SizeOf() Operator In C Programming
/**
#include <stdio.h>
int main() {
    printf("Size of int: %zu bytes\n", sizeof(int));
    printf("Size of float: %zu bytes\n", sizeof(float));
    printf("Size of double: %zu bytes\n", sizeof(double));
    printf("Size of char: %zu byte\n", sizeof(char));
    return 0;
}
*/
//===========================================
// Code 40: How to use cut, copy and paste in Turbo C IDE
/**
#include <stdio.h>
int main() {
    printf("How to use cut, copy and paste in Turbo C IDE");
    return 0;
}
*/
//===========================================
// Code 41: gotoxy(), textcolor(), cprintf() & cscanf() function in C
/**
#include <stdio.h>
#include <conio.h>
int main() {
    gotoxy(10, 5);
    textcolor(RED);
    cprintf("Hello, World!");
    return 0;
}
*/
//===========================================
// Code 42: What is Type Casting | Type Casting Example in C Language
/**
#include <stdio.h>
int main() {
    int a = 10;
    float b = (float)a / 2;
    printf("b: %.2f", b);
    return 0;
}
*/
//===========================================
// Code 43: Type Casting in C Programming Language and Integer Promotion in C
/**
#include <stdio.h>
int main() {
    char a = 'A';
    int b = a + 1;
    printf("b: %d", b);
    return 0;
}
*/
//===========================================
// Code 44: Type Casting & const keyword explanation in more detail
/**
#include <stdio.h>
int main() {
    const int a = 10;
    float b = (float)a;
    printf("b: %.2f", b);
    return 0;
}
*/
//===========================================
// Code 45: Turbo C IDE Menu Options Explained in Detail
/**
#include <stdio.h>
int main() {
    printf("Turbo C IDE Menu Options Explained in Detail");
    return 0;
}
*/
//===========================================
// Code 46: Introduction to Control Structures in C Programming Language
/**
#include <stdio.h>
int main() {
    printf("Introduction to Control Structures in C Programming Language");
    return 0;
}
*/
//===========================================
// Code 47: Simple if in C Programming
/**
#include <stdio.h>
int main() {
    int a = 10;
    if (a > 5) {
        printf("a is greater than 5");
    }
    return 0;
}
*/
//===========================================
// Code 48: if with Else Statement in C Programming
/**
#include <stdio.h>
int main() {
    int a = 10;
    if (a > 5) {
        printf("a is greater than 5");
    } else {
        printf("a is not greater than 5");
    }
    return 0;
}
*/
//===========================================
// Code 49: Even Odd Example in C Language
/**
#include <stdio.h>
int main() {
    int a = 10;
    if (a % 2 == 0) {
        printf("a is even");
    } else {
        printf("a is odd");
    }
    return 0;
}
*/
//===========================================
// Code 50: Biggest of Two Numbers Example in C Language
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    if (a > b) {
        printf("a is the biggest");
    } else {
        printf("b is the biggest");
    }
    return 0;
}
*/
//===========================================
// Code 51: C Program to Calculate discount
/**
#include <stdio.h>
int main() {
    float price, discount, final_price;
    printf("Enter price and discount: ");
    scanf("%f %f", &price, &discount);
    final_price = price - (price * discount / 100);
    printf("Final Price: %.2f", final_price);
    return 0;
}
*/
//===========================================
// Code 52: Program to Calculate Electricity Bill in C Language
/**
#include <stdio.h>
int main() {
    int units;
    float bill;
    printf("Enter units: ");
    scanf("%d", &units);
    if (units <= 100) {
        bill = units * 0.5;
    } else if (units <= 200) {
        bill = 100 * 0.5 + (units - 100) * 0.75;
    } else {
        bill = 100 * 0.5 + 100 * 0.75 + (units - 200) * 1.0;
    }
    printf("Electricity Bill: %.2f", bill);
    return 0;
}
*/
//===========================================
// Code 53: Leap Year Example in C Programming
/**
#include <stdio.h>
int main() {
    int year;
    printf("Enter year: ");
    scanf("%d", &year);
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        printf("%d is a leap year", year);
    } else {
        printf("%d is not a leap year", year);
    }
    return 0;
}
*/
//===========================================
// Code 54: Program to Check Who is Elder in C Language
/**
#include <stdio.h>
int main() {
    int age1, age2;
    printf("Enter ages of two people: ");
    scanf("%d %d", &age1, &age2);
    if (age1 > age2) {
        printf("Person 1 is elder");
    } else {
        printf("Person 2 is elder");
    }
    return 0;
}
*/
//===========================================
// Code 55: Multiple If Example | Program to print class of a student based on avg
/**
#include <stdio.h>
int main() {
    float avg;
    printf("Enter average marks: ");
    scanf("%f", &avg);
    if (avg >= 90) {
        printf("Grade: A");
    } else if (avg >= 80) {
        printf("Grade: B");
    } else if (avg >= 70) {
        printf("Grade: C");
    } else if (avg >= 60) {
        printf("Grade: D");
    } else {
        printf("Grade: F");
    }
    return 0;
}
*/
//===========================================
// Code 56: Find the given number is positive, negative or neutral
/**
#include <stdio.h>
int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    if (num > 0) {
        printf("Positive");
    } else if (num < 0) {
        printf("Negative");
    } else {
        printf("Neutral");
    }
    return 0;
}
*/
//===========================================
// Code 57: Program to Print Grade of a Student based on Average Marks
/**
#include <stdio.h>
int main() {
    float avg;
    printf("Enter average marks: ");
    scanf("%f", &avg);
    if (avg >= 90) {
        printf("Grade: A");
    } else if (avg >= 80) {
        printf("Grade: B");
    } else if (avg >= 70) {
        printf("Grade: C");
    } else if (avg >= 60) {
        printf("Grade: D");
    } else {
        printf("Grade: F");
    }
    return 0;
}
*/
//===========================================
// Code 58: Program to Print Discount & Final Amount
/**
#include <stdio.h>
int main() {
    float price, discount, final_price;
    printf("Enter price and discount: ");
    scanf("%f %f", &price, &discount);
    final_price = price - (price * discount / 100);
    printf("Discount: %.2f, Final Price: %.2f", price * discount / 100, final_price);
    return 0;
}
*/
//===========================================
// Code 59: Calculate Bonus of an Employee based on Experience
/**
#include <stdio.h>
int main() {
    int experience;
    float salary, bonus;
    printf("Enter salary and experience: ");
    scanf("%f %d", &salary, &experience);
    if (experience >= 5) {
        bonus = salary * 0.1;
    } else {
        bonus = salary * 0.05;
    }
    printf("Bonus: %.2f", bonus);
    return 0;
}
*/
//===========================================
// Code 60: Working with Nested if | Biggest of 3 nos Example
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20, c = 30;
    if (a > b) {
        if (a > c) {
            printf("a is the biggest");
        } else {
            printf("c is the biggest");
        }
    } else {
        if (b > c) {
            printf("b is the biggest");
        } else {
            printf("c is the biggest");
        }
    }
    return 0;
}
*/
//===========================================
// Code 61: Capital Letter or Small Letter or Digit or Special Character Example
/**
#include <stdio.h>
int main() {
    char c;
    printf("Enter a character: ");
    scanf("%c", &c);
    if (c >= 'A' && c <= 'Z') {
        printf("Capital Letter");
    } else if (c >= 'a' && c <= 'z') {
        printf("Small Letter");
    } else if (c >= '0' && c <= '9') {
        printf("Digit");
    } else {
        printf("Special Character");
    }
    return 0;
}
*/
//===========================================
// Code 62: Check whether the inputted character is vowel or consonant
/**
#include <stdio.h>
int main() {
    char c;
    printf("Enter a character: ");
    scanf("%c", &c);
    if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' ||
        c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') {
        printf("Vowel");
    } else {
        printf("Consonant");
    }
    return 0;
}
*/
//===========================================
// Code 63: NOT Equal To Operator
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    if (a != b) {
        printf("a is not equal to b");
    } else {
        printf("a is equal to b");
    }
    return 0;
}
*/
//===========================================
// Code 64: Program to check whether the person is Eligible for Bonus or not
/**
#include <stdio.h>
int main() {
    int experience;
    printf("Enter experience: ");
    scanf("%d", &experience);
    if (experience >= 5) {
        printf("Eligible for Bonus");
    } else {
        printf("Not Eligible for Bonus");
    }
    return 0;
}
*/
//===========================================
// Code 65: Program to check whether the person is eligible for concession or not
/**
#include <stdio.h>
int main() {
    int age;
    printf("Enter age: ");
    scanf("%d", &age);
    if (age <= 12 || age >= 60) {
        printf("Eligible for Concession");
    } else {
        printf("Not Eligible for Concession");
    }
    return 0;
}
*/
//===========================================
// Code 66: Final Bill Generation for TV Sale | Nested if Example
/**
#include <stdio.h>
int main() {
    int price, discount, final_price;
    printf("Enter price: ");
    scanf("%d", &price);
    if (price >= 10000) {
        discount = price * 0.1;
    } else {
        discount = price * 0.05;
    }
    final_price = price - discount;
    printf("Final Price: %d", final_price);
    return 0;
}
*/
//===========================================
// Code 67: Electricity Bill Generation using Slab System
/**
#include <stdio.h>
int main() {
    int units;
    float bill;
    printf("Enter units: ");
    scanf("%d", &units);
    if (units <= 100) {
        bill = units * 0.5;
    } else if (units <= 200) {
        bill = 100 * 0.5 + (units - 100) * 0.75;
    } else if (units <= 300) {
        bill = 100 * 0.5 + 100 * 0.75 + (units - 200) * 1.0;
    } else {
        bill = 100 * 0.5 + 100 * 0.75 + 100 * 1.0 + (units - 300) * 1.5;
    }
    printf("Electricity Bill: %.2f", bill);
    return 0;
}
*/
//===========================================
// Code 68: Printing Class of a Student only when they pass in all the subjects
/**
#include <stdio.h>
int main() {
    int marks1, marks2, marks3;
    printf("Enter marks of three subjects: ");
    scanf("%d %d %d", &marks1, &marks2, &marks3);
    if (marks1 >= 40 && marks2 >= 40 && marks3 >= 40) {
        float avg = (marks1 + marks2 + marks3) / 3.0;
        if (avg >= 90) {
            printf("Grade: A");
        } else if (avg >= 80) {
            printf("Grade: B");
        } else if (avg >= 70) {
            printf("Grade: C");
        } else if (avg >= 60) {
            printf("Grade: D");
        } else {
            printf("Grade: F");
        }
    } else {
        printf("Fail");
    }
    return 0;
}
*/
//===========================================
// Code 69: Menu Program using Turbo C2
/**
#include <stdio.h>
int main() {
    int choice;
    printf("1. Option 1\n");
    printf("2. Option 2\n");
    printf("Enter your choice: ");
    scanf("%d", &choice);
    switch (choice) {
        case 1:
            printf("Option 1 selected");
            break;
        case 2:
            printf("Option 2 selected");
            break;
        default:
            printf("Invalid choice");
    }
    return 0;
}
*/
//===========================================
// Code 70: Introduction to Switch-case
/**
#include <stdio.h>
int main() {
    int choice;
    printf("1. Option 1\n");
    printf("2. Option 2\n");
    printf("Enter your choice: ");
    scanf("%d", &choice);
    switch (choice) {
        case 1:
            printf("Option 1 selected");
            break;
        case 2:
            printf("Option 2 selected");
            break;
        default:
            printf("Invalid choice");
    }
    return 0;
}
*/
//===========================================
// Code 71: Switch case Menu Program Example
/**
#include <stdio.h>
int main() {
    int choice;
    printf("1. Option 1\n");
    printf("2. Option 2\n");
    printf("Enter your choice: ");
    scanf("%d", &choice);
    switch (choice) {
        case 1:
            printf("Option 1 selected");
            break;
        case 2:
            printf("Option 2 selected");
            break;
        default:
            printf("Invalid choice");
    }
    return 0;
}
*/
//===========================================
// Code 72: Combine Multiple Small Programs into one Program using Switch-case
/**
#include <stdio.h>
int main() {
    int choice;
    printf("1. Option 1\n");
    printf("2. Option 2\n");
    printf("Enter your choice: ");
    scanf("%d", &choice);
    switch (choice) {
        case 1:
            printf("Option 1 selected");
            break;
        case 2:
            printf("Option 2 selected");
            break;
        default:
            printf("Invalid choice");
    }
    return 0;
}
*/
//===========================================
// Code 73: Performing Arithmetic Operations based upon inputted Symbol
/**
#include <stdio.h>
int main() {
    char op;
    int a, b;
    printf("Enter operator and two operands: ");
    scanf("%c %d %d", &op, &a, &b);
    switch (op) {
        case '+':
            printf("%d", a + b);
            break;
        case '-':
            printf("%d", a - b);
            break;
        case '*':
            printf("%d", a * b);
            break;
        case '/':
            printf("%d", a / b);
            break;
        default:
            printf("Invalid operator");
    }
    return 0;
}
*/
//===========================================
// Code 74: switch-case Fall Through Example-1
/**
#include <stdio.h>
int main() {
    int a = 10;
    switch (a) {
        case 10:
            printf("Ten ");
        case 20:
            printf("Twenty ");
        case 30:
            printf("Thirty");
        default:
            printf("Default");
    }
    return 0;
}
*/
//===========================================
// Code 75: switch-case Fall Through Example-2 | Vowels & Consonants Example
/**
#include <stdio.h>
int main() {
    char c = 'a';
    switch (c) {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            printf("Vowel");
            break;
        default:
            printf("Consonant");
    }
    return 0;
}
*/
//===========================================
// Code 76: Nested switch-case Example
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    switch (a) {
        case 10:
            printf("Ten ");
            switch (b) {
                case 20:
                    printf("Twenty");
                    break;
            }
            break;
    }
    return 0;
}
*/
//===========================================
// Code 77: Introduction to UnFormatted I/O Functions
/**
#include <stdio.h>
int main() {
    printf("Introduction to UnFormatted I/O Functions");
    return 0;
}
*/
//===========================================
// Code 78: Working with UnFormatted gets() & puts() functions
/**
#include <stdio.h>
int main() {
    char str[50];
    printf("Enter a string: ");
    gets(str);
    printf("You entered: ");
    puts(str);
    return 0;
}
*/
//===========================================
// Code 79: Difference between getchar(), getche() & getch() functions
/**
#include <stdio.h>
#include <conio.h>
int main() {
    char c;
    printf("Enter a character: ");
    c = getchar();
    printf("You entered: %c", c);
    printf("\nEnter a character: ");
    c = getche();
    printf("\nYou entered: %c", c);
    printf("\nEnter a character: ");
    c = getch();
    printf("\nYou entered: %c", c);
    return 0;
}
*/
//===========================================
// Code 80: Importance of getch() function
/**
#include <stdio.h>
#include <conio.h>
int main() {
    printf("Press any key to continue...");
    getch();
    printf("Key pressed");
    return 0;
}
*/
//===========================================
// Code 81: Different Types of Operators in C Programming
/**
#include <stdio.h>
int main() {
    printf("Different Types of Operators in C Programming");
    return 0;
}
*/
//===========================================
// Code 82: Operators Precedence and Associativity in C Language
/**
#include <stdio.h>
int main() {
    printf("Operators Precedence and Associativity in C Language");
    return 0;
}
*/
//===========================================
// Code 83: Importance Parenthesis in Arithmetic Expressions
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20, c = 30;
    int result = a + b * c;
    printf("Result: %d", result);
    return 0;
}
*/
//===========================================
// Code 84: Working with unary Operators
/**
#include <stdio.h>
int main() {
    int a = 10;
    printf("a: %d", a);
    printf("\n-a: %d", -a);
    printf("\n++a: %d", ++a);
    printf("\n--a: %d", --a);
    return 0;
}
*/
//===========================================
// Code 85: sizeof Operator in C Language
/**
#include <stdio.h>
int main() {
    printf("Size of int: %zu bytes\n", sizeof(int));
    printf("Size of float: %zu bytes\n", sizeof(float));
    printf("Size of double: %zu bytes\n", sizeof(double));
    printf("Size of char: %zu byte\n", sizeof(char));
    return 0;
}
*/
//===========================================
// Code 86: sizeof operator with constant values
/**
#include <stdio.h>
int main() {
    printf("Size of 10: %zu bytes\n", sizeof(10));
    printf("Size of 10.5: %zu bytes\n", sizeof(10.5));
    printf("Size of 'A': %zu byte\n", sizeof('A'));
    return 0;
}
*/
//===========================================
// Code 87: Arithmetic Operators in C Programming Language
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    printf("a + b: %d", a + b);
    printf("\na - b: %d", a - b);
    printf("\na * b: %d", a * b);
    printf("\na / b: %d", a / b);
    printf("\na %% b: %d", a % b);
    return 0;
}
*/
//===========================================
// Code 88: What is Modulus Operator
/**
#include <stdio.h>
int main() {
    int a = 10, b = 3;
    printf("a %% b: %d", a % b);
    return 0;
}
*/
//===========================================
// Code 89: Introduction to Binary Number System
/**
#include <stdio.h>
int main() {
    printf("Introduction to Binary Number System");
    return 0;
}
*/
//===========================================
// Code 90: Bit Wise Operators
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    printf("a & b: %d", a & b);
    printf("\na | b: %d", a | b);
    printf("\na ^ b: %d", a ^ b);
    printf("\n~a: %d", ~a);
    printf("\na << 1: %d", a << 1);
    printf("\na >> 1: %d", a >> 1);
    return 0;
}
*/
//===========================================
// Code 91: Bitwise NOT Operator
/**
#include <stdio.h>
int main() {
    int a = 10;
    printf("~a: %d", ~a);
    return 0;
}
*/
//===========================================
// Code 92: Relational Or Comparison Operators in C Programming
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    printf("a == b: %d", a == b);
    printf("\na != b: %d", a != b);
    printf("\na > b: %d", a > b);
    printf("\na < b: %d", a < b);
    printf("\na >= b: %d", a >= b);
    printf("\na <= b: %d", a <= b);
    return 0;
}
*/
//===========================================
// Code 93: Logical Operators in C Language
/**
#include <stdio.h>
int main() {
    int a = 1, b = 0;
    printf("a && b: %d", a && b);
    printf("\na || b: %d", a || b);
    printf("\n!a: %d", !a);
    return 0;
}
*/
//===========================================
// Code 94: Ternary Operator / Conditional Operator in C Language
/**
#include <stdio.h>
int main() {
    int a = 10, b = 20;
    int max = (a > b) ? a : b;
    printf("Max: %d", max);
    return 0;
}
*/
//===========================================
// Code 95: Even Or Odd Example using Ternary operator in C Programming
/**
#include <stdio.h>
int main() {
    int a = 10;
    (a % 2 == 0) ? printf("Even") : printf("Odd");
    return 0;
}
*/
//===========================================
// Code 96: Compound Assignment in C Language
/**
#include <stdio.h>
int main() {
    int a = 10;
    a += 5;
    printf("a: %d", a);
    return 0;
}
*/
//===========================================
// Code 97: How to Clear Screen in C-Free/CodeBlocks/DevC++ IDE
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    system("cls");
    printf("Screen cleared");
    return 0;
}
*/
//===========================================
// Code 98: Colorful output in C-Free, DevC++ or CodeBlocks IDE
/**
#include <stdio.h>
#include <windows.h>
int main() {
    HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
    SetConsoleTextAttribute(hConsole, 10);
    printf("Colorful output");
    return 0;
}
*/
//===========================================
// Code 99: Run Windows applications from a C Program
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    system("calc");
    return 0;
}
*/
//===========================================
// Code 100: Program to check whether the given number is leap year or not
/**
#include <stdio.h>
int main() {
    int year;
    printf("Enter year: ");
    scanf("%d", &year);
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        printf("%d is a leap year", year);
    } else {
        printf("%d is not a leap year", year);
    }
    return 0;
}
*/
//===========================================
// Code 101: Introduction to Loops
/**
#include <stdio.h>
int main() {
    printf("Introduction to Loops");
    return 0;
}
*/
//===========================================
// Code 102: Introduction to While Loop
/**
#include <stdio.h>
int main() {
    int i = 1;
    while (i <= 5) {
        printf("%d\n", i);
        i++;
    }
    return 0;
}
*/
//===========================================
// Code 103: Introduction to do..while loop
/**
#include <stdio.h>
int main() {
    int i = 1;
    do {
        printf("%d\n", i);
        i++;
    } while (i <= 5);
    return 0;
}
*/
//===========================================
// Code 104: Introduction to for loop
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        printf("%d\n", i);
    }
    return 0;
}
*/
//===========================================
// Code 105: Important Sections of all the loops-while, do..while, for
/**
#include <stdio.h>
int main() {
    printf("Important Sections of all the loops-while, do..while, for");
    return 0;
}
*/
//===========================================
// Code 106: Introduction to Logical Loop
/**
#include <stdio.h>
int main() {
    printf("Introduction to Logical Loop");
    return 0;
}
*/
//===========================================
// Code 107: Printing Natural Number from 1 - 100 using all the 3 Loops
/**
#include <stdio.h>
int main() {
    // Using for loop
    for (int i = 1; i <= 100; i++) {
        printf("%d ", i);
    }
    printf("\n");

    // Using while loop
    int j = 1;
    while (j <= 100) {
        printf("%d ", j);
        j++;
    }
    printf("\n");

    // Using do-while loop
    int k = 1;
    do {
        printf("%d ", k);
        k++;
    } while (k <= 100);
    return 0;
}
*/
//===========================================
// Code 108: Print Even Numbers from 2 to 100
/**
#include <stdio.h>
int main() {
    for (int i = 2; i <= 100; i += 2) {
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 109: Printing Odd Numbers from 1 to N
/**
#include <stdio.h>
int main() {
    int n;
    printf("Enter the value of N: ");
    scanf("%d", &n);
    for (int i = 1; i <= n; i += 2) {
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 110: Print Natural Numbers from N to 1 using for loop
/**
#include <stdio.h>
int main() {
    int n;
    printf("Enter the value of N: ");
    scanf("%d", &n);
    for (int i = n; i >= 1; i--) {
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 111: Program to Print inputted number that many times
/**
#include <stdio.h>
int main() {
    int num, times;
    printf("Enter a number and the number of times to print it: ");
    scanf("%d %d", &num, &times);
    for (int i = 0; i < times; i++) {
        printf("%d ", num);
    }
    return 0;
}
*/
//===========================================
// Code 112: Program to Print Inputted NAME Length Many Times
/**
#include <stdio.h>
#include <string.h>
int main() {
    char name[50];
    printf("Enter your name: ");
    scanf("%s", name);
    int length = strlen(name);
    for (int i = 0; i < length; i++) {
        printf("%s\n", name);
    }
    return 0;
}
*/
//===========================================
// Code 113: Program to Find sum of first 10 natural numbers
/**
#include <stdio.h>
int main() {
    int sum = 0;
    for (int i = 1; i <= 10; i++) {
        sum += i;
    }
    printf("Sum of first 10 natural numbers: %d", sum);
    return 0;
}
*/
//===========================================
// Code 114: Program to Find Sum & Average of Inputted N Numbers
/**
#include <stdio.h>
int main() {
    int n, sum = 0, num;
    float avg;
    printf("Enter the value of N: ");
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%d", &num);
        sum += num;
    }
    avg = (float)sum / n;
    printf("Sum: %d, Average: %.2f", sum, avg);
    return 0;
}
*/
//===========================================
// Code 115: What is Debugging
/**
#include <stdio.h>
int main() {
    printf("What is Debugging");
    return 0;
}
*/
//===========================================
// Code 116: Printing Tables for Inputted Number Till 12
/**
#include <stdio.h>
int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    for (int i = 1; i <= 12; i++) {
        printf("%d x %d = %d\n", num, i, num * i);
    }
    return 0;
}
*/
//===========================================
// Code 117: Table for inputted number, from inputted starting & ending values
/**
#include <stdio.h>
int main() {
    int num, start, end;
    printf("Enter a number, start, and end values: ");
    scanf("%d %d %d", &num, &start, &end);
    for (int i = start; i <= end; i++) {
        printf("%d x %d = %d\n", num, i, num * i);
    }
    return 0;
}
*/
//===========================================
// Code 118: Program to Count Number of Digits from an inputted number
/**
#include <stdio.h>
int main() {
    int num, count = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    while (num != 0) {
        num /= 10;
        count++;
    }
    printf("Number of digits: %d", count);
    return 0;
}
*/
//===========================================
// Code 119: Program to Validate inputted Mobile no
/**
#include <stdio.h>
int main() {
    long long num;
    int count = 0;
    printf("Enter a mobile number: ");
    scanf("%lld", &num);
    while (num != 0) {
        num /= 10;
        count++;
    }
    if (count == 10) {
        printf("Valid mobile number");
    } else {
        printf("Invalid mobile number");
    }
    return 0;
}
*/
//===========================================
// Code 120: Program to Calculate Sum of Digits
/**
#include <stdio.h>
int main() {
    int num, sum = 0, digit;
    printf("Enter a number: ");
    scanf("%d", &num);
    while (num != 0) {
        digit = num % 10;
        sum += digit;
        num /= 10;
    }
    printf("Sum of digits: %d", sum);
    return 0;
}
*/
//===========================================
// Code 121: Write a Program to Find Lucky no From the Given Date of Birth
/**
#include <stdio.h>
int main() {
    int dob, sum = 0, digit;
    printf("Enter your date of birth (DDMMYYYY): ");
    scanf("%d", &dob);
    while (dob != 0) {
        digit = dob % 10;
        sum += digit;
        dob /= 10;
    }
    printf("Lucky number: %d", sum);
    return 0;
}
*/
//===========================================
// Code 122: Program to Reverse the Given number
/**
#include <stdio.h>
int main() {
    int num, reversed = 0, digit;
    printf("Enter a number: ");
    scanf("%d", &num);
    while (num != 0) {
        digit = num % 10;
        reversed = reversed * 10 + digit;
        num /= 10;
    }
    printf("Reversed number: %d", reversed);
    return 0;
}
*/
//===========================================
// Code 123: Program to check whether the given no is Palindrome or not
/**
#include <stdio.h>
int main() {
    int num, reversed = 0, digit, original;
    printf("Enter a number: ");
    scanf("%d", &num);
    original = num;
    while (num != 0) {
        digit = num % 10;
        reversed = reversed * 10 + digit;
        num /= 10;
    }
    if (original == reversed) {
        printf("Palindrome");
    } else {
        printf("Not a Palindrome");
    }
    return 0;
}
*/
//===========================================
// Code 124: Introduction to Nested loops
/**
#include <stdio.h>
int main() {
    printf("Introduction to Nested loops");
    return 0;
}
*/
//===========================================
// Code 125: Introduction to Jump Statements in C
/**
#include <stdio.h>
int main() {
    printf("Introduction to Jump Statements in C");
    return 0;
}
*/
//===========================================
// Code 126: Working with break keyword
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) {
            break;
        }
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 127: Working with continue keyword
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) {
            continue;
        }
        printf("%d ", i);
    }
    return 0;
}
*/
//===========================================
// Code 128: Working with goto keyword
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 5) {
            goto end;
        }
        printf("%d ", i);
    }
    end:
    return 0;
}
*/
//===========================================
// Code 129: Program to Check whether the inputted number is Prime or not
/**
#include <stdio.h>
int main() {
    int num, isPrime = 1;
    printf("Enter a number: ");
    scanf("%d", &num);
    for (int i = 2; i <= num / 2; i++) {
        if (num % i == 0) {
            isPrime = 0;
            break;
        }
    }
    if (isPrime == 1) {
        printf("Prime");
    } else {
        printf("Not Prime");
    }
    return 0;
}
*/
//===========================================
// Code 130: Program to Check whether the inputted number is Prime or not
/**
#include <stdio.h>
int main() {
    int num, isPrime = 1;
    printf("Enter a number: ");
    scanf("%d", &num);
    for (int i = 2; i <= num / 2; i++) {
        if (num % i == 0) {
            isPrime = 0;
            break;
        }
    }
    if (isPrime == 1) {
        printf("Prime");
    } else {
        printf("Not Prime");
    }
    return 0;
}
*/
//===========================================
// Code 131: Program to Check whether the inputted number is Prime or not
/**
#include <stdio.h>
int main() {
    int num, isPrime = 1;
    printf("Enter a number: ");
    scanf("%d", &num);
    for (int i = 2; i <= num / 2; i++) {
        if (num % i == 0) {
            isPrime = 0;
            break;
        }
    }
    if (isPrime == 1) {
        printf("Prime");
    } else {
        printf("Not Prime");
    }
    return 0;
}
*/
//===========================================
// Code 132: Program to Print Prime numbers from 1 to 100
/**
#include <stdio.h>
int main() {
    for (int num = 1; num <= 100; num++) {
        int isPrime = 1;
        for (int i = 2; i <= num / 2; i++) {
            if (num % i == 0) {
                isPrime = 0;
                break;
            }
        }
        if (isPrime == 1) {
            printf("%d ", num);
        }
    }
    return 0;
}
*/
//===========================================
// Code 133: Program to Check Whether the inputted number is Armstrong or Not
/**
#include <stdio.h>
#include <math.h>
int main() {
    int num, originalNum, remainder, n = 0, result = 0;
    printf("Enter an integer: ");
    scanf("%d", &num);
    originalNum = num;
    while (originalNum != 0) {
        originalNum /= 10;
        ++n;
    }
    originalNum = num;
    while (originalNum != 0) {
        remainder = originalNum % 10;
        result += pow(remainder, n);
        originalNum /= 10;
    }
    if (result == num) {
        printf("%d is an Armstrong number.", num);
    } else {
        printf("%d is not an Armstrong number.", num);
    }
    return 0;
}
*/
//===========================================
// Code 134: Program to Print Armstrong numbers from 1 to 1000
/**
#include <stdio.h>
#include <math.h>
int main() {
    for (int num = 1; num <= 1000; num++) {
        int originalNum, remainder, n = 0, result = 0;
        originalNum = num;
        while (originalNum != 0) {
            originalNum /= 10;
            ++n;
        }
        originalNum = num;
        while (originalNum != 0) {
            remainder = originalNum % 10;
            result += pow(remainder, n);
            originalNum /= 10;
        }
        if (result == num) {
            printf("%d ", num);
        }
    }
    return 0;
}
*/
//===========================================
// Code 135: Count Vowels & Consonants using do-while loop
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    int vowels = 0, consonants = 0, i = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    while (str[i] != '\0') {
        char c = tolower(str[i]);
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            vowels++;
        } else if (isalpha(c)) {
            consonants++;
        }
        i++;
    }
    printf("Vowels: %d, Consonants: %d", vowels, consonants);
    return 0;
}
*/
//===========================================
// Code 136: Program to count number of upper, lower, digits and special characters
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    int upper = 0, lower = 0, digits = 0, special = 0, i = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    while (str[i] != '\0') {
        if (isupper(str[i])) {
            upper++;
        } else if (islower(str[i])) {
            lower++;
        } else if (isdigit(str[i])) {
            digits++;
        } else {
            special++;
        }
        i++;
    }
    printf("Uppercase: %d, Lowercase: %d, Digits: %d, Special Characters: %d", upper, lower, digits, special);
    return 0;
}
*/
//===========================================
// Code 137: Program to print all the factors and count for the inputted number
/**
#include <stdio.h>
int main() {
    int num, count = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    printf("Factors of %d: ", num);
    for (int i = 1; i <= num; i++) {
        if (num % i == 0) {
            printf("%d ", i);
            count++;
        }
    }
    printf("\nNumber of factors: %d", count);
    return 0;
}
*/
//===========================================
// Code 138: Read no. till the user enters 0 or -ve no and count even & odd no.
/**
#include <stdio.h>
int main() {
    int num, even = 0, odd = 0;
    do {
        printf("Enter a number (0 or negative to stop): ");
        scanf("%d", &num);
        if (num > 0) {
            if (num % 2 == 0) {
                even++;
            } else {
                odd++;
            }
        }
    } while (num > 0);
    printf("Even numbers: %d, Odd numbers: %d", even, odd);
    return 0;
}
*/
//===========================================
// Code 139: Program to print factorial of inputted number
/**
#include <stdio.h>
int main() {
    int num, factorial = 1;
    printf("Enter a number: ");
    scanf("%d", &num);
    for (int i = 1; i <= num; i++) {
        factorial *= i;
    }
    printf("Factorial of %d: %d", num, factorial);
    return 0;
}
*/
//===========================================
// Code 140: Program to print Fibonacci Series till 100
/**
#include <stdio.h>
int main() {
    int a = 0, b = 1, c;
    printf("Fibonacci Series till 100: ");
    while (a <= 100) {
        printf("%d ", a);
        c = a + b;
        a = b;
        b = c;
    }
    return 0;
}
*/
//===========================================
// Code 141: Program to find Biggest of 10 Numbers
/**
#include <stdio.h>
int main() {
    int numbers[10], biggest;
    printf("Enter 10 numbers: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &numbers[i]);
    }
    biggest = numbers[0];
    for (int i = 1; i < 10; i++) {
        if (numbers[i] > biggest) {
            biggest = numbers[i];
        }
    }
    printf("Biggest number: %d", biggest);
    return 0;
}
*/
//===========================================
// Code 142: Program to find second biggest no from the inputted N Numbers
/**
#include <stdio.h>
int main() {
    int n, numbers[100], biggest, secondBiggest;
    printf("Enter the value of N: ");
    scanf("%d", &n);
    printf("Enter %d numbers: ", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &numbers[i]);
    }
    biggest = numbers[0];
    secondBiggest = numbers[1];
    for (int i = 1; i < n; i++) {
        if (numbers[i] > biggest) {
            secondBiggest = biggest;
            biggest = numbers[i];
        } else if (numbers[i] > secondBiggest && numbers[i] != biggest) {
            secondBiggest = numbers[i];
        }
    }
    printf("Second biggest number: %d", secondBiggest);
    return 0;
}
*/
//===========================================
// Code 143: Program to Print the Complete ASCII Chart
/**
#include <stdio.h>
int main() {
    for (int i = 0; i <= 127; i++) {
        printf("ASCII value of %c is %d\n", i, i);
    }
    return 0;
}
*/
//===========================================
// Code 144: Program to Print the Following Series 1,2,4,7,11,...100
/**
#include <stdio.h>
int main() {
    int a = 1, d = 1;
    printf("Series: ");
    while (a <= 100) {
        printf("%d ", a);
        a += d;
        d++;
    }
    return 0;
}
*/
//===========================================
// Code 145: Program to Print Result for Inputted Base & Power
/**
#include <stdio.h>
#include <math.h>
int main() {
    int base, power, result;
    printf("Enter base and power: ");
    scanf("%d %d", &base, &power);
    result = pow(base, power);
    printf("Result: %d", result);
    return 0;
}
*/
//===========================================
// Code 146: Program to Check Whether the Given number is Perfect number or Not
/**
#include <stdio.h>
int main() {
    int num, sum = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    for (int i = 1; i < num; i++) {
        if (num % i == 0) {
            sum += i;
        }
    }
    if (sum == num) {
        printf("%d is a Perfect number", num);
    } else {
        printf("%d is not a Perfect number", num);
    }
    return 0;
}
*/
//===========================================
// Code 147: Program to Print Perfect numbers from 1 to 100
/**
#include <stdio.h>
int main() {
    for (int num = 1; num <= 100; num++) {
        int sum = 0;
        for (int i = 1; i < num; i++) {
            if (num % i == 0) {
                sum += i;
            }
        }
        if (sum == num) {
            printf("%d ", num);
        }
    }
    return 0;
}
*/
//===========================================
// Code 148: Program to Check Whether the inputted number is Strong number or not
/**
#include <stdio.h>
int main() {
    int num, originalNum, remainder, sum = 0, factorial;
    printf("Enter a number: ");
    scanf("%d", &num);
    originalNum = num;
    while (originalNum != 0) {
        remainder = originalNum % 10;
        factorial = 1;
        for (int i = 1; i <= remainder; i++) {
            factorial *= i;
        }
        sum += factorial;
        originalNum /= 10;
    }
    if (sum == num) {
        printf("%d is a Strong number", num);
    } else {
        printf("%d is not a Strong number", num);
    }
    return 0;
}
*/
//===========================================
// Code 149: Program to print Strong number from 1 to 1000
/**
#include <stdio.h>
int main() {
    for (int num = 1; num <= 1000; num++) {
        int originalNum, remainder, sum = 0, factorial;
        originalNum = num;
        while (originalNum != 0) {
            remainder = originalNum % 10;
            factorial = 1;
            for (int i = 1; i <= remainder; i++) {
                factorial *= i;
            }
            sum += factorial;
            originalNum /= 10;
        }
        if (sum == num) {
            printf("%d ", num);
        }
    }
    return 0;
}
*/
//===========================================
// Code 150: Program to Find HCF of Two Numbers
/**
#include <stdio.h>
int main() {
    int num1, num2, hcf;
    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);
    for (int i = 1; i <= num1 || i <= num2; i++) {
        if (num1 % i == 0 && num2 % i == 0) {
            hcf = i;
        }
    }
    printf("HCF of %d and %d is %d", num1, num2, hcf);
    return 0;
}
*/
//===========================================
// Code 151: Program to Find LCM of two Given Numbers
/**
#include <stdio.h>
int main() {
    int num1, num2, lcm;
    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);
    lcm = (num1 > num2) ? num1 : num2;
    while (1) {
        if (lcm % num1 == 0 && lcm % num2 == 0) {
            printf("LCM of %d and %d is %d", num1, num2, lcm);
            break;
        }
        lcm++;
    }
    return 0;
}
*/
//===========================================
// Code 152: Program to Develop Fast Food Menu Application
/**
#include <stdio.h>
int main() {
    int choice, quantity;
    float total = 0;
    printf("Fast Food Menu\n");
    printf("1. Burger - Rs. 120\n");
    printf("2. Pizza - Rs. 200\n");
    printf("3. Sandwich - Rs. 80\n");
    printf("4. Exit\n");
    do {
        printf("Enter your choice: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                printf("Enter quantity: ");
                scanf("%d", &quantity);
                total += 120 * quantity;
                break;
            case 2:
                printf("Enter quantity: ");
                scanf("%d", &quantity);
                total += 200 * quantity;
                break;
            case 3:
                printf("Enter quantity: ");
                scanf("%d", &quantity);
                total += 80 * quantity;
                break;
            case 4:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice\n");
        }
    } while (choice != 4);
    printf("Total bill: Rs. %.2f", total);
    return 0;
}
*/
//===========================================
// Code 153: Program to Validate Aadhar number of a Person
/**
#include <stdio.h>
#include <string.h>
int main() {
    char aadhar[13];
    int valid = 1;
    printf("Enter Aadhar number: ");
    scanf("%s", aadhar);
    if (strlen(aadhar) != 12) {
        valid = 0;
    } else {
        for (int i = 0; i < 12; i++) {
            if (!isdigit(aadhar[i])) {
                valid = 0;
                break;
            }
        }
    }
    if (valid) {
        printf("Valid Aadhar number");
    } else {
        printf("Invalid Aadhar number");
    }
    return 0;
}
*/
//===========================================
// Code 154: Random Numbers Generation in C Programming Language
/**
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main() {
    srand(time(0));
    int randomNum = rand() % 100 + 1;
    printf("Random number: %d", randomNum);
    return 0;
}
*/
//===========================================
// Code 155: Program to print Random Numbers in the given Range
/**
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main() {
    int lower, upper;
    printf("Enter lower and upper limits: ");
    scanf("%d %d", &lower, &upper);
    srand(time(0));
    int randomNum = rand() % (upper - lower + 1) + lower;
    printf("Random number between %d and %d: %d", lower, upper, randomNum);
    return 0;
}
*/
//===========================================
// Code 156: Program to Print Pattern 1 using Stars
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
// Code 157: Program to Print Pattern 2 using Stars
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
// Code 158: Program to Print Pattern 3 using Stars
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        for (int j = 1; j <= 5 - i; j++) {
            printf(" ");
        }
        for (int k = 1; k <= i; k++) {
            printf("* ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 159: Program to Print Pattern 4 using Stars
/**
#include <stdio.h>
int main() {
    for (int i = 5; i >= 1; i--) {
        for (int j = 1; j <= 5 - i; j++) {
            printf(" ");
        }
        for (int k = 1; k <= i; k++) {
            printf("* ");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 160: Pyramid Pattern with Stars
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        for (int j = 1; j <= 5 - i; j++) {
            printf(" ");
        }
        for (int k = 1; k <= 2 * i - 1; k++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 161: Program to Print Star Pattern 1 using Logic 2
/**
#include <stdio.h>
int main() {
    for (int i = 1; i <= 5; i++) {
        for (int j = 1; j <= 5; j++) {
            if (j <= 6 - i) {
                printf("* ");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 162: Program to Print Patterns with Numbers
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
// Code 163: Working with kbhit() function
/**
#include <stdio.h>
#include <conio.h>
int main() {
    printf("Press any key to continue...");
    while (!kbhit());
    printf("Key pressed");
    return 0;
}
*/
//===========================================
// Code 164: Working with Infinite Loops
/**
#include <stdio.h>
int main() {
    while (1) {
        printf("Infinite Loop");
    }
    return 0;
}
*/
//===========================================
// Code 165: What is DRY RUN
/**
#include <stdio.h>
int main() {
    printf("What is DRY RUN");
    return 0;
}
*/
//===========================================
// Code 166: Need of Arrays in C Programming
/**
#include <stdio.h>
int main() {
    printf("Need of Arrays in C Programming");
    return 0;
}
*/
//===========================================
// Code 167: Introduction to Arrays in C Programming
/**
#include <stdio.h>
int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 168: Array Declarations & Initialization
/**
#include <stdio.h>
int main() {
    int arr[5];
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;
    arr[3] = 4;
    arr[4] = 5;
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 169: Array Declaration and initialization example
/**
#include <stdio.h>
int main() {
    int arr[] = {1, 2, 3, 4, 5};
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 170: Program to read Array of 10 Elements and Display the same
/**
#include <stdio.h>
int main() {
    int arr[10];
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    printf("Array elements: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 171: Program to read array of 10 elements and display in reverse order
/**
#include <stdio.h>
int main() {
    int arr[10];
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    printf("Array elements in reverse order: ");
    for (int i = 9; i >= 0; i--) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 172: Read Marks of N Subjects, Display Total and Average using Arrays
/**
#include <stdio.h>
int main() {
    int n, marks[100], sum = 0;
    float avg;
    printf("Enter the number of subjects: ");
    scanf("%d", &n);
    printf("Enter marks of %d subjects: ", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &marks[i]);
        sum += marks[i];
    }
    avg = (float)sum / n;
    printf("Total marks: %d, Average marks: %.2f", sum, avg);
    return 0;
}
*/
//===========================================
// Code 173: Read Array of N elements, Calculate Total & Average
/**
#include <stdio.h>
int main() {
    int n, arr[100], sum = 0;
    float avg;
    printf("Enter the value of N: ");
    scanf("%d", &n);
    printf("Enter %d elements: ", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
        sum += arr[i];
    }
    avg = (float)sum / n;
    printf("Total: %d, Average: %.2f", sum, avg);
    return 0;
}
*/
//===========================================
// Code 174: Program to Fill the Array of N elements with Even Numbers
/**
#include <stdio.h>
int main() {
    int n, arr[100];
    printf("Enter the value of N: ");
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        arr[i] = 2 * (i + 1);
    }
    printf("Array elements: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 175: Program to Fill the array of 10 Elements with Prime Numbers
/**
#include <stdio.h>
int isPrime(int num) {
    if (num <= 1) {
        return 0;
    }
    for (int i = 2; i <= num / 2; i++) {
        if (num % i == 0) {
            return 0;
        }
    }
    return 1;
}
int main() {
    int arr[10], count = 0, num = 2;
    while (count < 10) {
        if (isPrime(num)) {
            arr[count] = num;
            count++;
        }
        num++;
    }
    printf("Array elements: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 176: Fill the Array of Even Index with Odd Nos and Odd Index with Even Nos
/**
#include <stdio.h>
int main() {
    int arr[10], even = 2, odd = 1;
    for (int i = 0; i < 10; i++) {
        if (i % 2 == 0) {
            arr[i] = odd;
            odd += 2;
        } else {
            arr[i] = even;
            even += 2;
        }
    }
    printf("Array elements: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 177: Fill the array with Random nos & Display Even nos & Odd Nos Separately
/**
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main() {
    int arr[10];
    srand(time(0));
    for (int i = 0; i < 10; i++) {
        arr[i] = rand() % 100 + 1;
    }
    printf("Even numbers: ");
    for (int i = 0; i < 10; i++) {
        if (arr[i] % 2 == 0) {
            printf("%d ", arr[i]);
        }
    }
    printf("\nOdd numbers: ");
    for (int i = 0; i < 10; i++) {
        if (arr[i] % 2 != 0) {
            printf("%d ", arr[i]);
        }
    }
    return 0;
}
*/
//===========================================
// Code 178: Program to Add two arrays and store the result in 3rd Array
/**
#include <stdio.h>
int main() {
    int arr1[5], arr2[5], arr3[5];
    printf("Enter 5 elements for first array: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &arr1[i]);
    }
    printf("Enter 5 elements for second array: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &arr2[i]);
    }
    for (int i = 0; i < 5; i++) {
        arr3[i] = arr1[i] + arr2[i];
    }
    printf("Resultant array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr3[i]);
    }
    return 0;
}
*/
//===========================================
// Code 179: Add 2 arrays, 1st element of 1st array with last element of 2nd array
/**
#include <stdio.h>
int main() {
    int arr1[5], arr2[5], arr3[5];
    printf("Enter 5 elements for first array: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &arr1[i]);
    }
    printf("Enter 5 elements for second array: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &arr2[i]);
    }
    for (int i = 0; i < 5; i++) {
        arr3[i] = arr1[i] + arr2[4 - i];
    }
    printf("Resultant array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr3[i]);
    }
    return 0;
}
*/
//===========================================
// Code 180: Copy Elements of One array to another Array
/**
#include <stdio.h>
int main() {
    int arr1[5], arr2[5];
    printf("Enter 5 elements for first array: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &arr1[i]);
    }
    for (int i = 0; i < 5; i++) {
        arr2[i] = arr1[i];
    }
    printf("Second array elements: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr2[i]);
    }
    return 0;
}
*/
//===========================================
// Code 181: Program to Perform Linear Search
/**
#include <stdio.h>
int main() {
    int arr[10], search, found = 0;
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    printf("Enter element to search: ");
    scanf("%d", &search);
    for (int i = 0; i < 10; i++) {
        if (arr[i] == search) {
            printf("Element found at index %d", i);
            found = 1;
            break;
        }
    }
    if (!found) {
        printf("Element not found");
    }
    return 0;
}
*/
//===========================================
// Code 182: Program to Perform Linear Search on Duplicate Elements of an Array
/**
#include <stdio.h>
int main() {
    int arr[10], search, found = 0;
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    printf("Enter element to search: ");
    scanf("%d", &search);
    for (int i = 0; i < 10; i++) {
        if (arr[i] == search) {
            printf("Element found at index %d\n", i);
            found = 1;
        }
    }
    if (!found) {
        printf("Element not found");
    }
    return 0;
}
*/
//===========================================
// Code 183: Program to Perform Linear Sorting
/**
#include <stdio.h>
int main() {
    int arr[10];
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    for (int i = 0; i < 10; i++) {
        for (int j = i + 1; j < 10; j++) {
            if (arr[i] > arr[j]) {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    printf("Sorted array: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 184: Program to Perform Binary Search
/**
#include <stdio.h>
int main() {
    int arr[10], search, found = 0, low = 0, high = 9, mid;
    printf("Enter 10 sorted elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    printf("Enter element to search: ");
    scanf("%d", &search);
    while (low <= high) {
        mid = (low + high) / 2;
        if (arr[mid] == search) {
            printf("Element found at index %d", mid);
            found = 1;
            break;
        } else if (arr[mid] < search) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    if (!found) {
        printf("Element not found");
    }
    return 0;
}
*/
//===========================================
// Code 185: Arranging Array of 10 elements in Ascending & Descending Order
/**
#include <stdio.h>
int main() {
    int arr[10];
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    for (int i = 0; i < 10; i++) {
        for (int j = i + 1; j < 10; j++) {
            if (arr[i] > arr[j]) {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    printf("Ascending order: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }
    printf("\nDescending order: ");
    for (int i = 9; i >= 0; i--) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 186: Program to Find Maximum and Minimum number in the array
/**
#include <stdio.h>
int main() {
    int arr[10], max, min;
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    max = arr[0];
    min = arr[0];
    for (int i = 1; i < 10; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
        if (arr[i] < min) {
            min = arr[i];
        }
    }
    printf("Maximum number: %d, Minimum number: %d", max, min);
    return 0;
}
*/
//===========================================
// Code 187: Program to Find Frequency of Each Element in the Array of N elements
/**
#include <stdio.h>
int main() {
    int n, arr[100], freq[100] = {0};
    printf("Enter the value of N: ");
    scanf("%d", &n);
    printf("Enter %d elements: ", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    for (int i = 0; i < n; i++) {
        freq[arr[i]]++;
    }
    for (int i = 0; i < n; i++) {
        if (freq[arr[i]] != 0) {
            printf("Frequency of %d: %d\n", arr[i], freq[arr[i]]);
            freq[arr[i]] = 0;
        }
    }
    return 0;
}
*/
//===========================================
// Code 188: Inserting new element in an array at given position
/**
#include <stdio.h>
int main() {
    int arr[10], n, pos, element;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Enter %d elements: ", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    printf("Enter the position and element to insert: ");
    scanf("%d %d", &pos, &element);
    for (int i = n; i >= pos; i--) {
        arr[i] = arr[i - 1];
    }
    arr[pos - 1] = element;
    n++;
    printf("Array after insertion: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 189: Deleting an element from an array at the given position
/**
#include <stdio.h>
int main() {
    int arr[10], n, pos;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Enter %d elements: ", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    printf("Enter the position to delete: ");
    scanf("%d", &pos);
    for (int i = pos - 1; i < n - 1; i++) {
        arr[i] = arr[i + 1];
    }
    n--;
    printf("Array after deletion: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    return 0;
}
*/
//===========================================
// Code 190: Program to read rollno, mobile no & average of 5 students using arrays
/**
#include <stdio.h>
struct Student {
    int rollno;
    long long mobile;
    float average;
};
int main() {
    struct Student students[5];
    for (int i = 0; i < 5; i++) {
        printf("Enter rollno, mobile and average for student %d: ", i + 1);
        scanf("%d %lld %f", &students[i].rollno, &students[i].mobile, &students[i].average);
    }
    for (int i = 0; i < 5; i++) {
        printf("Student %d: Rollno: %d, Mobile: %lld, Average: %.2f\n", i + 1, students[i].rollno, students[i].mobile, students[i].average);
    }
    return 0;
}
*/
//===========================================
// Code 191: Read Array of 10 nos and display with their Digit Count
/**
#include <stdio.h>
int countDigits(int num) {
    int count = 0;
    while (num != 0) {
        num /= 10;
        count++;
    }
    return count;
}
int main() {
    int arr[10];
    printf("Enter 10 numbers: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    for (int i = 0; i < 10; i++) {
        printf("Number: %d, Digit Count: %d\n", arr[i], countDigits(arr[i]));
    }
    return 0;
}
*/
//===========================================
// Code 192: Program to print size of int array, float array and double array
/**
#include <stdio.h>
int main() {
    int intArr[5];
    float floatArr[5];
    double doubleArr[5];
    printf("Size of int array: %zu bytes\n", sizeof(intArr));
    printf("Size of float array: %zu bytes\n", sizeof(floatArr));
    printf("Size of double array: %zu bytes\n", sizeof(doubleArr));
    return 0;
}
*/
//===========================================
// Code 193: Introduction to Multidimensional Array
/**
#include <stdio.h>
int main() {
    int arr[2][3] = {{1, 2, 3}, {4, 5, 6}};
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 194: Multidimensional array Declaration & Initialization
/**
#include <stdio.h>
int main() {
    int arr[2][3];
    arr[0][0] = 1;
    arr[0][1] = 2;
    arr[0][2] = 3;
    arr[1][0] = 4;
    arr[1][1] = 5;
    arr[1][2] = 6;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 195: Multidimensional Arrays Declaration & Initialization (Hands-On-Lab)
/**
#include <stdio.h>
int main() {
    int arr[2][3] = {{1, 2, 3}, {4, 5, 6}};
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 196: Reading user input in 4*4 Array
/**
#include <stdio.h>
int main() {
    int arr[4][4];
    printf("Enter 16 elements for 4x4 array: ");
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            scanf("%d", &arr[i][j]);
        }
    }
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 197: Program to Fill 5*5 array with Multiples of 5
/**
#include <stdio.h>
int main() {
    int arr[5][5], num = 5;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            arr[i][j] = num;
            num += 5;
        }
    }
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 198: Add Two arrays of 3*3 size and store the result in 3rd array
/**
#include <stdio.h>
int main() {
    int arr1[3][3], arr2[3][3], arr3[3][3];
    printf("Enter 9 elements for first 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr1[i][j]);
        }
    }
    printf("Enter 9 elements for second 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr2[i][j]);
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            arr3[i][j] = arr1[i][j] + arr2[i][j];
        }
    }
    printf("Resultant array: \n");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", arr3[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 199: Fill the 2D array even rows with odd nos & odd rows with even nos
/**
#include <stdio.h>
int main() {
    int arr[4][4], even = 2, odd = 1;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            if (i % 2 == 0) {
                arr[i][j] = odd;
                odd += 2;
            } else {
                arr[i][j] = even;
                even += 2;
            }
        }
    }
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            printf("%d ", arr[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 200: Program to Perform Matrix Multiplication
/**
#include <stdio.h>
int main() {
    int arr1[3][3], arr2[3][3], arr3[3][3];
    printf("Enter 9 elements for first 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr1[i][j]);
        }
    }
    printf("Enter 9 elements for second 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr2[i][j]);
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            arr3[i][j] = 0;
            for (int k = 0; k < 3; k++) {
                arr3[i][j] += arr1[i][k] * arr2[k][j];
            }
        }
    }
    printf("Resultant array: \n");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", arr3[i][j]);
        }
        printf("\n");
    }
    return 0;
}
*/

//===========================================
// Code 201: Linear Search Example in 2D Array
/**
#include <stdio.h>
int main() {
    int arr[3][3], search, found = 0;
    printf("Enter 9 elements for 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr[i][j]);
        }
    }
    printf("Enter element to search: ");
    scanf("%d", &search);
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (arr[i][j] == search) {
                printf("Element found at position (%d, %d)\n", i, j);
                found = 1;
            }
        }
    }
    if (!found) {
        printf("Element not found");
    }
    return 0;
}
*/
//===========================================
// Code 202: Program to Print Diagonal Elements of a 2D array
/**
#include <stdio.h>
int main() {
    int arr[3][3];
    printf("Enter 9 elements for 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr[i][j]);
        }
    }
    printf("Diagonal elements: ");
    for (int i = 0; i < 3; i++) {
        printf("%d ", arr[i][i]);
    }
    return 0;
}
*/
//===========================================
// Code 203: Program to print Upper Triangle and Lower Triangle of 2D Array
/**
#include <stdio.h>
int main() {
    int arr[3][3];
    printf("Enter 9 elements for 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr[i][j]);
        }
    }
    printf("Upper Triangle: \n");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (j >= i) {
                printf("%d ", arr[i][j]);
            } else {
                printf("  ");
            }
        }
        printf("\n");
    }
    printf("Lower Triangle: \n");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (j <= i) {
                printf("%d ", arr[i][j]);
            } else {
                printf("  ");
            }
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 204: Program to Print Transpose of Square Matrix
/**
#include <stdio.h>
int main() {
    int arr[3][3];
    printf("Enter 9 elements for 3x3 array: ");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &arr[i][j]);
        }
    }
    printf("Transpose of the matrix: \n");
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", arr[j][i]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 205: Read Semester wise Marks and Print Semester wise total
/**
#include <stdio.h>
int main() {
    int marks[2][3], total[2] = {0};
    printf("Enter marks for 2 semesters (3 subjects each): ");
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &marks[i][j]);
            total[i] += marks[i][j];
        }
    }
    for (int i = 0; i < 2; i++) {
        printf("Total marks for semester %d: %d\n", i + 1, total[i]);
    }
    return 0;
}
*/
//===========================================
// Code 206: Program to Work with 3D array
/**
#include <stdio.h>
int main() {
    int arr[2][2][2];
    printf("Enter 8 elements for 2x2x2 array: ");
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            for (int k = 0; k < 2; k++) {
                scanf("%d", &arr[i][j][k]);
            }
        }
    }
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            for (int k = 0; k < 2; k++) {
                printf("%d ", arr[i][j][k]);
            }
            printf("\n");
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 207: Introduction to Strings in C
/**
#include <stdio.h>
int main() {
    char str[] = "Hello, World!";
    printf("%s", str);
    return 0;
}
*/
//===========================================
// Code 208: Character array Initialization
/**
#include <stdio.h>
int main() {
    char str[10] = {'H', 'e', 'l', 'l', 'o', '\0'};
    printf("%s", str);
    return 0;
}
*/
//===========================================
// Code 209: Read a String and Display Character by Character | String Traversal
/**
#include <stdio.h>
int main() {
    char str[50];
    printf("Enter a string: ");
    scanf("%s", str);
    for (int i = 0; str[i] != '\0'; i++) {
        printf("%c ", str[i]);
    }
    return 0;
}
*/
//===========================================
// Code 210: Calculate Length of the string without using strlen() function
/**
#include <stdio.h>
int main() {
    char str[50];
    int length = 0;
    printf("Enter a string: ");
    scanf("%s", str);
    while (str[length] != '\0') {
        length++;
    }
    printf("Length of the string: %d", length);
    return 0;
}
*/
//===========================================
// Code 211: Copy One String to Another string without using library function
/**
#include <stdio.h>
int main() {
    char str1[50], str2[50];
    printf("Enter a string: ");
    scanf("%s", str1);
    for (int i = 0; str1[i] != '\0'; i++) {
        str2[i] = str1[i];
    }
    printf("Copied string: %s", str2);
    return 0;
}
*/
//===========================================
// Code 212: Program to Count number of words in the inputted string
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    int wordCount = 0, i = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    while (str[i] != '\0') {
        if (isalpha(str[i]) && !isalpha(str[i + 1])) {
            wordCount++;
        }
        i++;
    }
    printf("Number of words: %d", wordCount);
    return 0;
}
*/
//===========================================
// Code 213: Count no of Capital Letters, Small Letters, Digits & Special Characters
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    int capitalLetters = 0, smallLetters = 0, digits = 0, specialChars = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        if (isupper(str[i])) {
            capitalLetters++;
        } else if (islower(str[i])) {
            smallLetters++;
        } else if (isdigit(str[i])) {
            digits++;
        } else {
            specialChars++;
        }
    }
    printf("Capital Letters: %d, Small Letters: %d, Digits: %d, Special Characters: %d", capitalLetters, smallLetters, digits, specialChars);
    return 0;
}
*/
//===========================================
// Code 214: Convert Upper Case letters to Lower Case and Vice Versa
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        if (isupper(str[i])) {
            str[i] = tolower(str[i]);
        } else if (islower(str[i])) {
            str[i] = toupper(str[i]);
        }
    }
    printf("Converted string: %s", str);
    return 0;
}
*/
//===========================================
// Code 215: Program to Convert the Inputted String into Proper Case
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    if (islower(str[0])) {
        str[0] = toupper(str[0]);
    }
    for (int i = 1; str[i] != '\0'; i++) {
        if (str[i - 1] == ' ' && islower(str[i])) {
            str[i] = toupper(str[i]);
        } else if (str[i - 1] != ' ' && isupper(str[i])) {
            str[i] = tolower(str[i]);
        }
    }
    printf("Proper case string: %s", str);
    return 0;
}
*/
//===========================================
// Code 216: Print Each character from the String Along with its ASCII Codes
/**
#include <stdio.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        printf("Character: %c, ASCII Code: %d\n", str[i], str[i]);
    }
    return 0;
}
*/
//===========================================
// Code 217: Print Next Occurrence of each character from the string | Encryption
/**
#include <stdio.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        printf("%c", str[i] + 1);
    }
    return 0;
}
*/
//===========================================
// Code 218: Program to Join Two Strings and Store the Result in 3rd String
/**
#include <stdio.h>
int main() {
    char str1[50], str2[50], str3[100];
    printf("Enter first string: ");
    scanf("%s", str1);
    printf("Enter second string: ");
    scanf("%s", str2);
    int i = 0, j = 0;
    while (str1[i] != '\0') {
        str3[i] = str1[i];
        i++;
    }
    while (str2[j] != '\0') {
        str3[i] = str2[j];
        i++;
        j++;
    }
    str3[i] = '\0';
    printf("Joined string: %s", str3);
    return 0;
}
*/
//===========================================
// Code 219: Program to Print First Word from the Inputted String
/**
#include <stdio.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != ' ' && str[i] != '\0'; i++) {
        printf("%c", str[i]);
    }
    return 0;
}
*/
//===========================================
// Code 220: Program to Print Second word from the Inputted String
/**
#include <stdio.h>
int main() {
    char str[100];
    int firstSpace = 0, secondSpace = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == ' ') {
            firstSpace = i + 1;
            break;
        }
    }
    for (int i = firstSpace; str[i] != ' ' && str[i] != '\0'; i++) {
        printf("%c", str[i]);
    }
    return 0;
}
*/
//===========================================
// Code 221: Program to Print Last word from the Inputted String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[100];
    int lastSpace = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = strlen(str) - 1; i >= 0; i--) {
        if (str[i] == ' ') {
            lastSpace = i + 1;
            break;
        }
    }
    for (int i = lastSpace; str[i] != '\0'; i++) {
        printf("%c", str[i]);
    }
    return 0;
}
*/
//===========================================
// Code 222: Program to Print Second Last word from the inputted String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[100];
    int lastSpace = 0, secondLastSpace = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = strlen(str) - 1; i >= 0; i--) {
        if (str[i] == ' ') {
            if (lastSpace == 0) {
                lastSpace = i;
            } else {
                secondLastSpace = i + 1;
                break;
            }
        }
    }
    for (int i = secondLastSpace; i < lastSpace; i++) {
        printf("%c", str[i]);
    }
    return 0;
}
*/
//===========================================
// Code 223: Program to Reverse the Inputted String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[100], reversedStr[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    int length = strlen(str) - 1;
    for (int i = 0; i < length; i++) {
        reversedStr[i] = str[length - i - 1];
    }
    reversedStr[length] = '\0';
    printf("Reversed string: %s", reversedStr);
    return 0;
}
*/
//===========================================
// Code 224: Program to Check the inputted String is Palindrome or not
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[100];
    int isPalindrome = 1;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    int length = strlen(str) - 1;
    for (int i = 0; i < length / 2; i++) {
        if (str[i] != str[length - i - 1]) {
            isPalindrome = 0;
            break;
        }
    }
    if (isPalindrome) {
        printf("The string is a palindrome.");
    } else {
        printf("The string is not a palindrome.");
    }
    return 0;
}
*/
//===========================================
// Code 225: Program to Print First Character of Each word from the Inputted String
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    if (isalpha(str[0])) {
        printf("%c ", str[0]);
    }
    for (int i = 1; str[i] != '\0'; i++) {
        if (str[i - 1] == ' ' && isalpha(str[i])) {
            printf("%c ", str[i]);
        }
    }
    return 0;
}
*/
//===========================================
// Code 226: Program to Count No of Vowels & Consonants from the Inputted String
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    int vowels = 0, consonants = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        char c = tolower(str[i]);
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            vowels++;
        } else if (isalpha(c)) {
            consonants++;
        }
    }
    printf("Vowels: %d, Consonants: %d", vowels, consonants);
    return 0;
}
*/
//===========================================
// Code 227: Program to find length of the String without white spaces
/**
#include <stdio.h>
int main() {
    char str[100];
    int length = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] != ' ') {
            length++;
        }
    }
    printf("Length of the string without white spaces: %d", length);
    return 0;
}
*/
//===========================================
// Code 228: Read Passwords, Check for similarities only if lengths are equal
/**
#include <stdio.h>
#include <string.h>
int main() {
    char password1[50], password2[50];
    printf("Enter first password: ");
    scanf("%s", password1);
    printf("Enter second password: ");
    scanf("%s", password2);
    if (strlen(password1) == strlen(password2)) {
        if (strcmp(password1, password2) == 0) {
            printf("Passwords are similar.");
        } else {
            printf("Passwords are not similar.");
        }
    } else {
        printf("Password lengths are not equal.");
    }
    return 0;
}
*/
//===========================================
// Code 229: Convert Vowels into Upper Case and Consonants into Lower Case
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    for (int i = 0; str[i] != '\0'; i++) {
        char c = tolower(str[i]);
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            str[i] = toupper(str[i]);
        } else {
            str[i] = tolower(str[i]);
        }
    }
    printf("Converted string: %s", str);
    return 0;
}
*/
//===========================================
// Code 230: Program to Read a Password, Perform Validation and Check its Strength
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main() {
    char password[50];
    int hasUpper = 0, hasLower = 0, hasDigit = 0, hasSpecial = 0;
    printf("Enter a password: ");
    scanf("%s", password);
    for (int i = 0; password[i] != '\0'; i++) {
        if (isupper(password[i])) {
            hasUpper = 1;
        } else if (islower(password[i])) {
            hasLower = 1;
        } else if (isdigit(password[i])) {
            hasDigit = 1;
        } else {
            hasSpecial = 1;
        }
    }
    if (strlen(password) >= 8 && hasUpper && hasLower && hasDigit && hasSpecial) {
        printf("Strong password.");
    } else {
        printf("Weak password.");
    }
    return 0;
}
*/
//===========================================
// Code 231: Program to Read a name and Display in Pyramid Format
/**
#include <stdio.h>
#include <string.h>
int main() {
    char name[50];
    printf("Enter a name: ");
    scanf("%s", name);
    int length = strlen(name);
    for (int i = 0; i < length; i++) {
        for (int j = 0; j <= i; j++) {
            printf("%c ", name[j]);
        }
        printf("\n");
    }
    return 0;
}
*/
//===========================================
// Code 232: Find Frequency of a character in the main String and its Index
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[100], c;
    int frequency = 0, indices[100], indexCount = 0;
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    printf("Enter a character to find: ");
    scanf("%c", &c);
    for (int i = 0; str[i] != '\0'; i++) {
        if (str[i] == c) {
            frequency++;
            indices[indexCount] = i;
            indexCount++;
        }
    }
    printf("Frequency of '%c': %d\n", c, frequency);
    printf("Indices: ");
    for (int i = 0; i < indexCount; i++) {
        printf("%d ", indices[i]);
    }
    return 0;
}
*/
//===========================================
// Code 233: Program to read a name and check for not null validation
/**
#include <stdio.h>
#include <string.h>
int main() {
    char name[50];
    printf("Enter a name: ");
    scanf("%s", name);
    if (strlen(name) > 0) {
        printf("Name is not null.");
    } else {
        printf("Name is null.");
    }
    return 0;
}
*/
//===========================================
// Code 234: Program to Read a Mail Id and Check for Validation
/**
#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main() {
    char email[100];
    int valid = 1, atPos = -1, dotPos = -1;
    printf("Enter an email: ");
    scanf("%s", email);
    for (int i = 0; email[i] != '\0'; i++) {
        if (email[i] == '@') {
            atPos = i;
        } else if (email[i] == '.') {
            dotPos = i;
        }
    }
    if (atPos == -1 || dotPos == -1 || atPos > dotPos) {
        valid = 0;
    }
    if (valid) {
        printf("Valid email.");
    } else {
        printf("Invalid email.");
    }
    return 0;
}
*/
//===========================================
// Code 235: Program to Search for a Word in the Main String
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[100], word[20];
    printf("Enter a string: ");
    fgets(str, sizeof(str), stdin);
    printf("Enter a word to search: ");
    scanf("%s", word);
    char *found = strstr(str, word);
    if (found) {
        printf("Word found at position: %ld", found - str);
    } else {
        printf("Word not found.");
    }
    return 0;
}
*/
//===========================================
// Code 236: Introduction to String Arrays/2D Character Arrays
/**
#include <stdio.h>
int main() {
    char strArray[3][10] = {"Hello", "World", "C"};
    for (int i = 0; i < 3; i++) {
        printf("%s\n", strArray[i]);
    }
    return 0;
}
*/
//===========================================
// Code 237: Declaring & Initializing 2d Character array/String Array
/**
#include <stdio.h>
int main() {
    char strArray[3][10];
    strcpy(strArray[0], "Hello");
    strcpy(strArray[1], "World");
    strcpy(strArray[2], "C");
    for (int i = 0; i < 3; i++) {
        printf("%s\n", strArray[i]);
    }
    return 0;
}
*/
//===========================================
// Code 238: Program to Read 5 Names and Display the Same
/**
#include <stdio.h>
int main() {
    char names[5][50];
    printf("Enter 5 names: ");
    for (int i = 0; i < 5; i++) {
        scanf("%s", names[i]);
    }
    for (int i = 0; i < 5; i++) {
        printf("%s\n", names[i]);
    }
    return 0;
}
*/
//===========================================
// Code 239: Program to Find the Longest Name from an Array of 10 Names
/**
#include <stdio.h>
#include <string.h>
int main() {
    char names[10][50], longestName[50];
    int maxLength = 0;
    printf("Enter 10 names: ");
    for (int i = 0; i < 10; i++) {
        scanf("%s", names[i]);
        if (strlen(names[i]) > maxLength) {
            maxLength = strlen(names[i]);
            strcpy(longestName, names[i]);
        }
    }
    printf("Longest name: %s", longestName);
    return 0;
}
*/
//===========================================
// Code 240: Program to Count Number of Words from the Inputted Paragraph
/**
#include <stdio.h>
#include <ctype.h>
int main() {
    char paragraph[1000];
    int wordCount = 0, i = 0;
    printf("Enter a paragraph: ");
    fgets(paragraph, sizeof(paragraph), stdin);
    while (paragraph[i] != '\0') {
        if (isalpha(paragraph[i]) && !isalpha(paragraph[i + 1])) {
            wordCount++;
        }
        i++;
    }
    printf("Number of words: %d", wordCount);
    return 0;
}
*/
//===========================================
// Code 241: Introduction to Functions
/**
#include <stdio.h>
void greet() {
    printf("Hello, World!\n");
}
int main() {
    greet();
    return 0;
}
*/
//===========================================
// Code 242: Types of Functions
/**
#include <stdio.h>
// Function declaration
void greet();
int add(int a, int b);
int main() {
    greet();
    int sum = add(5, 10);
    printf("Sum: %d\n", sum);
    return 0;
}
// Function definition
void greet() {
    printf("Hello, World!\n");
}
int add(int a, int b) {
    return a + b;
}
*/
//===========================================
// Code 243: Working with Mathematical Functions
/**
#include <stdio.h>
#include <math.h>
int main() {
    double num = 16.0;
    printf("Square root of %.2f: %.2f\n", num, sqrt(num));
    printf("Power of %.2f to 2: %.2f\n", num, pow(num, 2));
    return 0;
}
*/
//===========================================
// Code 244: Working with String Functions
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str1[20] = "Hello";
    char str2[20] = "World";
    strcat(str1, str2);
    printf("Concatenated string: %s\n", str1);
    printf("Length of str1: %zu\n", strlen(str1));
    return 0;
}
*/
//===========================================
// Code 245: Check Whether the String is Palindrome or not using String Functions
/**
#include <stdio.h>
#include <string.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);
    char reversedStr[100];
    strcpy(reversedStr, str);
    strrev(reversedStr);
    if (strcmp(str, reversedStr) == 0) {
        printf("The string is a palindrome.\n");
    } else {
        printf("The string is not a palindrome.\n");
    }
    return 0;
}
*/
//===========================================
// Code 246: Sort the Array of 10 Strings in Ascending Order
/**
#include <stdio.h>
#include <string.h>
int main() {
    char strings[10][50], temp[50];
    printf("Enter 10 strings:\n");
    for (int i = 0; i < 10; i++) {
        scanf("%s", strings[i]);
    }
    for (int i = 0; i < 10; i++) {
        for (int j = i + 1; j < 10; j++) {
            if (strcmp(strings[i], strings[j]) > 0) {
                strcpy(temp, strings[i]);
                strcpy(strings[i], strings[j]);
                strcpy(strings[j], temp);
            }
        }
    }
    printf("Sorted strings:\n");
    for (int i = 0; i < 10; i++) {
        printf("%s\n", strings[i]);
    }
    return 0;
}
*/
//===========================================
// Code 247: Understanding Flow of User Defined Functions
/**
#include <stdio.h>
void function1() {
    printf("Inside function1\n");
}
void function2() {
    printf("Inside function2\n");
}
int main() {
    printf("Start of main\n");
    function1();
    function2();
    printf("End of main\n");
    return 0;
}
*/
//===========================================
// Code 248: Sum of Two Numbers using Functions
/**
#include <stdio.h>
int add(int a, int b) {
    return a + b;
}
int main() {
    int num1, num2, sum;
    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);
    sum = add(num1, num2);
    printf("Sum: %d\n", sum);
    return 0;
}
*/
//===========================================
// Code 249: Print Amount from the Inputted Rate & Quantity using Functions
/**
#include <stdio.h>
float calculateAmount(float rate, int quantity) {
    return rate * quantity;
}
int main() {
    float rate, amount;
    int quantity;
    printf("Enter rate and quantity: ");
    scanf("%f %d", &rate, &quantity);
    amount = calculateAmount(rate, quantity);
    printf("Amount: %.2f\n", amount);
    return 0;
}
*/
//===========================================
// Code 250: Calculate Total & Average using Functions
/**
#include <stdio.h>
void calculateTotalAndAverage(int marks[], int size, int *total, float *average) {
    *total = 0;
    for (int i = 0; i < size; i++) {
        *total += marks[i];
    }
    *average = (float)*total / size;
}
int main() {
    int marks[5], total;
    float average;
    printf("Enter marks of 5 subjects: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &marks[i]);
    }
    calculateTotalAndAverage(marks, 5, &total, &average);
    printf("Total: %d, Average: %.2f\n", total, average);
    return 0;
}
*/


//===========================================
// Code 251: Biggest of Two Numbers using Functions
/**
#include <stdio.h>
int findBiggest(int a, int b) {
    return (a > b) ? a : b;
}
int main() {
    int num1, num2, biggest;
    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);
    biggest = findBiggest(num1, num2);
    printf("The biggest number is: %d\n", biggest);
    return 0;
}
*/
//===========================================
// Code 252: Call By Value | Swapping of Two numbers Example
/**
#include <stdio.h>
void swap(int a, int b) {
    int temp = a;
    a = b;
    b = temp;
    printf("Inside swap function: a = %d, b = %d\n", a, b);
}
int main() {
    int a = 5, b = 10;
    printf("Before swap: a = %d, b = %d\n", a, b);
    swap(a, b);
    printf("After swap: a = %d, b = %d\n", a, b);
    return 0;
}
*/
//===========================================
// Code 253: Call By Value | Increment variable by one Example
/**
#include <stdio.h>
void increment(int a) {
    a++;
    printf("Inside increment function: a = %d\n", a);
}
int main() {
    int a = 5;
    printf("Before increment: a = %d\n", a);
    increment(a);
    printf("After increment: a = %d\n", a);
    return 0;
}
*/
//===========================================
// Code 254: Prime Number Checking Example using Functions
/**
#include <stdio.h>
int isPrime(int num) {
    if (num <= 1) {
        return 0;
    }
    for (int i = 2; i <= num / 2; i++) {
        if (num % i == 0) {
            return 0;
        }
    }
    return 1;
}
int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    if (isPrime(num)) {
        printf("%d is a prime number.\n", num);
    } else {
        printf("%d is not a prime number.\n", num);
    }
    return 0;
}
*/
//===========================================
// Code 255: Count number of Digits from the Given no using Functions
/**
#include <stdio.h>
int countDigits(int num) {
    int count = 0;
    while (num != 0) {
        num /= 10;
        count++;
    }
    return count;
}
int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    printf("Number of digits: %d\n", countDigits(num));
    return 0;
}
*/
//===========================================
// Code 256: Passing Array to a Function | Read 10 array elements and display
/**
#include <stdio.h>
void displayArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}
int main() {
    int arr[10];
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    displayArray(arr, 10);
    return 0;
}
*/
//===========================================
// Code 257: Count no of Even and Odd numbers from the Array of 10 elements
/**
#include <stdio.h>
void countEvenOdd(int arr[], int size, int *even, int *odd) {
    *even = 0;
    *odd = 0;
    for (int i = 0; i < size; i++) {
        if (arr[i] % 2 == 0) {
            (*even)++;
        } else {
            (*odd)++;
        }
    }
}
int main() {
    int arr[10], even, odd;
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    countEvenOdd(arr, 10, &even, &odd);
    printf("Even numbers: %d, Odd numbers: %d\n", even, odd);
    return 0;
}
*/
//===========================================
// Code 258: Display Even no. & Odd no. from the array | Global Declarations
/**
#include <stdio.h>
int arr[10];
void displayEvenOdd() {
    printf("Even numbers: ");
    for (int i = 0; i < 10; i++) {
        if (arr[i] % 2 == 0) {
            printf("%d ", arr[i]);
        }
    }
    printf("\nOdd numbers: ");
    for (int i = 0; i < 10; i++) {
        if (arr[i] % 2 != 0) {
            printf("%d ", arr[i]);
        }
    }
}
int main() {
    printf("Enter 10 elements: ");
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }
    displayEvenOdd();
    return 0;
}
*/
//===========================================
// Code 259: Swapping two numbers using Functions & Global Declarations
/**
#include <stdio.h>
int a, b;
void swap() {
    int temp = a;
    a = b;
    b = temp;
}
int main() {
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    printf("Before swap: a = %d, b = %d\n", a, b);
    swap();
    printf("After swap: a = %d, b = %d\n", a, b);
    return 0;
}
*/
//===========================================
// Code 260: Creating Header Files | Passing String to a Function
/**
// myheader.h
#ifndef MYHEADER_H
#define MYHEADER_H
void printString(char str[]);
#endif
// main.c
#include <stdio.h>
#include "myheader.h"
int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);
    printString(str);
    return 0;
}
// myfunctions.c
#include <stdio.h>
#include "myheader.h"
void printString(char str[]) {
    printf("String: %s\n", str);
}
*/
//===========================================
// Code 261: Categories of Functions
/**
#include <stdio.h>
// Function with no arguments and no return value
void greet() {
    printf("Hello, World!\n");
}
// Function with arguments and no return value
void add(int a, int b) {
    printf("Sum: %d\n", a + b);
}
// Function with no arguments and return value
int getNumber() {
    return 42;
}
// Function with arguments and return value
int multiply(int a, int b) {
    return a * b;
}
int main() {
    greet();
    add(5, 10);
    int num = getNumber();
    printf("Number: %d\n", num);
    int product = multiply(5, 10);
    printf("Product: %d\n", product);
    return 0;
}
*/
//===========================================
// Code 262: Program to read 3 numbers using functions
/**
#include <stdio.h>
void readNumbers(int *a, int *b, int *c) {
    printf("Enter three numbers: ");
    scanf("%d %d %d", a, b, c);
}
int main() {
    int a, b, c;
    readNumbers(&a, &b, &c);
    printf("Numbers: %d, %d, %d\n", a, b, c);
    return 0;
}
*/
//===========================================
// Code 263: Report Generation Example | Library File Creation
/**
// mylibrary.h
#ifndef MYLIBRARY_H
#define MYLIBRARY_H
void generateReport(char name[], int marks[], int size);
#endif
// main.c
#include <stdio.h>
#include "mylibrary.h"
int main() {
    char name[50];
    int marks[5];
    printf("Enter student name: ");
    scanf("%s", name);
    printf("Enter marks of 5 subjects: ");
    for (int i = 0; i < 5; i++) {
        scanf("%d", &marks[i]);
    }
    generateReport(name, marks, 5);
    return 0;
}
// mylibrary.c
#include <stdio.h>
#include "mylibrary.h"
void generateReport(char name[], int marks[], int size) {
    int total = 0;
    float average;
    for (int i = 0; i < size; i++) {
        total += marks[i];
    }
    average = (float)total / size;
    printf("Student Report\n");
    printf("Name: %s\n", name);
    printf("Total Marks: %d\n", total);
    printf("Average Marks: %.2f\n", average);
}
*/
//===========================================
// Code 264: Banking Application Example using Functions
/**
#include <stdio.h>
float balance = 1000.0;
void deposit(float amount) {
    balance += amount;
    printf("Deposited: %.2f\n", amount);
}
void withdraw(float amount) {
    if (amount <= balance) {
        balance -= amount;
        printf("Withdrawn: %.2f\n", amount);
    } else {
        printf("Insufficient balance\n");
    }
}
void checkBalance() {
    printf("Current Balance: %.2f\n", balance);
}
int main() {
    int choice;
    float amount;
    do {
        printf("1. Deposit\n");
        printf("2. Withdraw\n");
        printf("3. Check Balance\n");
        printf("4. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                printf("Enter amount to deposit: ");
                scanf("%f", &amount);
                deposit(amount);
                break;
            case 2:
                printf("Enter amount to withdraw: ");
                scanf("%f", &amount);
                withdraw(amount);
                break;
            case 3:
                checkBalance();
                break;
            case 4:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice\n");
        }
    } while (choice != 4);
    return 0;
}
*/
//===========================================
// Code 265: Function Declaration in C
/**
#include <stdio.h>
// Function declaration
void greet();
int add(int a, int b);
int main() {
    greet();
    int sum = add(5, 10);
    printf("Sum: %d\n", sum);
    return 0;
}
// Function definition
void greet() {
    printf("Hello, World!\n");
}
int add(int a, int b) {
    return a + b;
}
*/
//===========================================
// Code 266: Difference Between exit(0) and exit(1) Function
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int a = 5, b = 10;
    if (a < b) {
        exit(0); // Successful termination
    } else {
        exit(1); // Unsuccessful termination
    }
    return 0;
}
*/
//===========================================
// Code 267: Decimal to Binary Conversion using Functions
/**
#include <stdio.h>
void decimalToBinary(int num) {
    if (num > 1) {
        decimalToBinary(num / 2);
    }
    printf("%d", num % 2);
}
int main() {
    int num;
    printf("Enter a decimal number: ");
    scanf("%d", &num);
    printf("Binary equivalent: ");
    decimalToBinary(num);
    printf("\n");
    return 0;
}
*/
//===========================================
// Code 268: How to Use gotoxy() in Modern IDE’s
/**
#include <stdio.h>
#include <windows.h>
void gotoxy(int x, int y) {
    COORD coord;
    coord.X = x;
    coord.Y = y;
    SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
}
int main() {
    gotoxy(10, 5);
    printf("Hello, World!");
    return 0;
}
*/
//===========================================
// Code 269: Chain of Function in C
/**
#include <stdio.h>
void function3() {
    printf("Inside function3\n");
}
void function2() {
    printf("Inside function2\n");
    function3();
}
void function1() {
    printf("Inside function1\n");
    function2();
}
int main() {
    printf("Start of main\n");
    function1();
    printf("End of main\n");
    return 0;
}
*/
//===========================================
// Code 270: Different Variations of main() function
/**
#include <stdio.h>
// Variation 1: main without arguments
int main() {
    printf("Variation 1: main without arguments\n");
    return 0;
}
// Variation 2: main with arguments
int main(int argc, char *argv[]) {
    printf("Variation 2: main with arguments\n");
    for (int i = 0; i < argc; i++) {
        printf("argv[%d]: %s\n", i, argv[i]);
    }
    return 0;
}
// Variation 3: main with command-line arguments
int main(int argc, char *argv[], char *envp[]) {
    printf("Variation 3: main with command-line arguments and environment variables\n");
    for (int i = 0; i < argc; i++) {
        printf("argv[%d]: %s\n", i, argv[i]);
    }
    for (int i = 0; envp[i] != NULL; i++) {
        printf("envp[%d]: %s\n", i, envp[i]);
    }
    return 0;
}
*/
//===========================================
// Code 271: Introduction to Recursive Functions
/**
#include <stdio.h>
void recursiveFunction(int count) {
    if (count == 0) {
        return;
    }
    printf("Count: %d\n", count);
    recursiveFunction(count - 1);
}
int main() {
    recursiveFunction(5);
    return 0;
}
*/
//===========================================
// Code 272: Sum of N Numbers Using Recursive Functions
/**
#include <stdio.h>
int sum(int n) {
    if (n == 0) {
        return 0;
    }
    return n + sum(n - 1);
}
int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    printf("Sum of first %d numbers: %d\n", n, sum(n));
    return 0;
}
*/
//===========================================
// Code 273: Factorial of Inputted No Using Recursive Functions
/**
#include <stdio.h>
int factorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    return n * factorial(n - 1);
}
int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);
    printf("Factorial of %d: %d\n", n, factorial(n));
    return 0;
}
*/
//===========================================
// Code 274: Decimal to Binary Number Conversion Using Recursive Functions
/**
#include <stdio.h>
void decimalToBinary(int num) {
    if (num > 1) {
        decimalToBinary(num / 2);
    }
    printf("%d", num % 2);
}
int main() {
    int num;
    printf("Enter a decimal number: ");
    scanf("%d", &num);
    printf("Binary equivalent: ");
    decimalToBinary(num);
    printf("\n");
    return 0;
}
*/
//===========================================
// Code 275: What is Pre-Processor and Pre-Processor Directives
/**
#include <stdio.h>
#define PI 3.14
int main() {
    printf("Value of PI: %f\n", PI);
    return 0;
}
*/
//===========================================
// Code 276: Types of Pre-Processor Directives
/**
#include <stdio.h>
#define MAX 100
#define SQUARE(x) ((x) * (x))
int main() {
    printf("Maximum value: %d\n", MAX);
    printf("Square of 5: %d\n", SQUARE(5));
    return 0;
}
*/
//===========================================
// Code 277: Introduction to Macros | working with #define
/**
#include <stdio.h>
#define GREET printf("Hello, World!\n");
int main() {
    GREET
    return 0;
}
*/
//===========================================
// Code 278: Macros with Arguments | working with #define
/**
#include <stdio.h>
#define ADD(a, b) ((a) + (b))
int main() {
    printf("Sum of 5 and 10: %d\n", ADD(5, 10));
    return 0;
}
*/
//===========================================
// Code 279: #include Pre-Processor Directives
/**
#include <stdio.h>
#include "myheader.h"
int main() {
    printMessage();
    return 0;
}
// myheader.h
#ifndef MYHEADER_H
#define MYHEADER_H
void printMessage();
#endif
// myheader.c
#include <stdio.h>
#include "myheader.h"
void printMessage() {
    printf("Hello, World!\n");
}
*/
//===========================================
// Code 280: Conditional Compilation using Pre-Processor Directives
/**
#include <stdio.h>
#define DEBUG 1
int main() {
    #ifdef DEBUG
    printf("Debug mode is on\n");
    #else
    printf("Debug mode is off\n");
    #endif
    return 0;
}
*/
//===========================================
// Code 281: Introduction to Storage Classes | Local & Global Variables
/**
#include <stdio.h>
int globalVar = 10; // Global variable
void myFunction() {
    int localVar = 20; // Local variable
    printf("Global variable: %d\n", globalVar);
    printf("Local variable: %d\n", localVar);
}
int main() {
    printf("Global variable in main: %d\n", globalVar);
    myFunction();
    return 0;
}
*/
//===========================================
// Code 282: Working with auto storage class
/**
#include <stdio.h>
int main() {
    auto int a = 10;
    printf("Value of a: %d\n", a);
    return 0;
}
*/
//===========================================
// Code 283: Working with register storage class
/**
#include <stdio.h>
int main() {
    register int a = 10;
    printf("Value of a: %d\n", a);
    return 0;
}
*/
//===========================================
// Code 284: Working with Static Storage Class
/**
#include <stdio.h>
void myFunction() {
    static int count = 0;
    count++;
    printf("Count: %d\n", count);
}
int main() {
    myFunction();
    myFunction();
    myFunction();
    return 0;
}
*/
//===========================================
// Code 285: Working with extern storage class
/**
#include <stdio.h>
int globalVar = 10;
int main() {
    extern int globalVar;
    printf("Global variable: %d\n", globalVar);
    return 0;
}
*/
//===========================================
// Code 286: Working with inline function
/**
#include <stdio.h>
inline int add(int a, int b) {
    return a + b;
}
int main() {
    int sum = add(5, 10);
    printf("Sum: %d\n", sum);
    return 0;
}
*/
//===========================================
// Code 287: Introduction to Pointers
/**
#include <stdio.h>
int main() {
    int a = 10;
    int *ptr = &a;
    printf("Value of a: %d\n", a);
    printf("Address of a: %p\n", (void*)&a);
    printf("Value of ptr: %p\n", (void*)ptr);
    printf("Value pointed by ptr: %d\n", *ptr);
    return 0;
}
*/
//===========================================
// Code 288: Types of Pointer Operators
/**
#include <stdio.h>
int main() {
    int a = 10;
    int *ptr = &a;
    printf("Address of a: %p\n", (void*)&a);
    printf("Value of ptr: %p\n", (void*)ptr);
    printf("Value pointed by ptr: %d\n", *ptr);
    return 0;
}
*/
//===========================================
// Code 289: Types of Pointers
/**
#include <stdio.h>
int main() {
    int a = 10;
    int *ptr1 = &a;
    int **ptr2 = &ptr1;
    printf("Value of a: %d\n", a);
    printf("Address of a: %p\n", (void*)&a);
    printf("Value of ptr1: %p\n", (void*)ptr1);
    printf("Value pointed by ptr1: %d\n", *ptr1);
    printf("Address of ptr1: %p\n", (void*)&ptr1);
    printf("Value of ptr2: %p\n", (void*)ptr2);
    printf("Value pointed by ptr2: %p\n", (void*)*ptr2);
    printf("Value pointed by ptr2's pointer: %d\n", **ptr2);
    return 0;
}
*/
//===========================================
// Code 290: Adding of Two Numbers using Pointers
/**
#include <stdio.h>
int main() {
    int a, b, sum;
    int *ptr1 = &a;
    int *ptr2 = &b;
    printf("Enter two numbers: ");
    scanf("%d %d", ptr1, ptr2);
    sum = *ptr1 + *ptr2;
    printf("Sum: %d\n", sum);
    return 0;
}
*/
//===========================================
// Code 291: Example on Pointer Arithmetic
/**
#include <stdio.h>
int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int *ptr = arr;
    for (int i = 0; i < 5; i++) {
        printf("Address of arr[%d]: %p\n", i, (void*)(ptr + i));
        printf("Value of arr[%d]: %d\n", i, *(ptr + i));
    }
    return 0;
}
*/
//===========================================
// Code 292: Call by Reference | Swapping of 2 nos
/**
#include <stdio.h>
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}
int main() {
    int a = 5, b = 10;
    printf("Before swap: a = %d, b = %d\n", a, b);
    swap(&a, &b);
    printf("After swap: a = %d, b = %d\n", a, b);
    return 0;
}
*/
//===========================================
// Code 293: Assigning Array Address to Pointer Variable
/**
#include <stdio.h>
int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    int *ptr = arr;
    for (int i = 0; i < 5; i++) {
        printf("Value of arr[%d]: %d\n", i, *(ptr + i));
    }
    return 0;
}
*/
//===========================================
// Code 294: Assigning String Address to Pointer Variable
/**
#include <stdio.h>
int main() {
    char str[] = "Hello, World!";
    char *ptr = str;
    while (*ptr != '\0') {
        printf("%c", *ptr);
        ptr++;
    }
    printf("\n");
    return 0;
}
*/
//===========================================
// Code 295: Passing Array Address to Function
/**
#include <stdio.h>
void printArray(int *arr, int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", *(arr + i));
    }
    printf("\n");
}
int main() {
    int arr[5] = {1, 2, 3, 4, 5};
    printArray(arr, 5);
    return 0;
}
*/
//===========================================
// Code 296: Passing String Address to Function
/**
#include <stdio.h>
void printString(char *str) {
    while (*str != '\0') {
        printf("%c", *str);
        str++;
    }
    printf("\n");
}
int main() {
    char str[] = "Hello, World!";
    printString(str);
    return 0;
}
*/
//===========================================
// Code 297: How Many bytes a pointer variable occupies?
/**
#include <stdio.h>
int main() {
    int *ptr1;
    char *ptr2;
    float *ptr3;
    double *ptr4;
    printf("Size of int pointer: %zu bytes\n", sizeof(ptr1));
    printf("Size of char pointer: %zu bytes\n", sizeof(ptr2));
    printf("Size of float pointer: %zu bytes\n", sizeof(ptr3));
    printf("Size of double pointer: %zu bytes\n", sizeof(ptr4));
    return 0;
}
*/
//===========================================
// Code 298: Why We Should Declare Different Pointers with Different Datatypes
/**
#include <stdio.h>
int main() {
    int a = 10;
    float b = 20.5;
    int *ptr1 = &a;
    float *ptr2 = &b;
    printf("Value pointed by ptr1: %d\n", *ptr1);
    printf("Value pointed by ptr2: %.2f\n", *ptr2);
    return 0;
}
*/
//===========================================
// Code 299: Function Returning Variable Address
/**
#include <stdio.h>
int *getAddress(int *a) {
    return a;
}
int main() {
    int a = 10;
    int *ptr = getAddress(&a);
    printf("Address of a: %p\n", (void*)ptr);
    printf("Value pointed by ptr: %d\n", *ptr);
    return 0;
}
*/
//===========================================
// Code 300: Pointer to Pointer (Double Pointer)
/**
#include <stdio.h>
int main() {
    int a = 10;
    int *ptr1 = &a;
    int **ptr2 = &ptr1;
    printf("Value of a: %d\n", a);
    printf("Address of a: %p\n", (void*)&a);
    printf("Value of ptr1: %p\n", (void*)ptr1);
    printf("Value pointed by ptr1: %d\n", *ptr1);
    printf("Address of ptr1: %p\n", (void*)&ptr1);
    printf("Value of ptr2: %p\n", (void*)ptr2);
    printf("Value pointed by ptr2: %p\n", (void*)*ptr2);
    printf("Value pointed by ptr2's pointer: %d\n", **ptr2);
    return 0;
}
*/
//===========================================
// Code 301: Memory Allocation Types (Static & Dynamic)
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    // Static memory allocation
    int staticArray[5] = {1, 2, 3, 4, 5};
    // Dynamic memory allocation
    int *dynamicArray = (int *)malloc(5 * sizeof(int));
    for (int i = 0; i < 5; i++) {
        dynamicArray[i] = i + 1;
    }
    printf("Static Array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", staticArray[i]);
    }
    printf("\nDynamic Array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", dynamicArray[i]);
    }
    free(dynamicArray);
    return 0;
}
*/
//===========================================
// Code 302: Memory Structure for C Programs
/**
#include <stdio.h>
int globalVar; // Uninitialized global variable
int initializedGlobalVar = 10; // Initialized global variable
int main() {
    int localVar; // Uninitialized local variable
    int initializedLocalVar = 20; // Initialized local variable
    static int staticVar; // Uninitialized static variable
    static int initializedStaticVar = 30; // Initialized static variable
    printf("Memory Structure for C Programs\n");
    return 0;
}
*/
//===========================================
// Code 303: Dynamic Memory Allocation Functions - malloc(), calloc(), realloc() & free()
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    // Using malloc
    int *mallocArray = (int *)malloc(5 * sizeof(int));
    for (int i = 0; i < 5; i++) {
        mallocArray[i] = i + 1;
    }
    // Using calloc
    int *callocArray = (int *)calloc(5, sizeof(int));
    for (int i = 0; i < 5; i++) {
        callocArray[i] = i + 1;
    }
    // Using realloc
    mallocArray = (int *)realloc(mallocArray, 10 * sizeof(int));
    for (int i = 5; i < 10; i++) {
        mallocArray[i] = i + 1;
    }
    // Freeing memory
    free(mallocArray);
    free(callocArray);
    return 0;
}
*/
//===========================================
// Code 304: Example on malloc(), realloc() & free()
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *arr = (int *)malloc(5 * sizeof(int));
    for (int i = 0; i < 5; i++) {
        arr[i] = i + 1;
    }
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    arr = (int *)realloc(arr, 10 * sizeof(int));
    for (int i = 5; i < 10; i++) {
        arr[i] = i + 1;
    }
    for (int i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    free(arr);
    return 0;
}
*/
//===========================================
// Code 305: Example on calloc() & free()
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    int *arr = (int *)calloc(5, sizeof(int));
    for (int i = 0; i < 5; i++) {
        arr[i] = i + 1;
    }
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    free(arr);
    return 0;
}
*/
//===========================================
// Code 306: Difference Between Static Memory Allocation & Dynamic Memory Allocation
/**
#include <stdio.h>
#include <stdlib.h>
int main() {
    // Static memory allocation
    int staticArray[5] = {1, 2, 3, 4, 5};
    // Dynamic memory allocation
    int *dynamicArray = (int *)malloc(5 * sizeof(int));
    for (int i = 0; i < 5; i++) {
        dynamicArray[i] = i + 1;
    }
    printf("Static Array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", staticArray[i]);
    }
    printf("\nDynamic Array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", dynamicArray[i]);
    }
    free(dynamicArray);
    return 0;
}
*/
//===========================================
// Code 307: Function Returning Multiple Values
/**
#include <stdio.h>
void getMinMax(int arr[], int size, int *min, int *max) {
    *min = arr[0];
    *max = arr[0];
    for (int i = 1; i < size; i++) {
        if (arr[i] < *min) {
            *min = arr[i];
        }
        if (arr[i] > *max) {
            *max = arr[i];
        }
    }
}
int main() {
    int arr[5] = {10, 20, 30, 40, 50};
    int min, max;
    getMinMax(arr, 5, &min, &max);
    printf("Minimum value: %d\n", min);
    printf("Maximum value: %d\n", max);
    return 0;
}
*/
//===========================================
// Code 308: Example on Function Pointers
/**
#include <stdio.h>
int add(int a, int b) {
    return a + b;
}
int subtract(int a, int b) {
    return a - b;
}
int main() {
    int (*funcPtr)(int, int);
    funcPtr = add;
    printf("Addition: %d\n", funcPtr(5, 10));
    funcPtr = subtract;
    printf("Subtraction: %d\n", funcPtr(10, 5));
    return 0;
}
*/
//===========================================
// Code 309: Introduction to Structures
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    struct Student student1;
    student1.rollno = 1;
    strcpy(student1.name, "John Doe");
    student1.marks = 90.5;
    printf("Student Roll No: %d\n", student1.rollno);
    printf("Student Name: %s\n", student1.name);
    printf("Student Marks: %.2f\n", student1.marks);
    return 0;
}
*/
//===========================================
// Code 310: Structure Definition, declaration & initialization
/**
#include <stdio.h>
struct Point {
    int x;
    int y;
};
int main() {
    struct Point p1 = {10, 20};
    printf("Point coordinates: (%d, %d)\n", p1.x, p1.y);
    return 0;
}
*/
//===========================================
// Code 311: Reading user input into structure variables
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    struct Student student1;
    printf("Enter student roll no: ");
    scanf("%d", &student1.rollno);
    printf("Enter student name: ");
    scanf("%s", student1.name);
    printf("Enter student marks: ");
    scanf("%f", &student1.marks);
    printf("Student Roll No: %d\n", student1.rollno);
    printf("Student Name: %s\n", student1.name);
    printf("Student Marks: %.2f\n", student1.marks);
    return 0;
}
*/
//===========================================
// Code 312: Working with Structures, Functions and typedef keyword
/**
#include <stdio.h>
#include <string.h>
typedef struct {
    int rollno;
    char name[50];
    float marks;
} Student;
void printStudent(Student s) {
    printf("Student Roll No: %d\n", s.rollno);
    printf("Student Name: %s\n", s.name);
    printf("Student Marks: %.2f\n", s.marks);
}
int main() {
    Student student1;
    student1.rollno = 1;
    strcpy(student1.name, "John Doe");
    student1.marks = 90.5;
    printStudent(student1);
    return 0;
}
*/
//===========================================
// Code 313: Working with Array of Structures
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    struct Student students[3];
    for (int i = 0; i < 3; i++) {
        printf("Enter student %d roll no: ", i + 1);
        scanf("%d", &students[i].rollno);
        printf("Enter student %d name: ", i + 1);
        scanf("%s", students[i].name);
        printf("Enter student %d marks: ", i + 1);
        scanf("%f", &students[i].marks);
    }
    for (int i = 0; i < 3; i++) {
        printf("Student %d Roll No: %d\n", i + 1, students[i].rollno);
        printf("Student %d Name: %s\n", i + 1, students[i].name);
        printf("Student %d Marks: %.2f\n", i + 1, students[i].marks);
    }
    return 0;
}
*/
//===========================================
// Code 314: Passing Structure Array to a Function
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
void printStudents(struct Student students[], int size) {
    for (int i = 0; i < size; i++) {
        printf("Student %d Roll No: %d\n", i + 1, students[i].rollno);
        printf("Student %d Name: %s\n", i + 1, students[i].name);
        printf("Student %d Marks: %.2f\n", i + 1, students[i].marks);
    }
}
int main() {
    struct Student students[3];
    for (int i = 0; i < 3; i++) {
        printf("Enter student %d roll no: ", i + 1);
        scanf("%d", &students[i].rollno);
        printf("Enter student %d name: ", i + 1);
        scanf("%s", students[i].name);
        printf("Enter student %d marks: ", i + 1);
        scanf("%f", &students[i].marks);
    }
    printStudents(students, 3);
    return 0;
}
*/
//===========================================
// Code 315: Passing Structure Address to a Function
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
void printStudent(struct Student *s) {
    printf("Student Roll No: %d\n", s->rollno);
    printf("Student Name: %s\n", s->name);
    printf("Student Marks: %.2f\n", s->marks);
}
int main() {
    struct Student student1;
    student1.rollno = 1;
    strcpy(student1.name, "John Doe");
    student1.marks = 90.5;
    printStudent(&student1);
    return 0;
}
*/
//===========================================
// Code 316: Working with Nested Structures
/**
#include <stdio.h>
struct Address {
    char street[50];
    char city[50];
    char state[50];
};
struct Student {
    int rollno;
    char name[50];
    struct Address address;
};
int main() {
    struct Student student1;
    student1.rollno = 1;
    strcpy(student1.name, "John Doe");
    strcpy(student1.address.street, "123 Main St");
    strcpy(student1.address.city, "Anytown");
    strcpy(student1.address.state, "Anystate");
    printf("Student Roll No: %d\n", student1.rollno);
    printf("Student Name: %s\n", student1.name);
    printf("Student Address: %s, %s, %s\n", student1.address.street, student1.address.city, student1.address.state);
    return 0;
}
*/
//===========================================
// Code 317: Linear Search on Array of Structures
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    struct Student students[3];
    for (int i = 0; i < 3; i++) {
        printf("Enter student %d roll no: ", i + 1);
        scanf("%d", &students[i].rollno);
        printf("Enter student %d name: ", i + 1);
        scanf("%s", students[i].name);
        printf("Enter student %d marks: ", i + 1);
        scanf("%f", &students[i].marks);
    }
    int searchRollno;
    printf("Enter roll no to search: ");
    scanf("%d", &searchRollno);
    for (int i = 0; i < 3; i++) {
        if (students[i].rollno == searchRollno) {
            printf("Student Roll No: %d\n", students[i].rollno);
            printf("Student Name: %s\n", students[i].name);
            printf("Student Marks: %.2f\n", students[i].marks);
            break;
        }
    }
    return 0;
}
*/
//===========================================
// Code 318: Introduction to Unions
/**
#include <stdio.h>
union Data {
    int i;
    float f;
    char str[20];
};
int main() {
    union Data data;
    data.i = 10;
    printf("data.i: %d\n", data.i);
    data.f = 220.5;
    printf("data.f: %.2f\n", data.f);
    strcpy(data.str, "C Programming");
    printf("data.str: %s\n", data.str);
    return 0;
}
*/
//===========================================
// Code 319: Real-Time Application Example using Unions
/**
#include <stdio.h>
union Data {
    int i;
    float f;
    char str[20];
};
int main() {
    union Data data;
    printf("Enter an integer: ");
    scanf("%d", &data.i);
    printf("data.i: %d\n", data.i);
    printf("Enter a float: ");
    scanf("%f", &data.f);
    printf("data.f: %.2f\n", data.f);
    printf("Enter a string: ");
    scanf("%s", data.str);
    printf("data.str: %s\n", data.str);
    return 0;
}
*/
//===========================================
// Code 320: Nesting of Structures and unions with Real-Time Application Example
/**
#include <stdio.h>
struct Address {
    char street[50];
    char city[50];
    char state[50];
};
union StudentInfo {
    int rollno;
    char name[50];
};
struct Student {
    union StudentInfo info;
    struct Address address;
};
int main() {
    struct Student student1;
    printf("Enter student roll no: ");
    scanf("%d", &student1.info.rollno);
    printf("Enter student name: ");
    scanf("%s", student1.info.name);
    printf("Enter student street: ");
    scanf("%s", student1.address.street);
    printf("Enter student city: ");
    scanf("%s", student1.address.city);
    printf("Enter student state: ");
    scanf("%s", student1.address.state);
    printf("Student Roll No: %d\n", student1.info.rollno);
    printf("Student Name: %s\n", student1.info.name);
    printf("Student Address: %s, %s, %s\n", student1.address.street, student1.address.city, student1.address.state);
    return 0;
}
*/
//===========================================
// Code 321: Real time Example to Read Details of MPC & MEC Students
/**
#include <stdio.h>
struct MPCStudent {
    int rollno;
    char name[50];
    float physics;
    float chemistry;
    float maths;
};
struct MECStudent {
    int rollno;
    char name[50];
    float maths;
    float economics;
    float commerce;
};
int main() {
    struct MPCStudent mpcStudent;
    struct MECStudent mecStudent;
    printf("Enter MPC student roll no: ");
    scanf("%d", &mpcStudent.rollno);
    printf("Enter MPC student name: ");
    scanf("%s", mpcStudent.name);
    printf("Enter MPC student physics marks: ");
    scanf("%f", &mpcStudent.physics);
    printf("Enter MPC student chemistry marks: ");
    scanf("%f", &mpcStudent.chemistry);
    printf("Enter MPC student maths marks: ");
    scanf("%f", &mpcStudent.maths);
    printf("Enter MEC student roll no: ");
    scanf("%d", &mecStudent.rollno);
    printf("Enter MEC student name: ");
    scanf("%s", mecStudent.name);
    printf("Enter MEC student maths marks: ");
    scanf("%f", &mecStudent.maths);
    printf("Enter MEC student economics marks: ");
    scanf("%f", &mecStudent.economics);
    printf("Enter MEC student commerce marks: ");
    scanf("%f", &mecStudent.commerce);
    printf("MPC Student Roll No: %d\n", mpcStudent.rollno);
    printf("MPC Student Name: %s\n", mpcStudent.name);
    printf("MPC Student Marks: Physics: %.2f, Chemistry: %.2f, Maths: %.2f\n", mpcStudent.physics, mpcStudent.chemistry, mpcStudent.maths);
    printf("MEC Student Roll No: %d\n", mecStudent.rollno);
    printf("MEC Student Name: %s\n", mecStudent.name);
    printf("MEC Student Marks: Maths: %.2f, Economics: %.2f, Commerce: %.2f\n", mecStudent.maths, mecStudent.economics, mecStudent.commerce);
    return 0;
}
*/
//===========================================
// Code 322: Padding & Packing in Structures
/**
#include <stdio.h>
#pragma pack(1)
struct PackedStruct {
    char a;
    int b;
    double c;
};
#pragma pack()
struct UnpackedStruct {
    char a;
    int b;
    double c;
};
int main() {
    printf("Size of Packed Struct: %zu bytes\n", sizeof(struct PackedStruct));
    printf("Size of Unpacked Struct: %zu bytes\n", sizeof(struct UnpackedStruct));
    return 0;
}
*/
//===========================================
// Code 323: Bit Fields in Structures
/**
#include <stdio.h>
struct BitField {
    unsigned int a : 1;
    unsigned int b : 3;
    unsigned int c : 4;
};
int main() {
    struct BitField bitField;
    bitField.a = 1;
    bitField.b = 5;
    bitField.c = 10;
    printf("Bit Field a: %u\n", bitField.a);
    printf("Bit Field b: %u\n", bitField.b);
    printf("Bit Field c: %u\n", bitField.c);
    return 0;
}
*/
//===========================================
// Code 324: Introduction to Enumeration
/**
#include <stdio.h>
enum Week { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday };
int main() {
    enum Week today = Wednesday;
    printf("Today is day %d\n", today + 1);
    return 0;
}
*/
//===========================================
// Code 325: Introduction to Files
/**
#include <stdio.h>
int main() {
    FILE *file = fopen("example.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    fprintf(file, "Hello, World!");
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 326: Types of Files | Text Files | Binary Files
/**
#include <stdio.h>
int main() {
    // Text file
    FILE *textFile = fopen("example.txt", "w");
    if (textFile == NULL) {
        printf("Error opening text file!\n");
        return 1;
    }
    fprintf(textFile, "Hello, World!");
    fclose(textFile);
    // Binary file
    FILE *binaryFile = fopen("example.bin", "wb");
    if (binaryFile == NULL) {
        printf("Error opening binary file!\n");
        return 1;
    }
    int data = 42;
    fwrite(&data, sizeof(int), 1, binaryFile);
    fclose(binaryFile);
    return 0;
}
*/
//===========================================
// Code 327: Types of File Operations
/**
#include <stdio.h>
int main() {
    // Writing to a file
    FILE *file = fopen("example.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    fprintf(file, "Hello, World!");
    fclose(file);
    // Reading from a file
    file = fopen("example.txt", "r");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    char buffer[100];
    fgets(buffer, sizeof(buffer), file);
    printf("File content: %s\n", buffer);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 328: File Functions | fopen() | fclose()
/**
#include <stdio.h>
int main() {
    FILE *file = fopen("example.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    fprintf(file, "Hello, World!");
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 329: Reading and Writing File Contents using getc() & putc()
/**
#include <stdio.h>
int main() {
    // Writing to a file
    FILE *file = fopen("example.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    char str[] = "Hello, World!";
    for (int i = 0; str[i] != '\0'; i++) {
        putc(str[i], file);
    }
    fclose(file);
    // Reading from a file
    file = fopen("example.txt", "r");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int ch;
    while ((ch = getc(file)) != EOF) {
        printf("%c", ch);
    }
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 330: Performing read and write operations on files using fgets() & fputs()
/**
#include <stdio.h>
int main() {
    // Writing to a file
    FILE *file = fopen("example.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    char str[] = "Hello, World!";
    fputs(str, file);
    fclose(file);
    // Reading from a file
    file = fopen("example.txt", "r");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    char buffer[100];
    fgets(buffer, sizeof(buffer), file);
    printf("File content: %s\n", buffer);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 331: Performing read and write operations on files using getw() & putw()
/**
#include <stdio.h>
int main() {
    // Writing to a file
    FILE *file = fopen("example.bin", "wb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int data = 42;
    putw(data, file);
    fclose(file);
    // Reading from a file
    file = fopen("example.bin", "rb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int readData = getw(file);
    printf("File content: %d\n", readData);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 332: Secret Key Example using getw() and putw()
/**
#include <stdio.h>
int main() {
    // Writing to a file
    FILE *file = fopen("secret.bin", "wb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int secretKey = 12345;
    putw(secretKey, file);
    fclose(file);
    // Reading from a file
    file = fopen("secret.bin", "rb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int readKey = getw(file);
    printf("Secret Key: %d\n", readKey);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 333: Working with fprintf() and fscanf()
/**
#include <stdio.h>
int main() {
    // Writing to a file
    FILE *file = fopen("data.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int data = 42;
    fprintf(file, "%d", data);
    fclose(file);
    // Reading from a file
    file = fopen("data.txt", "r");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int readData;
    fscanf(file, "%d", &readData);
    printf("File content: %d\n", readData);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 334: Storing Structure Variable Data using fprintf() and fscanf()
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    // Writing to a file
    FILE *file = fopen("student.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    struct Student student = {1, "John Doe", 90.5};
    fprintf(file, "%d %s %.2f", student.rollno, student.name, student.marks);
    fclose(file);
    // Reading from a file
    file = fopen("student.txt", "r");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    struct Student readStudent;
    fscanf(file, "%d %s %f", &readStudent.rollno, readStudent.name, &readStudent.marks);
    printf("Student Roll No: %d\n", readStudent.rollno);
    printf("Student Name: %s\n", readStudent.name);
    printf("Student Marks: %.2f\n", readStudent.marks);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 335: Working with rewind(), fseek() and ftell()
/**
#include <stdio.h>
int main() {
    FILE *file = fopen("example.txt", "w+");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    fprintf(file, "Hello, World!");
    rewind(file);
    char buffer[100];
    fgets(buffer, sizeof(buffer), file);
    printf("File content: %s\n", buffer);
    fseek(file, 0, SEEK_END);
    long position = ftell(file);
    printf("Current position: %ld\n", position);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 336: Introduction to Binary Files | Storing Student Records
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    FILE *file = fopen("students.bin", "wb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    struct Student students[3] = {
        {1, "John Doe", 90.5},
        {2, "Jane Smith", 85.0},
        {3, "Jim Brown", 92.5}
    };
    fwrite(students, sizeof(struct Student), 3, file);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 337: Displaying All the Records from Student.dat file
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    FILE *file = fopen("students.bin", "rb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    struct Student students[3];
    fread(students, sizeof(struct Student), 3, file);
    for (int i = 0; i < 3; i++) {
        printf("Student Roll No: %d\n", students[i].rollno);
        printf("Student Name: %s\n", students[i].name);
        printf("Student Marks: %.2f\n", students[i].marks);
    }
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 338: Searching for one Student Record from Student.dat file
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    FILE *file = fopen("students.bin", "rb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int searchRollno;
    printf("Enter roll no to search: ");
    scanf("%d", &searchRollno);
    struct Student student;
    while (fread(&student, sizeof(struct Student), 1, file)) {
        if (student.rollno == searchRollno) {
            printf("Student Roll No: %d\n", student.rollno);
            printf("Student Name: %s\n", student.name);
            printf("Student Marks: %.2f\n", student.marks);
            break;
        }
    }
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 339: Modifying/Updating Student Record from Student.dat file
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    FILE *file = fopen("students.bin", "rb+");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int searchRollno;
    printf("Enter roll no to update: ");
    scanf("%d", &searchRollno);
    struct Student student;
    while (fread(&student, sizeof(struct Student), 1, file)) {
        if (student.rollno == searchRollno) {
            printf("Enter new name: ");
            scanf("%s", student.name);
            printf("Enter new marks: ");
            scanf("%f", &student.marks);
            fseek(file, -sizeof(struct Student), SEEK_CUR);
            fwrite(&student, sizeof(struct Student), 1, file);
            break;
        }
    }
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 340: Deleting Student Record from Student.dat file
/**
#include <stdio.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
int main() {
    FILE *file = fopen("students.bin", "rb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    FILE *tempFile = fopen("temp.bin", "wb");
    if (tempFile == NULL) {
        printf("Error opening temporary file!\n");
        return 1;
    }
    int searchRollno;
    printf("Enter roll no to delete: ");
    scanf("%d", &searchRollno);
    struct Student student;
    while (fread(&student, sizeof(struct Student), 1, file)) {
        if (student.rollno != searchRollno) {
            fwrite(&student, sizeof(struct Student), 1, tempFile);
        }
    }
    fclose(file);
    fclose(tempFile);
    remove("students.bin");
    rename("temp.bin", "students.bin");
    return 0;
}
*/
//===========================================
// Code 341: Student Project in C Language
/**
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct Student {
    int rollno;
    char name[50];
    float marks;
};
void addStudent(FILE *file) {
    struct Student student;
    printf("Enter student roll no: ");
    scanf("%d", &student.rollno);
    printf("Enter student name: ");
    scanf("%s", student.name);
    printf("Enter student marks: ");
    scanf("%f", &student.marks);
    fwrite(&student, sizeof(struct Student), 1, file);
}
void displayStudents(FILE *file) {
    struct Student student;
    rewind(file);
    while (fread(&student, sizeof(struct Student), 1, file)) {
        printf("Student Roll No: %d\n", student.rollno);
        printf("Student Name: %s\n", student.name);
        printf("Student Marks: %.2f\n", student.marks);
    }
}
void searchStudent(FILE *file) {
    int searchRollno;
    printf("Enter roll no to search: ");
    scanf("%d", &searchRollno);
    struct Student student;
    rewind(file);
    while (fread(&student, sizeof(struct Student), 1, file)) {
        if (student.rollno == searchRollno) {
            printf("Student Roll No: %d\n", student.rollno);
            printf("Student Name: %s\n", student.name);
            printf("Student Marks: %.2f\n", student.marks);
            break;
        }
    }
}
void updateStudent(FILE *file) {
    int searchRollno;
    printf("Enter roll no to update: ");
    scanf("%d", &searchRollno);
    struct Student student;
    rewind(file);
    while (fread(&student, sizeof(struct Student), 1, file)) {
        if (student.rollno == searchRollno) {
            printf("Enter new name: ");
            scanf("%s", student.name);
            printf("Enter new marks: ");
            scanf("%f", &student.marks);
            fseek(file, -sizeof(struct Student), SEEK_CUR);
            fwrite(&student, sizeof(struct Student), 1, file);
            break;
        }
    }
}
void deleteStudent(FILE *file) {
    FILE *tempFile = fopen("temp.bin", "wb");
    if (tempFile == NULL) {
        printf("Error opening temporary file!\n");
        return;
    }
    int searchRollno;
    printf("Enter roll no to delete: ");
    scanf("%d", &searchRollno);
    struct Student student;
    rewind(file);
    while (fread(&student, sizeof(struct Student), 1, file)) {
        if (student.rollno != searchRollno) {
            fwrite(&student, sizeof(struct Student), 1, tempFile);
        }
    }
    fclose(file);
    fclose(tempFile);
    remove("students.bin");
    rename("temp.bin", "students.bin");
    file = fopen("students.bin", "rb+");
}
int main() {
    FILE *file = fopen("students.bin", "ab+");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    int choice;
    do {
        printf("1. Add Student\n");
        printf("2. Display Students\n");
        printf("3. Search Student\n");
        printf("4. Update Student\n");
        printf("5. Delete Student\n");
        printf("6. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);
        switch (choice) {
            case 1:
                addStudent(file);
                break;
            case 2:
                displayStudents(file);
                break;
            case 3:
                searchStudent(file);
                break;
            case 4:
                updateStudent(file);
                break;
            case 5:
                deleteStudent(file);
                break;
            case 6:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice\n");
        }
    } while (choice != 6);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 342: Storing Employee Array in Binary Files
/**
#include <stdio.h>
#include <stdlib.h>
struct Employee {
    int id;
    char name[50];
    float salary;
};
int main() {
    FILE *file = fopen("employees.bin", "wb");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    struct Employee employees[3] = {
        {1, "John Doe", 50000.0},
        {2, "Jane Smith", 60000.0},
        {3, "Jim Brown", 55000.0}
    };
    fwrite(employees, sizeof(struct Employee), 3, file);
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 343: Introduction to Command Line Arguments in C
/**
#include <stdio.h>
int main(int argc, char *argv[]) {
    printf("Number of arguments: %d\n", argc);
    for (int i = 0; i < argc; i++) {
        printf("Argument %d: %s\n", i, argv[i]);
    }
    return 0;
}
*/
//===========================================
// Code 344: Command Line Arguments in C | sum of numbers
/**
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("Usage: %s num1 num2\n", argv[0]);
        return 1;
    }
    int num1 = atoi(argv[1]);
    int num2 = atoi(argv[2]);
    printf("Sum: %d\n", num1 + num2);
    return 0;
}
*/
//===========================================
// Code 345: Command Line Arguments | working with atoi(), atof() & atol() functions
/**
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    if (argc < 4) {
        printf("Usage: %s int_num float_num long_num\n", argv[0]);
        return 1;
    }
    int intNum = atoi(argv[1]);
    float floatNum = atof(argv[2]);
    long longNum = atol(argv[3]);
    printf("Integer: %d\n", intNum);
    printf("Float: %.2f\n", floatNum);
    printf("Long: %ld\n", longNum);
    return 0;
}
*/
//===========================================
// Code 346: Command Line Arguments in C | Creating copy con Command Alternative
/**
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s filename\n", argv[0]);
        return 1;
    }
    FILE *sourceFile = fopen(argv[1], "r");
    if (sourceFile == NULL) {
        printf("Error opening source file!\n");
        return 1;
    }
    char ch;
    while ((ch = fgetc(sourceFile)) != EOF) {
        putchar(ch);
    }
    fclose(sourceFile);
    return 0;
}
*/
//===========================================
// Code 347: Creating Type Command Alternative | command line arguments
/**
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s filename\n", argv[0]);
        return 1;
    }
    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    char ch;
    while ((ch = fgetc(file)) != EOF) {
        putchar(ch);
    }
    fclose(file);
    return 0;
}
*/
//===========================================
// Code 348: Creating copy Command Alternative | Command Line Arguments in C
/**
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("Usage: %s source_file destination_file\n", argv[0]);
        return 1;
    }
    FILE *sourceFile = fopen(argv[1], "r");
    if (sourceFile == NULL) {
        printf("Error opening source file!\n");
        return 1;
    }
    FILE *destFile = fopen(argv[2], "w");
    if (destFile == NULL) {
        printf("Error opening destination file!\n");
        return 1;
    }
    char ch;
    while ((ch = fgetc(sourceFile)) != EOF) {
        fputc(ch, destFile);
    }
    fclose(sourceFile);
    fclose(destFile);
    return 0;
}
*/
//===========================================
// Code 349: Creating ren Command Alternative | Command Line Arguments in C
/**
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("Usage: %s old_filename new_filename\n", argv[0]);
        return 1;
    }
    if (rename(argv[1], argv[2]) != 0) {
        printf("Error renaming file!\n");
        return 1;
    }
    printf("File renamed successfully.\n");
    return 0;
}
*/
//===========================================
// Code 350: Creating del Command Alternative | Command Line Arguments
/**
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s filename\n", argv[0]);
        return 1;
    }
    if (remove(argv[1]) != 0) {
        printf("Error deleting file!\n");
        return 1;
    }
    printf("File deleted successfully.\n");
    return 0;
}
*/
