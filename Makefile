LIBS=-lusb

pk2serial: pk2serial.o
	cc -o $@ $< ${LIBS}
