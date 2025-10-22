
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
