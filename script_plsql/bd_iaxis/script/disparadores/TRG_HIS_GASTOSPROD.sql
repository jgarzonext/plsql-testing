--------------------------------------------------------
--  DDL for Trigger TRG_HIS_GASTOSPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_GASTOSPROD" 
   BEFORE UPDATE OR DELETE
   ON GASTOSPROD
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
      INSERT INTO his_GASTOSPROD(
SPRODUC,
FINIVIG,
FFINVIG,
PGASTOS,
CTIPAPL,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.FINIVIG,
:OLD.FFINVIG,
:OLD.PGASTOS,
:OLD.CTIPAPL,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_GASTOSPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_GASTOSPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_GASTOSPROD" ENABLE;
