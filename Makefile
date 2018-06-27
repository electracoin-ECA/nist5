NAME = nist5

ifeq ($(OS), Windows_NT)
	BINARY_NAME = ${NAME}.exe
else
	BINARY_NAME = ${NAME}
endif

build:
	g++ src/blake.c main.cpp -o nist5.exe -static-libgcc -static-libstdc++

start:
	make build
	"./${BINARY_NAME}"
