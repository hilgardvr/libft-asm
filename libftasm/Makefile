NAME=test_main
LIBFT=libfts.a
SRC=main.c
PATH_LIB=./libfta
OBJ=$(SRC:.s=.o)

PATH_HEAD=$(PATH_LIB)/inc
CFLAGS=-Wall -Werror -Wextra -I$(PATH_HEAD)


all: $(ASRC) $(CSRC)
	make -C $(PATH_LIB)
	gcc $(CFLAGS) -c $(SRC)
	gcc -no-pie -o $(NAME) $(OBJ) -L$(PATH_LIB) -lfts

clean:	main.o
	rm *.o

fclean: $(NAME)
	make clean
	rm $(NAME)

re:
	make fclean
	make
