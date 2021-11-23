#define CATCH_CONFIG_MAIN // This tells Catch to provide a main() - only do this in one cpp file
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include "catch.h"
#include "vectorExtras.h"

using namespace std;

TEST_CASE("Testing input 3", "[input3]")
{
    vector<string> output, solution;
    read(output, "output3.txt");
    read(solution, "mysolution3.txt");

    REQUIRE(output == solution);
}