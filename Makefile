install:
	./bin/installBin
	./bin/installSheet sheets/cwDark-ffffff.css

uninstall:
	rm /usr/bin/insertSheet /var/lib/kmailMessageDarkMode/custom.css
