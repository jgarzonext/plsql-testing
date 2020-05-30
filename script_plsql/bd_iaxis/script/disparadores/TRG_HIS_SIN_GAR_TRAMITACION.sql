--------------------------------------------------------
--  DDL for Trigger TRG_HIS_SIN_GAR_TRAMITACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_SIN_GAR_TRAMITACION" 
   BEFORE UPDATE OR DELETE
   ON SIN_GAR_TRAMITACION
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
      INSERT INTO his_SIN_GAR_TRAMITACION(
SPRODUC,
CACTIVI,
CTRAMIT,
CGARANT,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CTRAMIT,
:OLD.CGARANT,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_SIN_GAR_TRAMITACION', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_SIN_GAR_TRAMITACION;





/
ALTER TRIGGER "AXIS"."TRG_HIS_SIN_GAR_TRAMITACION" ENABLE;
