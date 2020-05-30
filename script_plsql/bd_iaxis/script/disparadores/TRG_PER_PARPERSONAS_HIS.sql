--------------------------------------------------------
--  DDL for Trigger TRG_PER_PARPERSONAS_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_PARPERSONAS_HIS" 
   BEFORE UPDATE OR DELETE
   ON per_parpersonas
   FOR EACH ROW
BEGIN
   IF :NEW.cparam <> :OLD.cparam
      OR NVL(:NEW.sperson, -1) <> :OLD.sperson   -- NVL para los casos de delete
      OR :NEW.cagente <> :OLD.cagente
      OR :NEW.nvalpar <> :OLD.nvalpar
      OR :NEW.tvalpar <> :OLD.tvalpar
      OR :NEW.fvalpar <> :OLD.fvalpar THEN
      INSERT INTO hisper_parpersonas
                  (sparpers, cparam, sperson, cagente,
                   nvalpar, tvalpar, fvalpar, cusuari, fmovimi,
                   cusumod, fusumod)
           VALUES (seq_hisper_parpersonas.NEXTVAL, :OLD.cparam, :OLD.sperson, :OLD.cagente,
                   :OLD.nvalpar, :OLD.tvalpar, :OLD.fvalpar, :OLD.cusuari, :OLD.fmovimi,
                   f_user, f_sysdate);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRG_PER_PARPERSONAS_HIS', 99, 'Error', SQLERRM);
END;






/
ALTER TRIGGER "AXIS"."TRG_PER_PARPERSONAS_HIS" ENABLE;
