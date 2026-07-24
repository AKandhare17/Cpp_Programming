#include<iostream>
using namespace std;
class Demo
{
    public:
    int i,j;
    static int x;

    Demo()
    {
        this->i=0;
        this->j=0;
        
    }
    Demo(int A,int B)
    {
        this->i=A;
        this->j=B;
    }

    void fun() //(Demo*const this)//Internals
    {
        cout<<"Inside Demo->Fun()";
        cout<<"Value of i is:"<<this->i<<endl;
         cout<<"Value of j is:"<<this->j<<endl;
          cout<<"Value of x is:"<<this->x<<endl;//Acsess to static variable with this

    }

    static void gun()
    {
        cout<<"Inside Demo static Gun()"<<endl;
    }

};
int Demo:: x=11;

int main()
{
    Demo::gun();
  cout<<"value of X:"<<Demo::x<<endl;

  Demo obj(10,20);
  obj.fun();  
  
  return 0;
}