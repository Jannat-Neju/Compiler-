%{
     //Flex Program that Matches String Starting with 'p' and Ending with 'q'

#include <stdio.h>
%}

%%

p[a-zA-Z0-9]*q     { printf("Matched: %s\n", yytext); }
.|\n               { /* Ignore other inputs */ }

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a string:\n");
    yylex();
    return 0;
}
