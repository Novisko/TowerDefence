# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/honza/MyPrograms/clion-2017.3.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/honza/MyPrograms/clion-2017.3.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/honza/Skola/BI-PA2/TowerDefence

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TowerDefence.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TowerDefence.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TowerDefence.dir/flags.make

CMakeFiles/TowerDefence.dir/classes/main.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/main.cpp.o: ../classes/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TowerDefence.dir/classes/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/main.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/main.cpp

CMakeFiles/TowerDefence.dir/classes/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/main.cpp > CMakeFiles/TowerDefence.dir/classes/main.cpp.i

CMakeFiles/TowerDefence.dir/classes/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/main.cpp -o CMakeFiles/TowerDefence.dir/classes/main.cpp.s

CMakeFiles/TowerDefence.dir/classes/main.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/main.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/main.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/main.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/main.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/main.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/main.cpp.o


CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o: ../classes/EmptyTile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/EmptyTile.cpp

CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/EmptyTile.cpp > CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.i

CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/EmptyTile.cpp -o CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.s

CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o


CMakeFiles/TowerDefence.dir/classes/Game.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/Game.cpp.o: ../classes/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TowerDefence.dir/classes/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/Game.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/Game.cpp

CMakeFiles/TowerDefence.dir/classes/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/Game.cpp > CMakeFiles/TowerDefence.dir/classes/Game.cpp.i

CMakeFiles/TowerDefence.dir/classes/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/Game.cpp -o CMakeFiles/TowerDefence.dir/classes/Game.cpp.s

CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/Game.cpp.o


CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o: ../classes/Handler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/Handler.cpp

CMakeFiles/TowerDefence.dir/classes/Handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/Handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/Handler.cpp > CMakeFiles/TowerDefence.dir/classes/Handler.cpp.i

CMakeFiles/TowerDefence.dir/classes/Handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/Handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/Handler.cpp -o CMakeFiles/TowerDefence.dir/classes/Handler.cpp.s

CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o


CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o: ../classes/LongRangeTower.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/LongRangeTower.cpp

CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/LongRangeTower.cpp > CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.i

CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/LongRangeTower.cpp -o CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.s

CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o


CMakeFiles/TowerDefence.dir/classes/Map.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/Map.cpp.o: ../classes/Map.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/TowerDefence.dir/classes/Map.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/Map.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/Map.cpp

CMakeFiles/TowerDefence.dir/classes/Map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/Map.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/Map.cpp > CMakeFiles/TowerDefence.dir/classes/Map.cpp.i

CMakeFiles/TowerDefence.dir/classes/Map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/Map.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/Map.cpp -o CMakeFiles/TowerDefence.dir/classes/Map.cpp.s

CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/Map.cpp.o


CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o: ../classes/SplashTower.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/SplashTower.cpp

CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/SplashTower.cpp > CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.i

CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/SplashTower.cpp -o CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.s

CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o


CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o: ../classes/Tile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/Tile.cpp

CMakeFiles/TowerDefence.dir/classes/Tile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/Tile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/Tile.cpp > CMakeFiles/TowerDefence.dir/classes/Tile.cpp.i

CMakeFiles/TowerDefence.dir/classes/Tile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/Tile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/Tile.cpp -o CMakeFiles/TowerDefence.dir/classes/Tile.cpp.s

CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o


CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o: ../classes/TilePos.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/TilePos.cpp

CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/TilePos.cpp > CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.i

CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/TilePos.cpp -o CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.s

CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o


CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o: ../classes/Tower.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/Tower.cpp

CMakeFiles/TowerDefence.dir/classes/Tower.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/Tower.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/Tower.cpp > CMakeFiles/TowerDefence.dir/classes/Tower.cpp.i

CMakeFiles/TowerDefence.dir/classes/Tower.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/Tower.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/Tower.cpp -o CMakeFiles/TowerDefence.dir/classes/Tower.cpp.s

CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o


CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o: ../classes/Troop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/Troop.cpp

CMakeFiles/TowerDefence.dir/classes/Troop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/Troop.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/Troop.cpp > CMakeFiles/TowerDefence.dir/classes/Troop.cpp.i

CMakeFiles/TowerDefence.dir/classes/Troop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/Troop.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/Troop.cpp -o CMakeFiles/TowerDefence.dir/classes/Troop.cpp.s

CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o


CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o: ../classes/TroopTile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/TroopTile.cpp

CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/TroopTile.cpp > CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.i

CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/TroopTile.cpp -o CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.s

CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o


CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o: ../classes/WallTile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/WallTile.cpp

CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/WallTile.cpp > CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.i

CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/WallTile.cpp -o CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.s

CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o


CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o: CMakeFiles/TowerDefence.dir/flags.make
CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o: ../classes/TowerTile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o -c /home/honza/Skola/BI-PA2/TowerDefence/classes/TowerTile.cpp

CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/honza/Skola/BI-PA2/TowerDefence/classes/TowerTile.cpp > CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.i

CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/honza/Skola/BI-PA2/TowerDefence/classes/TowerTile.cpp -o CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.s

CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.requires:

.PHONY : CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.requires

CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.provides: CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.requires
	$(MAKE) -f CMakeFiles/TowerDefence.dir/build.make CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.provides.build
.PHONY : CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.provides

CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.provides.build: CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o


# Object files for target TowerDefence
TowerDefence_OBJECTS = \
"CMakeFiles/TowerDefence.dir/classes/main.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/Game.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/Map.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o" \
"CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o"

# External object files for target TowerDefence
TowerDefence_EXTERNAL_OBJECTS =

TowerDefence: CMakeFiles/TowerDefence.dir/classes/main.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/Game.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/Map.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o
TowerDefence: CMakeFiles/TowerDefence.dir/build.make
TowerDefence: CMakeFiles/TowerDefence.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable TowerDefence"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TowerDefence.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TowerDefence.dir/build: TowerDefence

.PHONY : CMakeFiles/TowerDefence.dir/build

CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/main.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/EmptyTile.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/Game.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/Handler.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/LongRangeTower.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/Map.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/SplashTower.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/Tile.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/TilePos.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/Tower.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/Troop.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/TroopTile.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/WallTile.cpp.o.requires
CMakeFiles/TowerDefence.dir/requires: CMakeFiles/TowerDefence.dir/classes/TowerTile.cpp.o.requires

.PHONY : CMakeFiles/TowerDefence.dir/requires

CMakeFiles/TowerDefence.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TowerDefence.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TowerDefence.dir/clean

CMakeFiles/TowerDefence.dir/depend:
	cd /home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/honza/Skola/BI-PA2/TowerDefence /home/honza/Skola/BI-PA2/TowerDefence /home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug /home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug /home/honza/Skola/BI-PA2/TowerDefence/cmake-build-debug/CMakeFiles/TowerDefence.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TowerDefence.dir/depend

