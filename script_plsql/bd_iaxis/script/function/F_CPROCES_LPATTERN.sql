--------------------------------------------------------
--  DDL for Function F_CPROCES_LPATTERN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_CPROCES_LPATTERN" (pattern IN VARCHAR2) RETURN NUMBER IS
  /*
    RSC 14/01/2008
    Funci�n para retornar el SPROCES de la tabla PROCESOSCAB a partir de un patr�n a buscar en el campo
    CPROCES. En caso de retornar m�s de un SPROCES retorna el m�ximo.
  */
  vsproces  NUMBER;
BEGIN
    select min(sproces) INTO vsproces
    from procesoscab
    where cproces like '%'||pattern||'%';

    RETURN vsproces;
EXCEPTION
  WHEN OTHERS THEN
    RETURN NULL;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_CPROCES_LPATTERN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CPROCES_LPATTERN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CPROCES_LPATTERN" TO "PROGRAMADORESCSI";
