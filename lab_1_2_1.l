%{
   // A flex program to identify integer number or floating number

#include <stdio.h>
%}

%%

[0-9]+\.[0-9]+     { printf("Floating Number: %s\n", yytext); }
[0-9]+             { printf("Integer Number: %s\n", yytext); }
.            { printf("Invalid Output: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter numbers (press Ctrl+D to finish input):\n");
    yylex();
    return 0;
}
