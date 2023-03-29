hello-world:
	g++ hello-world-v1.cpp -o hello-world-v1.out
	g++ hello-world-v2.cpp -o hello-world-v2.out
	gcc hello-world-v3.c -o hello-world-v3.out
	gcc hello-world-v4.c -o hello-world-v4.out
	aarch64-linux-gnu-as hello-world-v5.s -o hello-world-v5.o
	aarch64-linux-gnu-gcc hello-world-v5.o -o hello-world-v5.out

	g++ hw-v1.cpp -o hw-v1.out
	gcc hw-v2.c -o hw-v2.out
	as hw-v3.s -o hw-v3.o
	gcc hw-v3.o -o hw-v3.out

clean:
	rm *.o *.out
