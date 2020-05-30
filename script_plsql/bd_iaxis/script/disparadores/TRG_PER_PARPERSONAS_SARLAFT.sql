--------------------------------------------------------
--  DDL for Trigger TRG_PER_PARPERSONAS_SARLAFT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_PARPERSONAS_SARLAFT" 
   BEFORE UPDATE OR DELETE OR INSERT
   ON per_parpersonas
   FOR EACH ROW
DECLARE
   v_count        NUMBER;
   vcempres       NUMBER;
BEGIN
   vcempres := pac_md_common.f_get_cxtempresa;

   SELECT COUNT(*)
     INTO v_count
     FROM codparam
    WHERE cgrppar IN('PFIN', 'PACT', 'POPR', 'PFON')
      AND cparam = :OLD.cparam;

   IF v_count > 0
      AND pac_parametros.f_parempresa_n(vcempres, 'PER_SARLAFT_PROP') = 1 THEN
      INSERT INTO per_sarlaft
                  (sperson, cagente, fefecto, cusualt, falta, cusuari, fmovimi)
           VALUES (:NEW.sperson, :NEW.cagente, TRUNC(f_sysdate), f_user, f_sysdate, NULL, NULL);
   END IF;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;   -- Solo se inserta la prima vez del dia.
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRG_PER_PARPERSONAS_SARLAFT', 99, 'Error', SQLERRM);
END;






/
ALTER TRIGGER "AXIS"."TRG_PER_PARPERSONAS_SARLAFT" ENABLE;
