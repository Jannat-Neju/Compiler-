%{

#include <stdio.h>

void yyerror(const char *s);
int yylex();

%}
%token INT FLOAT 
%token  NUM FLOAT_NUM ID
%token SEMI EQUAL 

%%

prog: stats
  ;
stats: /*Empty Space*/
  | stats stat
  ;
stat: declar SEMI
    ;
declar: INT ID 
      | INT ID EQUAL NUM
      | FLOAT ID 
      | FLOAT ID EQUAL FLOAT_NUM
      ; 
%%

void yyerror(const char *s){
    fprintf(stderr, "Syntax Error!\n");
    }
int main(){return yyparse();return 0; }