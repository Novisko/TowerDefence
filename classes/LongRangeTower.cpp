//
// Created by honza on 1.6.18.
//

#include <Tile.h>
#include <Tower.h>
#include "Libraries.h"
#include "LongRangeTower.h"

LongRangeTower::LongRangeTower ( unsigned int newDMG, unsigned int newRange, unsigned int newUpgradeCost,
                                 char mapHolder ) : Tower ( newDMG, newRange, newUpgradeCost, mapHolder ) {
    setMapHolder ( mapHolder );
}

LongRangeTower::LongRangeTower () {

}

LongRangeTower::~LongRangeTower () {

}

void LongRangeTower::attack ( TilePos & pos, Map & map ) const {

}

std::ostream & LongRangeTower::print ( std::ostream & os ) const {
    return Tower::print ( os );
}

void LongRangeTower::upgrade () {
    setTier ( getTier () + 1 );
    setDMG (( unsigned int ) ceil ( getDMG () * 1.2 ));
    setCostToUpgrade (( unsigned int ) ceil ( getCostToUpgrade () * 1.2 ));
    setRange ( getRange () + ( unsigned int ) floor ( getTier () / 5 ));
}


void LongRangeTower::safeTypeToFile ( std::ofstream & os ) const {
    os << "LongRangeTower" << std::endl;
}


void LongRangeTower::safeToFile ( std::ofstream & os ) const {
    safeTypeToFile ( os );
    Tower::safeAttributesToFile ( os );
}

void LongRangeTower::safeAttributesToFile ( std::ofstream & os ) const {
    Tower::safeAttributesToFile ( os );
}


bool LongRangeTower::loadFromFile ( std::ifstream & os ) {
    return Tower::loadFromFile ( os );
}
