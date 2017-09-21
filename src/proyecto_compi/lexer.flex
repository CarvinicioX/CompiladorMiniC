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
LineTerminator      = \r|\n|\r\n
Tab                 = \t
WhiteSpace          = (" ")+
InputCharacter      = [^\r\n]
Ignore              = {LineTerminator}|{Tab}|{WhiteSpace}|{Comments}
MultiLineComment    = "/*" [^*] ~"*/" | "/*" "*"+ "/"
LineComment         = "//" {InputCharacter}* {LineTerminator}?
Comments            = {LineComment} | {MultiLineComment}
ID                  = [a-zA-Z][[a-zA-Z]|[0-9]|"_"]*
constChar           = '[a-zA-Z]'
constStr            = \" [[\w]|[\d]|[\s]|[\\n]|[\\t]|[\\r]|[:]|[=]|[!]|[%d]|[%c]|[%s]|[%i]|[(]|[)]|[+]|[-]|[*]|[/]|[?]|[>]|[<]|[,]|[_]]* \"
Int                 = int
Char                = char
intpunt             = int[\*]
charpunt            = char[\*]
OPSUMA              = (\+)
OPSRESTA            = (\-)
OPMULT              = (\*)
OPERADORDIV         = (\/)
MASIGUAL            = ("+=")
MENOSIGUAL          = ("-=")
MULTIIGUAL          = ("*=")
DIVIGUAL            = ("/=")
MAYORQUE            = (">")
MAYORIGUAL          = (">=")
MENORQUE            = ("<")
MENORIGUAL          = ("<=")
IGUALQUE            = ("==")
NOTIGUAL            = ("!=")
MASMAS              = ("++")
MENOSMENOS          = ("--")
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
ANDAND              = ("&&")
OROR                = ("||")
PuntoYComa          = ;
Coma                = ,
Else                = else
While               = while
AND                 = &
For                 = for
If                  = if
break               = break

