%{
#include"y.tab.h"
%}
%%
[0-9]+ return NUMBER;
[a-zA-Z] return ID;
[\t];
[\n]; 
. return yytext[0];
%%
int yywrap()
{
return 0;
}
