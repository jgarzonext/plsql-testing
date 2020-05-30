--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CLAUSUGAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CLAUSUGAR" 
   BEFORE UPDATE OR DELETE
   ON CLAUSUGAR
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
      INSERT INTO his_CLAUSUGAR(
CMODALI,
CCOLECT,
CRAMO,
CTIPSEG,
CGARANT,
CACTIVI,
SCLAPRO,
CACCION,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CMODALI,
:OLD.CCOLECT,
:OLD.CRAMO,
:OLD.CTIPSEG,
:OLD.CGARANT,
:OLD.CACTIVI,
:OLD.SCLAPRO,
:OLD.CACCION,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CLAUSUGAR', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CLAUSUGAR;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CLAUSUGAR" ENABLE;
