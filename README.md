# NasaRover

[![Coverage Status](https://coveralls.io/repos/github/kimooz/nasa_rover/badge.svg?branch=master)](https://coveralls.io/github/kimooz/nasa_rover?branch=master)

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. 

This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

## Usage

Clone the project and run the following command


    $ git clone https://github.com/kimooz/nasa_rover.git


And then execute:

    $ ./bin/nasa_rover

## Test Input:
5 5

1 2 N

LMLMLMLMM

3 3 E

MMRMMRMRRM

## Test Output:

1 3 N

5 1 E

## rspec

run the test by

    $ rspec

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

