#define CATCH_CONFIG_MAIN // This tells Catch to provide a main() - only do this in one cpp file
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include "catch.h"
#include "vectorExtras.h"

using namespace std;

TEST_CASE("Testing input 4", "[input4]")
{
    vector<string> output, solution;
    read(output, "output4.txt");
    read(solution, "mysolution4.txt");

    REQUIRE(output == solution);
}