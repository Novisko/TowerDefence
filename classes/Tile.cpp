//
// Created by honza on 1.6.18.
//

#include <Tile.h>
#include "Libraries.h"


std::ostream & operator << ( std::ostream & os, std::shared_ptr<Tile> & tile ){
    tile->print(os);
    return os;
}

TilePos Tile::getPos() const {
    return this->position;
}

Tile::Tile( TilePos  pos ) {
    this-> position = pos;
}
Tile::~Tile(){};


const TilePos & Tile::getPosition() const {
    return position;
}

void Tile::setPosition( TilePos position ) {
    Tile::position = position;
}

char Tile::getPlaceHolder() const {
    return placeHolder;
}

void Tile::setPlaceHolder(char placeHolder) {
    Tile::placeHolder = placeHolder;
}

std::ostream & Tile::print( std::ostream & os ) const {
    os << getPlaceHolder();
    return os;
}

void Tile::getAttacked(unsigned int damage) {
}