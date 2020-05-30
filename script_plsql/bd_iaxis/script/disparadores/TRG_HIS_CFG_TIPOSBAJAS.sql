--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CFG_TIPOSBAJAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CFG_TIPOSBAJAS" 
   BEFORE UPDATE OR DELETE
   ON CFG_TIPOSBAJAS
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
      INSERT INTO his_CFG_TIPOSBAJAS(
CEMPRES,
SPRODUC,
CTIPBAJA,
CCFGACC,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CEMPRES,
:OLD.SPRODUC,
:OLD.CTIPBAJA,
:OLD.CCFGACC,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CFG_TIPOSBAJAS', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CFG_TIPOSBAJAS;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CFG_TIPOSBAJAS" ENABLE;
