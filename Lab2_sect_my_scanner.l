#include "Lab2_sect_my_scanner.h"

%%
"db_type"          return TYPE;
"db_name"          return NAME;
"db_table_prefix"  return TABLE_PREFIX;
"db_port"          return PORT;
[a-zA-Z][a-zA-Z0-9]*  return IDENTIFIER;
[1-9][0-9]*         return INTEGER;
[:\t\n]             return COLON;
.                   printf("Unexpected character: %s\n", yytext);
%%

int yywrap() {
    return 1;
}
