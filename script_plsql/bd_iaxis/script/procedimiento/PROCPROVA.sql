--------------------------------------------------------
--  DDL for Procedure PROCPROVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."PROCPROVA" 
AUTHID CURRENT_USER IS
/******************************************************************************
   NOMBRE:       PROCPROVA
   PROP¿SITO:       proves

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/02/2010   JDR              1. Creaci¿n del package.
******************************************************************************/
   v_n            NUMBER;
   v_error        NUMBER;
BEGIN
   BEGIN
      SELECT 1
        INTO v_n
        FROM DUAL;
   EXCEPTION
      WHEN OTHERS THEN
         v_error := 1;
   END;
END procprova;

/

  GRANT EXECUTE ON "AXIS"."PROCPROVA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PROCPROVA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PROCPROVA" TO "PROGRAMADORESCSI";
