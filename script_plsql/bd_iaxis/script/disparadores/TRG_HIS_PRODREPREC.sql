--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PRODREPREC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PRODREPREC" 
   BEFORE UPDATE OR DELETE
   ON PRODREPREC
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
      INSERT INTO his_PRODREPREC(
SIDPRODP,
SPRODUC,
CTIPOIMP,
FINIEFE,
FFINEFE,
CTIPNIMP,
CAGENTE,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.SIDPRODP,
:OLD.SPRODUC,
:OLD.CTIPOIMP,
:OLD.FINIEFE,
:OLD.FFINEFE,
:OLD.CTIPNIMP,
:OLD.CAGENTE,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PRODREPREC', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PRODREPREC;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PRODREPREC" ENABLE;
