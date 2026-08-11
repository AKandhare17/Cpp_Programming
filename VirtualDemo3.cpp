#include<iostream>
using namespace std;
#pragma pack(1)
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
    virtual  void sun()
     {
        cout<<"Inside Base->sun()"<<endl;
     }
    virtual void bun()
     {
        cout<<"Inside Base->bun()"<<endl;
     }
};

#pragma pack(1)
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
    cout<<"Sizeof Base:"<<sizeof(Base)<<endl;//16
    cout<<"Sizeof Derived:"<<sizeof(Derived)<<endl;//20
   bp1->fun();//Base->fun()
   bp1->gun();//Base->gun()
   bp1->sun();//Derived->sun()[overriding]
  // bp1->run();//Error(Not Allowed)
    //bp1->mun();//Error(Not Allowed)
     bp1->bun();//Base->bun()


    return 0;
}