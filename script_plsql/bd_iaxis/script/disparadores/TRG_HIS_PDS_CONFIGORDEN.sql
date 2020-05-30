--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PDS_CONFIGORDEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PDS_CONFIGORDEN" 
   BEFORE UPDATE OR DELETE
   ON PDS_CONFIGORDEN
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
      INSERT INTO his_PDS_CONFIGORDEN(
CMOTMOV,
TFORM,
SPRODUC,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CMOTMOV,
:OLD.TFORM,
:OLD.SPRODUC,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PDS_CONFIGORDEN', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PDS_CONFIGORDEN;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PDS_CONFIGORDEN" ENABLE;
