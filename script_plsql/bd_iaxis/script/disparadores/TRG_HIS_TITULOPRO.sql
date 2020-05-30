--------------------------------------------------------
--  DDL for Trigger TRG_HIS_TITULOPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_TITULOPRO" 
   BEFORE UPDATE OR DELETE
   ON TITULOPRO
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
      INSERT INTO his_TITULOPRO(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CIDIOMA,
TTITULO,
TROTULO,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CRAMO,
:OLD.CMODALI,
:OLD.CTIPSEG,
:OLD.CCOLECT,
:OLD.CIDIOMA,
:OLD.TTITULO,
:OLD.TROTULO,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_TITULOPRO', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_TITULOPRO;





/
ALTER TRIGGER "AXIS"."TRG_HIS_TITULOPRO" ENABLE;
