%{
    // Write a Flex program that accepts any string that has '^' at the beginning and end, and in between those '^', the string should be 2-part and separated by a '-'. [Use "end" as the terminating command, and it will not be counted]
    //Test Input 1:^Cat_p-q_Dog^,^Somew-here_in_the_rainbow^,^Somewhere_in_the_rainbow^ end
    //Test Output 1:Valid,Valid,Invalid
%}

alp [a-zA-Z0-9_]+

%%
\^({alp})-({alp})\^  {printf("valid input: %s",yytext);}
end { return 0; } 
. {printf("Invalid input: %s",yytext);} 
%%  
     
int yywrap(){return 1;}
int main(){yylex(); return 0;}