--------------------------------------------------------
--  DDL for Trigger TRG_HIS_SIN_PARGES_GARANTIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_SIN_PARGES_GARANTIAS" 
   BEFORE UPDATE OR DELETE
   ON SIN_PARGES_GARANTIAS
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
      INSERT INTO his_SIN_PARGES_GARANTIAS(
SPRODUC,
CACTIVI,
CGARANT,
CTIPREG,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.CTIPREG,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_SIN_PARGES_GARANTIAS', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_SIN_PARGES_GARANTIAS;





/
ALTER TRIGGER "AXIS"."TRG_HIS_SIN_PARGES_GARANTIAS" ENABLE;