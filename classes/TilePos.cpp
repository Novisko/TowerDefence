//
// Created by honza on 1.6.18.
//
#include <TilePos.h>
#include "Libraries.h"


TilePos::TilePos ( int x, int y ) : x ( x ), y ( y ) {}

TilePos::~TilePos () {}


TilePos::TilePos ( const TilePos & pos ) {
    this->x = pos.x;
    this->y = pos.y;
}

bool operator == (const TilePos & pos1, const TilePos & pos)  {
    return pos1.x == pos.x && pos1.y == pos.y;
}
