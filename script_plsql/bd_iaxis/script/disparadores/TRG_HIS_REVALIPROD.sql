--------------------------------------------------------
--  DDL for Trigger TRG_HIS_REVALIPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_REVALIPROD" 
   BEFORE UPDATE OR DELETE
   ON REVALIPROD
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
      INSERT INTO his_REVALIPROD(
SPRODUC,
CREVALI,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CREVALI,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_REVALIPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_REVALIPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_REVALIPROD" ENABLE;
