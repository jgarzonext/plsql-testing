--------------------------------------------------------
--  DDL for Trigger TRG_HIS_DEP_GARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_DEP_GARANTIAS" 
   BEFORE UPDATE OR DELETE
   ON DEP_GARANTIAS
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
      INSERT INTO his_DEP_GARANTIAS(
SPRODUC,
CACTIVI,
CGARANT,
NORDEN,
NSUBORD,
CGARPAR,
TVALGAR,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.NORDEN,
:OLD.NSUBORD,
:OLD.CGARPAR,
:OLD.TVALGAR,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_DEP_GARANTIAS', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_DEP_GARANTIAS;





/
ALTER TRIGGER "AXIS"."TRG_HIS_DEP_GARANTIAS" ENABLE;
