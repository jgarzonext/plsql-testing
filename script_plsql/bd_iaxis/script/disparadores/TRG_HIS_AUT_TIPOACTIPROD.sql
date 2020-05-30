--------------------------------------------------------
--  DDL for Trigger TRG_HIS_AUT_TIPOACTIPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_AUT_TIPOACTIPROD" 
   BEFORE UPDATE OR DELETE
   ON AUT_TIPOACTIPROD
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
      INSERT INTO his_AUT_TIPOACTIPROD(
SPRODUC,
CACTIVI,
CTIPVEH,
CEMPRES,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CTIPVEH,
:OLD.CEMPRES,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_AUT_TIPOACTIPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_AUT_TIPOACTIPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_AUT_TIPOACTIPROD" ENABLE;
