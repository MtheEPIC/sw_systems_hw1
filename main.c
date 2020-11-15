#include <stdio.h>
#include "myMath.h"

int main() 
{
	double x, ans;
	
	printf("1. Enter double\n");
	scanf("%lf", &x);
	
	double a, b;
	a = Exponent((int)x);
	b = Power(x, 3);
	
	ans = sub(add(a, b), 2);
	printf("%0.4lf\n", ans);
	
	printf("2. Enter double\n");
	scanf("%lf", &x);
	a = mul(3, x);
	b = mul(2, Power(x, 2));
	ans = add(a, b);
	printf("%0.4lf\n", ans);
	
	printf("3. Enter double\n");
	scanf("%lf", &x);
	a = mul(4, Power(x, 3));
	b = mul(2, x);
	ans = sub(div(a, 5), b);
	printf("%0.4lf\n", ans);
   
   return 0;
}
