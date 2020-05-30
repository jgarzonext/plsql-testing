--------------------------------------------------------
--  DDL for Trigger REEMBFACT_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."REEMBFACT_HIS" 
   AFTER UPDATE
   ON reembfact
   FOR EACH ROW
BEGIN
   INSERT INTO hisreembfact
               (nreemb, nfact, nfact_cli, ncass_ase, ncass,
                facuse, ffactura, fbaja, cusubaja, impfact,
                falta, cusualta, corigen, usuario, fecha, ctipofac,
                cimpresion)   -- BUG10704:DRA:17/07/2009
        VALUES (:OLD.nreemb, :OLD.nfact, :OLD.nfact_cli, :OLD.ncass_ase, :OLD.ncass,
                :OLD.facuse, :OLD.ffactura, :OLD.fbaja, :OLD.cusubaja, :OLD.impfact,
                :OLD.falta, :OLD.cusualta, :OLD.corigen, f_user, f_sysdate, :OLD.ctipofac,
                :OLD.cimpresion);   -- BUG10704:DRA:17/07/2009
END;









/
ALTER TRIGGER "AXIS"."REEMBFACT_HIS" ENABLE;
