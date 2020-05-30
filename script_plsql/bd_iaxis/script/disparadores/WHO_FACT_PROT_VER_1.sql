--------------------------------------------------------
--  DDL for Trigger WHO_FACT_PROT_VER_1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_FACT_PROT_VER_1" 
   BEFORE INSERT OR UPDATE
   ON fact_prot_ver
   FOR EACH ROW
BEGIN
   IF :OLD.cusualt IS NULL THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;

      --
      INSERT INTO fact_prot_ver_his
                  (cempres, sproduc, VERSION, fecini, fecfin,
                   cusualt, falta, cusumod, fmodifi)
           VALUES (:OLD.cempres, :OLD.sproduc, :OLD.VERSION, :OLD.fecini, :OLD.fecfin,
                   :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
   END IF;
END;





/
ALTER TRIGGER "AXIS"."WHO_FACT_PROT_VER_1" ENABLE;