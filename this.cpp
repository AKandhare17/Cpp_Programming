#include<iostream>

using namespace std;
class Arithmatic
{
    public:
     int iNo1,iNo2;

     Arithmatic()
     {
        cout<<"Inside Default constructor.\n";
        this->iNo1=0;
       this->iNo2-0;
     }
     Arithmatic(int a,int b)
     {
         cout<<"Inside parameterised constructor.\n";
        this-> iNo1=a;
        this->iNo2=b;
     }

     int Addition()
     {
        int iAns=0;
        iAns=this->iNo2+this->iNo1;
        return iAns;
     }
     int Substraction()
     {
        int iAns=0;
        iAns=this->iNo1-this->iNo2;
        return iAns;

     }
};

int main()
{
    Arithmatic obj(11,10);
    Arithmatic obj1(21,20);
    int iRet=0;
    iRet=obj.Addition();
    cout<<"Addition is:"<<iRet<<endl;
     iRet=obj.Substraction();
    cout<<"Substraction is is:"<<iRet<<endl;
    iRet=obj1.Addition();
    cout<<"Addition is:"<<iRet<<endl;
     iRet=obj1.Substraction();
    cout<<"Substraction is is:"<<iRet<<endl;




    return 0;
}