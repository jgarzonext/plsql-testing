--------------------------------------------------------
--  DDL for Trigger TRG_HIS_MODELOSINVERSION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_MODELOSINVERSION" 
   BEFORE UPDATE OR DELETE
   ON MODELOSINVERSION
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
      INSERT INTO his_MODELOSINVERSION(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CMODINV,
FINICIO,
FFIN,
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
:OLD.CMODINV,
:OLD.FINICIO,
:OLD.FFIN,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_MODELOSINVERSION', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_MODELOSINVERSION;





/
ALTER TRIGGER "AXIS"."TRG_HIS_MODELOSINVERSION" ENABLE;
