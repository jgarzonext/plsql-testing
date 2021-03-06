--------------------------------------------------------
--  DDL for Trigger TRG_HIS_PROFESIONPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HIS_PROFESIONPROD" 
   BEFORE UPDATE OR DELETE
   ON PROFESIONPROD
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
      INSERT INTO his_PROFESIONPROD(
CEMPRES,
CRAMO,
CMODALI,
CTIPSEG,
CCOLECT,
CACTIVI,
CGARANT,
CGRUPPRO,
CPROFES,
PRECARG,
IEXTRAP,
CRETEN,
FFECINI,
FFECFIN,
CGRURIES,
CUSUALT,
FALTA,
CUSUMOD,
FMODIFI,
CUSUHIST,FCREAHIST,ACCION)
VALUES(
:OLD.CEMPRES,
:OLD.CRAMO,
:OLD.CMODALI,
:OLD.CTIPSEG,
:OLD.CCOLECT,
:OLD.CACTIVI,
:OLD.CGARANT,
:OLD.CGRUPPRO,
:OLD.CPROFES,
:OLD.PRECARG,
:OLD.IEXTRAP,
:OLD.CRETEN,
:OLD.FFECINI,
:OLD.FFECFIN,
:OLD.CGRURIES,
:OLD.CUSUALT,
:OLD.FALTA,
:OLD.CUSUMOD,
:OLD.FMODIFI,
f_user, f_sysdate, ''||vaccion||'');
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_his_PROFESIONPROD', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_his_PROFESIONPROD;





/
ALTER TRIGGER "AXIS"."TRG_HIS_PROFESIONPROD" ENABLE;
