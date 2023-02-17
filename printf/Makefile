# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eelasam <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/07 14:39:24 by eelasam           #+#    #+#              #
#    Updated: 2022/12/20 14:30:43 by eelasam          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c\
      ft_putchar.c\
      ft_putnbr.c\
      ft_putstr.c\
      ft_puthex.c\
      ft_putnbru.c\
      ft_putptr.c\

OBJECTS = ${SRC:.c=.o}

CFLAGS = -Wall -Wextra -Werror

$(NAME): all

all:
	cc -c $(CFLAGS) $(SRC)
	ar -rcs $(NAME) $(OBJECTS)

clean:
	rm -f $(OBJECTS)
fclean: clean
	rm -f $(NAME)
re: fclean all
