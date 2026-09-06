CC = cc
CFLAGS = -Wall -Wextra -Werror

SOURCES = ${wildcard *.c}
HEADERS = ${wildcard *.h}

lox: ${SOURCES} ${HEADERS}
	${CC} ${CFLAGS} ${SOURCES} -o $@

.PHONY: clean
clean:
	rm -f lox
