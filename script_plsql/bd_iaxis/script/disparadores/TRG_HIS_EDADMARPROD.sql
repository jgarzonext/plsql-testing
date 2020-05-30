--------------------------------------------------------
--  DDL for Trigger TRG_HIS_EDADMARPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_EDADMARPROD" 
   BEFORE UPDATE OR DELETE
   ON EDADMARPROD
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
      INSERT INTO his_EDADMARPROD(
SPRODUC,
NEDAMAR,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.NEDAMAR,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_EDADMARPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_EDADMARPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_EDADMARPROD" ENABLE;
