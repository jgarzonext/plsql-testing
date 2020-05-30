--------------------------------------------------------
--  DDL for Trigger TRG_PER_CCC_CDEFECTO_AR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_CCC_CDEFECTO_AR" 
   AFTER INSERT OR UPDATE OF cdefecto, cpagsin
   ON per_ccc
   FOR EACH ROW
BEGIN
   -- Debido a un error de trigger mutante
   IF NVL(pac_triggers.vccc_trigger, 0) = 0
      AND(NVL(:NEW.cdefecto, 0) = 1
          OR NVL(:NEW.cpagsin, 0) = 1) THEN
      pac_triggers.vccc_comptador := pac_triggers.vccc_comptador + 1;
      pac_triggers.vtccc_new(pac_triggers.vccc_comptador).sperson := :NEW.sperson;
      pac_triggers.vtccc_new(pac_triggers.vccc_comptador).cnordban := :NEW.cnordban;
      pac_triggers.vtccc_new(pac_triggers.vccc_comptador).cagente := :NEW.cagente;
      pac_triggers.vtccc_new(pac_triggers.vccc_comptador).cdefecto := NVL(:NEW.cdefecto, 0);
      pac_triggers.vtccc_old(pac_triggers.vccc_comptador).cdefecto := NVL(:OLD.cdefecto, 0);
      -- AXIS3305  JGR 18944  LCOL_P001 - PER - Tarjetas (nota: 0097836) - Inici
      pac_triggers.vtccc_new(pac_triggers.vccc_comptador).cpagsin := NVL(:NEW.cpagsin, 0);
      pac_triggers.vtccc_old(pac_triggers.vccc_comptador).cpagsin := NVL(:OLD.cpagsin, 0);
   -- AXIS3305  JGR 18944  LCOL_P001 - PER - Tarjetas (nota: 0097836) - Fi
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'trg_per_ccc_cdefecto_ar', 1,
                  pac_triggers.vccc_comptador || '-' || :NEW.sperson || '-' || :NEW.cnordban,
                  SQLERRM);
      pac_triggers.vccc_comptador := 0;
      pac_triggers.vccc_trigger := 0;
END;








/
ALTER TRIGGER "AXIS"."TRG_PER_CCC_CDEFECTO_AR" ENABLE;
