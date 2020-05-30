--------------------------------------------------------
--  DDL for Trigger TRG_HIS_ACTIVIPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_ACTIVIPROD" 
   BEFORE UPDATE OR DELETE
   ON ACTIVIPROD
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
      INSERT INTO his_ACTIVIPROD(
CMODALI,
CCOLECT,
CTIPSEG,
CACTIVI,
CRAMO,
CACTIVO,
SPRODUC,
FESTADO,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CMODALI,
:OLD.CCOLECT,
:OLD.CTIPSEG,
:OLD.CACTIVI,
:OLD.CRAMO,
:OLD.CACTIVO,
:OLD.SPRODUC,
:OLD.FESTADO,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_ACTIVIPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_ACTIVIPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_ACTIVIPROD" ENABLE;
