//
// Created by honza on 1.6.18.
//

#include "Libraries.h"
#include "TilePos.h"
#include "Tile.h"
#include "WallTile.h"


WallTile::WallTile ( TilePos pos ) : Tile ( pos ) {
    setPlaceHolder ( 'X' );
}

WallTile::~WallTile () {}

TilePos WallTile::getPos () const {
    return Tile::getPos ();
}

bool WallTile::hasTroop () const {
    return false;
}

bool WallTile::acceptsTroop () const {
    return false;
}

bool WallTile::hasTower () const {
    return false;
}

bool WallTile::acceptsTower () const {
    return false;
}


