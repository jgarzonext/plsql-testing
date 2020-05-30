--------------------------------------------------------
--  DDL for Procedure P_FCIERRE_PROD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_FCIERRE_PROD" (aaproc IN NUMBER, mmproc IN NUMBER, empresa IN NUMBER)
	   IS

	   fini		  DATE;
	   ffin		  DATE;

BEGIN

	 fini := TO_DATE(aaproc*10000+mmproc*100+1, 'yyyymmdd');
	 ffin := LAST_DAY(fini);

	 INSERT INTO CIERRES (fperini, fperfin, fcierre, cempres, ctipo, cestado, sproces, fproces, fcontab)
	  VALUES (fini, ffin, SYSDATE, empresa, 7, 1, NULL, SYSDATE, NULL);

   EXCEPTION
     WHEN NO_DATA_FOUND THEN
       NULL;
     WHEN OTHERS THEN
       NULL;
END P_FCIERRE_PROD;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_FCIERRE_PROD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_FCIERRE_PROD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_FCIERRE_PROD" TO "PROGRAMADORESCSI";
