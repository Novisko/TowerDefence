//
// Created by honza on 1.6.18.
//
#include <Map.h>
#include <queue>
#include <climits>
#include <TroopTile.h>
#include <WallTile.h>
#include "Libraries.h"
#include <TilePos.h>
#include <Tower.h>
#include <TowerTile.h>
#include <SplashTower.h>
#include <LongRangeTower.h>


Map::Map ( const unsigned int x, const unsigned int y ) {
    tiles.resize ( x );
    for ( auto & V : tiles ) {
        V.resize ( y );
    }

    visited.resize ( x );
    for ( auto & V : visited ) {
        V.resize ( y );
    }

    distanceList.resize ( x );
    for ( auto & V : distanceList ) {
        V.resize ( y );
    }

    for ( auto & V : visited ) {
        for ( auto && W : V ) {
            W = false;
        }
    }

    customPath = false;
}


std::shared_ptr < Tile > & Map::getTile ( const TilePos & pos ) {

    if ( pos.x >= tiles.size () || pos.y >= tiles[pos.x].size ()) {
        throw std::exception ();
    }

    return tiles[pos.x][pos.y];

}


std::ostream & Map::print ( std::ostream & os ) const {

    for ( auto & V : tiles ) {
        for ( auto & W: V ) {
            os << W;
        }
        os << std::endl;
    }

    return os;
}

Map::~Map () {

}

bool Map::isInBounds ( const TilePos & pos ) const {
    return (pos.x >= 0 && pos.x < tiles.size () && pos.y < tiles[0].size () && pos.y >= 0);
}


bool Map::changeTile ( std::shared_ptr < Tile > tile ) {
    if ( !isInBounds ( tile->getPos ())) {
        return false;
    }

    tiles[tile->getPos ().x][tile->getPos ().y] = tile;


}

std::ostream & operator<< ( std::ostream & os, Map & map ) {
    map.print ( os );
    return os;
}


void Map::initDistanceList () {
    for ( auto & V : visited ) {
        for ( auto && W : V ) {
            W = false;
        }
    }
    for ( auto & V : distanceList ) {
        for ( auto && W : V ) {
            W = INT_MAX;
        }
    }


    std::vector < TilePos > neighbours;
    std::queue < std::pair < TilePos, int > > q;
    visited[start.x][start.y] = true;
    q.push ( { start, 0 } );

    while ( !q.empty ()) {

        TilePos current = q.front ().first;
        neighbours.clear ();

        if ( visited[current.x][current.y] == true ) {
            q.pop ();
            continue;
        }

        visited[current.x][current.y] = true;

        neighbours.push_back ( TilePos ( current.x - 1, current.y ));
        neighbours.push_back ( TilePos ( current.x + 1, current.y ));
        neighbours.push_back ( TilePos ( current.x, current.y - 1 ));
        neighbours.push_back ( TilePos ( current.x, current.y + 1 ));

        for ( int i = 0; i < neighbours.size (); i++ ) {
            if ( !isInBounds ( neighbours[i] ) || !tiles[neighbours[i].x][neighbours[i].y]->acceptsTroop () ||
                 visited[neighbours[i].x][neighbours[i].y] ) {
                continue;
            }
            q.push ( { neighbours[i], q.front ().second + 1 } );
        }

        distanceList[current.x][current.y] = q.front ().second;

    }


}


bool Map::findPath () {

    path.clear ();
    initDistanceList ();
    if ( visited[end.x][end.y] == false ) {
        return false;
    }

    std::vector < TilePos > neighbours;
    int distance = distanceList[end.x][end.y];
    TilePos current = end;
    path.push_back ( end );

    while ( distance > 0 ) {
        neighbours.clear ();
        neighbours.push_back ( TilePos ( current.x - 1, current.y ));
        neighbours.push_back ( TilePos ( current.x + 1, current.y ));
        neighbours.push_back ( TilePos ( current.x, current.y - 1 ));
        neighbours.push_back ( TilePos ( current.x, current.y + 1 ));

        for ( int i = 0; i < neighbours.size (); i++ ) {
            if ( !isInBounds ( neighbours[i] ) || distanceList[neighbours[i].x][neighbours[i].y] == INT_MAX ) {
                continue;
            }
            if ( distanceList[neighbours[i].x][neighbours[i].y] == distance - 1 ) {
                path.push_back ( neighbours[i] );
                distance--;
                current = neighbours[i];
                break;
            }
        }
    }
    return true;
}

std::vector < TilePos > Map::getPath () const {
    return this->path;
}

TilePos Map::getStart () const {
    return this->start;
}

bool Map::moveTroops () {
    bool reachedDest = false;
    for ( int i = 0; i < path.size (); i++ ) {
        auto currentPos = path[i];
        if ( !tiles[currentPos.x][currentPos.y]->hasTroop ()) {
            continue;
        }
        if ( currentPos.x == end.x && currentPos.y == end.y ) {
            tiles[end.x][end.y] = std::make_shared < EmptyTile > ( EmptyTile ( TilePos ( end.x, end.y )));
            reachedDest = true;
            continue;
        }

        std::shared_ptr < Tile > troopTile = tiles[currentPos.x][currentPos.y];
        std::shared_ptr < Tile > tileToMoveTo = tiles[path[i - 1].x][path[i - 1].y];
        troopTile->setPosition ( path[i - 1] );
        changeTile ( troopTile );
        changeTile ( std::make_shared < EmptyTile > ( EmptyTile ( path[i] )));


    }
    return reachedDest;

}

