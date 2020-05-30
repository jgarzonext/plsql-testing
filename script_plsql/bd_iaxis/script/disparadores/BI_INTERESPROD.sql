--------------------------------------------------------
--  DDL for Trigger BI_INTERESPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BI_INTERESPROD" 
   BEFORE INSERT
   ON interesprod
   FOR EACH ROW
DECLARE
   coment1        VARCHAR2(10);
   agrpro         NUMBER;
   t_clase        VARCHAR2(10);
   t_producto     VARCHAR2(10);
   ramo           VARCHAR2(8);
   modalidad      VARCHAR2(2);
   tipseg         VARCHAR2(2);
   colect         VARCHAR2(2);
BEGIN
   BEGIN
      SELECT tipo_producto, clase
        INTO t_producto, t_clase
        FROM tipos_producto
       WHERE cramo = :NEW.cramo
         AND cmodali = :NEW.cmodali
         AND ctipseg = :NEW.ctipseg
         AND ccolect = :NEW.ccolect;
   EXCEPTION
      WHEN OTHERS THEN
         t_producto := NULL;
         t_clase := NULL;
   END;

/*******************
   BEGIN
      SELECT cagrpro
      INTO agrpro
      FROM productos
      WHERE cramo = :new.cramo
      AND cmodali = :new.cmodali
      AND ctipseg = :new.ctipseg
      AND ccolect = :new.ccolect;
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         agrpro := NULL;
   END;
*********************/
--------    IF agrpro = 2 THEN  -----
   ramo := SUBSTR(TO_CHAR(:NEW.cramo, '09'), 2, 2);
   modalidad := SUBSTR(TO_CHAR(:NEW.cmodali, '09'), 2, 2);
   tipseg := SUBSTR(TO_CHAR(:NEW.ctipseg, '09'), 2, 2);
   colect := SUBSTR(TO_CHAR(:NEW.ccolect, '09'), 2, 2);

   IF t_producto = 'PLA18' THEN
-------  IF ramo = '02' AND modalidad = '02' AND tipseg IN ('01','02') AND colect IN ('00','01') THEN
      --Pla 18
      INSERT INTO pila_pendientes
                  (sseguro, ffecmov, iimpmov, ccodmov,
                   coment,
                   fecha_envio)
           VALUES (0, :NEW.finivig, :NEW.pinttot, 20,
                   '0405' || '-' || ramo || '-' || modalidad || '-' || tipseg || '-' || colect
                   || '-' || TO_CHAR(:NEW.finivig, 'dd/mm/yyyy') || ' '
                   || TO_CHAR(ADD_MONTHS(:NEW.finivig, 6) - 1, 'dd/mm/yyyy'),
                   NULL);
-------  ELSE
   ELSIF t_producto IN('PEG', 'PIG') THEN
      --PEG i PIG
      INSERT INTO pila_pendientes
                  (sseguro, ffecmov, iimpmov, ccodmov,
                   coment,
                   fecha_envio)
           VALUES (0, :NEW.finivig, :NEW.pinttot, 20,
                   '0203' || '-' || ramo || '-' || modalidad || '-' || tipseg || '-' || colect
                   || ' ' || TO_CHAR(:NEW.finivig, 'dd/mm/yyyy') || ' '
                   || TO_CHAR(ADD_MONTHS(:NEW.finivig, 6) - 1, 'dd/mm/yyyy'),
                   NULL);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      NULL;
END bi_interesprod;








/
ALTER TRIGGER "AXIS"."BI_INTERESPROD" ENABLE;
