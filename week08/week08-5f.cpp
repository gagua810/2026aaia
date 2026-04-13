///week08-5f.cpp SOIT107_Base_017
#include <stdio.h>
int main()
{
	int p, d;
	scanf("%d %d", &p, &d);
	int ans = p-6*d;
	printf("%d %d", ans/6, ans%6);

}
