//
// Created by honza on 1.6.18.
//
#include "Libraries.h"
#include "GameState.h"
#include "Handler.h"


Handler::Handler():state(MENU),game(*this){}

Handler::~Handler() {

}

void Handler::start() {

    printMainMenu();

    while(true){
        int inputValue = 0;
        switch (game.getGameState()){

            case MENU:
            std::cin >> inputValue;
                if(inputValue < 1){
                    continue;
                }


                break;
            case PREPARATION:
                break;
            case SIEGE:
                break;
            default:;


        }



        break;
    }

}

void Handler::print() {

}

void Handler::printMap() {

}

void Handler::printMainMenu() const {
    std::cout << " ---> [ 1 ] Start new game" << std::endl;
    std::cout << " ---> [ 2 ] Load Game" << std::endl;
    std::cout << " ---> [ 3 ] Quit" << std::endl;

}

void Handler::printGameMenu() const {

}

bool Handler::loadGame( const std::string & fileName ) {
    return false;
}

bool Handler::saveGame( const std::string & fileName ) const {
    return false;
}

std::string  Handler::getMessage() const {
    return this->gameMessage;
}

void Handler::setMessage ( std::string & message ) {
    this->gameMessage = message;
}