%%
<YYINITIAL> {
	{For}                   {return new Symbol(sym.FOR,yyline + 1,yycolumn + 1, yytext());}                               
	{If}                    {return new Symbol(sym.IF, yyline + 1, yycolumn + 1, yytext());}
	{Else}                  {return new Symbol(sym.ELSE,yyline + 1, yycolumn + 1, yytext());}
	{While}			{return new Symbol(sym.WHILE, yyline + 1, yycolumn + 1, yytext());}
	{Return}		{return new Symbol(sym.RETURN,  yyline + 1, yycolumn + 1, yytext());}
	{Main}			{return new Symbol(sym.MAIN,  yyline + 1, yycolumn + 1, yytext());}
        {break}                 {return new Symbol(sym.BREAK,  yyline + 1, yycolumn + 1, yytext());}
	{Printf}		{return new Symbol(sym.PRINTF,  yyline + 1, yycolumn + 1, yytext());}
	{Scanf}			{return new Symbol(sym.SCANF,  yyline + 1, yycolumn + 1, yytext());}	
	{Igual}			{return new Symbol(sym.IGUAL,  yyline + 1, yycolumn + 1, yytext());}
	{MASMAS}                {return new Symbol(sym.MASMAS,  yyline + 1, yycolumn + 1, yytext());}
	{ANDAND}                {return new Symbol(sym.ANDAND,  yyline + 1, yycolumn + 1, yytext());}
        {OROR}                  {return new Symbol(sym.OROR,  yyline + 1, yycolumn + 1, yytext());}
	{MENORQUE}              {return new Symbol(sym.MENORQUE,  yyline + 1, yycolumn + 1, yytext());}
        {MAYORQUE}              {return new Symbol(sym.MAYORQUE,  yyline + 1, yycolumn + 1, yytext());}
        {MAYORIGUAL}            {return new Symbol(sym.MAYORIGUAL,  yyline + 1, yycolumn + 1, yytext());}
        {MENORIGUAL}            {return new Symbol(sym.MENORIGUAL,  yyline + 1, yycolumn + 1, yytext());}
        {NOTIGUAL}              {return new Symbol(sym.NOTIGUAL,  yyline + 1, yycolumn + 1, yytext());}
        {IGUALQUE}              {return new Symbol(sym.IGUALQUE,  yyline + 1, yycolumn + 1, yytext());}
        {OPSUMA}		{return new Symbol(sym.OPERADORSUMA,  yyline + 1, yycolumn + 1, yytext());}
        {OPSRESTA}              {return new Symbol(sym.OPERADORRESTA,  yyline + 1, yycolumn + 1, yytext());}
        {MENOSMENOS}            {return new Symbol(sym.MENOSMENOS,  yyline + 1, yycolumn + 1, yytext());}
        {MASIGUAL}              {return new Symbol(sym.MASIGUAL,  yyline + 1, yycolumn + 1, yytext());}
        {MENOSIGUAL}            {return new Symbol(sym.MENOSIGUAL,  yyline + 1, yycolumn + 1, yytext());}
        {MULTIIGUAL}            {return new Symbol(sym.MULTIIGUAL,  yyline + 1, yycolumn + 1, yytext());}
        {DIVIGUAL}              {return new Symbol(sym.DIVIGUAL,  yyline + 1, yycolumn + 1, yytext());}
	{OPMULT}		{return new Symbol(sym.OPERADORMULTIPLICACION,  yyline + 1, yycolumn + 1, yytext());}
        {OPERADORDIV}           {return new Symbol(sym.OPERADORDIV,  yyline + 1, yycolumn + 1, yytext());}
	{PuntoYComa}		{return new Symbol(sym.PUNTOYCOMA,  yyline + 1, yycolumn + 1, yytext());}
        {Void}                  {return new Symbol(sym.VOID,  yyline + 1, yycolumn + 1, yytext());}
	{CorcheteIzquierdo}	{return new Symbol(sym.CORCHETEIZQUIERDO,  yyline + 1, yycolumn + 1, yytext());}
	{CorcheteDerecho}	{return new Symbol(sym.CORCHETEDERECHO,  yyline + 1, yycolumn + 1, yytext());}
	{Coma}			{return new Symbol(sym.COMA,  yyline + 1, yycolumn + 1, yytext());}
	{LlaveIzquierda}	{return new Symbol(sym.LLAVEIZQUIERDA,  yyline + 1, yycolumn + 1, yytext());}
	{LlaveDerecha}		{return new Symbol(sym.LLAVEDERECHA,  yyline + 1, yycolumn + 1, yytext());}
	{ParentesisIzquierdo}	{return new Symbol(sym.PARENTESISIZQUIERDO,  yyline + 1, yycolumn + 1, yytext());}
	{ParentesisDerecho}	{return new Symbol(sym.PARENTESISDERECHO,  yyline + 1, yycolumn + 1, yytext());}
	{constChar}		{return new Symbol(sym.CONSTCHAR,  yyline + 1, yycolumn + 1, yytext());}
	{constStr}		{return new Symbol(sym.CONSTSTR,  yyline + 1, yycolumn + 1, yytext());}
	{Int}			{return new Symbol(sym.INT,  yyline + 1, yycolumn + 1, yytext());}
	{Char}			{return new Symbol(sym.CHAR,  yyline + 1, yycolumn + 1, yytext());}
	{intpunt}		{return new Symbol(sym.INTPUNT,  yyline + 1, yycolumn + 1, yytext());}
	"%d"            	{return new Symbol(sym.PERCENTAGEDIGIT,  yyline + 1, yycolumn + 1, yytext());}
	"%s"                    {return new Symbol(sym.PERCENTAGESTRING,  yyline + 1, yycolumn + 1, yytext());}
        "%c"                    {return new Symbol(sym.PERCENTAGECHART,  yyline + 1, yycolumn + 1, yytext());}
	{charpunt}		{return new Symbol(sym.CHARPUNT,  yyline + 1, yycolumn + 1, yytext());}
	{ID}			{return new Symbol(sym.ID,  yyline + 1, yycolumn + 1, yytext());}
	{Num}			{return new Symbol(sym.NUM,  yyline + 1, yycolumn + 1, yytext());}      
	{Ignore}		{/*Do Nothing*/}        
	.			{reportError(yyline + 1, "Illegal character \"" + yytext() + "\"");}
        
}
