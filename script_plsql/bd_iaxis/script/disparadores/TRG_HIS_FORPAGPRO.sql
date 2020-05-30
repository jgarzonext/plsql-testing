--------------------------------------------------------
--  DDL for Trigger TRG_HIS_FORPAGPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_FORPAGPRO" 
   BEFORE UPDATE OR DELETE
   ON FORPAGPRO
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
      INSERT INTO his_FORPAGPRO(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CFORPAG,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CRAMO,
:OLD.CMODALI,
:OLD.CTIPSEG,
:OLD.CCOLECT,
:OLD.CFORPAG,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_FORPAGPRO', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_FORPAGPRO;





/
ALTER TRIGGER "AXIS"."TRG_HIS_FORPAGPRO" ENABLE;
