//
// Created by honza on 8.5.18.
//

#ifndef TOWERDEFENCE_LONGRANGETOWER_H
#define TOWERDEFENCE_LONGRANGETOWER_H

#include "Libraries.h"
#include "Tower.h"

class LongRangeTower : public Tower {

public:
    LongRangeTower ( unsigned int newDMG, unsigned int newRange, unsigned int newUpgradeCost, char mapHolder );

    LongRangeTower ();

    virtual ~LongRangeTower () override;


    void attack ( TilePos & pos, Map & map ) const override;

    std::ostream & print ( std::ostream & os ) const override;

    void upgrade () override;

    void safeAttributesToFile ( std::ofstream & os ) const override;

    void safeTypeToFile ( std::ofstream & os ) const override;

    void safeToFile ( std::ofstream & os ) const override;

    bool loadFromFile ( std::ifstream & os ) override;

};


#endif //TOWERDEFENCE_LONGRANGETOWER_H
