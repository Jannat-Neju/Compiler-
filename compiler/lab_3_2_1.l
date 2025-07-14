%{
    // Flex Program to Identify Small and Capital Letters from a String
 #include <stdio.h>
%}

cap  [A-Z]
sml  [a-z]

%%

{cap} {printf("Capital: %s\n", yytext);}
{sml} {printf("Small: %s\n", yytext);}
.    {printf("Invalid Output: %s\n", yytext);}

%%
int yywrap() { return 1;}

int main(){
    yylex();
    return 0;
}