#include <iostream>
#include <string>
#include "greeting.h"

int main(int argc, char *argv[])
{
    std::string name;
    if (argc <= 1)
    {
        name = "World";
    }
    else
    {
        name = argv[1];
    }
    std::cout << getGreeting(name) << std::endl;
    return 0;
}