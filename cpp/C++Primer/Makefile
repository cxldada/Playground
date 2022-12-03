CC=g++
CPPFLAGS=-Wall -std=c++11 -ggdb
LDFLAGS=-pthread

templateTest:templateTest.cc
	$(CC) $(LDFLAGS) -o $@ $^

.PHONY:
	clean

clean: 
	rm *.o templateTest
