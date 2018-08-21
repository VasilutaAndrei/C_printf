NAME = libftprintf.a

INC = includes/

SRC = ft_atoi.c ft_buffer.c ft_char.c ft_convert.c ft_form.c\
	  ft_int.c ft_join.c ft_long.c ft_percent.c ft_pointer.c\
	  ft_printf.c ft_putnbr.c ft_readl.c ft_wstring.c\
	  ft_readl.c ft_readw.c ft_unit.c ft_wchar.c ft_redfl.c\

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
		@gcc -Wall -Wextra -Werror -I$(INC) -c $(SRC)
		@ar rc $(NAME) $(OBJ)
		@RANLIB $(NAME)


clean:
	@/bin/rm -f $(OBJ)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all


.PHONY: re all clean fclean
