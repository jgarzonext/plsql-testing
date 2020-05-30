--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PDS_SUPL_CONFIG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PDS_SUPL_CONFIG" 
   BEFORE UPDATE OR DELETE
   ON PDS_SUPL_CONFIG
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
      INSERT INTO his_PDS_SUPL_CONFIG(
CCONFIG,
CMOTMOV,
SPRODUC,
CMODO,
CTIPFEC,
TFECREC,
SUPLCOLEC,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CCONFIG,
:OLD.CMOTMOV,
:OLD.SPRODUC,
:OLD.CMODO,
:OLD.CTIPFEC,
:OLD.TFECREC,
:OLD.SUPLCOLEC,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PDS_SUPL_CONFIG', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PDS_SUPL_CONFIG;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PDS_SUPL_CONFIG" ENABLE;
