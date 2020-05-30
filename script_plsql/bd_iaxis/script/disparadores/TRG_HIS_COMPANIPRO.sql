--------------------------------------------------------
--  DDL for Trigger TRG_HIS_COMPANIPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_COMPANIPRO" 
   BEFORE UPDATE OR DELETE
   ON COMPANIPRO
   FOR EACH ROW
   DECLARE
       vaccion VARCHAR2(2);
BEGIN
   IF UPDATING THEN
       vaccion := 'U';
   ELSE
       vaccion := 'D';
   END IF;

      -- crear registro hist�rico
      INSERT INTO his_COMPANIPRO(
SPRODUC,
CCOMPANI,
CAGENCORR,
SPRODUCESP,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CCOMPANI,
:OLD.CAGENCORR,
:OLD.SPRODUCESP,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_COMPANIPRO', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_COMPANIPRO;





/
ALTER TRIGGER "AXIS"."TRG_HIS_COMPANIPRO" ENABLE;
