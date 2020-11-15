#include <stdio.h>
#include "myMath.h"

int main() 
{
	double x, ans;
	
	printf("Enter a real number\n");
	scanf("%lf", &x);
	
	double a, b;
	a = Exponent((int)x);
	b = Power(x, 3);
	
	ans = sub(add(a, b), 2);
	printf("f(%0.4lf)=e^x+x^3-2=%0.4lf\n", x, ans);
	
	a = mul(3, x);
	b = mul(2, Power(x, 2));
	ans = add(a, b);
	printf("f(%0.4lf)=3x+2x^2=%0.4lf\n", x, ans);
	
	a = mul(4, Power(x, 3));
	b = mul(2, x);
	ans = sub(div(a, 5), b);
	printf("f(%0.4lf)=(4x^3)/5-2x)=%0.4lf\n", x, ans);
   
   return 0;
}
