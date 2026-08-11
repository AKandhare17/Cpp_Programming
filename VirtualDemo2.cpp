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
        cout<<"Inside Base->sun()"<<endl;
     }
     void bun()
     {
        cout<<"Inside Base->bun"<<endl;
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

   Base * bp1= new Derived();//Upcasting
   bp1->fun();//Base->fun()
   bp1->gun();//Base->gun()
   bp1->sun();//Base->sun()
  // bp1->run();//Error(Not Allowed)
    //bp1->mun();//Error(Not Allowed)
     bp1->bun();//Base->bun()


    return 0;
}