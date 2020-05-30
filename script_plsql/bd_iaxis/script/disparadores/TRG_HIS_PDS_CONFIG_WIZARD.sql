--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PDS_CONFIG_WIZARD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PDS_CONFIG_WIZARD" 
   BEFORE UPDATE OR DELETE
   ON PDS_CONFIG_WIZARD
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
      INSERT INTO his_PDS_CONFIG_WIZARD(
CCONFWIZ,
CMODO,
SPRODUC,
FORM_ACT,
CAMPO_ACT,
FORM_SIG,
FORM_ANT,
NITERACIO,
CSITUAC,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CCONFWIZ,
:OLD.CMODO,
:OLD.SPRODUC,
:OLD.FORM_ACT,
:OLD.CAMPO_ACT,
:OLD.FORM_SIG,
:OLD.FORM_ANT,
:OLD.NITERACIO,
:OLD.CSITUAC,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PDS_CONFIG_WIZARD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PDS_CONFIG_WIZARD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PDS_CONFIG_WIZARD" ENABLE;
