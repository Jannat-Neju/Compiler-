%{
        //Flex Program that Counts the Number and Word from a String
#include <stdio.h>
int num_count = 0, word_count = 0;
%}

%%

[0-9]+      { num_count++; }
[a-zA-Z]+   { word_count++; }
.|\n        { /* Ignore other characters */ }

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a string: ");
    yylex();
    printf("Total Numbers: %d\n", num_count);
    printf("Total Words: %d\n", word_count);
    return 0;
}

