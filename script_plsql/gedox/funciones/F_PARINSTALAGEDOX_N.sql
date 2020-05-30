--------------------------------------------------------
--  DDL for Function F_PARINSTALAGEDOX_N
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GEDOX"."F_PARINSTALAGEDOX_N" (pCPARAME IN VARCHAR2)
RETURN VARCHAR2 AUTHID current_user IS
BEGIN
  DECLARE
    vNVALPAR NUMBER;
  BEGIN
    SELECT NVALPAR
    INTO   vNVALPAR
    FROM   PARINSTALAGEDOX
    WHERE  CPARAME = UPPER(pCPARAME);
    RETURN vNVALPAR;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
           RETURN NULL;
  END;
END;

 

/
