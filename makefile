all: helloworld

helloworld: helloworld.o
	gcc -nostdlib -o helloworld helloworld.o

helloworld.o: helloworld.s
	as -o helloworld.o helloworld.s

clean:
	rm -vf helloworld *.o

