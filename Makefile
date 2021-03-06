# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jliew <jliew@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/04 22:41:31 by jliew             #+#    #+#              #
#    Updated: 2020/09/04 14:41:12 by jliew            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

CC		= gcc

CFLAGS	= -Wall -Wextra -Werror -I.

SRCS	= \
ft_abs.c\
ft_max.c\
ft_min.c\
ft_isalnum.c\
ft_isalpha.c\
ft_isascii.c\
ft_isdigit.c\
ft_isprint.c\
ft_tolower.c\
ft_toupper.c\
ft_atoi.c\
ft_itoa.c\
ft_split.c\
ft_strchr.c\
ft_strdup.c\
ft_strlen.c\
ft_substr.c\
ft_strjoin.c\
ft_strlcat.c\
ft_strlcpy.c\
ft_strcmp.c\
ft_strncmp.c\
ft_strnstr.c\
ft_strrchr.c\
ft_strtrim.c\
ft_strmapi.c\
ft_bzero.c\
ft_calloc.c\
ft_memchr.c\
ft_memcpy.c\
ft_memset.c\
ft_memccpy.c\
ft_memmove.c\
ft_memcmp.c\
ft_putchar_fd.c\
ft_putstr_fd.c\
ft_putendl_fd.c\
ft_putnbr_fd.c\
ft_itoa_base.c\
ft_count_digit.c

BONUS	= \
ft_lstnew.c\
ft_lstadd_front.c\
ft_lstsize.c\
ft_lstlast.c\
ft_lstadd_back.c\
ft_lstdelone.c\
ft_lstclear.c\
ft_lstiter.c\
ft_lstmap.c

OBJS	= $(SRCS:.c=.o)

BONUS_OBJS	= $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -f $(OBJS) $(BONUS_OBJS)

fclean:
	rm -f $(OBJS) $(BONUS_OBJS) $(NAME)

re: fclean all

bonus:	$(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY: all clean fclean re bonus
