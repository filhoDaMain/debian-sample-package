prefix = /usr/local

all:
	$(CC) $(CFLAGS) -o hello hello.c

install:
	install -m 555 hello $(DESTDIR)$(prefix)/bin
	install -m 644 hello.1 $(DESTDIR)$(prefix)/share/man/man1

clean:
	rm -rf hello