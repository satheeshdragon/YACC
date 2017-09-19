%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUMBER ID
%left '+''-'
%left '*''/'
%left '('')'
%%
e:e'+'e|e'-'e|e'*'e|e'/'e|'('e')'|NUMBER|ID;
%%
main()
{
 printf("Enter the expression\n");
 yyparse();
 printf("valid expression\n");
}
yyerror()
{
 printf("invalid expression\n");
 exit(0);
}

