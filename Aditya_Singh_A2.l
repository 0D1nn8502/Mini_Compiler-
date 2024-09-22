%{
    
    #include <stdio.h> 
    #include <ctype.h> 
    
%}


%option case-sensitive 


ID          [a-z]+ 

DIGIT       [0-9]+      

NUM         [+-]?{DIGIT}  

PUNC        [;] 

WS          [ \t\n] 


%%


"PROGRAM"          {printf(" <KW, %s> ", yytext);}

"INTEGER"          {printf(" <KW, %s> ", yytext);} 

"READ"          {printf(" <KW, %s> ", yytext);} 

"PRINT"          {printf(" <KW, %s> ", yytext);} 

"IF"          {printf(" <KW, %s> ", yytext);} 

"THEN"          {printf(" <KW, %s> ", yytext);} 

"ELSE"          {printf(" <KW, %s> ", yytext);} 

"GT"          {printf(" <KW, %s> ", yytext);} 

"LT"          {printf(" <KW, %s> ", yytext);} 

"EQ"          {printf(" <KW, %s> ", yytext);} 

"DO"          {printf(" <KW, %s> ", yytext);} 

"END"          {printf(" <KW, %s> ", yytext);} 

". LT ."       {printf( "<LT_OP" );} 

". GT ."       {printf(" <GT_OP> ");} 

"("            {printf(" <OPEN_PARA> ");}

")"            {printf(" <CLOSE_PARA> ");} 

","            {printf(" <COMMA> ");} 

"*"            {printf(" <ASTERISK> ");}

"="            {printf(" <EQUALOP> ");} 

"+"            {printf(" <PLUSOP> ");}

"-"            {printf(" <MINUSOP> ");} 

\"              {printf(" <QUOTE> ");}  

{ID}               {printf(" <ID, %s> ", yytext);} 

{WS}               {} 

{PUNC}             {printf(" <PUNCTUATION, ;> ");}

{NUM}              {printf(" <NUM, %s> ", yytext);} 

"!".*              {} /* Consume comment, do nothing */ 

.                  {}

%%


int yywrap () {} 
