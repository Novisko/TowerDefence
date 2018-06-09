//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_MAP_H
#define TOWERDEFENCE_MAP_H


#include "Libraries.h"
#include "Tile.h"
#include "EmptyTile.h"

class Map {
    std::vector < std::vector < std::shared_ptr < Tile > > > tiles;
    std::vector < TilePos > path;
    std::vector < std::vector < bool > > visited;
    std::vector < std::vector < int > > distanceList;
    bool customPath;
    TilePos start;
    TilePos end;


public:

    Map ( const unsigned int x, const unsigned int y );

    ~Map ();

    bool isInBounds ( const TilePos & pos ) const;

    std::ostream & print ( std::ostream & os ) const;

    std::shared_ptr < Tile > & getTile ( const TilePos & pos );

    bool changeTile ( std::shared_ptr < Tile > tile );

    friend std::ostream & operator<< ( std::ostream & os, Map & map );

    bool findPath ();

    void initDistanceList ();

    std::vector < TilePos > getPath () const;

    TilePos getStart () const;


    bool moveTroops ();


    void safeToFile ( std::ofstream & os ) const;

    bool loadFromFile ( std::ifstream & os );

};


#endif //TOWERDEFENCE_MAP_H
