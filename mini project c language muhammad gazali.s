#include <stdio.h>
#include<string.h>
struct dict{
    char name[50];
    char num[11];
    char mail[35];
   
}sp[25];
int h,i=1;

int main()
{
    printf(" telephone book\n");
    int c,y,addcon,a=1;
    int choice,v,pos;
    char b[50];
    strcpy(sp[1].name,"yasin");strcpy(sp[1].num,"1234567890");strcpy(sp[1].mail,"yasin1234@gmail.com");i++;
    strcpy(sp[2].name,"rohan");strcpy(sp[2].num,"3434349999");strcpy(sp[2].mail,"rohan343@gmail.com");i++;
    strcpy(sp[3].name,"achu");strcpy(sp[3].num,"8783893989");strcpy(sp[3].mail,"achu8783@gmail.com");i++;
    strcpy(sp[4].name,"balu");strcpy(sp[4].num,"1212121233");strcpy(sp[4].mail,"balu1212@gmail.com");i++;
    strcpy(sp[5].name,"arun");strcpy(sp[5].num,"8384783788");strcpy(sp[5].mail,"arun8384@gmail.com");
    i++;
      strcpy(sp[6].name,"amal");strcpy(sp[6].num,"7376737676");strcpy(sp[4].mail,"amal2344@gmail.com");i++;
       strcpy(sp[7].name,"ahas");strcpy(sp[7].num,"53453553566");strcpy(sp[4].mail,"ahas1233@gmail.com");i++;
        strcpy(sp[8].name,"fasal");strcpy(sp[8].num,"63635535355");strcpy(sp[4].mail,"fasal3434@gmail.com");i++;
         strcpy(sp[9].name,"alen");strcpy(sp[9].num,"62625535553");strcpy(sp[4].mail,"alen2222@gmail.com");i++;
         strcpy(sp[10].name,"anna");strcpy(sp[10].num,"6464546663");strcpy(sp[4].mail,"anna2232@gmail.com");i++;
   while(a==1)
      {
          printf("1--->view a contact\n2--->delete a contact\n3--->add a contact\n4--->find a contact");
   printf("\n enter choice:");
   
      scanf("%d",&choice);
      
    for (int j=0;j<140;j++){
    printf("_");}
    if(choice<=4){
   switch(choice)
   {
      case 1:
      printf("\ncontact no\tname\t\tnumber\t\t\temail");
      for(int n=1;n<i;n++)
      {
          
          printf("\n%d\t%s\t\t%s\t\t%s",n,sp[n].name,sp[n].num,sp[n].mail);
      }
      printf("\n");
      for (int j=0;j<140;j++){
    printf("_");}
    break;   
   
   case 2:
   printf("\nenter the contact no you need to remove:");
   
   scanf("%d",&h);
   if(h>=i)
   {
       printf(" invalid contact no");
   }
   else{
   for (c = h ; c <=i ; c++)
         {
             
         strcpy(sp[c].name,sp[c+1].name);strcpy(sp[c].num,sp[c+1].num);strcpy(sp[c].mail,sp[c+1].mail);
         }
         i--;
         for(int n=1;n<i;n++)
      {
          printf("\n%d\t%s\t\t%s\t%s",n,sp[n].name,sp[n].num,sp[n].mail);
      }}
      printf("\n");
      for (int j=0;j<140;j++){
    printf("_");}
      break;
      case 3:
      printf("\nadd contact no");
      printf("\nenter no of person to add:");
      scanf("%d",&addcon);
      for (v=i;v<i+addcon;++v)
      {
          printf("\nenter name:");
          scanf("%s",sp[v].name);
          printf("\nenter number:");
          scanf("%s",sp[v].num);
          printf("\nenter mail:");
          scanf("%s",sp[v].mail);
      }
      printf("\n");
      for (int j=0;j<140;j++){
    printf("_");}
      i=v;
      printf("\nafter changing\n");
      printf("contact no\tname\t\tnumber\t\t\temail");
      for(int n=1;n<i;n++)
      {
         
          printf("\n%d\t%s\t\t%s\t\t%s",n,sp[n].name,sp[n].num,sp[n].mail);
      }
      printf("\n");
      for (int j=0;j<140;j++){
    printf("_");}
      break;
      
  
   case 4:
   printf("\nenter the contact no.:");
   scanf("%d",&pos);
   if(pos>=i)
   {
       printf("invalid contact no");
   }
   else{
   for (int y=pos-1;y<pos;y++)
   {
   printf("name:%s\n",sp[pos].name);
   printf("number:%s\n",sp[pos].num);
   printf("email id:%s\n",sp[pos].mail);
   }}
    printf("\n");
      for (int j=0;j<140;j++){
    printf("_");}
      break;
   }
    }
    else{
        printf("\nchoice is invalid");
    }
   printf("\npress 5 TO continue 6 for exit");
   scanf("%d",&a);
}
