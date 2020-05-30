--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CFG_WIZARD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CFG_WIZARD" 
   BEFORE UPDATE OR DELETE
   ON CFG_WIZARD
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
      INSERT INTO his_CFG_WIZARD(
CEMPRES,
CMODO,
CCFGWIZ,
SPRODUC,
CIDCFG,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CEMPRES,
:OLD.CMODO,
:OLD.CCFGWIZ,
:OLD.SPRODUC,
:OLD.CIDCFG,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CFG_WIZARD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CFG_WIZARD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CFG_WIZARD" ENABLE;
