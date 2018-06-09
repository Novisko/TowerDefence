//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_EMPTYTILE_H
#define TOWERDEFENCE_EMPTYTILE_H
#include "Libraries.h"
#include "TilePos.h"
#include "Tile.h"


class EmptyTile : public Tile{


public:
    EmptyTile( TilePos pos );
    ~EmptyTile()override ;
    bool hasTroop() const override;
    bool acceptsTroop() const override;
    bool hasTower() const override;
    bool acceptsTower() const override;
};







#endif //TOWERDEFENCE_EMPTYTILE_H
