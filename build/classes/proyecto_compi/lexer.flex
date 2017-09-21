package proyecto_compi;

import java_cup.runtime.*;

%%
%class lexer
%public
%cup
%unicode
%int
%line
%column


%{
    private void reportError(int line, String msg) {
        System.out.println("Lexical error at line #" + line + ": " + msg);
    }
%}

Digit               = [0-9]
Num                 = {Digit}+
Letter              = [a-zA-Z_]
LineTerminator      = \r|\n|\r\n
Tab                 = \t
WhiteSpace          = (" ")+
InputCharacter      = [^\r\n]
Ignore              = {LineTerminator}|{Tab}|{WhiteSpace}|{Comments}
MultiLineComment    = "/*" [^*] ~"*/" | "/*" "*"+ "/"
LineComment         = "//" {InputCharacter}* {LineTerminator}?
Comments            = {LineComment} | {MultiLineComment}
Percentage          = "%%"
PERCENTAGEDIGIT     = "%d"
PERCENTAGESTRING    = "%s"
ParamentroScanf     = \""%"d\" | \""%"c\" | \""%"s\" | \""%"i\"
ID                  = {Letter}({Letter}|{Digit})*
constChar           = '[a-zA-Z]'
constStr            = \" [[\w]|[\d]|[\s]|[\\n]|[\\t]|[\\r]|[:]|[=]|[!]|[%d]|[%c]|[%s]|[%i]|[(]|[)]|[+]|[-]|[*]|[/]|[?]|[>]|[<]|[,]|[_]]* \"
Int                 = int
Char                = char
intpunt             = int[\*]
charpunt            = char[\*]
OPSUMA              = (\+|\-)
OPMULT              = (\*|\/)
OperAritmeticoIgual = ("+="|"-="|"*="|"/=")
OperadorRelacional  = (">"|">="|"<"|"<="|"=="|"!=")
Printf              = printf
Scanf               = scanf
Main                = main
Return              = return
Void                = void
CorcheteIzquierdo   = "["
CorcheteDerecho     = "]"
LlaveIzquierda      = "{" 
LlaveDerecha        = "}"
ParentesisIzquierdo = "("
ParentesisDerecho   = ")"
Igual               = "="
OperadorLogicos     = ("||"|"&&")
PuntoYComa          = ;
Coma                = ,
Else                = else
While               = while
AND                 = &
For                 = for
If                  = if
True                = true
False               = false
Import              = import

