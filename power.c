#include "myMath.h"
double Exponent(int x) 
{
	return Power(2.71828, x);
}

double Power(double x, int y) 
{
	//y>=0
	if(y==0)
		return 1;
	double sum=x;
	for(int i=1; i<y; ++i)
	{
		sum *= x;
	}
	return sum;
}
