--------------------------------------------------------
--  DDL for Function F_CATDESPARAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GEDOX"."F_CATDESPARAM" 
( pi_cParPer  IN      VARCHAR2
, pi_cidioma  IN      NUMBER
)
RETURN VARCHAR2 IS
  v_desc    GDXCATDESPARAM.TPARcat%TYPE;
  error     NUMBER := 0;

BEGIN

  BEGIN
    SELECT TPARcat
    INTO   v_desc
    FROM   GDXCATDESPARAM
    WHERE  CPARcat = pi_cParPer
    AND    CIDIOMA = pi_cidioma;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      error := 800249;

  END;

  return( v_desc);

EXCEPTION
  WHEN OTHERS THEN
   RETURN( error);

END f_catdesparam;
 

/
