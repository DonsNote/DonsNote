/* ##############################################################################################
 # Author          :          Don
 # Filename        :          ft_print_reverse_alphabet.c
 # Version         :          Dons Development 1.0 (Don 2023.03.06)
 # Date            :          2023-03-06
 # Copyright       :          neveradio@gmail.com
 #############################################################################################
 */  
#include <unistd.h>
#include <stdio.h>
   
void ft_print_reverse_alphabet(void)
{
	char a;

	a = 'z';
	while(a >= 'a')
	{
		write(1, &a, 1);
		a--;
	}
}

int main(int argc, char *argv[])
{
	ft_print_reverse_alphabet();
	
	return 0;
}

