--------------------------------------------------------
--  DDL for Trigger TRG_HIS_GARANPROTRAMIT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_GARANPROTRAMIT" 
   BEFORE UPDATE OR DELETE
   ON GARANPROTRAMIT
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
      INSERT INTO his_GARANPROTRAMIT(
SPRODUC,
CACTIVI,
CGARANT,
CTRAMIT,
CUSUALT,
FALTA,
CUSUMOD,
FMODIF,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.CTRAMIT,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIF,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_GARANPROTRAMIT', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_GARANPROTRAMIT;





/
ALTER TRIGGER "AXIS"."TRG_HIS_GARANPROTRAMIT" ENABLE;
