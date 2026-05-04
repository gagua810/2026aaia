///week11-3.cpp
#include <stdio.h>
int main()
{
    int a[10] = {9,8,7,6,5,4,3,2,1,0};

    for(int k=0; k<10; k++)printf("%d ", a[k]);
    printf("\n");///這次改成 k k k 的迴圈

    for(int i=0; i<10; i++){///左手i 選擇一個i
        for(int j=i+1; j<10; j++){///右手j j j  往右滑
            if(a[i]>a[j]){
                int temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
        ///排到一半,就印出來吧!!!
        for(int k=0; k<10; k++)printf("%d ", a[k]);
        printf("\n");
    }
}
