--------------------------------------------------------
--  DDL for Trigger TRG_HIS_DETGARANFORMULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_DETGARANFORMULA" 
   BEFORE UPDATE OR DELETE
   ON DETGARANFORMULA
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
      INSERT INTO his_DETGARANFORMULA(
SPRODUC,
CACTIVI,
CGARANT,
CCAMPO,
CCONCEP,
NORDEN,
CLAVE,
CLAVE2,
FALTA,
CUSUALT,
FMODIFI,
CUSUMOD,
NDECVIS,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SPRODUC,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.CCAMPO,
:OLD.CCONCEP,
:OLD.NORDEN,
:OLD.CLAVE,
:OLD.CLAVE2,
:OLD.FALTA,
:OLD.CUSUALT,
:OLD.FMODIFI,
:OLD.CUSUMOD,
:OLD.NDECVIS,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_DETGARANFORMULA', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_DETGARANFORMULA;





/
ALTER TRIGGER "AXIS"."TRG_HIS_DETGARANFORMULA" ENABLE;
