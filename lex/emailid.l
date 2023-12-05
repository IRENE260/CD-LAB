%{
#include <stdio.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4} {
    printf("%s is a valid email address.\n", yytext);
}
.   /* ignore any other character */;

int yywrap() {
    return 1;
}

int main() {
    printf("Enter an email address: ");
    yylex();
    return 0;
}
