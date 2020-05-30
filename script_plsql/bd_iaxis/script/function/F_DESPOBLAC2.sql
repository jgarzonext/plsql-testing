--------------------------------------------------------
--  DDL for Function F_DESPOBLAC2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_DESPOBLAC2" (pcpoblac IN NUMBER, pcprovin IN NUMBER)
   RETURN VARCHAR2 AUTHID CURRENT_USER IS
/*
   Funci�n que devuelve la descripci�n de la poblaci�n
*/
   ptpoblac       VARCHAR2(100);
BEGIN
   SELECT tpoblac
     INTO ptpoblac
     FROM poblaciones
    WHERE cprovin = pcprovin
      AND cpoblac = pcpoblac;

   RETURN ptpoblac;
EXCEPTION
   WHEN OTHERS THEN
      RETURN ' ';   -- Poblaci�n inexistente
END;

/

  GRANT EXECUTE ON "AXIS"."F_DESPOBLAC2" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_DESPOBLAC2" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_DESPOBLAC2" TO "PROGRAMADORESCSI";
