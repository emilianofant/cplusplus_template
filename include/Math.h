#include <string>

class Math
{
private:
    
public:
    Math(int n);
    ~Math();

    std::string state;
    int myNumber;
    
    int Add(int a);
    int Subs(int a);
    int getMyNumber(); 
};
