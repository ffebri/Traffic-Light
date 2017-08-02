#include<at89x51.h>
char a[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
int i,j,k,l;
char b,c;
    
    void delay()
    {
    TMOD=0X10;
    TL1=0XFF;
    TH1=0XA5;
    TR1=1;
    while(TF1==0);
    TR1=0;
    TF1=0;
    }
   
    void delay1()
    {
    TMOD=0X01;
    TL0=0XFF;
    TH0=0XA5;
    TR0=1;
    while(TF0==0);
    TR0=0;
    TF0=0;
    }

    void display(char x)
    {
    for(j=x;j>=0;j--)
    {P0_0=!P0_0;
    for(i=0;i<=42;i++)
    {    P2=b;
        P3=c;
        delay();
        P1=a[j];    }
    }
    }
    
    void display1(char m)
    {
    for(k=m;k>=0;k--)
    {P0_0=!P0_0;
    for(l=0;l<=42;l++)
    {    delay1();
        P1=a[k];    }
    }
    }

    void green()
    {
                // FOR NORTH GREEN SIGNAL
        if(P0_2==0 & P0_3==1 & P0_4==1 & P0_5==1)
        {
            P2=0x0E;
            P3=0x1F;
            display1(9);
        }

                // FOR EAST GREEN SIGNAL
        if(P0_2==1 & P0_3==0 & P0_4==1 & P0_5==1)
        {
            P2=0x0D;
            P3=0x2F;
            display1(9);
        }
            
                // FOR SOUTH GREEN SIGNAL
        if(P0_2==1 & P0_3==1 & P0_4==0 & P0_5==1)
        {
            P2=0x0B;
            P3=0x4F;
            display1(9);
        }

                // FOR WEST GREEN SIGNAL
        if(P0_2==1 & P0_3==1 & P0_4==1 & P0_5==0)
        {
            P2=0x07;
            P3=0x8F;
            display1(9);
        }    
    }


void main()
{  

   EX0=1;
   EA=1;
   IT0=1;

while(1)
{        // FOR NORTH GREEN SIGNAL
    b=P2=0x0E;
    c=P3=0x1F;
    display(9);
    
        // FOR EAST YELLOW SIGNAL
    b=P2=0x2D;
    c=P3=0x0F;
    display(2);

       // FOR EAST GREEN SIGNAL
    b=P2=0x0D;
    c=P3=0x2F;
    display(9);

       // FOR SOUTH YELLOW SIGNAL
    b=P2=0x4B;
    c=P3=0x0F;
    display(2);

       // FOR SOUTH GREEN SIGNAL
    b=P2=0x0B;
    c=P3=0x4F;
    display(9);

       // FOR WEST YELLOW SIGNAL
    b=P2=0x87;
    c=P3=0x0F;
    display(2);

       // FOR WEST GREEN SIGNAL
    b=P2=0x07;
    c=P3=0x8F;
    display(9);

       // FOR NORTH YELLOW SIGNAL
    b=P2=0x1E;
    c=P3=0x0F;
    display(2);
}
}