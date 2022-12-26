# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msarigul <msarigul@student.42kocaeli.com.  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/02 10:09:01 by msarigul          #+#    #+#              #
#    Updated: 2022/12/26 16:47:01 by msarigul         ###   ########.tr        #
#                                                                              #
# **************************************************************************** #

OBJDIR	:= ../obj
CFLAGS	:= -I ../inc -c
FILES	:= ./bresenham_line_algorithm.c\
				 ./error_messages.c\
				 ./menu.c\
				 ./parse_and_store.c\
				 ./program_control_events1.c\
				 ./program_control_events2.c\
				 ./render_map.c\
				 ./rotate_matrix1.c\
				 ./rotate_matrix2.c\
				 ./rotate_matrix3.c\
				 ./utility_functions1.c\
				 ./utility_functions2.c

OBJ		:= $(FILES:%.c=$(OBJDIR)/%.o)

all: $(OBJ)

$(OBJDIR)/%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

.PHONY: all 
