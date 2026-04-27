///week10-4 ¥æ´«2²~¤ô
#include <stdio.h>
int main(){
    int a = 9, b = 100;
    printf("a:%d b:%d\n", a, b);

    int temp = a;
    a= b;
    b = temp;

    printf("a:%d b:%d\n", a, b);
}
