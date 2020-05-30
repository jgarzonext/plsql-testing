--------------------------------------------------------
--  DDL for Trigger BU_PERSONAS_ULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_PERSONAS_ULK" 
   BEFORE INSERT OR UPDATE
   ON personas_ulk
   FOR EACH ROW
DECLARE
   CURSOR polisses(persona IN NUMBER) IS
      SELECT sseguro, cramo, cmodali, ctipseg, ccolect, fefecto
        FROM seguros
       WHERE sseguro IN(SELECT sseguro
                          FROM asegurados
                         WHERE sperson = persona)
         AND csituac = 0;

   tproducto      tipos_producto.tipo_producto%TYPE;
   tclase         tipos_producto.clase%TYPE;
BEGIN
   IF :NEW.cperhos <> :OLD.cperhos
      OR :NEW.cnifhos <> :OLD.cnifhos THEN
      FOR reg IN polisses(:NEW.sperson) LOOP
         SELECT tipo_producto, clase
           INTO tproducto, tclase
           FROM tipos_producto
          WHERE cramo = reg.cramo
            AND cmodali = reg.cmodali
            AND ccolect = reg.ccolect
            AND ctipseg = reg.ctipseg;

         ----
         IF tclase IN('PP', 'AHORRO')
            OR tproducto = 'PIG' THEN
            INSERT INTO pila_ifases
                        (sseguro, fecha, fecha_envio, ifase)
                 VALUES (reg.sseguro, reg.fefecto, NULL, 'FSE0620');
         END IF;
      ----
      END LOOP;
   END IF;
END;









/
ALTER TRIGGER "AXIS"."BU_PERSONAS_ULK" ENABLE;
