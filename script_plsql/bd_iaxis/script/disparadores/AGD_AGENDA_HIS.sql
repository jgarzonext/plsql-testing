--------------------------------------------------------
--  DDL for Trigger AGD_AGENDA_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AGD_AGENDA_HIS" 
   AFTER UPDATE
   ON agd_agenda
   FOR EACH ROW
DECLARE
   vnhisgd        NUMBER := 1;
BEGIN
   BEGIN
      SELECT NVL(MAX(ah.nhisagd) + 1, 1)
        INTO vnhisgd
        FROM agd_hisagenda ah
       WHERE ah.idagenda = :OLD.idagenda;
   EXCEPTION
      WHEN OTHERS THEN
         BEGIN
            SELECT NVL(MAX(ah.nhisagd) + 1, 1)
              INTO vnhisgd
              FROM agd_hisagenda ah;
         EXCEPTION
            WHEN OTHERS THEN
               vnhisgd := 1;
         END;
   END;

   INSERT INTO agd_hisagenda
               (idagenda, nhisagd, finiagd, ffinagd, cusuari, cgrupo,
                tgrupo, cperagd, cusualt, falta)
        VALUES (:OLD.idagenda, vnhisgd, :OLD.falta, f_sysdate, :OLD.cusuari, :OLD.cgrupo,
                :OLD.tgrupo, :OLD.cperagd, f_user, f_sysdate);
END;









/
ALTER TRIGGER "AXIS"."AGD_AGENDA_HIS" ENABLE;
