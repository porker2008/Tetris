#ifndef __BOARD_H__
#define __BOARD_H__

#include <memory>
#include "tetromino.h"

using std::unique_ptr;

namespace kernel {

class Board {
	int _width, _height;
	unique_ptr<Tetromino> next;
	// TODO
public:
	Board(int width, int height);
};

}

#endif // __BOARD_H__