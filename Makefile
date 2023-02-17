CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf

LIBFT = ./libft/libft.a
PRINTF = ./printf/libftprintf.a
CLIENT = client
SERVER = server
CLIENTB = client_bonus
SERVERB = server_bonus

SRC_C = client.c
OBJ_C = $(SRC_C:.c=.o)
SRC_S = server.c
OBJ_S = $(SRC_S:.c=.o)
SRC_CB = client_bonus.c
OBJ_CB = $(SRC_CB:.c=.o)
SRC_SB = server_bonus.c
OBJ_SB = $(SRC_CB:.c=.o)

all: $(SERVER) $(CLIENT)

$(LIBFT):
	@$(MAKE) -C ./libft

$(PRINTF):
	@$(MAKE) -C ./printf

$(SERVER): $(OBJ_S) $(LIBFT) $(PRINTF)
	@$(CC) $(CFLAGS) $(OBJ_S) $(LIBFT) $(PRINTF) -o server

$(CLIENT): $(OBJ_C) $(LIBFT) $(PRINTF)
	@$(CC) $(CFLAGS) $(OBJ_C) $(LIBFT) $(PRINTF) -o client

bonus : $(CLIENTB) $(SERVERB)

$(SERVERB): $(OBJ_SB) $(LIBFT) $(PRINTF)
	@$(CC) $(CFLAGS) $(OBJ_SB) $(LIBFT) $(PRINTF) -o server

$(CLIENTB) : $(OBJ_CB) $(LIBFT) $(PRINTF)
	@$(CC) $(CFLAGS) $(OBJ_CB) $(LIBFT) $(PRINTF) -o client

clean:
	@$(MAKE) clean -C ./libft
	@$(MAKE) clean -C ./printf
	@$(RM) $(OBJ_C) $(OBJ_S)
	@$(RM) $(OBJ_CB) $(OBJ_SB)

fclean: clean
	@$(MAKE) fclean -C ./libft
	@$(MAKE) fclean -C ./printf
	@$(RM) $(SERVER) $(CLIENT)
	@$(RM) $(SERVERB) $(CLIENTB)

re: fclean all
