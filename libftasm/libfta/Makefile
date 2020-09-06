NAME=libfts.a
ASM_FLAGS=-f elf64

SRC_ASM=ft_bzero.s	\
	ft_isalpha.s	\
	ft_isdigit.s	\
	ft_isalnum.s	\
	ft_isascii.s	\
	ft_isprint.s	\
	ft_toupper.s	\
	ft_tolower.s	\
	ft_puts.s	\
	ft_quit.s	\
	ft_strlen.s	\
	ft_strcat.s	\
	ft_memset.s	\
	ft_memcpy.s	\
	ft_strdup.s	\
	ft_cat.s

OBJ_ASM=$(SRC_ASM:.s=.o)

all:	$(NAME)

$(NAME):	$(OBJ_ASM)
	ar rc $(NAME) $(OBJ_ASM)
	ranlib $(NAME)

%.o:	%.s
	nasm $(ASM_FLAGS) -o $@ $<

clean: $(OBJ_ASM)
	rm *.o

fclean: $(NAME)
	make clean
	rm -f $(NAME)

re:
	make fclean
	make all

#gcc -no-pie $(CSRC) libftasm.o -o $(EXEC)
