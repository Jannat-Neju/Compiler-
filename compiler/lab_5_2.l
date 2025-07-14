%{
// Flex program to identify strings 
// that starts with " _" and ends with a "_" and at least one alphabet
%}

alp [a-zA-Z]

%%
_{alp}*_ {printf("valid input : %s\n",yytext);}
end {return 0;}
.+ {printf("Invalid input: %s\n",yytext);}

%%

int yywrap(){return 1;}
int main(){yylex(); return 0;} 