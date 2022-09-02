#include <stdio.h>
#include <stdlib.h>

#define ASCII_MAX 127
#define ASCII_DIGIT_FIRST 48
#define ASCII_DIGIT_LAST 57
#define ASCII_NON_PRINT_N 32
#define ASCII_DEL 127

void printchar(char n);
int isnumber(char* s);
int isdigit(char c);

const char* const nonprint[] = {"nul", "soh", "stx", "etx", "eot", "enq", "ack", "bel", "bs", "ht",
                            "nl", "vt", "np", "cr", "so", "si", "dle", "dc", "dc", "dc", "dc",
                            "nak", "syn", "etb", "can", "em", "sub", "esc", "fs", "gs", "rs",
                            "us", "sp"};

int main(int argc, char* argv[]) {
    // no args
    if (argc == 1) {
        for (char i = 0; i < ASCII_MAX; i++)
            printchar(i);
        // 127
        printchar(ASCII_MAX);
    } else if (argc > 1) {
        // check args for errors
        for (int i = 1; i < argc; i++) {
            // report non-digits
            if (!isnumber(argv[i])) {
                printf("error: all arguments must be numbers\n");
                return 2;
            }
            int n = atoi(argv[i]);
            if (n > ASCII_MAX || n < 0) {
                printf("error: %s in non-ASCII range [0, %d]\n", argv[i], ASCII_MAX);
                return 3;
            }
        }

        for (int i = 1; i < argc; i++) {
            int n = atoi(argv[i]);
            printchar(n);
        }
    }
}

void printchar(char n) {
    if (n <= ASCII_NON_PRINT_N)
        printf("%3d\t%2x\t%3o\t%s\n", n, n, n, nonprint[n]);
    else if (n == ASCII_DEL)
        printf("%3d\t%2x\t%3o\t%s\n", n, n, ASCII_DEL, "del");
    else
        printf("%3d\t%2x\t%3o\t%c\n", n, n, n, n);
}

int isnumber(char* s) {
    char c;
    int i = 0;

    while((c = s[i++]) != '\0') {
        if (!isdigit(c))
            return 0;
    }

    return 1;
}

int isdigit(char c) {
    if (c < ASCII_DIGIT_FIRST || c > ASCII_DIGIT_LAST)
        return 0;
    return 1;
}
