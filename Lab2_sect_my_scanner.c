#include <stdio.h>
#include "Lab2_sect_my_scanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

int main() {
    int ntoken;

    ntoken = yylex();
    while (ntoken) {
        printf("Token: %d, Text: %s\n", ntoken, yytext);
        ntoken = yylex();
    }

    return 0;
}
