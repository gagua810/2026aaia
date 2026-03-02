///week01-3.cpp
#include <stdio.h>
int main()
{
    printf("請輸入一個整數：");
    int N;///輸入的整數,放在整數N裡
    scanf("%d", &N);
    ///下面是for迴圈 會跑很多次
    for(int i=0; i < N; i++){
        printf("Hello World\n");
    }
}
