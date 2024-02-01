all: *.c *.h
	gcc -O3 *.c -Wall -levent -I include -pthread -lm -D_GNU_SOURCE -o loader 

clean:
	rm loader
