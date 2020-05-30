--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CUM_CUMGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CUM_CUMGARAN" 
   BEFORE UPDATE OR DELETE
   ON CUM_CUMGARAN
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
      INSERT INTO his_CUM_CUMGARAN(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CACTIVI,
CGARANT,
CCUMULO,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CRAMO,
:OLD.CMODALI,
:OLD.CTIPSEG,
:OLD.CCOLECT,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.CCUMULO,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CUM_CUMGARAN', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CUM_CUMGARAN;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CUM_CUMGARAN" ENABLE;
