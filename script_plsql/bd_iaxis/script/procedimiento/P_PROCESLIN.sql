--------------------------------------------------------
--  DDL for Procedure P_PROCESLIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_PROCESLIN" (PSPROCES IN NUMBER, PTPROLIN IN VARCHAR2, PCIDENTIF IN NUMBER,
                      PCTIPLIN IN NUMBER DEFAULT NULL)
AUTHID current_user IS
--
--  ALLIBMFM. CREA O MODIFICA UNA LINEA EN LA TABLA
-- DE CONTROL DE PROCESOS
--
   PRAGMA autonomous_transaction;

   XPROLIN NUMBER;
BEGIN
   SELECT NVL(MAX(NPROLIN),0)
     INTO XPROLIN
     FROM PROCESOSLIN
    WHERE SPROCES = PSPROCES;
   IF SQL%FOUND THEN
      INSERT INTO PROCESOSLIN (SPROCES,NPROLIN,NPRONUM,TPROLIN,FPROLIN,CESTADO,CTIPLIN)
             VALUES (PSPROCES, XPROLIN + 1, PCIDENTIF, PTPROLIN, SYSDATE, 0, DECODE(PCTIPLIN,NULL,1,PCTIPLIN));
      COMMIT;
   END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_PROCESLIN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_PROCESLIN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_PROCESLIN" TO "PROGRAMADORESCSI";