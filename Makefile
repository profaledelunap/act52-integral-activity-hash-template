all: clean main test1 test2 test3 test4

main: 
	g++ -std=c++11 main.cpp -o main

test1: main
ifneq ("$(wildcard ./mysolution1.txt)","")
	rm mysolution1.txt
endif
	./main < input1.txt > mysolution1.txt
	g++ -std=c++11 test1.cpp -o test1
	./test1

test2: main
ifneq ("$(wildcard ./mysolution2.txt)","")
	rm mysolution2.txt
endif
	./main < input2.txt > mysolution2.txt
	g++ -std=c++11 test2.cpp -o test2
	./test2

test3: main
ifneq ("$(wildcard ./mysolution3.txt)","")
	rm mysolution3.txt
endif
	./main < input3.txt > mysolution3.txt
	g++ -std=c++11 test3.cpp -o test3
	./test3

test4: main
ifneq ("$(wildcard ./mysolution4.txt)","")
	rm mysolution4.txt
endif
	./main < input4.txt > mysolution4.txt
	g++ -std=c++11 test4.cpp -o test4
	./test4

clean:
ifneq ("$(wildcard ./main)","")
	rm main
endif
ifneq ("$(wildcard ./test1)","")
	rm test1
endif
ifneq ("$(wildcard ./test2)","")
	rm test2
endif
ifneq ("$(wildcard ./test3)","")
	rm test3
endif
ifneq ("$(wildcard ./test4)","")
	rm test4
endif

.PHONY: main test1 test2 test3 test4