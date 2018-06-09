//
// Created by honza on 1.6.18.
//
#include <Tile.h>
#include <EmptyTile.h>

/**
 *
 * @param pos
 *
 * EmptyTile constructor
 */

EmptyTile::EmptyTile ( TilePos pos ) : Tile ( pos ) {
    setPlaceHolder ( ' ' );
}

/**
 * EmptyTile destuctor
 */

EmptyTile::~EmptyTile () {}


bool EmptyTile::hasTroop () const {
    return false;
}

bool EmptyTile::acceptsTroop () const {
    return true;
}

bool EmptyTile::acceptsTower () const {
    return true;
}

bool EmptyTile::hasTower () const {
    return false;
}


/**
 *
 * @param  std::ostream & os
 * @return std::ostream & os
 *
 *
 */
/*std::ostream & EmptyTile::print( std::ostream & os ) const{
    os << " ";
    return os;
}*/
/**
 *
 * @param std::ostream & os
 * @param std::shared_ptr<EmptyTile> &  tile
 * @return std::ostream & os
 *
 *  Stream output operator
 */