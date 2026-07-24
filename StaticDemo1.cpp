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
    return 0;
}