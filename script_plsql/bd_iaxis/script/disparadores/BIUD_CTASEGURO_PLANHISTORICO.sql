--------------------------------------------------------
--  DDL for Trigger BIUD_CTASEGURO_PLANHISTORICO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BIUD_CTASEGURO_PLANHISTORICO" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON ctaseguro
   FOR EACH ROW
DECLARE
   PLAN           NUMBER;
   v_cagrpro      NUMBER;
BEGIN
   IF DELETING THEN
      SELECT cagrpro
        INTO v_cagrpro
        FROM seguros
       WHERE sseguro = :OLD.sseguro;
   ELSE
      SELECT cagrpro
        INTO v_cagrpro
        FROM seguros
       WHERE sseguro = :NEW.sseguro;
   END IF;
-- 12442.NMM.31/12/2009.i.
-- Sólo se debe EJECUTAR EL TRIGGER para los Planes de Pensiones
/*IF v_cagrpro = 11 THEN
   -- Este trigger actualiza la tabla PLANHISTORICO
   -- de manera on-line en cada modificación de la tabla CTASEGURO
   IF INSERTING THEN
      -- Hemos insertado
      SELECT proplapen.ccodpla
        INTO PLAN
        FROM proplapen, productos, seguros
       WHERE seguros.sseguro = :NEW.sseguro
         AND productos.sproduc = seguros.sproduc
         AND proplapen.sproduc = productos.sproduc;

      BEGIN
         INSERT INTO planhistorico
                     (ccodpla, fhistorico, cmovimi, nopera, nparti,
                      imovimi)
         VALUES      (PLAN, TRUNC(:NEW.ffecmov), :NEW.cmovimi, 1, NVL(:NEW.nparpla, 0),
                      NVL(:NEW.imovimi, 0));
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX THEN
            UPDATE planhistorico
            SET nopera = nopera + 1,
                nparti = NVL(nparti, 0) + NVL(:NEW.nparpla, 0),
                imovimi = NVL(imovimi, 0) + NVL(:NEW.imovimi, 0)
            WHERE  ccodpla = PLAN
               AND TRUNC(fhistorico) = TRUNC(:NEW.ffecmov)
               AND cmovimi = :NEW.cmovimi;
      END;
   ELSIF UPDATING THEN
      -- Hacemos una moficación
      SELECT proplapen.ccodpla
        INTO PLAN
        FROM proplapen, productos, seguros
       WHERE seguros.sseguro = :NEW.sseguro
         AND productos.sproduc = seguros.sproduc
         AND proplapen.sproduc = productos.sproduc;

      BEGIN
         UPDATE planhistorico
         SET nopera = nopera - 1,
             nparti = NVL(nparti, 0) - NVL(:OLD.nparpla, 0),
             imovimi = NVL(imovimi, 0) - NVL(:OLD.imovimi, 0)
         WHERE  ccodpla = PLAN
            AND TRUNC(fhistorico) = TRUNC(:OLD.ffecmov)
            AND cmovimi = :OLD.cmovimi;

         INSERT INTO planhistorico
                     (ccodpla, fhistorico, cmovimi, nopera, nparti,
                      imovimi)
         VALUES      (PLAN, TRUNC(:NEW.ffecmov), :NEW.cmovimi, 1, NVL(:NEW.nparpla, 0),
                      NVL(:NEW.imovimi, 0));
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX THEN
            UPDATE planhistorico
            SET nopera = nopera + 1,
                nparti = NVL(nparti, 0) + NVL(:NEW.nparpla, 0),
                imovimi = NVL(imovimi, 0) + NVL(:NEW.imovimi, 0)
            WHERE  ccodpla = PLAN
               AND TRUNC(fhistorico) = TRUNC(:NEW.ffecmov)
               AND cmovimi = :NEW.cmovimi;
      END;
   ELSIF DELETING THEN
      -- Hacemos un borrado del registro
      SELECT proplapen.ccodpla
        INTO PLAN
        FROM proplapen, productos, seguros
       WHERE seguros.sseguro = :OLD.sseguro
         AND productos.sproduc = seguros.sproduc
         AND proplapen.sproduc = productos.sproduc;

      UPDATE planhistorico
      SET nopera = nopera - 1,
          nparti = NVL(nparti, 0) - NVL(:OLD.nparpla, 0),
          imovimi = NVL(imovimi, 0) - NVL(:OLD.imovimi, 0)
      WHERE  ccodpla = PLAN
         AND TRUNC(fhistorico) = TRUNC(:OLD.ffecmov)
         AND cmovimi = :OLD.cmovimi;
   END IF;
END IF;*/
-- 12442.NMM.31/12/2009.f.
END;









/
ALTER TRIGGER "AXIS"."BIUD_CTASEGURO_PLANHISTORICO" DISABLE;
