//
// Created by honza on 1.6.18.
//

#include <Troop.h>
#include <TroopTile.h>
#include "Libraries.h"

TroopTile::TroopTile ( TilePos pos, std::shared_ptr < Troop > troop ) : Tile ( pos ), troop ( troop ) {
    setPlaceHolder ( troop->getPlaceHolder ());


}

TroopTile::~TroopTile () {}


std::shared_ptr < Troop > & TroopTile::getTroop () {
    return this->troop;
}

bool TroopTile::hasTower () const {
    return false;
}

bool TroopTile::acceptsTower () const {
    return false;
}

void TroopTile::setTroop ( std::shared_ptr < Troop > & troop ) {
    this->troop = troop;

}

void TroopTile::getAttacked ( unsigned int damage ) {
    if ( troop->isDead ()) {
        return;
    }
    troop->getAttacked ( damage );
}

bool TroopTile::hasTroop () const {
    return true;
}

bool TroopTile::acceptsTroop () const {
    return false;
}
