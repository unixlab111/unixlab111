#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<setjmp.h>
static jmp_buf buf,buf1;
char cmd[20];
void read();

void exe();
int main()
{
if(setjmp(buf)==0)
read();
else
printf("end of the program");
return 0;
}
void read()
{
printf("enter a command ");
scanf("%s",cmd);
if(setjmp(buf1)==0)
exe();
else
printf("invalid");
longjmp(buf,1);
}
void exe()
{
if(system(cmd)!=0)
longjmp(buf1,1);
}
