#include<iostream>
//As  cpp is influenced  by c syntactically this is allowed
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
    printf("Addition is:%d\n",iRet);
     iRet=obj.Substraction();
    printf("Substraction is is:%d\n",iRet);



    return 0;
}