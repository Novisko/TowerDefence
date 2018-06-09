//
// Created by honza on 5.6.18.
//

#include <TilePos.h>
#include <Map.h>
#include <TowerTile.h>

TowerTile::TowerTile ( TilePos pos ) : Tile ( pos ) {

}

TilePos TowerTile::getPos () const {
    return Tile::getPos ();
}

bool TowerTile::hasTroop () const {
    return false;
}

bool TowerTile::acceptsTroop () const {
    return false;
}

bool TowerTile::hasTower () const {
    return true;
}

bool TowerTile::acceptsTower () const {
    return false;
}

std::ostream & TowerTile::print ( std::ostream & os ) const {
    return Tile::print ( os );
}

const TilePos & TowerTile::getPosition () const {
    return Tile::getPosition ();
}

void TowerTile::setPosition ( TilePos position ) {
    Tile::setPosition ( position );
}

char TowerTile::getPlaceHolder () const {
    return Tile::getPlaceHolder ();
}

void TowerTile::setPlaceHolder ( char placeHolder ) {
    Tile::setPlaceHolder ( placeHolder );
}

TowerTile::TowerTile ( TilePos & pos, std::shared_ptr < Tower > & newTower ) : Tile ( pos ), tower ( newTower ) {}

TowerTile::~TowerTile () {}

void TowerTile::FindAndAttack ( TilePos & pos, Map & map ) const {
    for ( int x = getPos ().x - pos.x; x < getPos ().x + pos.x; x++ ) {

    }
}

void TowerTile::setTower ( std::shared_ptr < Tower > tower ) {
    this->tower = tower;
}

std::shared_ptr < Tower > TowerTile::getTower () const {
    return this->tower;
}
