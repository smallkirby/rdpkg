all: Makefile hello.c hello/DEBIAN/control
	mkdir -p ./usr/bin/
	gcc ./hello.c -o ./usr/bin/hello -g
	dpkg-deb --build hello
