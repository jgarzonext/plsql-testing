--------------------------------------------------------
--  DDL for Trigger TRG_PER_LOPD_CESTADO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PER_LOPD_CESTADO" 
   BEFORE UPDATE OF cestado
   ON per_lopd
   FOR EACH ROW
DECLARE
   vnorden        hisper_lopd_cestado.norden%TYPE;
BEGIN
   SELECT NVL(MAX(norden), 0) + 1
     INTO vnorden
     FROM hisper_lopd_cestado
    WHERE sperson = :OLD.sperson;

   INSERT INTO hisper_lopd_cestado
               (sperson, norden, cestado_old, cusumod, fusumod)
        VALUES (:OLD.sperson, vnorden, :OLD.cestado, f_user, f_sysdate);
END;







/
ALTER TRIGGER "AXIS"."TRG_PER_LOPD_CESTADO" ENABLE;
