#include<iostream>
using namespace std;
//this is example of single level inheritance
class Base//8 bytes
{
   public:
    int i,j;
    void fun()
    {
        cout<<"Inside Base->fun()"<<endl;
    }

};
class Derived :public Base//8+4=12 bytes
{
public:
 int x;
 void gun()
 {
    cout<<"Inside Derived->gun()"<<endl;
 }
};
int main()
{
    Base bobj;
    Derived dobj;

    cout<<"Size of Base class:"<<sizeof(bobj)<<endl;
    cout<<"Size of Derived class:"<<sizeof(dobj)<<endl;

    bobj.fun();
    dobj.fun();
    dobj.gun();
    return 0;
}