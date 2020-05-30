--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CAUSANUL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CAUSANUL" 
   BEFORE UPDATE OR DELETE
   ON CAUSANUL
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
      INSERT INTO his_CAUSANUL(
SPRODUC,
CTIPBAJA,
CMOTMOV,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CTIPBAJA,
:OLD.CMOTMOV,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CAUSANUL', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CAUSANUL;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CAUSANUL" ENABLE;
