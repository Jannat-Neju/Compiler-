
%{
  
 #include <stdio.h>
 #include "parser.tab.h"
%}

%option noyywrap

%%
"float" {return FLOAT;}
"int" {return INT;}
[0-9]+ {return NUM;}
[0-9]+\.[0-9]+ {return FLOAT_NUM;}
"=" {return EQUAL;}
";" {return SEMI;} 
[_]*[a-zA-Z]+[0-9a-zA-Z]* {return ID ;}

[\n\t] {}
. {printf("Unknown char: %s\n", yytext);}
%%

int yywrap(void){
    return 1;
}

