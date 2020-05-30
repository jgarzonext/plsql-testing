--------------------------------------------------------
--  DDL for Trigger TRG_HIS_AUT_MARCAS_PROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_AUT_MARCAS_PROD" 
   BEFORE UPDATE OR DELETE
   ON AUT_MARCAS_PROD
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
      INSERT INTO his_AUT_MARCAS_PROD(
CEMPRES,
SPRODUC,
CACTIVI,
CMARCA,
CMODELO,
CVERSION,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CEMPRES,
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CMARCA,
:OLD.CMODELO,
:OLD.CVERSION,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_AUT_MARCAS_PROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_AUT_MARCAS_PROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_AUT_MARCAS_PROD" ENABLE;
