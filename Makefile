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

NAME			:= fdf.a 

OBJDIR		:= obj
LIBFT			:= $(OBJDIR)/libft.a
FT_PRINTF	:= $(OBJDIR)/ft_printf.a
GET				:= $(OBJDIR)/get_next_line.a
MLX 			:= $(OBJDIR)/libmlx.a
SRC 			:= $(OBJEDIR)/src.a
CC		:= cc
CFLAGS	:= -Wall -Wextra -Werror -I ./inc

$(NAME): $(OBJDIR) $(LIBFT) $(FT_PRINTF) $(GET) $(MLX) $(SRC)
	@ar -rcs ./lib/$(NAME) $(OBJDIR)/*.o 
	@gcc ./src/main_and_solve_driver.c ./lib/fdf.a -framework OpenGL -framework AppKit -o fdf -I ./inc

$(OBJDIR):
	@echo "Creating objects file"
	@mkdir -p $(OBJDIR)

$(LIBFT):
	@echo "Libft creating"
	@make -C ./lib/libft

$(FT_PRINTF):
	@echo "Ft_printf creating"
	@make -C ./lib/ft_printf

$(GET):
	@echo "Get Next Line creating"
	@make -C ./lib/get_next_line/

$(SRC):
	@echo "Src creating"
	@make -C src 

$(MLX):
	@make -C ./lib/mlx
	@mv ./lib/mlx/*.o ./obj


all: $(NAME)

clean:
	@rm -f $(OBJDIR)/*.o

fclean: clean
	@rm -f $(NAME)
	@rm -rf $(OBJDIR)
	@rm -rf ./lib/mlx/*.o

re: fclean all
m:
	@gcc main.c so_long.a -framework OpenGL -framework AppKit -o so_long -I ./include/
	@./so_long
	@rm so_long

.PHONY: all re clean fclean m
