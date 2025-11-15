#include<iostream>

using namespace std;
class Arithmatic
{
    public:
     int iNo1,iNo2;

     Arithmatic()
     {
        iNo1=0;
        iNo2-0;
     }
     Arithmatic(int a,int b)
     {
        iNo1=a;
        iNo2=b;
     }

     int Addition()
     {
        int iAns=0;
        iAns=iNo2+iNo1;
        return iAns;
     }
     int Substraction()
     {
        int iAns=0;
        iAns=iNo1-iNo2;
        return iAns;

     }
};

int main()
{
    Arithmatic obj(11,10);
    int iRet=0;
    iRet=obj.Addition();
    cout<<"Addition is:\n"<<iRet;
     iRet=obj.Substraction();
    cout<<"Substraction is is:\n"<<iRet;



    return 0;
}