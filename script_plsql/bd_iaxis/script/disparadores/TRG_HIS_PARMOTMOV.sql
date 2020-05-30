--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PARMOTMOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PARMOTMOV" 
   BEFORE UPDATE OR DELETE
   ON PARMOTMOV
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
      INSERT INTO his_PARMOTMOV(
CMOTMOV,
CPARMOT,
CVALPAR,
SPRODUC,
TVALPAR,
FVALPAR,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CMOTMOV,
:OLD.CPARMOT,
:OLD.CVALPAR,
:OLD.SPRODUC,
:OLD.TVALPAR,
:OLD.FVALPAR,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PARMOTMOV', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PARMOTMOV;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PARMOTMOV" ENABLE;
