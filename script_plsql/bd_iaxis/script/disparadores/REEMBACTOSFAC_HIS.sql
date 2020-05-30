--------------------------------------------------------
--  DDL for Trigger REEMBACTOSFAC_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."REEMBACTOSFAC_HIS" 
   AFTER UPDATE
   ON reembactosfac
   FOR EACH ROW
BEGIN
   INSERT INTO hisreembactosfac
               (nreemb, nfact, nlinea, cacto, nacto, facto,
                itarcass, preemb, icass, itot, iextra, ipago,
                iahorro, cerror, fbaja, falta, ftrans,
                cusualta, corigen, nremesa, usuario, fecha, ctipo,
                ipagocomp, ftranscomp, nremesacomp)   -- BUG10704:DRA:17/07/2009
        --BUG11285-XVM-01102009
   VALUES      (:OLD.nreemb, :OLD.nfact, :OLD.nlinea, :OLD.cacto, :OLD.nacto, :OLD.facto,
                :OLD.itarcass, :OLD.preemb, :OLD.icass, :OLD.itot, :OLD.iextra, :OLD.ipago,
                :OLD.iahorro, :OLD.cerror, :OLD.fbaja, :OLD.falta, :OLD.ftrans,
                :OLD.cusualta, :OLD.corigen, :OLD.nremesa, f_user, f_sysdate, :OLD.ctipo,
                :OLD.ipagocomp, :OLD.ftranscomp, :OLD.nremesacomp);   -- BUG10704:DRA:17/07/2009
END;









/
ALTER TRIGGER "AXIS"."REEMBACTOSFAC_HIS" ENABLE;
