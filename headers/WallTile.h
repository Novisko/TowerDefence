//
// Created by honza on 1.6.18.
//

#ifndef TOWERDEFENCE_WALLTILE_H
#define TOWERDEFENCE_WALLTILE_H


#include "Tile.h"
#include "Libraries.h"

class WallTile : public Tile {

public:
    WallTile ( TilePos pos );

    ~WallTile () override;

    TilePos getPos () const override;

    bool hasTroop () const override;

    bool acceptsTroop () const override;

    bool hasTower () const override;

    bool acceptsTower () const override;


};


#endif //TOWERDEFENCE_WALLTILE_H
