#ifndef	LIBFTS_H
#define	LIBFTS_H

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>


void		ft_bzero(void *s, size_t n);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(char *str);
int		ft_quit();
int		ft_strlen(char *str);
char		*ft_strcat(char *restrict s1, const char *restrict s2);
void		*ft_memset(void *b, int c, size_t len);
void		*ft_memcpy(void *dest, void *src, size_t n);
char		*ft_strdup(const char *s1);
int		ft_cat(int fd);

#endif
