--------------------------------------------------------
--  DDL for Trigger TRG_HIS_FORPAGREN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_FORPAGREN" 
   BEFORE UPDATE OR DELETE
   ON FORPAGREN
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
      INSERT INTO his_FORPAGREN(
SPRODUC,
CFORPAG,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CFORPAG,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_FORPAGREN', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_FORPAGREN;





/
ALTER TRIGGER "AXIS"."TRG_HIS_FORPAGREN" ENABLE;
