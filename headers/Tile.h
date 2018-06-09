//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_TILE_H
#define TOWERDEFENCE_TILE_H

#include "Libraries.h"
#include "TilePos.h"

class Troop;

class Tile {
protected:
    TilePos position;
    char placeHolder;

public:
    Tile ( TilePos  pos );

    virtual ~Tile ();


    virtual TilePos getPos () const;

    virtual bool hasTroop () const = 0;

    virtual bool acceptsTroop () const = 0;

    virtual bool hasTower () const = 0;

    virtual bool acceptsTower () const = 0;

    virtual std::ostream & print ( std::ostream & os ) const;

    friend std::ostream & operator<< ( std::ostream & os, std::shared_ptr < Tile > & tile );

    virtual const TilePos & getPosition () const;

    virtual void setPosition ( TilePos position );

    virtual char getPlaceHolder () const;

    virtual void setPlaceHolder ( char placeHolder );

    virtual void getAttacked ( unsigned int damage );
};


#endif //TOWERDEFENCE_TILE_H
