--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CUMULPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CUMULPROD" 
   BEFORE UPDATE OR DELETE
   ON CUMULPROD
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
      INSERT INTO his_CUMULPROD(
CCUMPROD,
FINIEFE,
SPRODUC,
FFINEFE,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CCUMPROD,
:OLD.FINIEFE,
:OLD.SPRODUC,
:OLD.FFINEFE,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CUMULPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CUMULPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CUMULPROD" ENABLE;
