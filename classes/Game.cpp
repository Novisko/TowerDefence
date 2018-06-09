//
// Created by honza on 1.6.18.
//

#include <GameState.h>
#include <TilePos.h>
#include <Game.h>
#include <SplashTower.h>
#include <LongRangeTower.h>
#include <TowerTile.h>
#include "Libraries.h"
#include "Troop.h"
#include "Map.h"
#include "Handler.h"

class Handler;

Game::Game ( Handler & handler ) : handler ( handler ), map ( 0, 0 ), state ( MENU ), score ( 0 ), wave ( 0 ),
                                   gold ( 500 ), playerHP ( 50 ), numberOfTroops ( 10 ) {
    troops.push_back ( Troop ( '&', ( unsigned int ) 70, 50 ));
    troops.push_back ( Troop ( '$', ( unsigned int ) 100, 70 ));
    troops.push_back ( Troop ( '@', ( unsigned int ) 120, 100 ));

    towers.push_back ( Tower ());
    towers.push_back ( SplashTower ());
    towers.push_back ( LongRangeTower ());

}

Game::~Game () {}

void Game::setGameState ( const GameState & state ) {
    this->state = state;
}

std::ostream & Game::print ( std::ostream & os ) {
    os << "score: " << score << "   " << "gold: " << gold << std::endl;
    os << map << std::endl;
    return os;
}

void Game::executeRound () {
    attackingWave = generateAttackGroup ();
    int i = 0;
    if ( i < attackingWave.size ()) {
        map.changeTile ( std::make_shared < TroopTile > (
                TroopTile ( map.getStart (), std::make_shared < Troop > ( attackingWave[i] ))));
        i++;
    }
}

std::vector < Troop > Game::generateAttackGroup () {
    int numberOfTroops = 10 + ( int ) floor ( wave / 2 );
    std::vector < Troop > output;
    output.resize (( size_t ) numberOfTroops );

    for ( int i = numberOfTroops; i > 0; i-- ) {
        int index = i % ( int ) troops.size ();
        Troop troop = troops[index];
        output.push_back ( troop );
    }
    return output;
}

const std::vector < Tower > & Game::getTowers () const {
    return this->towers;
}

bool Game::upgradeTower ( const TilePos & pos ) {
    std::string message;
    try {
        std::shared_ptr < Tile > & r_tile = map.getTile ( pos );


        if ( r_tile->hasTower () || !r_tile->acceptsTower ()) {
            message = "Cannot build on this tile";
            handler.setMessage ( message );
            return false;
        }
        TowerTile *towerTile = dynamic_cast< TowerTile * > (r_tile.get ());

        if ( gold < towerTile->getTower ()->getCostToUpgrade ()) {
            message = "Not enough gold";
            handler.setMessage ( message );
            return false;
        }
        gold = gold - towerTile->getTower ()->getCostToUpgrade ();
        towerTile->getTower ()->upgrade ();


    } catch ( std::exception & e ) {
        message = "Tile out of map";
        handler.setMessage ( message );
        return false;
    }

}

GameState & Game::getGameState () {
    return state;
}
