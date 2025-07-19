#include <stdio.h>
#include <string.h>

int main() {
    char input[100];
    printf("Enter a C program statement: ");
    fgets(input, sizeof(input), stdin); 

    printf("Tokens:\n");

    char *token = strtok(input, " "); 
    while (token != NULL) {
       
        if (strcmp(token, "int") == 0 || strcmp(token, "float") == 0) {
            printf("%s: Data type\n", token);
        }
      
        else if ((token[0] >= 'a' && token[0] <= 'z') || (token[0] >= 'A' && token[0] <= 'Z') || token[0] == '_') {
            printf("%s: Identifier\n", token);
        }
       
        else if (token[0] >= '0' && token[0] <= '9' || token[0] == '.') {
            printf("%s: Numerical Literal\n", token);
        }
       
        else {
            for (int i = 0; i < strlen(token); i++) {
                if (token[i] == '=' || token[i] == '+' || token[i] == '-' || token[i] == '*' || token[i] == '/') {
                    printf("%c: Operator\n", token[i]);
                } else if (token[i] == ';' || token[i] == ',' || token[i] == '(' || token[i] == ')') {
                    printf("%c: Separator\n", token[i]);
                }
            }
        }
        token = strtok(NULL, " "); 
    }

    return 0;
}