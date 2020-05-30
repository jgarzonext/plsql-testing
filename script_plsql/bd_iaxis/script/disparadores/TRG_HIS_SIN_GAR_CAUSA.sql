--------------------------------------------------------
--  DDL for Trigger TRG_HIS_SIN_GAR_CAUSA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_SIN_GAR_CAUSA" 
   BEFORE UPDATE OR DELETE
   ON SIN_GAR_CAUSA
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
      INSERT INTO his_SIN_GAR_CAUSA(
SPRODUC,
CACTIVI,
CGARANT,
CCAUSIN,
CMOTSIN,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
NUMSINI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.CCAUSIN,
:OLD.CMOTSIN,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
:OLD.NUMSINI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_SIN_GAR_CAUSA', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_SIN_GAR_CAUSA;





/
ALTER TRIGGER "AXIS"."TRG_HIS_SIN_GAR_CAUSA" ENABLE;
