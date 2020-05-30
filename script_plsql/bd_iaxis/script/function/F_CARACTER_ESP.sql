--------------------------------------------------------
--  DDL for Function F_CARACTER_ESP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_CARACTER_ESP" (ptextin IN VARCHAR2, ptextout OUT VARCHAR2)
RETURN NUMBER authid current_user IS
/***********************************************************************
	f_caracter_esp: Elimina caracteres especiales
	09-01-05 GMM5513 (SA NOSTRA ASSEGURANCES)
***********************************************************************/

BEGIN
	ptextout:=ptextin;

---- MINUSCULAS

	ptextout:=REPLACE(ptextout,'�','a');
	ptextout:=REPLACE(ptextout,'�','e');
	ptextout:=REPLACE(ptextout,'�','i');
	ptextout:=REPLACE(ptextout,'�','o');
	ptextout:=REPLACE(ptextout,'�','u');
	ptextout:=REPLACE(ptextout,'�','a');
	ptextout:=REPLACE(ptextout,'�','e');
	ptextout:=REPLACE(ptextout,'�','i');
	ptextout:=REPLACE(ptextout,'�','o');
	ptextout:=REPLACE(ptextout,'�','u');
	ptextout:=REPLACE(ptextout,'�','a');
	ptextout:=REPLACE(ptextout,'�','e');
	ptextout:=REPLACE(ptextout,'�','i');
	ptextout:=REPLACE(ptextout,'�','o');
	ptextout:=REPLACE(ptextout,'�','u');
	ptextout:=REPLACE(ptextout,'�','a');
	ptextout:=REPLACE(ptextout,'�','e');
	ptextout:=REPLACE(ptextout,'�','i');
	ptextout:=REPLACE(ptextout,'�','o');
	ptextout:=REPLACE(ptextout,'�','u');
	ptextout:=REPLACE(ptextout,'�','c');
	ptextout:=REPLACE(ptextout,'�','n');

---- MAYUSCULAS

    ptextout:=REPLACE(ptextout,'�','A');
	ptextout:=REPLACE(ptextout,'�','E');
	ptextout:=REPLACE(ptextout,'�','I');
	ptextout:=REPLACE(ptextout,'�','O');
	ptextout:=REPLACE(ptextout,'�','U');
	ptextout:=REPLACE(ptextout,'�','A');
	ptextout:=REPLACE(ptextout,'�','E');
	ptextout:=REPLACE(ptextout,'�','I');
	ptextout:=REPLACE(ptextout,'�','O');
	ptextout:=REPLACE(ptextout,'�','U');
	ptextout:=REPLACE(ptextout,'�','A');
	ptextout:=REPLACE(ptextout,'�','E');
	ptextout:=REPLACE(ptextout,'�','I');
	ptextout:=REPLACE(ptextout,'�','O');
	ptextout:=REPLACE(ptextout,'�','U');
	ptextout:=REPLACE(ptextout,'�','A');
	ptextout:=REPLACE(ptextout,'�','E');
	ptextout:=REPLACE(ptextout,'�','I');
	ptextout:=REPLACE(ptextout,'�','O');
	ptextout:=REPLACE(ptextout,'�','U');
	ptextout:=REPLACE(ptextout,'�','C');
	ptextout:=REPLACE(ptextout,'�','N');


	RETURN 0;
EXCEPTION
	WHEN others THEN
		RETURN 1;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."F_CARACTER_ESP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CARACTER_ESP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CARACTER_ESP" TO "PROGRAMADORESCSI";
