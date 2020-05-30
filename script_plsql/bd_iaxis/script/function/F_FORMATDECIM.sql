--------------------------------------------------------
--  DDL for Function F_FORMATDECIM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_FORMATDECIM" (PVALOR IN NUMBER) RETURN VARCHAR2
authid current_user IS
-- ALLIBMFM. RETORNA UN NUM�RIC (19, 12) FORMATEJAT
TVALOR	VARCHAR2(25);
XVALFORMAT	VARCHAR2(25);
XCOMADEC	NUMBER;
BEGIN
TVALOR	:= TO_CHAR(PVALOR);
XCOMADEC	:= INSTR(TO_CHAR(PVALOR), ',');
SELECT DECODE(XCOMADEC,
	NULL, NULL,
	0, LPAD(TO_CHAR(PVALOR, '9G999G999'), 19, ' '),
	1, '       ' || TO_CHAR(PVALOR, '0D' || RPAD('0', LENGTH(TVALOR) -
			XCOMADEC, '0')),
	TO_CHAR(PVALOR, '9G999G999D' || RPAD('0', LENGTH(TVALOR) - XCOMADEC,
			'0')))
INTO XVALFORMAT
FROM DUAL;
RETURN XVALFORMAT;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_FORMATDECIM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_FORMATDECIM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_FORMATDECIM" TO "PROGRAMADORESCSI";