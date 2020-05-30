--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PRODTRARESC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PRODTRARESC" 
   BEFORE UPDATE OR DELETE
   ON PRODTRARESC
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
      INSERT INTO his_PRODTRARESC(
SIDRESC,
SPRODUC,
CTIPMOV,
FINICIO,
FFIN,
CTIPO,
NMESESSINPENALI,
NANYOSEFECTO,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SIDRESC,
:OLD.SPRODUC,
:OLD.CTIPMOV,
:OLD.FINICIO,
:OLD.FFIN,
:OLD.CTIPO,
:OLD.NMESESSINPENALI,
:OLD.NANYOSEFECTO,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PRODTRARESC', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PRODTRARESC;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PRODTRARESC" ENABLE;
