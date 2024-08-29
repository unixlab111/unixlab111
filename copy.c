#include<stdio.h>
#include<stdlib.h>
int main(int argc,char ** argv)
{
FILE * source,* destination;
char str[100];
if(argc!=3)
{
printf("usage: command source filename destination file\n");
exit(0);
}
source=fopen(argv[1],"r");
if(source==NULL)
{
printf("source file doesnot exist\n");
exit(0);
}
destination=fopen(argv[2],"w");
if(destination==NULL)
{
printf("destiny doesnt exist");
exit(0);
}
while(fgets(str,100,source)!=NULL)
{
fprintf(destination,"%s",str);
}
fclose(source);
fclose(destination);
printf("copied");
return 0;
}
