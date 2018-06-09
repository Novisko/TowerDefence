//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_GAME_H
#define TOWERDEFENCE_GAME_H

#include "Libraries.h"
#include "Tile.h"
#include "GameState.h"
#include "Map.h"
#include "Tower.h"

class Handler;

class Game {
    Handler & handler;
    Map map;
    GameState state;
    long score;
    unsigned int wave;
    unsigned long gold;
    int playerHP;
    int numberOfTroops;
    std::vector < Troop > troops;
    std::vector < Tower > towers;
    std::vector < Troop > attackingWave;


    std::vector < Troop > generateAttackGroup ();

public:
    Game ( Handler & handler );

    ~Game ();

    /**
     *
     * changes gameState acording to the actual one
     * */
    void setGameState ( const GameState & state );

    std::ostream & print ( std::ostream & os );

    void executeRound ();

    bool upgradeTower ( const TilePos & pos );

    GameState & getGameState ();

    bool loadGame ( const std::string & input );

    bool saveGame ( const std::string & output ) const;

    const std::vector < Tower > & getTowers () const;


};


#endif //TOWERDEFENCE_GAME_H
