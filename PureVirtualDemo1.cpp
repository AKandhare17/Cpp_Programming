#include<iostream>
using namespace std;
#pragma pack(1)
class Base
{
    public:
     int i,j;
     int Addition(int ino1,int ino2)//Concrete function
     {
        return ino1+ino2;
     }
     virtual int Substraction(int ino1,int ino2)=0;//Abstract function
};
#pragma pack(1)
class Derived:public Base
{
    public:
    int x;

};
int main()
{
    //Base *bp= new Derived();//upcasting(cannot instantiate Base class directly)[Error]

    return 0;
}