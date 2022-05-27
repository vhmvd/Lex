%{
  #include<stdio.h>

  #define NUM 1
  #define IDD 2
  #define ERR 3
%}

DIGIT [0-9]
ID    [a-z][a-z0-9]*

%%
{DIGIT} return NUM;
{ID}    return IDD;
.*      return ERR;
%%

int yywrap()
{
  return 1;
}

int main()
{
  int token = yylex();
  if(token==IDD || token==NUM)
    printf("Acceptable\n");
  else if(token==ERR)
    printf("Unacceptable\n");
  return 0;
}