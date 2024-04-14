#include"add.h"
#include"sub.h"
#include"multi.h"
#include<stdio.h>

int main()
{
    int a = 10;
    int b = 5;

    printf("a+b = %d\n", add(a, b));
    printf("a-b = %d\n", sub(a, b));
    printf("a*b = %d\n", multi(a, b));

    return 0;
}