/*
 ##################################################################################
 # Author          :          Don
 # Filename        :          ft_strlen.c
 # Version         :          Dons Development 1.0 (Don 2023.03.06)
 # Date            :          2023-03-06
 # Copyright       :          neveradio@gmail.com
 ##################################################################################
*/
#include <unistd.h>
#include <stdio.h>
   
int ft_strlen(char *str)
{
	int i;
	int j;

	i = 0;
	j = 0;

	while(str[i] != '\0')
	{
		j = j + 1;
		i++;
	}
	return(j);
}

int main(int argc, char *argv[])
{
	if 
