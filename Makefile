clean:
	rm main.exe

main: main.c
	gcc -o main.exe main.c

