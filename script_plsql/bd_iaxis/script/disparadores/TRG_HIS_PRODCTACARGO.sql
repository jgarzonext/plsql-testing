--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PRODCTACARGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PRODCTACARGO" 
   BEFORE UPDATE OR DELETE
   ON PRODCTACARGO
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
      INSERT INTO his_PRODCTACARGO(
SPRODUC,
CCONCEP,
CCOBBAN,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CCONCEP,
:OLD.CCOBBAN,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PRODCTACARGO', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PRODCTACARGO;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PRODCTACARGO" ENABLE;
