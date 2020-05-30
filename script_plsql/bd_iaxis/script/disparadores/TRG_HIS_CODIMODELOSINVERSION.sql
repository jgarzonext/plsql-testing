--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CODIMODELOSINVERSION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CODIMODELOSINVERSION" 
   BEFORE UPDATE OR DELETE
   ON CODIMODELOSINVERSION
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
      INSERT INTO his_CODIMODELOSINVERSION(
CIDIOMA,
TMODINV,
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CMODINV,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CIDIOMA,
:OLD.TMODINV,
:OLD.CRAMO,
:OLD.CMODALI,
:OLD.CTIPSEG,
:OLD.CCOLECT,
:OLD.CMODINV,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CODIMODELOSINVERSION', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CODIMODELOSINVERSION;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CODIMODELOSINVERSION" ENABLE;
