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
ID                  = {Letter}({Letter}|{Digit})*
constchar           = \'[^\']\'
conststr            = \"([^\\\"]|\\.)*\"
int                 = [i][n][t]([ ])
char                = [c][h][a][r]([ ])
intpunt             = [i][n][t][\*]([ ])
charpunt            = [c][h][a][r][\*]([ ])
OPSUMA              = \+|\-
OPMULT              = \*|\/
IGUALSUMA           = \+\=|\-\=
IGUALMULT           = \*\=|\/\=
OPREL               = \=\=|\!\=|\<|\<\=|\>|\>\=

%%
<YYINITIAL> {
	"for"			{System.out.println("For");}
	"if"			{System.out.println("If");}
	"else"			{System.out.println("Else");}
	"while"			{System.out.println("While");}
	"return"		{System.out.println("Return");}
	"main"			{System.out.println("Main");}
        "import"                {System.out.println("Import");}
        "."                     {System.out.println("Dot");}
	"printf"		{System.out.println("printf");}
	"scanf"			{System.out.println("scanf");}
	"!"                     {System.out.println("Not");}
	"="			{System.out.println("Asignación");}
	{IGUALSUMA}		{System.out.println("Mas/Menos_Asignación");}
	{IGUALMULT}		{System.out.println("Mult/Div_Asignación");}
	"%="			{System.out.println("ModAsignación");}
	"||"			{System.out.println("ORLógico");}
	"&&"			{System.out.println("ANDLógico");}
	{OPREL}			{System.out.println("Operador Relacional");}
	{OPSUMA}		{System.out.println("Mas/Menos_Aritmético");}
	{OPMULT}		{System.out.println("Mult/Div_Aritmético");}
	"%"			{System.out.println("ModAritmético");}
	";"			{System.out.println("Semicolon");}
	"?"			{System.out.println("Interrogation");}
	"["			{System.out.println("LeftBracket");}
	"]"			{System.out.println("RightBracket");}
	","			{System.out.println("Comma");}
	":"			{System.out.println("Colon");}
	"{"			{System.out.println("LeftCurlyBracket");}
	"}"			{System.out.println("RightCurlyBracket");}
	"("			{System.out.println("LeftParentheses");}
	")"			{System.out.println("RightParentheses");}
	{constchar}		{System.out.println("constchar: " + yytext());}
	{conststr}		{System.out.println("conststr(1): " + yytext());}
	{int}			{System.out.println("Integer");}
	{char}			{System.out.println("Character");}
	{intpunt}		{System.out.println("Integer");}
	{Percentage}            {System.out.println("Percentage");}
	{PERCENTAGEDIGIT}	{System.out.println("PercentageDigit");}
	{PERCENTAGESTRING}	{System.out.println("PercentageCharacter");}
	{charpunt}		{System.out.println("Char Pointer");}
	{ID}			{System.out.println("ID, " + yytext());}
	{Num}			{System.out.println("Num, " + yytext());}
	{Ignore}		{/*Do Nothing*/}
	.			{reportError(yyline + 1, "Illegal character \"" + yytext() + "\"");}
}
