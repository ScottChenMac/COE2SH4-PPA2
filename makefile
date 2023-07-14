CC=gcc
CFLAGS=-I.
OBJ = MacUILib.o PPA2.o 
DEPS = *.h
#POSTLINKER = -lncurses   ## uncomment this if on Linux
EXEC = PPA2

%.o: %.c $(DEPENDS)
	$(CC) -c -o $@ $< $(CFLAGS)

${EXEC} : $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) ${POSTLINKER}

clean :
	rm -rf ${OBJ} ${EXEC}

