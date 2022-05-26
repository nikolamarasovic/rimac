clean:
	if [ -f "$FILE" ]; then
		rm -f main.exe
	fi		
main: main.c
	gcc -o main.exe main.c

