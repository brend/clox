CC = cc
CFLAGS = -Wall -Wextra -Werror

SOURCES = ${wildcard src/*.c}
HEADERS = ${wildcard src/*.h}

clox: ${SOURCES} ${HEADERS}
	${CC} ${CFLAGS} ${SOURCES} -o $@

.PHONY: clean
clean:
	rm -f clox
