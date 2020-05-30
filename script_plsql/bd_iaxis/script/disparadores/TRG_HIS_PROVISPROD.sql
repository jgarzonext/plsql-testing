--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PROVISPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PROVISPROD" 
   BEFORE UPDATE OR DELETE
   ON PROVISPROD
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
      INSERT INTO his_PROVISPROD(
SPRODUC,
CPROVIS,
CPERIOD,
FULTCAL,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CPROVIS,
:OLD.CPERIOD,
:OLD.FULTCAL,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PROVISPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PROVISPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PROVISPROD" ENABLE;
