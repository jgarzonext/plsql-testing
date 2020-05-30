--------------------------------------------------------
--  DDL for Procedure P_INT_ERROR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_INT_ERROR" (NOM_INT IN VARCHAR2,
                                        TEXT_ERR IN VARCHAR2,
										PCTIPERR IN NUMBER DEFAULT 1,
										LINEA IN VARCHAR2
                                        ) AS
/* - procedimiento que controla los erorres
                         producidos en las interfases de ALN*/


  PRAGMA autonomous_transaction;
  error  number;

BEGIN
	 	 select s_error.nextval into error from dual;

         INSERT INTO INT_CONTROL_ERRORES (SERROR, FECHA, NOM_INT, CTIPERR, T_ERROR)
         VALUES ( error, F_Sysdate, NOM_INT, PCTIPERR, TEXT_ERR);

         IF LINEA IS NOT NULL THEN
             INSERT INTO INT_CONTROL_ERRORES_LINEA(SERROR,FECHA,NOM_INT,LINEA_ERROR)
             VALUES (error, F_sysdate, NOM_INT, LINEA);
         END IF;

     COMMIT;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_INT_ERROR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_INT_ERROR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_INT_ERROR" TO "PROGRAMADORESCSI";
