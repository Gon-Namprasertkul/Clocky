OBJS	= obj/main.o
SOURCE	= src/main.cpp
OUT	= bin/clocky
CC	 = g++
FLAGS	 = -lncurses -g -c -Wall

all: $(OBJS)
	@echo "Building..."
	@$(CC)  $(OBJS) -o $(OUT) -lncurses
	@echo "Built successfully"

obj/main.o: src/main.cpp
	@echo "Compiling Main source..."
	@$(CC) $(FLAGS) src/main.cpp -o obj/main.o
	@echo "Compiled src/main.cpp"	


clean:
	rm -f $(OBJS) $(OUT)

install:
	cp bin/clocky /usr/local/bin

uninstall:
	rm /usr/local/bin/clocky
