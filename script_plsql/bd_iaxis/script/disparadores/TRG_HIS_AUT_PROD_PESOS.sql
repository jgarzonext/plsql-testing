--------------------------------------------------------
--  DDL for Trigger TRG_HIS_AUT_PROD_PESOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_AUT_PROD_PESOS" 
   BEFORE UPDATE OR DELETE
   ON AUT_PROD_PESOS
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
      INSERT INTO his_AUT_PROD_PESOS(
SPRODUC,
CPESO,
CIDIOMA,
TPESO,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CPESO,
:OLD.CIDIOMA,
:OLD.TPESO,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_AUT_PROD_PESOS', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_AUT_PROD_PESOS;





/
ALTER TRIGGER "AXIS"."TRG_HIS_AUT_PROD_PESOS" ENABLE;
