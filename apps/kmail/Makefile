install:
	make install-inplace

uninstall:
	make uninstall-inplace

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
