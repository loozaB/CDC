/* Lex program to Identify and Count 
Positive and Negative Numbers */
%{ 
int positive_no = 0, negative_no = 0; 
%} 

/* Rules for identifying and counting 
positive and negative numbers*/
%% 
^[-][0-9]+ {negative_no++; 
			printf("%s = negative number\n", 
				yytext);} // negative number 

[0-9]+ {positive_no++; 
		printf("%s = positive number \n", 
				yytext);} // positive number	 
%% 

/*** use code section ***/

int yywrap(){} 
int main()											 
{ 

yylex(); 

return 0; 
} 
