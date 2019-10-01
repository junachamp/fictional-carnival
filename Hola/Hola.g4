lexer grammar Hola;            // Define a lexer grammar called Hola

/*
 * Lexer Rules
 */
 
fragment H          : ('H'|'h') ;
fragment O          : ('O'|'o') ;
fragment L          : ('L'|'l') ;
fragment A          : ('A'|'a') ;
 
fragment MINUSCULA  : [a-z] ;
fragment MAYUSCULA  : [A-Z] ;
 
HOLA                : H O L A ;
 
NOMBRE              : (MINUSCULA | MAYUSCULA | '_')+ ;
 
ESPACIO             : (' ' | '\t') ;
 
NUEVALINEA          : ('\r'? '\n' | '\r')+ ;
