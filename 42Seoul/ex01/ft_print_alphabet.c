##############################################################################################
 # Author          :          Don
 # Filename        :          ft_print_alphabet.c
 # Version         :          Dons Development 1.0 (Don 2023.03.06)
 # Date            :          2023-03-06
 # Copyright       :          neveradio@gmail.com
 #############################################################################################
   
#include <unistd.h>
#include <stdio.h>
   
void ft_print_alphabet.c(void)
{
	char a;

	a = 'a';
	while(a <= 'z')
	{
		write(1, &a, 1);
		a++;
	}
}
