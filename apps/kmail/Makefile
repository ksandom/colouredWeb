install:
	make install-inplace
	make install-filter

uninstall:
	make uninstall-inplace
	make uninstall-filter

install-filter:
	./bin/filter/installBin
	./bin/filter/installSheet sheets/cwBlackBlack-ffffff.css

uninstall-filter:
	rm /usr/bin/insertSheet /var/lib/kmailMessageDarkMode/custom.css

install-inplace:
	./bin/inPlace/installInplace sheets/cwBlackBlack-ffffff.css

uninstall-inplace:
	./bin/inPlace/uninstallInplace

test:
	./bin/filter/testIt
