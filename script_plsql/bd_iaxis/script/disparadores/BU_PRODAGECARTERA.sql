--------------------------------------------------------
--  DDL for Trigger BU_PRODAGECARTERA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_PRODAGECARTERA" 
   BEFORE UPDATE
   ON prodagecartera
   FOR EACH ROW
BEGIN
   INSERT INTO his_prodagecartera
               (cempres, sproduc, cagente, fcarant, fcarpro,
                cramo, cmodali, ctipseg, ccolect, fgenren,
                autmanual, cusualt, falta)
        VALUES (:OLD.cempres, :OLD.sproduc, :OLD.cagente, :OLD.fcarant, :OLD.fcarpro,
                :OLD.cramo, :OLD.cmodali, :OLD.ctipseg, :OLD.ccolect, :OLD.fgenren,
                :OLD.autmanual, f_user, f_sysdate);
END bu_recibos;





/
ALTER TRIGGER "AXIS"."BU_PRODAGECARTERA" ENABLE;
