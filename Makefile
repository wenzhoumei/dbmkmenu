# dbmkmenu - bookmark system

include config.mk

SRC = drw.c dbmkmenu_show.c util.c
OBJ = $(SRC:.c=.o)

all: dbmkmenu_show

.c.o:
	$(CC) -c $(CFLAGS) $<

config.h:
	cp config.def.h $@

$(OBJ): arg.h config.h config.mk drw.h

dbmkmenu_show: dbmkmenu_show.o drw.o util.o
	$(CC) -o $@ dbmkmenu_show.o drw.o util.o $(LDFLAGS)

clean:
	rm -f dbmkmenu_show $(OBJ)

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dbmkmenu dbmkmenu_errmsg dbmkmenu_browse dbmkmenu_check dbmkmenu_show $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dbmkmenu
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dbmkmenu_errmsg
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dbmkmenu_browse
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dbmkmenu_check
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dbmkmenu_show

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dbmkmenu\
		$(DESTDIR)$(PREFIX)/bin/dbmkmenu_errmsg\
		$(DESTDIR)$(PREFIX)/bin/dbmkmenu_browse\
		$(DESTDIR)$(PREFIX)/bin/dbmkmenu_check\
		$(DESTDIR)$(PREFIX)/bin/dbmkmenu_show\

.PHONY: all clean install uninstall
