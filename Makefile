OBJS	= obj/main.o
SOURCE	= src/main.cpp
OUT	= bin/clocky
CC	 = g++
FLAGS	 = -lncurses -g -c -Wall

all: $(OBJS)
	$(CC)  $(OBJS) -o $(OUT) -lncurses

obj/main.o: src/main.cpp
	$(CC) $(FLAGS) src/main.cpp -o obj/main.o 


clean:
	rm -f $(OBJS) $(OUT)

install:
	cp bin/clocky /usr/local/bin

uninstall:
	rm /usr/local/bin/clocky
