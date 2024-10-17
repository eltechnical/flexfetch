PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Flexfetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p flexfetch $(DESTDIR)$(PREFIX)/bin/flexfetch
	@cp -p flexfetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/flexfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/flexfetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/flexfetch.1*
