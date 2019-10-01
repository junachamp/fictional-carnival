lexer grammar TL;

// Define palabras reservadas
WHILE: 'while';
FOR: 'for';
IF: 'if';
ELSE: 'else';
LOG: 'log';
FUNCION: 'funcion';
FALSE: 'false';
TRUE: 'true';
IMPORTAR: 'importar';
IN: 'in';
RETORNO: 'retorno';
END: 'end';
DESDE: 'desde';
TODO: 'todo';

// Define simbolos y operadores
TOKEN_LLAVE_IZQ: '{';
TOKEN_LLAVE_DER: '}';
TOKEN_COR_IZQ: '['; 
TOKEN_COR_DER: ']';
TOKEN_PAR_IZQ: '(';
TOKEN_PAR_DER: ')';
TOKEN_MAYOR: '>';
TOKEN_MENOR: '<';
TOKEN_MAYOR_IGUAL: '>=';
TOKEN_MENOR_IGUAL: '<=';
TOKEN_IGUAL_NUM: '==';
TOKEN_POINT: '.';
TOKEN_DIFF_NUM: '!=';
TOKEN_AND: '&&';
TOKEN_OR: '||';
TOKEN_NOT: '!';
TOKEN_MAS: '+';
TOKEN_MENOS: '-';
TOKEN_MUL: '*';
TOKEN_DIV: '/';
TOKEN_MOD: '%';
TOKEN_POT: '^';
TOKEN_ASSIGN: '=';
TOKEN_COMA: ',';
TOKEN_DOSP: ':';

TOKEN_STRING: '"'.*?'"'; 
// Otra versión TOKEN_STRING         :   '"' ( '\\' ('\\'|'\t'|'\r\n'|'\r'|'\n'|'"') | ~('\\'|'\t'|'\r'|'\n'|'"') )* '"';

COMMENTARIO: '#' .*? '\n' -> skip;	
// Otra versión	 '#' ~[\r\n]* -> skip;

ID: [a-zA-Z_][a-zA-Z0-9_]*;
TOKEN_INTEGER: [0-9]+;
TOKEN_FLOAT: [0-9]+'.'[0-9]+;

WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines
