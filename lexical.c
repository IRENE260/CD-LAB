#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
iskeyword(char buffer[]){
 char keywords[32][10]={"auto","break","case","char","const","continue","do","double","else","enum","break","case","char","const","continue","default",
"do","double","else","enum","extern","float","for","goto",
"if","int","long","register","return","short","signed",
"sizeof","static","struct","switch","typedef","union",
"unsigned","void","volatile","while"};
int i,flag=0;
for(i=0;i<32;++i){
if(strcmp(keywords[i],buffer)==0){
flag=1;
break;
}
}
return flag;
}
int main()
{
  char ch,buffer[15],operators[]="+-*/%";
  FILE *fp;
  int i,j=0;
  fp=fopen("program.txt","r");
  if(fp=-1){
   printf("ERROR WHILE OPENING THE FILE");
   exit(0);
  } 
  while((ch=fgetc(fp))!=EOF)
  {
      for(i=0;i<6;++i)
      {
              if(ch==operators[i])
              {
                   printf("%c is an operator",ch);
               }
                   if(isalnum(ch))
                   {
                       buffer[j++]=ch;
                    }
                    else if((ch==' '|| ch=='\n') && (j!=0))
                      {
                          buffer[j]='\0';
                          j=0;
                       }
                       if(iskeyword(buffer)==1)
                       
                       printf("%s is keyword",buffer);
                       else
                       printf("%s is inidentifier",buffer);
                       }
                     }  
                     
                      fclose(fp);
                      return 0;
                 }                            
