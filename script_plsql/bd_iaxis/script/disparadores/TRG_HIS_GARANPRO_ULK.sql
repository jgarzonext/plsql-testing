--------------------------------------------------------
--  DDL for Trigger TRG_HIS_GARANPRO_ULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_GARANPRO_ULK" 
   BEFORE UPDATE OR DELETE
   ON GARANPRO_ULK
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
      INSERT INTO his_GARANPRO_ULK(
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CGARANT,
NFUNCIO,
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
:OLD.CGARANT,
:OLD.NFUNCIO,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_GARANPRO_ULK', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_GARANPRO_ULK;





/
ALTER TRIGGER "AXIS"."TRG_HIS_GARANPRO_ULK" ENABLE;
