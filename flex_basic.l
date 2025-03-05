
%{
   #include <stdio.h> 
%}

%%
[A-Z] {printf("capital: %s\n" , yytext);}
[a-z] {printf("small: %s\n" , yytext);}
. {printf("Invalid Output : %s\n" , yytext);}
%%

int yywrap(){return 1;}

int main(){
   yylex();
   return 0;
}

