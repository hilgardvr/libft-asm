#include "libfta/inc/libfts.h"
#include <stdio.h>
#include <stdlib.h>

int		main(int argc, char* argv[])
{
	if (argc != 2) {
		printf("Usage: ./exec argument\n");
		return (0);
	}
	char	*temp = malloc(10);
	ft_bzero(temp, 10);
	temp[0] = '0';
	temp[1] = '1';
	temp[2] = '2';
	temp[3] = '\0';

	//ft_strlen test	
	printf("ft_strlen: %i\n", ft_strlen(argv[1]));
	
	//ft_puts test
	ft_puts(argv[1]);
	printf("Concat: '%s' + '%s' = ", temp, argv[1]);

	//ft_strcat test
	ft_strcat(temp, argv[1]);
	printf("%s\n", temp);
	
	//ft_isalpha test
	if (ft_isalpha(argv[1][0]) == 0) {
		printf("%c not alpha\n", argv[1][0]);
	} else {
		printf("%c isalpha\n", argv[1][0]);
	}
	
	//ft_isdigit test
	if (ft_isdigit(argv[1][0]) == 0) {
		printf("%c not digit\n", argv[1][0]);
	} else {
		printf("%c isdigit\n", argv[1][0]);
	}

	//ft_isalnum test
	if (ft_isalnum(argv[1][0]) == 0) {
		printf("%c not alnum\n", argv[1][0]);
	} else {
		printf("%c isalnum\n", argv[1][0]);
	}

	//ft_isascii test
	int	test_int = 256;
	if (ft_isascii(test_int) == 0) {
		printf("%i not ascii\n", test_int);
	} else {
		printf("%i isascii\n", test_int);
	}

	//ft_isprint test
	test_int = 126;
	if (ft_isprint(test_int) == 0) {
		printf("%i not print\n", test_int);
	} else {
		printf("%i isprint\n", test_int);
	}

	//ft_toupper test
	test_int = 97;
	if (ft_toupper(test_int) == test_int) {
		printf("%c is not lower\n", test_int);
	} else {
		printf("%c is now upper\n", ft_toupper(test_int));
	}
	
	//ft_tolower test
	test_int = 65;
	if (ft_tolower(test_int) == test_int) {
		printf("%c is not upper\n", test_int);
	} else {
		printf("%c is now lower\n", ft_tolower(test_int));
	}
	//ft_bzero test
	ft_bzero(temp, 10);
	printf("Zeroed string: '%s' \n", temp);

	//ft_memset test
	test_int = 9;
	ft_memset((void *)temp, '0', test_int);
	printf("Memset %cx%i: %s\n", '0', test_int, temp);

	//ft_memcpy test
	char	*temp_mem = malloc(10);
	temp_mem[0] = 'c';
	temp_mem[1] = 'p';
	temp_mem[2] = 'y';
	temp_mem[3] = ' ';
	temp_mem[4] = 'w';
	temp_mem[5] = 'o';
	temp_mem[6] = 'r';
	temp_mem[7] = 'k';
	temp_mem[8] = 's';
	temp_mem[9] = '\0';
	ft_memcpy((void *)temp, temp_mem, 10);
	printf("Memcopied: %s\n", temp);

	//ft_strdup test
	char *dup = ft_strdup(temp_mem);
	printf("here\n");
	dup[9] = 'z';
	printf("strdup: %s, original: %s\n", dup, temp_mem);

	//ft_cat test
	int fd = open("testfile.txt", O_RDONLY);
	printf("filedescr: %i\n", fd);
	int ret = ft_cat(fd);
	printf("cat return: %i\n", ret);
	ft_quit();
}
