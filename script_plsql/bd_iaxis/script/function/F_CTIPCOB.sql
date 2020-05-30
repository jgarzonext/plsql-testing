--------------------------------------------------------
--  DDL for Function F_CTIPCOB
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_CTIPCOB" (psmovrec IN NUMBER)  RETURN NUMBER
AUTHID CURRENT_USER IS
/**********************************************************************************
  funci�n que nos indica el tipo de cobro.
  si da error, retornamos un c�digo inexistente que deber� controlarse en
   la llamada a esta funci�n.
**********************************************************************************/
vctipcob NUMBER;
BEGIN
   BEGIN
    SELECT ctipcob
	  INTO vctipcob
	  FROM movrecibo
	 WHERE smovrec = psmovrec;
   EXCEPTION
    WHEN OTHERS THEN
	 vctipcob := 99;
   END;
 RETURN vctipcob;
END f_ctipcob;

 
 

/

  GRANT EXECUTE ON "AXIS"."F_CTIPCOB" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CTIPCOB" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CTIPCOB" TO "PROGRAMADORESCSI";
