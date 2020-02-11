# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amunoz-p <amunoz-p@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/11 14:17:32 by amunoz-p          #+#    #+#              #
#    Updated: 2020/02/11 14:36:34 by amunoz-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    =   libasm.a
SRCS    =   ft_strlen.s     \
            ft_strcpy.s     \
            ft_strcmp.s     \
#            ft_write.s      \
            ft_read.s       \
            ft_strdup.s     \#
OBJS    =   $(SRCS:.s=.o)
NASM    =   nasm -fmacho64
CFLAGS  =   -Wall -Werror -Wextra
COMPILER =  gcc
RUN     =   && ./a.out
REMOVE  =   rm -rf
%.o : %.s
			@$(NASM) $<
            
all     :   $(NAME)
$(NAME) :   $(OBJS)
			@ar rcs $(NAME) $(OBJS)
            
clean   :
			@$(REMOVE) $(OBJS)
            
fclean  :   clean
			@$(REMOVE) $(NAME) main.o
            
re  :   fclean $(NAME)
t   :   main.c  $(NAME) clean
		@clear
		@$(COMPILER) $(CFLAGS) $< $(NAME) $(RUN)
		@$(REMOVE) $(NAME) a.out
        
.PHONY  :   clean fclean re t