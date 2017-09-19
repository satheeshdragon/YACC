%{
#include <stdio.h>
%}
%token NAME NUMBER
%%
statement:	NAME '=' expression	
{ printf("pretending to assign %s the value %d\n", $1, $3); }
	;
|	expression		{ printf("= %d\n", $1); }
	;
expression:	expression '+' NUMBER	{ $$ = $1 + $3;
					printf ("yacc result - Recognized '+' expression.\n");
					}
|	expression '-' NUMBER	{ $$ = $1 - $3; 
					printf ("yacc result - Recognized '-' expression.\n");
					}
	|	NUMBER			{ $$ = $1; 
					printf ("yacc result - Recognized a number.\n");
					}
	;
%%
int main (void) {
	return yyparse();
	}

int yyerror (char *msg) {
	return fprintf (stderr, "YACC: %s\n", msg);
	}

