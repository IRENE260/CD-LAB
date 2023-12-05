%{
#include <stdio.h>
%}

%%
[1-9][0-9]{2}-[0-9]{3}-[0-9]{4} {
    printf("%s is a valid phone number.\n", yytext);
}
.   /* ignore any other character */;

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a phone number (format: XXX-XXX-XXXX): ");
    yylex();
    return 0;
}
