//
// Created by honza on 1.6.18.
//

#include <Troop.h>
#include <TroopTile.h>
#include <string>

Troop::Troop ( const Troop & troop ) {
    this->placeHolder = troop.getPlaceHolder ();
    this->gold = troop.getGold ();
    this->HP = troop.getHP ();

}

Troop::Troop ( char placeHolder, unsigned int gold, int HP ) {
    this->placeHolder = placeHolder;
    this->gold = gold;
    this->HP = HP;
}

Troop::Troop () {}

Troop::~Troop () {}

void Troop::getAttacked ( int dmg ) {
    this->HP = HP - dmg;
}

bool Troop::isDead () const {
    return HP < 1;
}

char Troop::getPlaceHolder () const {
    return placeHolder;
}

void Troop::setPlaceHolder ( char placeHolder ) {
    this->placeHolder = placeHolder;
}

int Troop::getHP () const {
    return HP;
}

void Troop::setHP ( int HP ) {
    this->HP = HP;
}

unsigned int Troop::getGold () const {
    return gold;
}

void Troop::setGold ( unsigned int gold ) {
    this->gold = gold;
}

bool Troop::loadFromFile ( std::ifstream & os ) {

    try {
        std::string input;
        int dummy = 0;
        getline ( os, input, '\n' );
        if ( input.size () != 1 ) {
            return false;
        }
        this->placeHolder = input.front ();
        input.clear ();
        getline ( os, input, '\n' );
        dummy = std::stoi ( input );
        if ( dummy < 1 ) {
            return false;
        }
        input.clear ();
        getline ( os, input, '\n' );
        dummy = std::stoi ( input );
        if ( dummy < 1 ) {
            return false;
        }
        this->gold = ( unsigned int ) dummy;

    } catch ( std::exception & e ) {
        return false;
    }
    return true;
}

void Troop::safeToFile ( std::ofstream & os ) const {
    os << this->placeHolder << std::endl << this->HP << std::endl << this->gold << std::endl;
}
