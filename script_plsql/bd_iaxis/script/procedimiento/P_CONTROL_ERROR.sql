--------------------------------------------------------
--  DDL for Procedure P_CONTROL_ERROR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_CONTROL_ERROR" (
   pid       IN   VARCHAR2,
   pdonde    IN   VARCHAR2,
   psuceso   IN   VARCHAR2
)
AS
/* - procedimiento que controla los erorres
                         producidos */
   PRAGMA autonomous_transaction;

   v_seq   NUMBER;
BEGIN

      SELECT seqerror.NEXTVAL
        INTO v_seq
        FROM dual;


   INSERT INTO CONTROL_ERROR
               (seqerror, fecha, id, donde, suceso)
        VALUES (v_seq, F_Sysdate, pid, pdonde, psuceso);
   COMMIT;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_CONTROL_ERROR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_CONTROL_ERROR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_CONTROL_ERROR" TO "PROGRAMADORESCSI";
