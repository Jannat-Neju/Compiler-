%{
    // Counting for vowels, consonants, and numbers
    // Write a Flex program that counts the numbers of Vowels, Consonants, and Numerical Values from given inputs. [Use "end" as the terminating command, and it will not be counted].
    //Test Input 1:A big rabbit ran across 150 miles of road.end
    //Test Output 1:Vowels = 12,Consonants: 18,Numerical values: 1  


    int v = 0, c = 0, n = 0;
%}

vowels [aeiouAEIOU]    
alp [a-zA-Z]           
nums [0-9]+     
%%
{vowels} { v++; }   
{alp}    { c++; }   
{nums}   { n++; }   
\n {
    printf("Vowels = %d, Consonants: %d,\nNumbers: %d\n", v, c, n);
    v = 0; c = 0; n = 0;
}
end { return 0; }   
%%

int yywrap() {return 1;}
int main() {yylex();return 0;}