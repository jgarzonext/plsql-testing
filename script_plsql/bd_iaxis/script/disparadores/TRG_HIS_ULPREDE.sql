--------------------------------------------------------
--  DDL for Trigger TRG_HIS_ULPREDE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_ULPREDE" 
   BEFORE UPDATE OR DELETE
   ON ULPREDE
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
      INSERT INTO his_ULPREDE(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
FINICIO,
NDURACI,
NPERMAN,
PREDUC,
CACTIVI,
CGARANT,
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
:OLD.FINICIO,
:OLD.NDURACI,
:OLD.NPERMAN,
:OLD.PREDUC,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_ULPREDE', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_ULPREDE;





/
ALTER TRIGGER "AXIS"."TRG_HIS_ULPREDE" ENABLE;
