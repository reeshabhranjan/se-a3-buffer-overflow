#include<stdio.h>
#include<string.h>

static const char hellcode[] = "\x6a\x01\x48\x31\xc0\xb0\x01\x48\x31\xff\x40\xb7\x01\xeb\x12\x5e\x48\x31\xd2\xb2\x0d\x0f\x05\x48\x31\xc0\xb0\x3c\x48\x31\xff\x0f\x05\xe8\xe9\xff\xff\xff\x2d\x54\x68\x65\x4c\x61\x77\x2d\x0a";

int main()
{
    long* x;
    *(&x + 2) = hellcode;
    return 0;
}