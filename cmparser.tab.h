/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     TOK_ID = 258,
     TOK_NUM = 259,
     TOK_ELSE = 260,
     TOK_IF = 261,
     TOK_RETURN = 262,
     TOK_VOID = 263,
     TOK_INT = 264,
     TOK_WHILE = 265,
     TOK_PLUS = 266,
     TOK_MINUS = 267,
     TOK_MULT = 268,
     TOK_DIV = 269,
     TOK_LT = 270,
     TOK_LE = 271,
     TOK_GT = 272,
     TOK_GE = 273,
     TOK_EQ = 274,
     TOK_NE = 275,
     TOK_ASSIGN = 276,
     TOK_SEMI = 277,
     TOK_COMMA = 278,
     TOK_LPAREN = 279,
     TOK_RPAREN = 280,
     TOK_LSQ = 281,
     TOK_RSQ = 282,
     TOK_LBRACE = 283,
     TOK_RBRACE = 284,
     TOK_ERROR = 285
   };
#endif
/* Tokens.  */
#define TOK_ID 258
#define TOK_NUM 259
#define TOK_ELSE 260
#define TOK_IF 261
#define TOK_RETURN 262
#define TOK_VOID 263
#define TOK_INT 264
#define TOK_WHILE 265
#define TOK_PLUS 266
#define TOK_MINUS 267
#define TOK_MULT 268
#define TOK_DIV 269
#define TOK_LT 270
#define TOK_LE 271
#define TOK_GT 272
#define TOK_GE 273
#define TOK_EQ 274
#define TOK_NE 275
#define TOK_ASSIGN 276
#define TOK_SEMI 277
#define TOK_COMMA 278
#define TOK_LPAREN 279
#define TOK_RPAREN 280
#define TOK_LSQ 281
#define TOK_RSQ 282
#define TOK_LBRACE 283
#define TOK_RBRACE 284
#define TOK_ERROR 285




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

