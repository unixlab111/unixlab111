#include<stdio.h>
#include<stdlib.h>
int main(int argc,char*argv[])
{
char str[100];
FILE*ip;
if(argc!=2)
{
puts("usage:command filename");
exit(0);
}
ip=fopen(argv[1],"r");
if(ip==NULL)
{
puts("file doesnot exist ");
exit(0);
}
while(fgets(str,sizeof(str),ip)!=NULL)
{
printf("%s",str);
}
fclose(ip);
return 0;
}
