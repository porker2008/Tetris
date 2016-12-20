board.o: kernel/board.h kernel/board.cpp kernel/tetromino.h
	g++ -c -std=c++11 kernel/board.cpp

main.o: main.cpp kernel/board.h
	g++ -c -std=c++11 main.cpp

tetris: board.o main.o
	g++ -o tetris board.o main.o

clean:
	rm -f *.o tetris

