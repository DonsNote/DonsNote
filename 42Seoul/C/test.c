#include<unistd.h>
#include<stdio.h>


int main(void)
{
	int a = 1;
	int b = 2;
	char c = 'c';

	write(1, "\n", 1);
	write(1, &c, 1);

	return 0;
}
