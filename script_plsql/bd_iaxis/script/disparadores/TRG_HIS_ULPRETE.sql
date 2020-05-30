--------------------------------------------------------
--  DDL for Trigger TRG_HIS_ULPRETE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_ULPRETE" 
   BEFORE UPDATE OR DELETE
   ON ULPRETE
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
      INSERT INTO his_ULPRETE(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
FINICIO,
PRETEN,
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
:OLD.PRETEN,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_ULPRETE', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_ULPRETE;





/
ALTER TRIGGER "AXIS"."TRG_HIS_ULPRETE" ENABLE;
