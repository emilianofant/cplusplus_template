#include "Math.h"

Math::Math(int n) : myNumber(n)
{
    state = "init";
}

Math::~Math()
{
}

int Math::Add(int a)
{
    return myNumber + a;
}

int Math::Subs(int a)
{
    return myNumber - a;
}

int Math::getMyNumber()
{
    return myNumber;
}
