#include<iostream>
using namespace std;
class Base
{
    public:
     int i,j;
     void fun()
     {
        cout<<"Inside Base->fun()"<<endl;
     }
     void gun()
     {
        cout<<"Inside Base->gun()"<<endl;

     }
     void sun()
     {
        cout<<"Inside base->sun()"<<endl;
     }
     void bun()
     {
        cout<<"Inside base->bun"<<endl;
     }
};

class Derived : public Base
{
    public:
     int x;
     void gun()
     {
        cout<<"inside Derived->gun()\n";
     }
      void sun()
     {
        cout<<"inside Derived->sun()\n";
     }
      void run()
     {
        cout<<"inside Derived->run()\n";
     }
      void mun()
     {
        cout<<"inside Derived->mun()\n";
     }
};

int main()
{
   Base *bp=new Base();//No-casting
   Derived *dp = new Derived();//No-casting
   Base * bp1= new Derived();//Upcasting
   //Derived *dp1= new Base();//Error (not possible(Downcasting))
    return 0;
}