%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT [0-9]
%%
{DIGIT}+ {
    int num = atoi(yytext);
    if (isPrime(num)) {
        printf("%d is a prime number.\n", num);
    } else {
        printf("%d is not a prime number.\n", num);
    }
}
\n  /* ignore newline */;
.   /* ignore any other character */;

int isPrime(int n) {
    if (n <= 1) {
        return 0; // 0 and 1 are not prime numbers
    }
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) {
            return 0; // if divisible by any number other than 1 and itself, it's not prime
        }
    }
    return 1; // it's a prime number
}

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
