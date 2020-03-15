#include<stdio.h>
#include<string.h>

static const char hellcode[100];

int main()
{
    gets(hellcode);
    long* x;
    *(&x + 2) = hellcode;
    return 0;
}