//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_TOWER_H
#define TOWERDEFENCE_TOWER_H

#include "Libraries.h"
#include "Tile.h"
#include "Map.h"

class Tower {
protected:
    unsigned int tier;
    unsigned int DMG;
    unsigned int range;
    unsigned int costToUpgrade;
    char mapHolder;

public:

    virtual std::ostream & print ( std::ostream & os ) const;

    virtual void upgrade ();

    Tower ();

    virtual ~Tower ();

    virtual void attack ( TilePos & pos, Map & map ) const;

    unsigned int getCostToUpgrade () const;

    friend std::ostream & operator<< ( std::ostream & os, std::shared_ptr < Tower > & tower );


    Tower ( unsigned int newDMG, unsigned int newRange, unsigned int newUpgradeCost, char newMapHolder );

    unsigned int getTier () const;

    void setTier ( unsigned int tier );

    unsigned int getDMG () const;

    void setDMG ( unsigned int DMG );

    unsigned int getRange () const;

    void setRange ( unsigned int range );

    void setCostToUpgrade ( unsigned int costToUpgrade );

    char getMapHolder () const;

    void setMapHolder ( char mapHolder );

    virtual void safeAttributesToFile ( std::ofstream & os ) const;

    virtual void safeToFile ( std::ofstream & os ) const;

    virtual void safeTypeToFile ( std::ofstream & os ) const;

    virtual bool loadFromFile ( std::ifstream & os );


};


#endif //TOWERDEFENCE_TOWER_H
