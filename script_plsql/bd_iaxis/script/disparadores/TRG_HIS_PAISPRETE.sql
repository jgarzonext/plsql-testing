--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PAISPRETE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PAISPRETE" 
   BEFORE UPDATE OR DELETE
   ON PAISPRETE
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
      INSERT INTO his_PAISPRETE(
CPAIS,
SPRODUC,
FINICIO,
PRETENC,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CPAIS,
:OLD.SPRODUC,
:OLD.FINICIO,
:OLD.PRETENC,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PAISPRETE', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PAISPRETE;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PAISPRETE" ENABLE;
