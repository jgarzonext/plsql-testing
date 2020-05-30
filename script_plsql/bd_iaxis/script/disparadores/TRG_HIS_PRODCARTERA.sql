--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PRODCARTERA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PRODCARTERA" 
   BEFORE UPDATE OR DELETE
   ON PRODCARTERA
   FOR EACH ROW
   DECLARE
       vaccion VARCHAR2(2);
BEGIN
   IF UPDATING THEN
       vaccion := 'U';
   ELSE
       vaccion := 'D';
   END IF;

      -- crear registro hist�rico
      INSERT INTO his_PRODCARTERA(
CEMPRES,
SPRODUC,
FCARANT,
FCARPRO,
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
FGENREN,
AUTMANUAL,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CEMPRES,
:OLD.SPRODUC,
:OLD.FCARANT,
:OLD.FCARPRO,
:OLD.CRAMO,
:OLD.CMODALI,
:OLD.CTIPSEG,
:OLD.CCOLECT,
:OLD.FGENREN,
:OLD.AUTMANUAL,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PRODCARTERA', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PRODCARTERA;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PRODCARTERA" ENABLE;