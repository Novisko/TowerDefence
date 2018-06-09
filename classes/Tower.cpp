//
// Created by honza on 1.6.18.
//

#include <Tower.h>
#include "Libraries.h"


Tower::~Tower () {};

Tower::Tower ( unsigned int newDMG, unsigned int newRange, unsigned int newUpgradeCost, char newMapHolder ) : tier (
        1 ), DMG ( newDMG ), range ( newRange ), costToUpgrade ( newUpgradeCost ), mapHolder ( newMapHolder ) {}

std::ostream & Tower::print ( std::ostream & os ) const {

    os << mapHolder;

    return os;
}

void Tower::upgrade () {
    this->tier++;
    this->costToUpgrade = ( unsigned int ) floor ( this->costToUpgrade * 1.3 );
    this->range = ( unsigned int ) ceil ( this->tier / 10 );
    this->DMG = this->DMG + tier * 20;
}

Tower::Tower () {
    this->tier = 1;
    this->costToUpgrade = 100;
    this->DMG = 50;
    this->mapHolder = 'T';
    this->range = 1;
}


void Tower::attack ( TilePos & pos, Map & map ) const {
    if ( !map.isInBounds ( pos )) {
        return;
    }
    if ( !map.getTile ( pos )->hasTroop ()) {
        return;
    }

}

unsigned int Tower::getTier () const {
    return tier;
}

void Tower::setTier ( unsigned int tier ) {
    this->tier = tier;
}

unsigned int Tower::getDMG () const {
    return DMG;
}

void Tower::setDMG ( unsigned int DMG ) {
    this->DMG = DMG;
}


unsigned int Tower::getRange () const {
    return range;
}

void Tower::setRange ( unsigned int range ) {
    this->range = range;
}

void Tower::setCostToUpgrade ( unsigned int costToUpgrade ) {
    this->costToUpgrade = costToUpgrade;
}

unsigned int Tower::getCostToUpgrade () const {
    return this->costToUpgrade;
}

char Tower::getMapHolder () const {
    return mapHolder;
}

void Tower::setMapHolder ( char mapHolder ) {
    Tower::mapHolder = mapHolder;
}

bool Tower::loadFromFile ( std::ifstream & os ) {
    std::string input;

    try {
        input.clear ();
        std::getline ( os, input, '\n' );
        if ( !(input.size () != 1)) {
            return false;
        }
        mapHolder = input.front ();
        input.clear ();

        std::getline ( os, input, '\n' );
        int dummy = std::stoi ( input );
        if ( dummy < 0 ) {
            return false;
        }
        tier = ( unsigned int ) dummy;
        input.clear ();
        std::getline ( os, input, '\n' );
        dummy = std::stoi ( input );
        if ( dummy < 0 ) {
            return false;
        }
        costToUpgrade = ( unsigned int ) dummy;
        input.clear ();
        std::getline ( os, input, '\n' );
        dummy = std::stoi ( input );
        if ( dummy < 0 ) {
            return false;
        }
        DMG = ( unsigned int ) dummy;
        input.clear ();
        std::getline ( os, input, '\n' );
        dummy = std::stoi ( input );
        if ( dummy < 0 ) {
            return false;
        }
        range = ( unsigned int ) dummy;

    } catch ( std::exception & e ) {
        return false;
    }


}


void Tower::safeToFile ( std::ofstream & os ) const {
    safeTypeToFile ( os );
    safeAttributesToFile ( os );
}

void Tower::safeTypeToFile ( std::ofstream & os ) const {
    os << "Tower" << std::endl;
}

void Tower::safeAttributesToFile ( std::ofstream & os ) const {
    os << this->mapHolder << std::endl << this->tier << std::endl << this->costToUpgrade << std::endl << this->DMG
       << std::endl << this->range << std::endl;
}

std::ostream & operator<< ( std::ostream & os, std::shared_ptr < Tower > & tower ) {
    os << tower->getMapHolder ();
    return os;
}
