# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msarigul <msarigul@student.42kocaeli.com.  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/02 10:02:09 by msarigul          #+#    #+#              #
#    Updated: 2022/08/02 10:11:50 by msarigul         ###   ########.tr        #
#                                                                              #
# **************************************************************************** #

NAME		:= so_long.a 

OBJDIR		:= objects
LIBFT		:= $(OBJDIR)/libft.a
FT_PRINTF	:=$(OBJDIR)/ft_printf.a
MLX := $(OBJDIR)/libmlx.a
CC		:= cc
CFLAGS	:= -Wall -Wextra -Werror -I ./include

$(NAME): $(OBJDIR) $(LIBFT) $(FT_PRINTF) $(MLX)
	@ar -rcs $(NAME) $(OBJDIR)/*.o 

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(LIBFT):
	@make -C libft

$(FT_PRINTF):
	@make -C ft_printf

$(PUSH_SWAP):
	@make -C push_swap

$(MLX):
	@make -C mlx
	@mv ./mlx/*.o ./objects
	@mv ./mlx/*.a ./objects


all: $(NAME)

clean:
	@rm -f $(OBJDIR)/*.o

fclean: clean
	@rm -f $(NAME)
	@rm -rf $(OBJDIR)

re: fclean all
m:
	@gcc main.c so_long.a -framework OpenGL -framework AppKit -o so_long -I ./include/
	@./so_long
	@rm so_long

.PHONY: all re clean fclean m
