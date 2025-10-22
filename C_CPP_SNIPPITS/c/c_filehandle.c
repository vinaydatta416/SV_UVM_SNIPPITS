
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