%{
#include <stdio.h>
%}

%%

"+"         { printf("Addition operator\n"); }
"-"         { printf("Subtraction operator\n"); }
"*"         { printf("Multiplication operator\n"); }
"/"         { printf("Division operator\n"); }
.           { printf("Invalid Input\n"); }

%%

int main() {
    yylex();  
    return 0;
}

int yywrap(void) {
    return 1;  
}
