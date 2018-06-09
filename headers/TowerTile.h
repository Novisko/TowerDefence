//
// Created by honza on 2.6.18.
//

#ifndef TOWERDEFENCE_TOWERTILE_H
#define TOWERDEFENCE_TOWERTILE_H


#include "Tower.h"

class TowerTile : public Tile {
    std::shared_ptr < Tower > tower;

public:
    TowerTile ( TilePos pos );

    TilePos getPos () const override;

    bool hasTroop () const override;

    bool acceptsTroop () const override;

    bool hasTower () const override;

    bool acceptsTower () const override;

    std::ostream & print ( std::ostream & os ) const override;

    const TilePos & getPosition () const override;

    void setPosition ( TilePos position ) override;

    char getPlaceHolder () const override;

    void setPlaceHolder ( char placeHolder ) override;


    TowerTile ( TilePos & pos, std::shared_ptr < Tower > & newTower );

    virtual ~TowerTile () override;

    void FindAndAttack ( TilePos & pos, Map & map ) const;

    void setTower ( std::shared_ptr < Tower > tower );


    std::shared_ptr < Tower > getTower () const;


};

#endif //TOWERDEFENCE_TOWERTILE_H
