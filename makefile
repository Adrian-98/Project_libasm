NAME		=	libasm.a

DIR		=	src

SRCS		=	ft_strlen.s		\
				ft_strcpy.s	\
			ft_strcmp.s	\

			

ASMFLAGS	=	-fmacho64

ASM		=	nasm

LD		=	gcc

RM		=	rm -f

OBJS		=	$(SRCS:.s=.o)

%.o: %.S
		@$(ASM) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME):	$(OBJS)
		@$(LD) -o $(NAME) $(OBJS)

clean:
		@$(RM) $(OBJS)

fclean:		clean
		@$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re