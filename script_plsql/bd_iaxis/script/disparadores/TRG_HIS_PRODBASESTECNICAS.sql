--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PRODBASESTECNICAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PRODBASESTECNICAS" 
   BEFORE UPDATE OR DELETE
   ON PRODBASESTECNICAS
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
      INSERT INTO his_PRODBASESTECNICAS(
SPRODUC,
CTIPO,
TFUNCION,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CTIPO,
:OLD.TFUNCION,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PRODBASESTECNICAS', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PRODBASESTECNICAS;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PRODBASESTECNICAS" ENABLE;
