///week10-5.cpp 泡泡排序法
///修改自 week10-3.cpp 泡泡排序法
///陣列宣告 for迴圈印陣列
#include <stdio.h>
int main(){
    int a[10] = {0,1,2,3,4,5,6,7,8,9};///陣列宣告

    for (int i = 0; i<10; i++){///逐一印出
        printf("%d ", a[i]);///空格隔開
    }
    printf("\n");///跳行

    for(int k = 0; k<20; k++){
        for(int i = 0; i<10-1; i++){
        if(a[i] < a[i+1]){
            int temp = a[i];
            a[i] = a[i+1];
            a[i+1] = temp;
        }
    }
    for (int i = 0; i<10; i++){///逐一印出
        printf("%d ", a[i]);///空格隔開
    }
    printf("\n");///跳行

    }
}
