--------------------------------------------------------
--  DDL for Trigger TRG_HIS_DET_PROD_PRIM_MIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_DET_PROD_PRIM_MIN" 
   BEFORE UPDATE OR DELETE
   ON DET_PROD_PRIM_MIN
   FOR EACH ROW
   DECLARE
       vaccion VARCHAR2(2);
BEGIN
   IF UPDATING THEN
       vaccion := 'U';
   ELSE
       vaccion := 'D';
   END IF;

      -- crear registro histórico
      INSERT INTO his_DET_PROD_PRIM_MIN(
SPRODUC,
CACTIVI,
CNIVEL,
CPOSICION,
FFECINI,
NORDEN,
IDPM,
FALTA,
CUSUALT,
FMODIFI,
CUSUMOD,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CNIVEL,
:OLD.CPOSICION,
:OLD.FFECINI,
:OLD.NORDEN,
:OLD.IDPM,
:OLD.FALTA,
:OLD.CUSUALT,
:OLD.FMODIFI,
:OLD.CUSUMOD,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_DET_PROD_PRIM_MIN', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_DET_PROD_PRIM_MIN;





/
ALTER TRIGGER "AXIS"."TRG_HIS_DET_PROD_PRIM_MIN" ENABLE;
