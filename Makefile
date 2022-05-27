CC := gcc
FNAME := lex.yy.c
ONAME := main

all:
	$(CC) $(FNAME) -o $(ONAME)

clean:
	rm -f main