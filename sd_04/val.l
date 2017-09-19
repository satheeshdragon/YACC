%{
#include “y.tab.h”
%}
%%

[_a-zA-Z][_a-zA-Z0-9]* return ID;
[0-9]+
. return yytext[0];
\n return 0;
%%

int yywrap()
{
return 1;
}
