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
    int Substraction(int a,int b)//Concrete function(completing parent class function)
    {
        return a-b;
    }
     int Multiplication(int a,int b)//Concrete function
    {
        return a*b;
    }

};
int main()
{
    int iRet=0;
    Base *bp= new Derived();//upcasting
  iRet=bp->Addition(23,55);
  cout<<"Addition:"<<iRet<<endl;
  iRet=bp->Substraction(23,55);
  cout<<"Subtraction:"<<iRet<<endl;
//iRet=bp->Multiplication(23,55);//Error[not alloewd]

    return 0;
}