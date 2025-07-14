%{
    // Counting for Words and numbers
    //Test Input 1:cat 42 dog 7.end,Test Input 2:99 bottles end
    //Test Output 1:Word: 2,Number:2,Test Output 2:Word: 1,Number: 1


    int w = 0, n = 0;
%}

word [a-zA-Z]+         
nums [0-9]+     
%%


{word}   { w++; }    
{nums}   { n++; }   
\n {
    printf("Words = %d,\nNumbers: %d\n", w, n);
    w = 0; n = 0;  
}

%%

int yywrap() { return 1; }

int main() { 
    yylex();
    return 0; 
}