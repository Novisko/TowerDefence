cmake_minimum_required(VERSION 3.9)
project(TowerDefence)

set(CMAKE_CXX_STANDARD 11)


include_directories(headers classes)
add_executable(TowerDefence classes/main.cpp headers/Game.h headers/Tile.h headers/Troop.h headers/Tower.h headers/Handler.h
        headers/GameState.h headers/Map.h headers/TroopTile.h headers/EmptyTile.h headers/TilePos.h
        headers/LongRangeTower.h headers/SplashTower.h headers/WallTile.h classes/EmptyTile.cpp
        classes/Game.cpp classes/Handler.cpp classes/LongRangeTower.cpp
        classes/Map.cpp classes/SplashTower.cpp classes/Tile.cpp classes/TilePos.cpp classes/Tower.cpp classes/Troop.cpp
        classes/TroopTile.cpp classes/WallTile.cpp headers/Libraries.h headers/TowerTile.h classes/TowerTile.cpp)