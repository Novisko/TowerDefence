//
// Created by honza on 8.5.18.
//

#ifndef TOWERDEFENCE_SPLASHTOWER_H
#define TOWERDEFENCE_SPLASHTOWER_H

#include "Libraries.h"
#include "Tower.h"

class SplashTower : public Tower {
    unsigned int radius;


public:

    SplashTower ( unsigned int newDMG, unsigned int newRange, unsigned int newUpgradeCost, char newMapHolder,
                  unsigned int newRadius );

    SplashTower ();

    ~SplashTower ();

    void upgrade () override;

    void attack ( TilePos & pos, Map & map ) const override;

    std::ostream & print ( std::ostream & os ) const override;

    unsigned int getRadius ()const;

    bool loadFromFile ( std::ifstream & os ) override;
    void safeToFile ( std::ofstream & os ) const override;

    void safeTypeToFile ( std::ofstream & os ) const override;
    void safeAttributesToFile ( std::ofstream & os ) const override;


};


#endif //TOWERDEFENCE_SPLASHTOWER_H
