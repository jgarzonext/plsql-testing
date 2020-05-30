--------------------------------------------------------
--  DDL for Procedure P_CONTROL_ERROR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "GEDOX"."P_CONTROL_ERROR" (
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

      SELECT nvl(max(seqerror),0) + 1
        INTO v_seq
        FROM CONTROL_ERROR;


   INSERT INTO CONTROL_ERROR
               (seqerror, fecha, id, donde, suceso)
        VALUES (v_seq, Sysdate, pid, pdonde, psuceso);
   COMMIT;
END; 
 

/
