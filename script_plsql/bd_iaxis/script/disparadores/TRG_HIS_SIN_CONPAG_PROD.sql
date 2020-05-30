--------------------------------------------------------
--  DDL for Trigger TRG_HIS_SIN_CONPAG_PROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_SIN_CONPAG_PROD" 
   BEFORE UPDATE OR DELETE
   ON SIN_CONPAG_PROD
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
      INSERT INTO his_SIN_CONPAG_PROD(
CCONPAG,
SPRODUC,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CCONPAG,
:OLD.SPRODUC,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_SIN_CONPAG_PROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_SIN_CONPAG_PROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_SIN_CONPAG_PROD" ENABLE;
