CC = cc
CFLAGS = -std=c99 -pedantic -Wall
OBJECTS = helloWorld.o

all: helloWorld

helloWorld.o: helloWorld.c
	$(CC) $(CFLAGS) -c helloWorld.cpp

main: $(OBJECTS)
	$(CC) $(OBJECTS) -o helloWorld

clean:
	rm -f *.o