--------------------------------------------------------
--  DDL for Trigger AGD_APUNTE_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AGD_APUNTE_HIS" 
   AFTER UPDATE
   ON agd_apunte
   FOR EACH ROW
DECLARE
   vnhisgd        NUMBER := 1;
BEGIN
   BEGIN
      SELECT NVL(MAX(ah.nhisapu) + 1, 1)
        INTO vnhisgd
        FROM agd_hisapunte ah
       WHERE ah.idapunte = :OLD.idapunte;
   EXCEPTION
      WHEN OTHERS THEN
         BEGIN
            SELECT NVL(MAX(ah.nhisapu) + 1, 1)
              INTO vnhisgd
              FROM agd_hisapunte ah;
         EXCEPTION
            WHEN OTHERS THEN
               vnhisgd := 1;
         END;
   END;

   INSERT INTO agd_hisapunte
               (idapunte, nhisapu, finiapu, ffinapu, cconapu, ctipapu,
                ttitapu, tapunte, fapunte, frecordatorio, cusualt, falta)
        VALUES (:OLD.idapunte, vnhisgd, :OLD.falta, f_sysdate, :OLD.cconapu, :OLD.ctipapu,
                :OLD.ttitapu, :OLD.tapunte, :OLD.fapunte, :OLD.frecordatorio, f_user, f_sysdate);
END;









/
ALTER TRIGGER "AXIS"."AGD_APUNTE_HIS" ENABLE;