%%
<YYINITIAL> {
	{For}                   {return new Symbol(sym.FOR,yyline + 1,yycolumn + 1, yytext());}                               
	{If}                    {return new Symbol(sym.IF, yyline + 1, yycolumn + 1, yytext());}
	{Else}                  {return new Symbol(sym.ELSE,yyline + 1, yycolumn + 1, yytext());}
	{While}			{return new Symbol(sym.WHILE, yyline + 1, yycolumn + 1, yytext());}
	{Return}		{return new Symbol(sym.RETURN,  yyline + 1, yycolumn + 1, yytext());}
	{Main}			{return new Symbol(sym.MAIN,  yyline + 1, yycolumn + 1, yytext());}
        {Import}                {return new Symbol(sym.IMPORT,  yyline + 1, yycolumn + 1, yytext());}
        "."                     {return new Symbol(sym.PUNTO,  yyline + 1, yycolumn + 1, yytext());}
	{Printf}		{return new Symbol(sym.PRINTF,  yyline + 1, yycolumn + 1, yytext());}
	{Scanf}			{return new Symbol(sym.SCANF,  yyline + 1, yycolumn + 1, yytext());}
        {ParamentroScanf}       {return new Symbol(sym.PARAMETROSCANF,  yyline + 1, yycolumn + 1, yytext());}
	"!"                     {return new Symbol(sym.NOT,  yyline + 1, yycolumn + 1, yytext());}
        {AND}                   {return new Symbol(sym.AND,  yyline + 1, yycolumn + 1, yytext());}
	{Igual}			{return new Symbol(sym.IGUAL,  yyline + 1, yycolumn + 1, yytext());}
	{OperAritmeticoIgual}	{return new Symbol(sym.OperARITMETICOIGUAL,  yyline + 1, yycolumn + 1, yytext());}
	"%="			{return new Symbol(sym.MODASIGNACION,  yyline + 1, yycolumn + 1, yytext());}
	{OperadorLogicos}	{return new Symbol(sym.OPERADORLOGICO,  yyline + 1, yycolumn + 1, yytext());}	
	{OperadorRelacional}	{return new Symbol(sym.OPERADORRELACIONAL,  yyline + 1, yycolumn + 1, yytext());}
	{True}                  {return new Symbol(sym.TRUE,  yyline + 1, yycolumn + 1, yytext());}
        {False}                 {return new Symbol(sym.FALSE,  yyline + 1, yycolumn + 1, yytext());}
        {OPSUMA}		{return new Symbol(sym.OPERADORSUMA,  yyline + 1, yycolumn + 1, yytext());}
	{OPMULT}		{return new Symbol(sym.OPERADORMULTIPLICACION,  yyline + 1, yycolumn + 1, yytext());}
	"%"			{return new Symbol(sym.MODARITMETICO,  yyline + 1, yycolumn + 1, yytext());}
	{PuntoYComa}		{return new Symbol(sym.PUNTOYCOMA,  yyline + 1, yycolumn + 1, yytext());}
	"?"			{return new Symbol(sym.INTERROGACION,  yyline + 1, yycolumn + 1, yytext());}
        {Void}                  {return new Symbol(sym.VOID,  yyline + 1, yycolumn + 1, yytext());}
	{CorcheteIzquierdo}	{return new Symbol(sym.CORCHETEIZQUIERDO,  yyline + 1, yycolumn + 1, yytext());}
	{CorcheteDerecho}	{return new Symbol(sym.CORCHETEDERECHO,  yyline + 1, yycolumn + 1, yytext());}
	{Coma}			{return new Symbol(sym.COMA,  yyline + 1, yycolumn + 1, yytext());}
	":"			{return new Symbol(sym.DOSPUNTOS,  yyline + 1, yycolumn + 1, yytext());}
	{LlaveIzquierda}	{return new Symbol(sym.LLAVEIZQUIERDA,  yyline + 1, yycolumn + 1, yytext());}
	{LlaveDerecha}		{return new Symbol(sym.LLAVEDERECHA,  yyline + 1, yycolumn + 1, yytext());}
	{ParentesisIzquierdo}	{return new Symbol(sym.PARENTESISIZQUIERDO,  yyline + 1, yycolumn + 1, yytext());}
	{ParentesisDerecho}	{return new Symbol(sym.PARENTESISDERECHO,  yyline + 1, yycolumn + 1, yytext());}
	{constChar}		{return new Symbol(sym.CONSTCHAR,  yyline + 1, yycolumn + 1, yytext());}
	{constStr}		{return new Symbol(sym.CONSTSTR,  yyline + 1, yycolumn + 1, yytext());}
	{Int}			{return new Symbol(sym.INT,  yyline + 1, yycolumn + 1, yytext());}
	{Char}			{return new Symbol(sym.CHAR,  yyline + 1, yycolumn + 1, yytext());}
	{intpunt}		{return new Symbol(sym.INTPUNT,  yyline + 1, yycolumn + 1, yytext());}
	{Percentage}            {return new Symbol(sym.PERCENTAGE,  yyline + 1, yycolumn + 1, yytext());}
	{PERCENTAGEDIGIT}	{return new Symbol(sym.PERCENTAGEDIGIT,  yyline + 1, yycolumn + 1, yytext());}
	{PERCENTAGESTRING}	{return new Symbol(sym.PERCENTAGESTRING,  yyline + 1, yycolumn + 1, yytext());}
	{charpunt}		{return new Symbol(sym.CHARPUNT,  yyline + 1, yycolumn + 1, yytext());}
	{ID}			{return new Symbol(sym.ID,  yyline + 1, yycolumn + 1, yytext());}
	{Num}			{return new Symbol(sym.NUM,  yyline + 1, yycolumn + 1, yytext());}      
	{Ignore}		{/*Do Nothing*/}        
	.			{reportError(yyline + 1, "Illegal character \"" + yytext() + "\"");}
        
}
