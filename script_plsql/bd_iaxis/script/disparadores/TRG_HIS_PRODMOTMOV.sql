--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PRODMOTMOV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PRODMOTMOV" 
   BEFORE UPDATE OR DELETE
   ON PRODMOTMOV
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
      INSERT INTO his_PRODMOTMOV(
SPRODUC,
CMOTMOV,
TFORMS,
NORDEN,
TREPORT,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CMOTMOV,
:OLD.TFORMS,
:OLD.NORDEN,
:OLD.TREPORT,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PRODMOTMOV', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PRODMOTMOV;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PRODMOTMOV" ENABLE;
