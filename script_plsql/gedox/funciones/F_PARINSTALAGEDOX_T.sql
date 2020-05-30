--------------------------------------------------------
--  DDL for Function F_PARINSTALAGEDOX_T
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GEDOX"."F_PARINSTALAGEDOX_T" (pCPARAME IN VARCHAR2)
RETURN VARCHAR2 authid current_user IS
BEGIN
  DECLARE
    vTVALPAR VARCHAR2(100) := '';
  BEGIN
    SELECT TVALPAR
    INTO   vTVALPAR
    FROM   PARINSTALAGEDOX
    WHERE  CPARAME = UPPER(pCPARAME);
    RETURN vTVALPAR;
    exception
      when no_data_found then
           return null;
  END;
END;

 

/
