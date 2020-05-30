--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CLAUBENPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CLAUBENPRO" 
   BEFORE UPDATE OR DELETE
   ON CLAUBENPRO
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
      INSERT INTO his_CLAUBENPRO(
SPRODUC,
NORDEN,
SCLABEN,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.NORDEN,
:OLD.SCLABEN,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CLAUBENPRO', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CLAUBENPRO;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CLAUBENPRO" ENABLE;
