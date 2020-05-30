--------------------------------------------------------
--  DDL for Trigger TRG_HIS_INCOMPGARAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_INCOMPGARAN" 
   BEFORE UPDATE OR DELETE
   ON INCOMPGARAN
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
      INSERT INTO his_INCOMPGARAN(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CGARANT,
CGARINC,
CACTIVI,
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
:OLD.CGARANT,
:OLD.CGARINC,
:OLD.CACTIVI,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_INCOMPGARAN', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_INCOMPGARAN;





/
ALTER TRIGGER "AXIS"."TRG_HIS_INCOMPGARAN" ENABLE;
