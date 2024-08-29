#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/stat.h>
struct stat filestat;
int main(int argc,char* argv[])
{
if(argc!=3)
{
printf("pass the argument\n");
return 1;
}
int a=link(argv[1],argv[2]);
if(a!=-1)
{
printf("link copied succesfully");
printf("%s is linked to %s\n",argv[2],argv[1]);
}
else
{
printf("link unsuccesfull\n");
return 1;
}
if(stat(argv[1],&filestat)<0)
{
perror("stat");
exit(1);
}
printf("number of hard link to %s : %lu\n",argv[1],filestat.st_nlink);
printf("let unlink the file%s\n",argv[2]);
int b=unlink(argv[2]);
if(b!=-1)
{
printf("unlink is succesfull\n");
printf("%s is unlinked from %s\n",argv[2],argv[1]);
}
else
{
printf("unlink is unsuccessfull\n");
return 1;
}if(stat(argv[1],&filestat)<0)
{
perror("stat");
exit(1);
}

printf("number of hard link after unlink to %s : %lu\n",argv[1],filestat.st_nlink);
return 0;
}
