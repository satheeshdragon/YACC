%{

#include<stdio.h>

%}

%token NUM ID

%left '+' '-'

%left '*' '/'

%nonassoc UMINUS

%%

exp: exp '+' exp| exp '-' exp| exp '/' exp| exp '*' exp
| '-' exp %prec UMINUS

| '(' exp ')'

| NUM

| ID

;

%%

int main()

{

printf(“\n Enter an expression:”);

yyparse();

printf(“\n valid expression”);

return 0;

}

void yyerror(){

printf(“\n Invalid expression”);

exit(0);

} 
