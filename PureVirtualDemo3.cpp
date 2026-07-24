#include<iostream>
using namespace std;

class Base
{
    private:
    virtual void fun1()
    {
        cout<<"Inside Base->fun1()\n";
    }
    public:
    void fun2()
    {
        fun1();//Calling fun1() in same (Base)class
    }

};
class Derived:public Base
{

    public:
    void fun1()
    {
        cout<<"Inside Derived->fun1()\n"; //Overrinding fun1()
    }
   

};
int main()
{
    Base *bp =new Derived();
    
    bp->fun2();//Base->fun2() call

    return 0;
}
/*In this program virtual function fun1() is private (only acessible in Base class)
we create public fun2() function and calling fun1()inside it in Base class 
we redefined fun1() in Derived class (overriding still occures)
when we call fun2().
*/