--------------------------------------------------------
--  DDL for Procedure P_FCIERRE_ADM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_FCIERRE_ADM" (AAPROC IN NUMBER, MMPROC IN NUMBER, EMPRESA IN NUMBER) IS

    FINI DATE;
    FFIN DATE;

BEGIN

    FINI := TO_DATE(AAPROC*10000+MMPROC*100+1, 'YYYYMMDD');
    FFIN := LAST_DAY(FINI);

    INSERT INTO CIERRES (FPERINI, FPERFIN, FCIERRE, CEMPRES, CTIPO, CESTADO, SPROCES, FPROCES, FCONTAB)
    VALUES (FINI, FFIN, SYSDATE, EMPRESA, 8, 1, NULL, SYSDATE, NULL);

EXCEPTION

    WHEN NO_DATA_FOUND THEN
        NULL;
    WHEN OTHERS THEN
        NULL;

END P_FCIERRE_ADM;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_FCIERRE_ADM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_FCIERRE_ADM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_FCIERRE_ADM" TO "PROGRAMADORESCSI";