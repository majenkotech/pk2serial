LIBS=-lusb -lutil
BIN=pk2serial
OBJS=pk2serial.o
CFLAGS=

${BIN}: ${OBJS}
	cc ${CFLAGS} -o $@ $< ${LIBS}


clean:
	rm -f ${BIN} ${OBJS}

install: ${BIN}
	install -d -m 755 ${DESTDIR}/usr/bin
	install -m755 ${BIN} ${DESTDIR}/usr/bin
