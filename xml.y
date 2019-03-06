
%{

#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE *yyin;

void yyerror(const char *s);

%}

%token T_ID
%token T_DOUBLE_QUOTE
%token T_COLON

%%

%%

