//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_TILEPOS_H
#define TOWERDEFENCE_TILEPOS_H


#include "Libraries.h"

class TilePos {
public:
    int x;
    int y;

    TilePos ( int x = 0, int y = 0 );

    ~TilePos ();

    TilePos ( const TilePos & pos );

    friend bool operator== ( const TilePos & pos, const TilePos & pos2 );

    struct PosComp {

        bool operator() ( const TilePos & pos1, const TilePos & pos2 ) {
            if ( pos1.x == pos2.x ) {
                return pos1.y < pos2.y;
            }

            return pos1.x < pos2.x;
        }
    };

};

#endif //TOWERDEFENCE_TILEPOS_H
