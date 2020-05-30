--------------------------------------------------------
--  DDL for Trigger TRG_HIS_INTERTECPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_INTERTECPROD" 
   BEFORE UPDATE OR DELETE
   ON INTERTECPROD
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
      INSERT INTO his_INTERTECPROD(
SPRODUC,
NCODINT,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.NCODINT,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_INTERTECPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_INTERTECPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_INTERTECPROD" ENABLE;
