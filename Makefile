all: liblib.so main dynamic 

main:main1_1.o main1_3.o hello_Ariel.o
	gcc -Wall -g -o main main1_1.o hello_Ariel.o
dynamic:main1_2.o main1_3.o liblib.so
	gcc -Wall -g -o dynamic main1_2.o ./liblib.so


liblib.so:hello_Ariel.o hello_Ariel.h
	gcc -shared  -fPIC -o liblib.so hello_Ariel.o

hello_Ariel.o: hello_Ariel.c hello_Ariel.h
	gcc -Wall -g -fPIC -c hello_Ariel.c


main1_1.o: main1_1.c hello_Ariel.h
	gcc -Wall -g -fPIC -c main1_1.c

main1_2.o: main1_2.c
	gcc -Wall -g -fPIC -c main1_2.c

main1_3.o: main1_3.c
	gcc -Wall -g -fPIC -c main1_3.c

.PHONY: clean all

clean:
	rm -f *.o *.a *.so main dynamic
