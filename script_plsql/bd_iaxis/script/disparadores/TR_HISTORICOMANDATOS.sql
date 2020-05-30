--------------------------------------------------------
--  DDL for Trigger TR_HISTORICOMANDATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TR_HISTORICOMANDATOS" 
   AFTER UPDATE OF sperson,
                   cnordban,
                   ctipban,
                   cbancar,
                   ccobban,
                   sseguro,
                   cmandato,
                   cestado,
                   ffirma,
                   fusualta,
                   cusualta,
                   fvencim,
                   tseguri
   ON mandatos
   FOR EACH ROW
BEGIN
   IF (:OLD.sperson <> :NEW.sperson
       OR :OLD.cnordban <> :NEW.cnordban
       OR :OLD.ctipban <> :NEW.ctipban
       OR :OLD.cbancar <> :NEW.cbancar
       OR :OLD.ccobban <> :NEW.ccobban
       OR :OLD.sseguro <> :NEW.sseguro
       OR :OLD.cmandato <> :NEW.cmandato
       OR :OLD.cestado <> :NEW.cestado
       OR :OLD.ffirma <> :NEW.ffirma
       OR :OLD.fusualta <> :NEW.fusualta
       OR :OLD.cusualta <> :NEW.cusualta
       OR :OLD.fvencim <> :NEW.fvencim
       OR :OLD.tseguri <> :NEW.tseguri) THEN
      INSERT INTO historicomandatos
                  (sperson, cnordban, ctipban, cbancar, ccobban,
                   sseguro, cmandato, cestado, ffirma, fusualta, cusualta,
                   fvencim, tseguri)
           VALUES (:OLD.sperson, :OLD.cnordban, :OLD.ctipban, :OLD.cbancar, :OLD.ccobban,
                   :OLD.sseguro, :OLD.cmandato, :OLD.cestado, :OLD.ffirma, f_sysdate, f_user,
                   :OLD.fvencim, :OLD.tseguri);
   END IF;
END tr_historicomandatos;





/
ALTER TRIGGER "AXIS"."TR_HISTORICOMANDATOS" ENABLE;
