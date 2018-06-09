//
// Created by honza on 1.6.18.
//
#include <Tower.h>
#include <SplashTower.h>
#include "Libraries.h"

SplashTower::SplashTower ( unsigned int newDMG, unsigned int newRange, unsigned int newUpgradeCost, char newMapHolder,
                           unsigned int newRadius ) : Tower ( newDMG, newRange, newUpgradeCost, newMapHolder ),
                                                      radius ( newRadius ) {}

SplashTower::SplashTower () : Tower (), radius ( 1 ) {}

SplashTower::~SplashTower () {}

void SplashTower::upgrade () {
    setTier ( getTier () + 1 );
    setCostToUpgrade (( unsigned int ) floor ( getCostToUpgrade () * 1.1 ));
    setRange (( unsigned int ) floor ( getRange () + getTier () / 10 ));
    this->radius = ( unsigned short ) floor ( this->radius / 20 );

}

void SplashTower::attack ( TilePos & pos, Map & map ) const {
    for ( int i = pos.x - 1; i <= pos.x + 1; i++ ) {
        for ( int j = pos.y - 1; j <= pos.y + 1; j++ ) {
            try {
                TilePos pos2 ( i, j );
                std::shared_ptr < Tile > tile = map.getTile ( pos2 );
                tile->getAttacked ( getDMG ());
            } catch ( std::exception & e ) {
                continue;
            }

        }
    }
}

std::ostream & SplashTower::print ( std::ostream & os ) const {
    os << getMapHolder ();
    return os;
}

unsigned int SplashTower::getRadius () const {
    return this->radius;
}

bool SplashTower::loadFromFile ( std::ifstream & os ) {
    if ( !Tower::loadFromFile ( os )) {
        return false;
    }

    try {
        std::string input;
        unsigned int dummy = 0;
        getline ( os, input, '\n' );
        dummy = ( unsigned int ) std::stoi ( input );
        this->radius = dummy;
        return true;
    } catch ( std::exception & e ) {
        return false;
    }
}

void SplashTower::safeToFile ( std::ofstream & os ) const {
    Tower::safeToFile ( os );
    os << this->radius << std::endl;
}

void SplashTower::safeTypeToFile ( std::ofstream & os ) const {
    os << "SplashTower" << std::endl;

}

void SplashTower::safeAttributesToFile ( std::ofstream & os ) const {
    Tower::safeAttributesToFile ( os );

}
