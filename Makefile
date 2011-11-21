BINFILES=repoctl
CFGFILES=repoctl.conf
DATAFILES=functions

sysconfdir=/etc
bindir=/usr/bin
sharedir=/usr/share
repoctldatadir=$(sharedir)/repoctl

install:
	install -d $(DESTDIR)$(bindir) $(DESTDIR)$(repoctldatadir) $(DESTDIR)$(sysconfdir)
	install -m 755 $(BINFILES) $(DESTDIR)$(bindir)
	install -m 644 $(CFGFILES) $(DESTDIR)$(sysconfdir)
	install -m 644 $(DATAFILES) $(DESTDIR)$(repoctldatadir)

