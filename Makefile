NAME        = pipex

CC          = cc
CFLAGS      = -Wall -Wextra -Werror

SRC_DIR     = src
INC_DIR     = include
LIBFT_DIR   = libft

SRCS        = $(SRC_DIR)/pipex.c
OBJS        = $(SRCS:.c=.o)

LIBFT       = $(LIBFT_DIR)/libft.a

INCLUDES    = -I$(INC_DIR) -I$(LIBFT_DIR)

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT)
	$(CC) $(CFLAGS) $(OBJS) $(LIBFT) -o $(NAME)

$(LIBFT):
	$(MAKE) -C $(LIBFT_DIR)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS)
	$(MAKE) -C $(LIBFT_DIR) clean

fclean: clean
	rm -f $(NAME)
	$(MAKE) -C $(LIBFT_DIR) fclean

re: fclean all

.PHONY: all clean fclean re