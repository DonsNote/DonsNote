/*
 ##################################################################################
 # Author          :          Don
 # Filename        :          compareint.c
 # Version         :          Dons Development 1.0 (Don 2023.03.06)
 # Date            :          2023-03-09
 # Copyright       :          neveradio@gmail.com
 ##################################################################################
*/
#include <unistd.h>
#include <stdio.h>

int atoi(char *arr)
{
	int i;
	int j;
	int s;

	i = 0;
	j = 0;
	s = 1;

	while ((arr[i] >= 9 && arr[i] <= 13) || arr[i] == 32)
		i++;
	while (arr[i] == '-' || arr[i] == '+')
	{
		if (arr[i] == '-')
			s = s * -1;
		i++;
	}
	while (arr[i] >= '0' && arr[i] <= '9')
	{
		j = j * 10 + (arr[i] - '0');
		i++;
	}
	return (j * s);
}

int main(int argc, char *argv[])
{
	if (argc <= 2)
		return 0;
	if (argv[1][0] == '\0')
		return 0;

	int i;
	int j;

	i = atoi(argv[1][1]);
	j = atoi(argv[1][3]);

	if (i < j)
		write(1, "<", 1);
	if (i > j)
		write(1, ">", 1);
	if (i == j)
		write(1, "=", 1);
		write(1, "=", 1);

	return 0;
}
