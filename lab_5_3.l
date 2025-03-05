%{
// Flex program to identify strings 
// that starts with `_` ends with `_` and at least 
// 2 character and at most 4 characters in between them
%}

alp [a-zA-Z]
%%

_.{2,4}_ {printf("valid input : %s\n",yytext);}
end {return 0;}
.+ {printf("Invalid input: %s\n",yytext);}

%%

int yywrap(){return 1;}
int main(){yylex(); return 0;} 