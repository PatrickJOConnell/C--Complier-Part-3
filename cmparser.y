%{
/* 
Name: Patrick O'Connell
Class: CS 473 
Project: Part Three
netID: oconne16
Sign: Gemini
*/



#include <stdio.h>
#include <string.h>
#include <stdlib.h>



/* external function prototypes */
extern int yylex();
extern int initLex(int, char **);



/* external global variables */

extern int              yydebug;
extern int              yylineno;


/* function prototypes */
void    yyerror(const char *);

/* global variables */

%}

/* YYSTYPE */

/* terminals */
/* Start adding token names here */
/* Your token names must match Project 1 */
/* The file cmparser.tab.h was gets generated here */

%token TOK_ID
%token TOK_NUM
%token TOK_ELSE
%token TOK_IF
%token TOK_RETURN
%token TOK_VOID
%token TOK_INT
%token TOK_WHILE
%token TOK_PLUS
%token TOK_MINUS
%token TOK_MULT
%token TOK_DIV
%token TOK_LT
%token TOK_LE

%token TOK_GT
%token TOK_GE
%token TOK_EQ
%token TOK_NE
%token TOK_ASSIGN
%token TOK_SEMI
%token TOK_COMMA
%token TOK_LPAREN
%token TOK_RPAREN
%token TOK_LSQ
%token TOK_RSQ
%token TOK_LBRACE
%token TOK_RBRACE
%token TOK_ERROR


/* associativity and precedence */
/* specify operator precedence (taken care of by grammar) and associatity here __uncomment */
//%nonassoc error

%left TOK_MULT
%left TOK_DIV
%left TOK_PLUS
%left TOK_MINUS

%nonassoc TOK_LT
%nonassoc TOK_GT
%nonassoc TOK_LE
%nonassoc TOK_GE

%nonassoc TOK_IF
%nonassoc TOK_ELSE

%left TOK_EQ TOK_NE
%right TOK_ASSIGN

%nonassoc error

%expect 1

/* Begin your grammar specification here */

%%

Start: Declarations;

Declarations: Var_declarations Fun_declarations;

Var_declarations: Var_declarations Var_declaration | ;

Var_declaration: Type_specifier TOK_ID TOK_SEMI | Array_declaration;

Array_declaration: Type_specifier TOK_ID TOK_LSQ Additive_expression TOK_RSQ TOK_SEMI;

Type_specifier: TOK_INT |TOK_VOID;

Fun_declarations: Fun_declarations Fun_declaration | Fun_declaration;

Fun_declaration: Type_specifier TOK_ID TOK_LPAREN Params TOK_RPAREN Compound_stmt;

Params: Param_list | TOK_VOID;

Param_list: Param_list TOK_COMMA Param | Param;

Param:  Type_specifier TOK_ID | Type_specifier TOK_ID TOK_LSQ TOK_RSQ;

Compound_stmt:  TOK_LBRACE Local_declarations Statements TOK_RBRACE;

Local_declarations : Local_declarations  Var_declaration | ;

Statements: Statement Statements| ;

Statement: Expression TOK_SEMI | TOK_SEMI | Compound_stmt |Selection_stmt| Selection_stmt2 |Iteration_stmt | Return_stmt;

Selection_stmt: TOK_IF TOK_LPAREN Expression TOK_RPAREN Statement;

Selection_stmt2: TOK_IF TOK_LPAREN Expression TOK_RPAREN Statement TOK_ELSE Statement;

Iteration_stmt: TOK_WHILE TOK_LPAREN Expression TOK_RPAREN Statement;

Return_stmt: TOK_RETURN Expression TOK_SEMI | TOK_RETURN TOK_SEMI;

Expression:  Var TOK_ASSIGN Expression | Simple_expression;

Var:  TOK_ID | TOK_ID TOK_LSQ Expression TOK_RSQ;

Simple_expression: Additive_expression Rel_op Additive_expression | Additive_expression;

Rel_op: TOK_EQ | TOK_NE | TOK_LT | TOK_LE | TOK_GT | TOK_GE;

Additive_expression: Additive_expression Add_op Term | Term;

Add_op: TOK_PLUS | TOK_MINUS;

Term: Term Mult_op Factor | Factor;

Mult_op: TOK_MULT | TOK_DIV;

Factor: TOK_LPAREN Expression TOK_RPAREN | Var | Call | TOK_NUM;

Call: TOK_ID TOK_LPAREN Args TOK_RPAREN;

Args: | Args_list;

Args_list: Args_list TOK_COMMA Expression | Expression;


%%
void yyerror(char const *s) {
	fprintf(stderr, "Line %d: %s\n", yylineno, s);
}

int main(int argc, char **argv) {

	initLex(argc, argv);

#ifdef YYLLEXER
	while (gettok() != 0); //gettok returns 0 on EOF
	return;
#else
	yyparse();

#endif

}


