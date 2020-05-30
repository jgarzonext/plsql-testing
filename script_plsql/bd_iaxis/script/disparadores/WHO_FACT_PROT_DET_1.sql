--------------------------------------------------------
--  DDL for Trigger WHO_FACT_PROT_DET_1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_FACT_PROT_DET_1" 
   BEFORE INSERT OR UPDATE
   ON fact_prot_det
   FOR EACH ROW
BEGIN
   IF :OLD.cusualt IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;

      --
      INSERT INTO fact_prot_det_his
                  (cempres, sproduc, VERSION, cactivi, cgarant,
                   aplica, capping, floring, cusualt, falta, cusumod,
                   fmodifi)
           VALUES (:OLD.cempres, :OLD.sproduc, :OLD.VERSION, :OLD.cactivi, :OLD.cgarant,
                   :OLD.aplica, :OLD.capping, :OLD.floring, :OLD.cusualt, :OLD.falta, f_user,
                   f_sysdate);
   END IF;
END;





/
ALTER TRIGGER "AXIS"."WHO_FACT_PROT_DET_1" ENABLE;
