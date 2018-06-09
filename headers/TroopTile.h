//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_TROOPTILE_H
#define TOWERDEFENCE_TROOPTILE_H

#include "Libraries.h"
#include "Tile.h"

class Troop;

class TroopTile : public Tile {

    std::shared_ptr < Troop > troop;

public:

    TroopTile ( TilePos pos, std::shared_ptr < Troop > troop );

    ~TroopTile ();

    std::shared_ptr < Troop > & getTroop ();

    bool hasTower () const override;

    bool acceptsTower () const override;

    void setTroop ( std::shared_ptr < Troop > & troop );

    void getAttacked ( unsigned int damage ) override;

    bool hasTroop () const override;

    bool acceptsTroop () const override;
};

#endif //TOWERDEFENCE_TROOPTILE_H
