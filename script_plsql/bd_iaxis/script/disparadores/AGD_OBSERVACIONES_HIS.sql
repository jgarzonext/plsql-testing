--------------------------------------------------------
--  DDL for Trigger AGD_OBSERVACIONES_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AGD_OBSERVACIONES_HIS" 
   AFTER UPDATE
   ON agd_hisobserv
   FOR EACH ROW
DECLARE
   vnhisgd        NUMBER := 1;
BEGIN
   BEGIN
      SELECT NVL(MAX(ah.nhisobs) + 1, 1)
        INTO vnhisgd
        FROM agd_hisobserv ah
       WHERE ah.idobs = :OLD.idobs;
   EXCEPTION
      WHEN OTHERS THEN
         BEGIN
            SELECT NVL(MAX(ah.nhisobs) + 1, 1)
              INTO vnhisgd
              FROM agd_hisobserv ah;
         EXCEPTION
            WHEN OTHERS THEN
               vnhisgd := 1;
         END;
   END;

   INSERT INTO agd_hisobserv
               (cempres, idobs, nhisobs, finiobs, ffinobs, cconobs,
                ctipobs, ttitobs, tobs, fobs, frecordatorio,
                ctipagd, sseguro, nrecibo, cagente, nsinies,
                ntramit, cambito, cpriori, cprivobs, cusualt, falta)
        VALUES (:OLD.cempres, :OLD.idobs, vnhisgd, :OLD.falta, f_sysdate, :OLD.cconobs,
                :OLD.ctipobs, :OLD.ttitobs, :OLD.tobs, :OLD.fobs, :OLD.frecordatorio,
                :OLD.ctipagd, :OLD.sseguro, :OLD.nrecibo, :OLD.cagente, :OLD.nsinies,
                :OLD.ntramit, :OLD.cambito, :OLD.cpriori, :OLD.cprivobs, f_user, f_sysdate);
END;









/
ALTER TRIGGER "AXIS"."AGD_OBSERVACIONES_HIS" ENABLE;
