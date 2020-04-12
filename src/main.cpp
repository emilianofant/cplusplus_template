#include <string>
#include <iostream>
#include "Math.h"

#ifndef UNIT_TESTING
int main () 
{
    Math* math;

    math = new Math(7);

    int addResult = math->Add(3);
    int subsResult = math->Subs(2);
    int getMyNumber = math->getMyNumber();

    std::cout << addResult << "\n" 
        << subsResult << "\n"
        << getMyNumber << "\n";

    return 0;    
}
#endif