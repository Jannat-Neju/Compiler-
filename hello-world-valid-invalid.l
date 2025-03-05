%{
#include <stdio.h>
%}

%%
hello       { printf("Valid\n"); }
world       { printf("Valid\n"); }
.           { printf("Invalid\n"); }  

%%

int main() {
    yylex();
    return 0;
}

int yywrap(void) {
    return 1;  
}