void Map::safeToFile ( std::ofstream & os ) const {
    os << tiles.size () << '|' << tiles[0].size () << std::endl;
    os << start.x << ' ' << start.y << ' ' << end.x << end.y << std::endl;

    if ( customPath ) {
        os << path.size () << std::endl;
        for ( int i = 0; i < path.size (); ++i ) {
            os << path[i].x << ' ' << path[i].y;

        }
        os << std::endl;
    } else {
        os << "False" << std::endl;
    }


    for ( auto & V : tiles ) {
        for ( auto && W : V ) {
            os << W;
        }
        os << std::endl;
    }

}

bool Map::loadFromFile ( std::ifstream & os ) {
    std::string input;
    int dummy = 0;

    // getting map size

    try {
        std::getline ( os, input, '|' );
        dummy = std::stoi ( input );
        if ( dummy < 1 ) {
            return false;
        }
        tiles.resize ( dummy );
        input.clear ();
        std::getline ( os, input, '\n' );
        dummy = std::stoi ( input );
        if ( dummy < 1 ) {
            return false;
        }

        for ( auto & V : tiles ) {
            V.resize ( dummy );
        }
        //getting start and end positions

        input.clear ();
        std::getline ( os, input, ' ' );
        dummy = std::stoi ( input );

        TilePos pos ( 0, 0 );
        pos.x = dummy;
        input.clear ();

        std::getline ( os, input, ' ' );
        dummy = std::stoi ( input );

        pos.y = dummy;

        if ( !isInBounds ( pos )) {
            return false;
        }

        this->start = pos;
        input.clear ();

        std::getline ( os, input, ' ' );
        dummy = std::stoi ( input );


        pos.x = dummy;
        input.clear ();

        std::getline ( os, input, ' ' );
        dummy = std::stoi ( input );

        if ( !isInBounds ( pos )) {
            return false;
        }
        pos.y = dummy;
        this->end = pos;
        input.clear ();


        // loading custom path - if not provided BFS will be used

        std::getline ( os, input, '\n' );
        if ( input == "False" ) {
            this->customPath = false;

        } else {
            this->customPath = true;
            dummy = std::stoi ( input );
            this->path.resize ( dummy );
            for ( int i = 0; i < path.size () - 1; i++ ) {
                std::getline ( os, input, ' ' );
                dummy = std::stoi ( input );

                pos.x = dummy;
                std::getline ( os, input, ' ' );
                dummy = std::stoi ( input );

                pos.y = dummy;
                if ( !isInBounds ( pos )) {
                    return false;
                }
                path.push_back ( pos );
            }
            std::getline ( os, input, ' ' );
            dummy = std::stoi ( input );
            pos.x = dummy;
            dummy = std::stoi ( input );
            pos.y = dummy;
            if ( !isInBounds ( pos )) {
                return false;
            }
            path.push_back ( pos );
        }


        input.clear ();
        EmptyTile emptyDummy ( TilePos ( 0, 0 ));
        WallTile wallDummy ( TilePos ( 0, 0 ));
        std::vector < TilePos > towerPositions;

        for ( int i = 0; i < tiles.size (); i++ ) {
            std::getline ( os, input, '\n' );

            for ( int j = 0; j < input.size (); i++ ) {

                if ( input.at ( j ) == emptyDummy.getPlaceHolder ()) {
                    tiles[i][j] == std::make_shared < EmptyTile > ( EmptyTile ( TilePos ( i, j )));

                } else if ( input.at ( j ) == wallDummy.getPlaceHolder ()) {
                    tiles[i][j] = std::make_shared < WallTile > ( WallTile ( TilePos ( i, j )));

                } else {
                    towerPositions.push_back ( TilePos ( i, j ));
                }
            }
        }

        std::shared_ptr < Tower > p_tower;
        for ( auto V : towerPositions ) {
            input.clear ();
            std::getline ( os, input, ' ' );
            dummy = std::stoi ( input );
            pos.x = dummy;
            std::getline ( os, input, '\n' );
            dummy = std::stoi ( input );
            pos.y = dummy;
            if ( !isInBounds ( pos )) {
                return false;
            }
            if ( !(V == pos)) {
                return false;
            }
            std::getline ( os, input, '\n' );
            if ( input == "Tower" ) {
                Tower tower;
                if ( !tower.loadFromFile ( os )) {
                    return false;
                }
                p_tower = std::make_shared < Tower > ( tower );
            } else if ( input == "SplashTower" ) {
                SplashTower splashTower;
                if ( !splashTower.loadFromFile ( os )) {
                    return false;
                }
                p_tower = std::make_shared < SplashTower > ( splashTower );

            } else if ( input == "LongRangeTower" ) {
                LongRangeTower longRangeTower;
                if ( !longRangeTower.loadFromFile ( os )) {
                    return false;
                }
                p_tower = std::make_shared < LongRangeTower > ( longRangeTower );
            } else {
                return false;
            }
            tiles[pos.x][pos.y] = std::make_shared < TowerTile > ( TowerTile ( pos, p_tower ));
        }


    } catch ( std::exception & e ) {
        return false;
    }

    return true;

}







