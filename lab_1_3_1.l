%{
    //Construct a simple calculator (addition and subtraction)
    
#include <stdio.h>
int result = 0;
int value;
char op = '+'; // default operation
%}

%%

[0-9]+     {
              sscanf(yytext, "%d", &value);
              if (op == '+') result += value;
              else if (op == '-') result -= value;
           }

[+-]       {
              op = yytext[0];
           }

.|\n       { /* ignore everything else */ }

%%

int yywrap() { return 1; }

int main() {
    yylex();
    printf("Result = %d\n", result);
    return 0;
}
