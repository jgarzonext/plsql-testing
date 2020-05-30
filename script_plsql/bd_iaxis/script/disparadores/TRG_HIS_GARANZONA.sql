--------------------------------------------------------
--  DDL for Trigger TRG_HIS_GARANZONA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_GARANZONA" 
   BEFORE UPDATE OR DELETE
   ON GARANZONA
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
      INSERT INTO his_GARANZONA(
SPRODUC,
CACTIVI,
CGARANT,
SZONIF,
SZONA,
CZONA,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.SZONIF,
:OLD.SZONA,
:OLD.CZONA,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_GARANZONA', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_GARANZONA;





/
ALTER TRIGGER "AXIS"."TRG_HIS_GARANZONA" ENABLE;
