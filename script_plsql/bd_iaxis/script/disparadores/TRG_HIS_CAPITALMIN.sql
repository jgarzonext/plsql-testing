--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CAPITALMIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CAPITALMIN" 
   BEFORE UPDATE OR DELETE
   ON CAPITALMIN
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
      INSERT INTO his_CAPITALMIN(
SPRODUC,
CACTIVI,
CFORPAG,
CGARANT,
ICAPMIN,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CFORPAG,
:OLD.CGARANT,
:OLD.ICAPMIN,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CAPITALMIN', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CAPITALMIN;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CAPITALMIN" ENABLE;
