--------------------------------------------------------
--  DDL for Trigger WHO_FACT_PROT_DET_2
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_FACT_PROT_DET_2" 
   BEFORE DELETE
   ON fact_prot_det
   FOR EACH ROW
BEGIN
   INSERT INTO fact_prot_det_his
               (cempres, sproduc, VERSION, cactivi, cgarant,
                aplica, capping, floring, cusualt, falta, cusumod,
                fmodifi)
        VALUES (:OLD.cempres, :OLD.sproduc, :OLD.VERSION, :OLD.cactivi, :OLD.cgarant,
                :OLD.aplica, :OLD.capping, :OLD.floring, :OLD.cusualt, :OLD.falta, f_user,
                f_sysdate);
END;





/
ALTER TRIGGER "AXIS"."WHO_FACT_PROT_DET_2" ENABLE;
