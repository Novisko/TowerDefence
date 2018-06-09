//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_TROOP_H
#define TOWERDEFENCE_TROOP_H

#include "Libraries.h"
#include "TilePos.h"
#include "TroopTile.h"

class Troop {
public:

    Troop ( const Troop & troop );

    Troop ( char placeHolder, unsigned int gold, int HP );

    char getPlaceHolder () const;

    void setPlaceHolder ( char placeHolder );

    int getHP () const;

    void setHP ( int HP );

    unsigned int getGold () const;

    void setGold ( unsigned int gold );

private:
    char placeHolder;
    int HP;
    unsigned int gold;

public:

    Troop ();

    virtual ~Troop ();

    virtual void getAttacked ( int dmg );

    virtual bool isDead () const;

    bool loadFromFile ( std::ifstream & os );

    void safeToFile ( std::ofstream & os ) const;

};

#endif //TOWERDEFENCE_TROOP_H
