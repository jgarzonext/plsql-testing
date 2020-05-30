--------------------------------------------------------
--  DDL for Trigger TRG_HIS_CNVPRODUCTOS_EXT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_CNVPRODUCTOS_EXT" 
   BEFORE UPDATE OR DELETE
   ON CNVPRODUCTOS_EXT
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
      INSERT INTO his_CNVPRODUCTOS_EXT(
SPRODUC,
CNV_SPR,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CNV_SPR,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_CNVPRODUCTOS_EXT', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_CNVPRODUCTOS_EXT;





/
ALTER TRIGGER "AXIS"."TRG_HIS_CNVPRODUCTOS_EXT" ENABLE;
