--------------------------------------------------------
--  DDL for Trigger TRG_HIS_RENTASFORMULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_RENTASFORMULA" 
   BEFORE UPDATE OR DELETE
   ON RENTASFORMULA
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
      INSERT INTO his_RENTASFORMULA(
SPRODUC,
CCAMPO,
CLAVE,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CCAMPO,
:OLD.CLAVE,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_RENTASFORMULA', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_RENTASFORMULA;





/
ALTER TRIGGER "AXIS"."TRG_HIS_RENTASFORMULA" ENABLE;
