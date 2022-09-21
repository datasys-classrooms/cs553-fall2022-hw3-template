CC=gcc
CFLAGS=-Wall -lpthread

build: cpubench

test: cpubench
	./runbench.sh

cpubench: cpubench.c
	$(CC) $(CFLAGS) -o cpubench $<

clean:
	rm -rf cpubench
