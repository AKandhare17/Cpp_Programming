#include<iostream>
using namespace std;
class Base
{
    public:
     int i,j;

};

class Derived : public Base
{
    public:
     int x;

};

int main()
{
    cout<<"Sizeof Base:"<<sizeof(Base)<<endl;
    cout<<"Sizeof Derived:"<<sizeof(Derived)<<endl;

    return 0;
}