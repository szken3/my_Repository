//SRM 484 div2 Level 1

#include <stdio.h>
#include <string.h>

int main(){
  int ans;
  char* answer = "NNNN";
  ans = theNumber(answer);
  printf("%d",ans);
return 0;
}

int theNumber(char* answer){
  int num = 1;
  if(answer[0] == 'N'){
    num = num + 8;
  }
  if(answer[1] == 'N'){
    num = num + 4;
  }
  if(answer[2] == 'N'){
    num = num + 2;
  }
  if(answer[3] == 'N'){
    num = num + 1;
  }
  return num;
}
