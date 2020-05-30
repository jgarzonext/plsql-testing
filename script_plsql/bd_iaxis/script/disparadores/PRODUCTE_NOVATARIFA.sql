--------------------------------------------------------
--  DDL for Trigger PRODUCTE_NOVATARIFA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."PRODUCTE_NOVATARIFA" 
AFTER  INSERT  ON productos
FOR EACH ROW
DECLARE
   lctipemp NUMBER;
BEGIN
     SELECT ctipemp into lctipemp
     FROM empresas
     WHERE cempres in (SELECT cempres
                        FROM codiram
                       WHERE cramo=:new.cramo);
     IF lctipemp= 1 THEN
        INSERT INTO parproductos (SPRODUC,CPARPRO,CVALPAR)
               VALUES (:new.sproduc,'NOVATARIFA',1);
     END IF;
EXCEPTION
   WHEN value_error THEN
        dbms_output.put_line(SQLERRM);
   WHEN others THEN
        dbms_output.put_line(SQLERRM);
END;









/
ALTER TRIGGER "AXIS"."PRODUCTE_NOVATARIFA" ENABLE;
