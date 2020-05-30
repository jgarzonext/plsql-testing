--------------------------------------------------------
--  DDL for Trigger WHO_FACT_PROT_VER_2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_FACT_PROT_VER_2" 
   BEFORE DELETE
   ON fact_prot_ver
   FOR EACH ROW
BEGIN
   INSERT INTO fact_prot_ver_his
               (cempres, sproduc, VERSION, fecini, fecfin,
                cusualt, falta, cusumod, fmodifi)
        VALUES (:OLD.cempres, :OLD.sproduc, :OLD.VERSION, :OLD.fecini, :OLD.fecfin,
                :OLD.cusualt, :OLD.falta, f_user, f_sysdate);
END;





/
ALTER TRIGGER "AXIS"."WHO_FACT_PROT_VER_2" ENABLE;
