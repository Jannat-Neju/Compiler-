%{
// Flex program to identify vowels , consonants 
// and number from a string .
int v =0, c = 0, n=0;

%}

vowels [aeiouAEIOU]
alp [a-z A-Z]
nums [0-9]+

%% 
{vowels} {v++;}
{alp} {c++;}
{nums} {n++;}

\n {
    printf("vowels = %d, \nConsonants :%d,\nNumbers : %d\n", v, c, n);
    c = 0, n = 0, v = 0;
}
end {return 0;};
    
%% 

int yywrap(){return 1;}
int main (){yylex(); return 0;}