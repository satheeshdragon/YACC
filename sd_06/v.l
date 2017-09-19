%{
#include"y.tab.h"
%}
%%
[0-9]+                  return NUMBER;
[a-zA-Z][a-zA-Z0-9]*    return ID;
.                       return yytext[0];
\n                      return 0;
%%
int yywrap()
{
return 0;
}
