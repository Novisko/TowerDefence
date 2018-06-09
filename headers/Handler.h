//
// Created by honza on 7.5.18.
//

#ifndef TOWERDEFENCE_HANDLER_H
#define TOWERDEFENCE_HANDLER_H

#include "Game.h"
#include "Libraries.h"

class Game;

class Handler {
    std::string gameMessage;
    Game game;
    GameState state;


public:
    Handler ();

    ~Handler ();


    /**
     *
     * handles all user input through terminal
     *
     */
    void start ();


    /**
     * prints map + menu
     * */
    void print ();

    /**
     * prints map
     * */
    void printMap ();


    /**
     * prints menu
     *
     * */
    void printMainMenu () const;

    void printGameMenu () const;

    bool loadGame ( const std::string & fileName );

    bool saveGame ( const std::string & fileName ) const;

    std::string getMessage () const;

    void setMessage ( std::string & message );
};

#endif //TOWERDEFENCE_HANDLER_H
