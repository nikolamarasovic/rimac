clean:
	if [ -f "main.exe" ]; then \
		rm -f main.exe; \
	fi		
main: main.c
	gcc -o main.exe main.c

